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
if($.context.changeType=="FileUpload"){
	$.context.applyRules = false;
}


$.context.InvokeRuleService = {};
$.context.InvokeRuleService.url = "/rules-service/rest/v1/rule-services/java/Reclassification/RequestRuleService";
$.context.InvokeRuleService.request = {};
$.context.InvokeRuleService.response = {};


$.context.S4HANAService = {};
$.context.S4HANAService.url= "/s4hanaconnect";
$.context.S4HANAService.request = {
	"key": "value"
};
$.context.S4HANAService.response = {};

/* Sample request Object
var ruleServiceRequest = {};
ruleServiceRequest. __type__ = "AccountDetails";
ruleServiceRequest.CompanyCode = 1;
ruleServiceRequest.Account = 222;
*/

$.context.InvokeRuleService.request = $.context.userInput;




