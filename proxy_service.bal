import choreo/mediation;
import ballerina/log;
import ballerina/http;

listener http:Listener ep0 = new (9090, timeout = 0);

service /api/v1 on ep0 {
    resource function get teste(http:Caller caller, http:Request request) returns error? {
        map<mediation:PathParamValue> pathParams = {};
        mediation:Context originalCtx = mediation:createImmutableMediationContext("get", ["teste"], pathParams, request.getQueryParams());
        mediation:Context mediationCtx = mediation:createMutableMediationContext(originalCtx, ["teste"], pathParams, request.getQueryParams());
        http:Response? backendResponse = ();

        // request.removeHeader("X-Correlation-Id");
        request.removeHeader("Sec-Fetch-Site");
        request.removeHeader("X-Forwarded-For");
        request.removeHeader("X-Forwarded-Proto");
        request.removeHeader("X-Request-Id");
        request.removeHeader("X-Trace-Key");

        do {

            string|error incomingEnvHeader = request.getHeader("X-ENV");
            if (incomingEnvHeader is string && incomingEnvHeader === "sandbox") {
                request.removeHeader("X-ENV");
                backendResponse = check sandboxEP->execute(mediationCtx.httpMethod(), (check mediationCtx.resourcePath().resolve(pathParams)) + buildQuery(mediationCtx.queryParams()), request, targetType = http:Response);
            } else {
                backendResponse = check backendEP->execute(mediationCtx.httpMethod(), (check mediationCtx.resourcePath().resolve(pathParams)) + buildQuery(mediationCtx.queryParams()), request, targetType = http:Response);
            }

            check caller->respond(backendResponse);
        } on fail var e {
            http:Response errFlowResponse = createDefaultErrorResponse(e);
            error err = e;
            check caller->respond(errFlowResponse);
        }
    }
    resource function get [string... pathSegments](http:Caller caller, http:Request request) returns error? {
        map<mediation:PathParamValue> pathParams = {pathSegments};
        mediation:Context originalCtx = mediation:createImmutableMediationContext("get", [{name: "pathSegments", kind: mediation:PATH_REST_PARAM, 'type: string}], pathParams, request.getQueryParams());
        mediation:Context mediationCtx = mediation:createMutableMediationContext(originalCtx, [{name: "pathSegments", kind: mediation:PATH_REST_PARAM, 'type: string}], pathParams, request.getQueryParams());
        http:Response? backendResponse = ();
        do {
            string|error incomingEnvHeader = request.getHeader("X-ENV");
            if (incomingEnvHeader is string && incomingEnvHeader === "sandbox") {
                request.removeHeader("X-ENV");
                backendResponse = check sandboxEP->execute(mediationCtx.httpMethod(), (check mediationCtx.resourcePath().resolve(pathParams)) + buildQuery(mediationCtx.queryParams()), request, targetType = http:Response);
            } else {
                backendResponse = check backendEP->execute(mediationCtx.httpMethod(), (check mediationCtx.resourcePath().resolve(pathParams)) + buildQuery(mediationCtx.queryParams()), request, targetType = http:Response);
            }

            check caller->respond(backendResponse);
        } on fail var e {
            http:Response errFlowResponse = createDefaultErrorResponse(e);
            error err = e;
            check caller->respond(errFlowResponse);
        }
    }
    resource function put [string... pathSegments](http:Caller caller, http:Request request) returns error? {
        map<mediation:PathParamValue> pathParams = {pathSegments};
        mediation:Context originalCtx = mediation:createImmutableMediationContext("put", [{name: "pathSegments", kind: mediation:PATH_REST_PARAM, 'type: string}], pathParams, request.getQueryParams());
        mediation:Context mediationCtx = mediation:createMutableMediationContext(originalCtx, [{name: "pathSegments", kind: mediation:PATH_REST_PARAM, 'type: string}], pathParams, request.getQueryParams());
        http:Response? backendResponse = ();
        do {
            string|error incomingEnvHeader = request.getHeader("X-ENV");
            if (incomingEnvHeader is string && incomingEnvHeader === "sandbox") {
                request.removeHeader("X-ENV");
                backendResponse = check sandboxEP->execute(mediationCtx.httpMethod(), (check mediationCtx.resourcePath().resolve(pathParams)) + buildQuery(mediationCtx.queryParams()), request, targetType = http:Response);
            } else {
                backendResponse = check backendEP->execute(mediationCtx.httpMethod(), (check mediationCtx.resourcePath().resolve(pathParams)) + buildQuery(mediationCtx.queryParams()), request, targetType = http:Response);
            }

            check caller->respond(backendResponse);
        } on fail var e {
            http:Response errFlowResponse = createDefaultErrorResponse(e);
            error err = e;
            check caller->respond(errFlowResponse);
        }
    }
    resource function post [string... pathSegments](http:Caller caller, http:Request request) returns error? {
        map<mediation:PathParamValue> pathParams = {pathSegments};
        mediation:Context originalCtx = mediation:createImmutableMediationContext("post", [{name: "pathSegments", kind: mediation:PATH_REST_PARAM, 'type: string}], pathParams, request.getQueryParams());
        mediation:Context mediationCtx = mediation:createMutableMediationContext(originalCtx, [{name: "pathSegments", kind: mediation:PATH_REST_PARAM, 'type: string}], pathParams, request.getQueryParams());
        http:Response? backendResponse = ();
        do {
            string|error incomingEnvHeader = request.getHeader("X-ENV");
            if (incomingEnvHeader is string && incomingEnvHeader === "sandbox") {
                request.removeHeader("X-ENV");
                backendResponse = check sandboxEP->execute(mediationCtx.httpMethod(), (check mediationCtx.resourcePath().resolve(pathParams)) + buildQuery(mediationCtx.queryParams()), request, targetType = http:Response);
            } else {
                backendResponse = check backendEP->execute(mediationCtx.httpMethod(), (check mediationCtx.resourcePath().resolve(pathParams)) + buildQuery(mediationCtx.queryParams()), request, targetType = http:Response);
            }

            check caller->respond(backendResponse);
        } on fail var e {
            http:Response errFlowResponse = createDefaultErrorResponse(e);
            error err = e;
            check caller->respond(errFlowResponse);
        }
    }
    resource function delete [string... pathSegments](http:Caller caller, http:Request request) returns error? {
        map<mediation:PathParamValue> pathParams = {pathSegments};
        mediation:Context originalCtx = mediation:createImmutableMediationContext("delete", [{name: "pathSegments", kind: mediation:PATH_REST_PARAM, 'type: string}], pathParams, request.getQueryParams());
        mediation:Context mediationCtx = mediation:createMutableMediationContext(originalCtx, [{name: "pathSegments", kind: mediation:PATH_REST_PARAM, 'type: string}], pathParams, request.getQueryParams());
        http:Response? backendResponse = ();
        do {
            string|error incomingEnvHeader = request.getHeader("X-ENV");
            if (incomingEnvHeader is string && incomingEnvHeader === "sandbox") {
                request.removeHeader("X-ENV");
                backendResponse = check sandboxEP->execute(mediationCtx.httpMethod(), (check mediationCtx.resourcePath().resolve(pathParams)) + buildQuery(mediationCtx.queryParams()), request, targetType = http:Response);
            } else {
                backendResponse = check backendEP->execute(mediationCtx.httpMethod(), (check mediationCtx.resourcePath().resolve(pathParams)) + buildQuery(mediationCtx.queryParams()), request, targetType = http:Response);
            }

            check caller->respond(backendResponse);
        } on fail var e {
            http:Response errFlowResponse = createDefaultErrorResponse(e);
            error err = e;
            check caller->respond(errFlowResponse);
        }
    }
    resource function patch [string... pathSegments](http:Caller caller, http:Request request) returns error? {
        map<mediation:PathParamValue> pathParams = {pathSegments};
        mediation:Context originalCtx = mediation:createImmutableMediationContext("patch", [{name: "pathSegments", kind: mediation:PATH_REST_PARAM, 'type: string}], pathParams, request.getQueryParams());
        mediation:Context mediationCtx = mediation:createMutableMediationContext(originalCtx, [{name: "pathSegments", kind: mediation:PATH_REST_PARAM, 'type: string}], pathParams, request.getQueryParams());
        http:Response? backendResponse = ();
        do {
            string|error incomingEnvHeader = request.getHeader("X-ENV");
            if (incomingEnvHeader is string && incomingEnvHeader === "sandbox") {
                request.removeHeader("X-ENV");
                backendResponse = check sandboxEP->execute(mediationCtx.httpMethod(), (check mediationCtx.resourcePath().resolve(pathParams)) + buildQuery(mediationCtx.queryParams()), request, targetType = http:Response);
            } else {
                backendResponse = check backendEP->execute(mediationCtx.httpMethod(), (check mediationCtx.resourcePath().resolve(pathParams)) + buildQuery(mediationCtx.queryParams()), request, targetType = http:Response);
            }

            check caller->respond(backendResponse);
        } on fail var e {
            http:Response errFlowResponse = createDefaultErrorResponse(e);
            error err = e;
            check caller->respond(errFlowResponse);
        }
    }
}

configurable string Endpoint = "http://172.15.0.16:92/api/v1";
configurable string SandboxEndpoint = "https://teste.requestcatcher.com/test";
configurable map<boolean> AdvancedSettings = {};

final http:Client backendEP = check new (Endpoint, config = {
    secureSocket: {
        enable: check boolean:fromString("false"),
        verifyHostName: AdvancedSettings.hasKey("verifyHostname") ? AdvancedSettings.get("verifyHostname") : true
    },
    timeout: 300
});
final http:Client sandboxEP = check new (SandboxEndpoint, config = {
    secureSocket: {
        enable: check boolean:fromString("false"),
        verifyHostName: AdvancedSettings.hasKey("verifyHostname") ? AdvancedSettings.get("verifyHostname") : true
    },
    timeout: 300
});

function createDefaultErrorResponse(error err) returns http:Response {
    http:Response resp = new;
    log:printError(err.message(), (), err.stackTrace(), details = err.detail().toString());
    resp.statusCode = http:STATUS_INTERNAL_SERVER_ERROR;
    return resp;
}

function buildQuery(map<string[]> params) returns string {
    if (params.length() == 0) {
        return "";
    }

    string qParamStr = "?";

    foreach [string, string[]] [name, val] in params.entries() {
        foreach string item in val {
            qParamStr += string `${name}=${item}&`;
        }
    }

    return qParamStr.substring(0, qParamStr.length() - 1);
}

function buildRestParamPath(string[] pathSegments) returns string {
    return pathSegments.reduce(
        function(string path, string segment) returns string => string `${path}/${segment}`, "");
}
