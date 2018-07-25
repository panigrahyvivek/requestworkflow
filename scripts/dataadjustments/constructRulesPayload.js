/*
// read from existing workflow context 
var productInfo = $.context.productInfo; 
var productName = productInfo.productName; 
var productDescription = productInfo.productDescription;

// read contextual information
var taskDefinitionId = $.info.taskDefinitionId;

// read user task information
var lastUserTask1 = $.usertasks.usertask1.last;
var userTaskSubject = lastUserTask1.subject;
var userTaskProcessor = lastUserTask1.processor;
var userTaskCompletedAt = lastUserTask1.completedAt;

var userTaskStatusMessage = " User task '" + userTaskSubject + "' has been completed by " + userTaskProcessor + " at " + userTaskCompletedAt;

// create new node 'product'
var product = {
		productDetails: productName  + " " + productDescription,
		workflowStep: taskDefinitionId
};

// write 'product' node to workflow context
$.context.product = product;
*/

var changeType = $.context.__metadata__.changeType;

if(changeType=="retumble_manual"){
	$.context.applyRules = false;
}
else{
	$.context.applyRules = true;
}

if($.context.applyRules == "true"){
	$.context.InvokeRuleService = {};
	$.context.InvokeRuleService.url = "/rules-service/rest/v1/rule-services/java/Reclassification/LR01_RuleService";
	$.context.InvokeRuleService.request = {};
	$.context.InvokeRuleService.response = {};	
	$.context.InvokeRuleService.request = $.context.userInput;
	$.context.InvokeRuleService.request.__type__ = changeType;
}


$.context.S4HANAService = {};
$.context.S4HANAService.url= "";
$.context.S4HANAService.request = {};

if(changeType=="retumble_manual"){
	$.context.S4HANAService.url = "/s4connectodata/triggerFlatFlieWorkflow";
	$.context.S4HANAService.request = {
		"IFilePath" : $.context.userInput.filePath,
		"IRestId": "125435"
	};
	
}
else if(changeType == "retumbling_mgmtact"){
	$.context.S4HANAService.url = "/s4connectodata/triggerRestatementsWorkflow";
	$.context.S4HANAService.request = {};
	$.context.S4HANAService.request.BusId = $.context.filterInput.businessScenario;
	$.context.S4HANAService.request.RestId = $.context.filterInput.restatementId;
	$.context.S4HANAService.request.SourceGeo = "US";
	$.context.S4HANAService.request.RuleId = "2a2ee09cb4174b6e8c532bb9dd86a2aa";
	
	/*{
		"BusId" : "1718.AL01",
		"RestId": "62",
		"SourceGeo": "US",
		"RuleId": "005056AB14FE1EE8A3E058405365C697"
	};*/
}

$.context.S4HANAService.response = {};

/* Sample request Object
var ruleServiceRequest = {};
ruleServiceRequest. __type__ = "AccountDetails";
ruleServiceRequest.CompanyCode = 1;
ruleServiceRequest.Account = 222;
*/






