import ballerina/http;

//import choreo/mediation;

function handleRequestFlowPolicyResult(http:Response|false|() result, http:Caller caller) returns boolean {
    if result is false {
        http:ListenerError? response = caller->respond(new);
        return true;
    } else if result is http:Response {
        http:ListenerError? response = caller->respond(result);
        return true;
    }
    return false;
}

// function 'get__teste_RequestFlow(http:Caller caller, mediation:Context mediationCtx, http:Request request) returns boolean|error {
//     {
//         //var result = check remove_header:removeHeaderRequestFlow(mediationCtx, request, "Accept");

//         // if handleRequestFlowPolicyResult(result, caller) {
//         //     return true;
//         // }
//         return true;
//     }

//     return false;
// }
