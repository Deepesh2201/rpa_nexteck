<?php

namespace App\Http\Controllers;

use App\Models\Port;
use App\Models\QuotationEnquiry;
use App\Models\QuotationInput;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\DB;

class PortController extends Controller
{
    public function search(){
        $statuses = DB::table('status')->select('*')->get();
        $ports = Port::select('*')->get();
        $containers = DB::table('container')->select('*')->get();
     
        if(Auth::user()->user_role == 1){
            $searches = QuotationInput::select('*','quotation_input.status as current_status','quotation_input.id as id')
            ->leftJoin('users','users.id','quotation_input.user_id')
            ->leftJoin('status','status.id','quotation_input.status')
            ->orderBy('quotation_input.date','desc')
            ->paginate(10);
        }
        else{
            $searches = QuotationInput::select('*','quotation_input.status as current_status','quotation_input.id as id')
            ->leftJoin('users','users.id','quotation_input.user_id')
            ->leftJoin('status','status.id','quotation_input.status')
            ->orderBy('quotation_input.date','desc')
            ->where('user_id',Auth::user()->id)->paginate(10);
        }
        return view('search', compact('searches','statuses','ports','containers'));
    }

    public function getJobStatuses()
{
    $searches = QuotationInput::select('*','quotation_input.status as current_status','quotation_input.id as id')
            ->leftJoin('users','users.id','quotation_input.user_id')
            ->leftJoin('status','status.id','quotation_input.status')
            ->orderBy('quotation_input.date','desc')
            ->paginate(10);

    return response()->json($searches);
}

    public function results(){
        $statuses = DB::table('status')->select('*')->get();
        if(Auth::user()->user_role == 1){
            $results = QuotationEnquiry::select('*','quotation_enquiry.status as current_status','quotation_enquiry.id as id')
            ->leftJoin('users','users.id','quotation_enquiry.user_id')
            ->leftJoin('status','status.id','quotation_enquiry.status')
            ->orderBy('quotation_enquiry.created_at','desc')
            ->paginate(10);
        }
        else{
            $results = QuotationEnquiry::select('*','quotation_enquiry.status as current_status','quotation_enquiry.id as id')
            ->leftJoin('users','users.id','quotation_enquiry.user_id')
            ->leftJoin('status','status.id','quotation_enquiry.status')
            ->orderBy('quotation_enquiry.created_at','desc')
            ->where('user_id',Auth::user()->id)->paginate(10);
        }

        return view('results', compact('results','statuses'));
    }

    public function jobstatus(Request $request){

        if(Auth::user()->user_role == 1){
            $data = QuotationEnquiry::where('id', $request->job_id)
            ->first();
            $datainpt = QuotationInput::where('job_id', $data->job_id)->first();
            
        }
        else{
            $data = QuotationEnquiry::where('id', $request->job_id)
        ->where('user_id', Auth::user()->id)
        ->first();
        $datainpt = QuotationInput::where('job_id', $data->job_id)
        ->where('user_id', Auth::user()->id)
        ->first();
        }
        $data->status = $request->job_status;
        $datainpt->status = $request->job_status;

        $upd = $data->update();

        if($upd){
            $res = $datainpt->update();
            
            if ($res) {
                return back()->with('success', 'Job status changed successfully.');
            } else {
                return back()->with('error', 'Something went wrong.');
            }
        }
        else{
            return back()->with('error', 'Something went wrong.');
        }
    }

    public function jobdetails($id){

        $job_id = QuotationInput::select('job_id')->where('id',$id)->first();
        
        if(Auth::user()->user_role == 1){


            $data = QuotationEnquiry::select('quotation_enquiry.*','status.status as current_status')
            ->leftJoin('status','status.id','quotation_enquiry.status')
            ->where('quotation_enquiry.job_id',$job_id->job_id)->get();
            
        }
        else{
            $data = QuotationEnquiry::select('quotation_enquiry.*','status.status as current_status')
            ->leftJoin('status','status.id','quotation_enquiry.status')
            ->where('quotation_enquiry.job_id',$job_id->job_id)->where('user_id', Auth::user()->id)->get();
        }
         

         // Check if the record was found
         if ($data) {
             return response()->json($data);
         } else {
             return response()->json(['message' => 'Record not found'], 404);
         }
     }
     
     public function searchdata(Request $request) {
        // Step 1: Generate access token (Post request)
        $response = Http::withHeaders([
            'Authorization' => 'Bearer',
            'Content-Type' => 'application/json',
        ])->post('https://account.uipath.com/oauth/token', [
            'grant_type' => 'refresh_token',
            'client_id' => '8DEv1AMNXczW3y4U15LL3jYf62jK93n5',
            'refresh_token' => 'aggR9b7z9s4GDlgeszZOLUK7BY35HNc30cGc_xNbuUPB9',
        ]);
    
        if ($response->successful()) {
            // Extract the access token from the response
            $accessToken = $response->json('access_token');
            // dd($accessToken);
            // Step 2: Generate job ID and save data to the database
            $timestamp = now()->format('YmdHis');
            $randomNumber = mt_rand(1000, 9999);
            $job_id = $timestamp . $randomNumber;
    
            $data = new QuotationInput();
            $data->job_id = $job_id;
            $data->user_id = Auth::user()->id;
            $data->date = $request->date;
            $data->source = $request->start_pt;
            $data->destination = $request->end_pt;
            $data->container = $request->con_pt;
            $data->commodity = $request->comm_pt;
            $data->status = 1;
    
            if ($data->save()) {
                // Step 3: Trigger the APIs using the job ID
    
                // Get Folder ID (Get request)
                $apiResponse1 = Http::withHeaders([
                    'Authorization' => 'Bearer ' . $accessToken,
                    'Content-Type' => 'application/json',
                // ])->get('https://cloud.uipath.com/thenepqokzpo/DefaultTenant/orchestrator_/odata/PersonalWorkspaces');
                ])->get('https://cloud.uipath.com/thenepqokzpo/DefaultTenant/orchestrator_/odata/Folders');
                
                if ($apiResponse1->successful()) {
                    $folderId = $apiResponse1->json('value')[0]['Id'];
                    
                    // Get-Process Release Key
                    $apiResponse2 = Http::withHeaders([
                        'Authorization' => 'Bearer ' . $accessToken,
                            'X-UIPATH-TenantName' => 'DefaultTenant',
                            'X-UIPATH-OrganizationUnitId' => $folderId,
                        ])->get("https://cloud.uipath.com/thenepqokzpo/DefaultTenant/orchestrator_/odata/Releases");
                    
                    $releaseKey = $apiResponse2->json('value')[0]['Key'];
                   
                    if ($apiResponse2->successful()) {
                    
                        $apiResponse3 = Http::withHeaders([
                            'Authorization' => 'Bearer ' . $accessToken,
                            'Content-Type' => 'application/json',
                            'X-UIPATH-TenantName' => 'DefaultTenant',
                            'X-UIPATH-OrganizationUnitId' => $folderId,
                        ])->post('https://cloud.uipath.com/thenepqokzpo/DefaultTenant/orchestrator_/odata/Jobs/UiPath.Server.Configuration.OData.StartJobs', [
                            'startInfo' => [
                                'ReleaseKey' => $releaseKey,
                                'Strategy' => 'ModernJobsCount',
                                'JobsCount' => 1,
                                'InputArguments' => json_encode([
                            'job_id' => $job_id,
                            'user_id' => "001"
                        ]),
                                
                            ]
                            
                        ]);
                        // {
                        //     "startInfo": {
                        //         "ReleaseKey": "7594fd9e-3bb2-4c62-a38a-9e512b2ea994",
                        //         "Strategy": "ModernJobsCount",
                        //         "JobsCount": 1,
                        //         "InputArguments": "{\"job_id\":\"1721393823610\",\"user_id\":001}"
                        //     }
                        // }
                        // 'InputArguments' => json_encode([
                        //     'job_id' => $job_id,
                        //     'user_id' => Auth::user()->id
                        // ]),

                        // Check API responses
                        
                if ($apiResponse1->successful() && $apiResponse2->successful() && $apiResponse3->successful()) {
                    return back()->with('success', 'Enquiry created successfully. Your Job ID is: ' . $job_id);
                } else {
                    return back()->with('error', 'One or more API requests failed.');
                }
            } else {
                return back()->with('error', 'Failed to save enquiry data.');
            }
                    }

                }

                
    
                // API 3: Trigger third API using the job ID and access token
                
    
                
        } else {
            return back()->with('error', 'Failed to generate access token.');
        }
    }
    
    
}
