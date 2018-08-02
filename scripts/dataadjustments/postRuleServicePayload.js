var changeType = $.context.__metadata__.changeType;

if(changeType == "reclass_account" ){
	
	$.context.S4HANAService.request.ICaccount = $.context.InvokeRuleService.response.CreditAccount || "";
	$.context.S4HANAService.request.IDaccount = $.context.InvokeRuleService.response.DebitAccount || "";
	$.context.S4HANAService.request.IProfirctr = $.context.InvokeRuleService.response.ProfitCenter || "";
}
