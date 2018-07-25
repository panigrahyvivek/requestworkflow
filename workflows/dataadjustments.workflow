{
	"contents": {
		"4357fa9b-5c40-4e79-b0c9-0e91031a22be": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "dataadjustments",
			"subject": "dataadjustments",
			"name": "dataadjustments",
			"lastIds": "2e0e98a2-537a-47df-baed-debfb222e193",
			"events": {
				"64486585-a2b6-4c85-8b19-9bf8aefcf1b6": {
					"name": "StartEvent"
				},
				"b32429d8-d11d-4dec-9300-2d5ef3b59ab1": {
					"name": "EndEvent"
				}
			},
			"activities": {
				"ac5e4850-36d2-4417-a675-3b8a64e9cc79": {
					"name": "Approval Task"
				},
				"12e9075b-b396-46bd-a9a1-1b68270d05f0": {
					"name": "Invoke Rules Service"
				},
				"aee60677-640c-4280-b846-87f75469f966": {
					"name": "Manage Initial Payload"
				},
				"56e342ba-11b9-4fa6-bf29-a9cda5119ce0": {
					"name": "Invoke S4HANA Extension Service"
				},
				"fa32dda3-b4c6-4c35-9b3f-50ca72c42eba": {
					"name": "ExclusiveGateway"
				},
				"58001691-47da-41dc-aa11-e31567e61ccd": {
					"name": "Mail Notification"
				}
			},
			"sequenceFlows": {
				"a9fb1b57-4b0d-4d66-a89e-92a492ea94dd": {
					"name": "SequenceFlow6"
				},
				"a50e196f-f87e-417b-bd44-939038a7d6a1": {
					"name": "SequenceFlow8"
				},
				"71cb4988-262a-415c-b5ed-1709fed3421c": {
					"name": "SequenceFlow10"
				},
				"d874a0bb-0508-4375-82e8-f67e6372323a": {
					"name": "SequenceFlow14"
				},
				"cb5fb78a-3c05-4f7e-8822-6ea241198f86": {
					"name": "SequenceFlow15"
				},
				"c22321f2-b1fc-46ed-ba03-135b6e23475f": {
					"name": "SequenceFlow16"
				},
				"37b749d9-ae88-4cb5-a73c-281ce1e77504": {
					"name": "SequenceFlow17"
				},
				"a319c625-6cdd-497d-bcfb-fd7ce13ebc1a": {
					"name": "SequenceFlow18"
				}
			},
			"diagrams": {
				"18054ba5-5849-4761-a5db-40daade2b51a": {}
			}
		},
		"64486585-a2b6-4c85-8b19-9bf8aefcf1b6": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent",
			"sampleContextRefs": {
				"dc98eed2-29eb-474b-bd9c-3565e14bda78": {}
			}
		},
		"b32429d8-d11d-4dec-9300-2d5ef3b59ab1": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent"
		},
		"ac5e4850-36d2-4417-a675-3b8a64e9cc79": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval for Change ${context.changeType}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/requestapproval/webapp/com.sap.demo.requestapproval.requestapproval",
			"recipientUsers": "",
			"recipientGroups": "Developer",
			"id": "usertask1",
			"name": "Approval Task"
		},
		"12e9075b-b396-46bd-a9a1-1b68270d05f0": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "BUSINESS_RULES",
			"path": "/rules-service/rest/v1/rule-services/java/Reclassification/LR01_RuleService",
			"httpMethod": "POST",
			"xsrfPath": "/rules-service/v1/rules/xsrf-token",
			"requestVariable": "${context.InvokeRuleService.request}",
			"responseVariable": "${context.InvokeRuleService.response}",
			"id": "servicetask1",
			"name": "Invoke Rules Service"
		},
		"aee60677-640c-4280-b846-87f75469f966": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/dataadjustments/constructRulesPayload.js",
			"id": "scripttask1",
			"name": "Manage Initial Payload"
		},
		"56e342ba-11b9-4fa6-bf29-a9cda5119ce0": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "s4hanaextension",
			"path": "${context.S4HANAService.url}",
			"httpMethod": "POST",
			"requestVariable": "${context.S4HANAService.request}",
			"responseVariable": "${context.S4HANAService.response}",
			"id": "servicetask2",
			"name": "Invoke S4HANA Extension Service"
		},
		"fa32dda3-b4c6-4c35-9b3f-50ca72c42eba": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "ExclusiveGateway",
			"default": "d874a0bb-0508-4375-82e8-f67e6372323a"
		},
		"a9fb1b57-4b0d-4d66-a89e-92a492ea94dd": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "12e9075b-b396-46bd-a9a1-1b68270d05f0",
			"targetRef": "ac5e4850-36d2-4417-a675-3b8a64e9cc79"
		},
		"a50e196f-f87e-417b-bd44-939038a7d6a1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "64486585-a2b6-4c85-8b19-9bf8aefcf1b6",
			"targetRef": "aee60677-640c-4280-b846-87f75469f966"
		},
		"71cb4988-262a-415c-b5ed-1709fed3421c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "SequenceFlow10",
			"sourceRef": "ac5e4850-36d2-4417-a675-3b8a64e9cc79",
			"targetRef": "56e342ba-11b9-4fa6-bf29-a9cda5119ce0"
		},
		"d874a0bb-0508-4375-82e8-f67e6372323a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "fa32dda3-b4c6-4c35-9b3f-50ca72c42eba",
			"targetRef": "12e9075b-b396-46bd-a9a1-1b68270d05f0"
		},
		"cb5fb78a-3c05-4f7e-8822-6ea241198f86": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow15",
			"name": "SequenceFlow15",
			"sourceRef": "aee60677-640c-4280-b846-87f75469f966",
			"targetRef": "fa32dda3-b4c6-4c35-9b3f-50ca72c42eba"
		},
		"c22321f2-b1fc-46ed-ba03-135b6e23475f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.applyRules== false}",
			"id": "sequenceflow16",
			"name": "SequenceFlow16",
			"sourceRef": "fa32dda3-b4c6-4c35-9b3f-50ca72c42eba",
			"targetRef": "ac5e4850-36d2-4417-a675-3b8a64e9cc79"
		},
		"18054ba5-5849-4761-a5db-40daade2b51a": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"66d74a89-f548-4bbc-9f87-c1d95370a2df": {},
				"301db01b-97fe-40de-9743-b43015bd60b8": {},
				"b4c559cf-4255-4706-ae41-467f27eb3d5d": {},
				"14883b2a-1d40-4eb0-9209-d44be6468e3a": {},
				"864581b7-4343-4215-a5eb-dce6fb53e29c": {},
				"1df5eae4-b533-4173-ad59-3891a819bf56": {},
				"e6e14c73-8e4d-4678-8226-ca9ef412eebc": {},
				"b4b449e3-07a4-4dde-a5ac-ff70756766a7": {},
				"4c92631f-9c64-4c74-bf76-6e63a0f837bf": {},
				"a7b404d2-6332-413f-9802-e679be6bad90": {},
				"e7000b3e-1bc7-4ba5-8940-8dde5e1bcdaf": {},
				"83e8f167-342a-4ea3-a7c9-8c460db92475": {},
				"c4646f68-2387-4a6d-99db-2bf6eba3be5c": {},
				"21daa87a-2d67-444f-99b0-91b417e43317": {},
				"025df662-0dda-486d-8a87-0d381e1b58bc": {},
				"03bf3aab-b6aa-4cca-9e82-9659e824e2bd": {}
			}
		},
		"dc98eed2-29eb-474b-bd9c-3565e14bda78": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/dataadjustments/initialContext.json",
			"id": "default-start-context"
		},
		"66d74a89-f548-4bbc-9f87-c1d95370a2df": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 12,
			"y": 43.999999701976776,
			"width": 32,
			"height": 32,
			"object": "64486585-a2b6-4c85-8b19-9bf8aefcf1b6"
		},
		"301db01b-97fe-40de-9743-b43015bd60b8": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 975.9999976158142,
			"y": 43.999999701976776,
			"width": 32,
			"height": 32,
			"object": "b32429d8-d11d-4dec-9300-2d5ef3b59ab1"
		},
		"b4c559cf-4255-4706-ae41-467f27eb3d5d": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 525.9999976158142,
			"y": 29.999999701976776,
			"width": 100,
			"height": 60,
			"object": "ac5e4850-36d2-4417-a675-3b8a64e9cc79"
		},
		"14883b2a-1d40-4eb0-9209-d44be6468e3a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 355.9999988079071,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "12e9075b-b396-46bd-a9a1-1b68270d05f0"
		},
		"864581b7-4343-4215-a5eb-dce6fb53e29c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "455.9999988079071,42 490.99999821186066,42 490.99999821186066,59.999999701976776 525.9999976158142,59.999999701976776",
			"sourceSymbol": "14883b2a-1d40-4eb0-9209-d44be6468e3a",
			"targetSymbol": "b4c559cf-4255-4706-ae41-467f27eb3d5d",
			"object": "a9fb1b57-4b0d-4d66-a89e-92a492ea94dd"
		},
		"1df5eae4-b533-4173-ad59-3891a819bf56": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 94,
			"y": 29.999999701976776,
			"width": 100,
			"height": 60,
			"object": "aee60677-640c-4280-b846-87f75469f966"
		},
		"e6e14c73-8e4d-4678-8226-ca9ef412eebc": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "44,59.999999701976776 94,59.999999701976776",
			"sourceSymbol": "66d74a89-f548-4bbc-9f87-c1d95370a2df",
			"targetSymbol": "1df5eae4-b533-4173-ad59-3891a819bf56",
			"object": "a50e196f-f87e-417b-bd44-939038a7d6a1"
		},
		"b4b449e3-07a4-4dde-a5ac-ff70756766a7": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 675.9999976158142,
			"y": 29.999999701976776,
			"width": 100,
			"height": 60,
			"object": "56e342ba-11b9-4fa6-bf29-a9cda5119ce0"
		},
		"4c92631f-9c64-4c74-bf76-6e63a0f837bf": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "625.9999976158142,59.999999701976776 675.9999976158142,59.999999701976776",
			"sourceSymbol": "b4c559cf-4255-4706-ae41-467f27eb3d5d",
			"targetSymbol": "b4b449e3-07a4-4dde-a5ac-ff70756766a7",
			"object": "71cb4988-262a-415c-b5ed-1709fed3421c"
		},
		"a7b404d2-6332-413f-9802-e679be6bad90": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 244,
			"y": 38.999999701976776,
			"object": "fa32dda3-b4c6-4c35-9b3f-50ca72c42eba"
		},
		"e7000b3e-1bc7-4ba5-8940-8dde5e1bcdaf": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "286,59.999999701976776 320.99999940395355,59.999999701976776 320.99999940395355,42 355.9999988079071,42",
			"sourceSymbol": "a7b404d2-6332-413f-9802-e679be6bad90",
			"targetSymbol": "14883b2a-1d40-4eb0-9209-d44be6468e3a",
			"object": "d874a0bb-0508-4375-82e8-f67e6372323a"
		},
		"83e8f167-342a-4ea3-a7c9-8c460db92475": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "194,59.999999701976776 244,59.999999701976776",
			"sourceSymbol": "1df5eae4-b533-4173-ad59-3891a819bf56",
			"targetSymbol": "a7b404d2-6332-413f-9802-e679be6bad90",
			"object": "cb5fb78a-3c05-4f7e-8822-6ea241198f86"
		},
		"c4646f68-2387-4a6d-99db-2bf6eba3be5c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "286,59.999999701976776 320.99999940395355,59.999999701976776 320.99999940395355,106.99999940395355 490.99999821186066,106.99999940395355 490.99999821186066,59.999999701976776 525.9999976158142,59.999999701976776",
			"sourceSymbol": "a7b404d2-6332-413f-9802-e679be6bad90",
			"targetSymbol": "b4c559cf-4255-4706-ae41-467f27eb3d5d",
			"object": "c22321f2-b1fc-46ed-ba03-135b6e23475f"
		},
		"2e0e98a2-537a-47df-baed-debfb222e193": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 2,
			"maildefinition": 1,
			"hubapireference": 2,
			"sequenceflow": 18,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"servicetask": 2,
			"scripttask": 1,
			"mailtask": 1,
			"exclusivegateway": 2,
			"parallelgateway": 1
		},
		"58001691-47da-41dc-aa11-e31567e61ccd": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask1",
			"name": "Mail Notification",
			"mailDefinitionRef": "ec30714f-39f4-44db-bf09-ca8b92b5642a"
		},
		"21daa87a-2d67-444f-99b0-91b417e43317": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 825.9999976158142,
			"y": 29.999999701976776,
			"width": 100,
			"height": 60,
			"object": "58001691-47da-41dc-aa11-e31567e61ccd"
		},
		"37b749d9-ae88-4cb5-a73c-281ce1e77504": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow17",
			"name": "SequenceFlow17",
			"sourceRef": "56e342ba-11b9-4fa6-bf29-a9cda5119ce0",
			"targetRef": "58001691-47da-41dc-aa11-e31567e61ccd"
		},
		"025df662-0dda-486d-8a87-0d381e1b58bc": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "775.9999976158142,59.999999701976776 825.9999976158142,59.999999701976776",
			"sourceSymbol": "b4b449e3-07a4-4dde-a5ac-ff70756766a7",
			"targetSymbol": "21daa87a-2d67-444f-99b0-91b417e43317",
			"object": "37b749d9-ae88-4cb5-a73c-281ce1e77504"
		},
		"a319c625-6cdd-497d-bcfb-fd7ce13ebc1a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow18",
			"name": "SequenceFlow18",
			"sourceRef": "58001691-47da-41dc-aa11-e31567e61ccd",
			"targetRef": "b32429d8-d11d-4dec-9300-2d5ef3b59ab1"
		},
		"03bf3aab-b6aa-4cca-9e82-9659e824e2bd": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "925.9999976158142,59.999999701976776 975.9999976158142,59.999999701976776",
			"sourceSymbol": "21daa87a-2d67-444f-99b0-91b417e43317",
			"targetSymbol": "301db01b-97fe-40de-9743-b43015bd60b8",
			"object": "a319c625-6cdd-497d-bcfb-fd7ce13ebc1a"
		},
		"ec30714f-39f4-44db-bf09-ca8b92b5642a": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "vivekananda.panigrahy@sap.com",
			"subject": "Mail test",
			"text": "${context.S4HANAService.response}",
			"id": "maildefinition1"
		}
	}
}