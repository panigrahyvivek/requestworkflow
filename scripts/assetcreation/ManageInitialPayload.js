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

var instanceId = $.info.workflowInstanceId;

var formid = $.context.formid;
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
	"formid": formid,
	"status": "Approval Started"
};

statusPayloads.APPROVED_SETTLEMENT_IN_PROGRESS = {
	"formid": formid,
	"status": "Approval Complete"
};

statusPayloads.FORM_REJECTED = {
	"formid": formid,
	"status": "Form Rejected"
};

var settlementPayload = {};

settlementPayload = {
	"formid": formid
};

$.context.statusPayloads = statusPayloads;
$.context.statusResponse = {};
$.context.statusResponse.settlement = {};

$.context.settlementPayload = settlementPayload;
$.context.settlementResponse = {};

$.context.formupdate = {
	servicePath: "/sap/opu/odata/sap/ZPGPOCROC_SRV/ZROC_I_FORM('" + formid + "')",
	settlmentServicePath: "/sap/opu/odata/sap/ZPGPOCROC_SRV/ZROC_Get_Status?formid='" + formid + "'&WfInstanceId='" + instanceId + "'"
};


$.context.workflowInstanceUpdatePayload= {
	"status": "suspended"	
};

$.context.workflowInstanceUpdateResponse = {};