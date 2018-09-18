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

var backendApprovers = $.context.approvers.d.results;
var backedUserDetailsForRule = [];

for(var i=0;i<backendApprovers.length;i++){
	var formattedBackendUser = {};
	formattedBackendUser.__type__ = "bUserDO";
	formattedBackendUser.bUserId = backendApprovers[i].Approver;
	formattedBackendUser.role = backendApprovers[i].Role;
	backedUserDetailsForRule.push(formattedBackendUser);
}

$.context.backedUserDetailsForRule = backedUserDetailsForRule;

var statusPayloads = {};

statusPayloads.APPROVAL_STARTED = {
	"formid": "804",
	"status": "Approval Started"
};

statusPayloads.APPROVED_SETTLEMENT_IN_PROGRESS = {
	"formid": "804",
	"status": "Approved - Settlement in process"
};

statusPayloads.FORM_REJECTED = {
	"formid": "804",
	"status": "Form Rejected"
};

$.context.statusPayloads = statusPayloads;
$.context.statusResponse = {};