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

var cloudApprovers = $.context.cloudApproverDetails;

var agent98Approvers = [];
var waveAppsApprovers = [];
var mandatoryApprovers = [];

var i;

for(i=0;i<cloudApprovers.length;i++ ){
	if(cloudApprovers[i].role === "98"){
		agent98Approvers.push(cloudApprovers[i].cUserId);
		
	}
	else if(cloudApprovers[i].role === ""){
		waveAppsApprovers.push(cloudApprovers[i].cUserId);	
	}
	else if(cloudApprovers[i].role === "RM"){
		mandatoryApprovers.push(cloudApprovers[i].cUserId);
	}
}

agent98Approvers.push('I077837');
// agent98Approvers.push('I827486');

waveAppsApprovers.push('I077837');
waveAppsApprovers.push('I827486');
mandatoryApprovers.push('I077837');
mandatoryApprovers.push('I827486');

$.context.agent98Approvers = agent98Approvers;
$.context.waveAppsApprovers = waveAppsApprovers;
$.context.mandatoryApprovers = mandatoryApprovers;

