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
					"name": "StartEvent1"
				},
				"b32429d8-d11d-4dec-9300-2d5ef3b59ab1": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"ac5e4850-36d2-4417-a675-3b8a64e9cc79": {
					"name": "Approval Task"
				},
				"12e9075b-b396-46bd-a9a1-1b68270d05f0": {
					"name": "Construct Rules Payload"
				}
			},
			"sequenceFlows": {
				"0d8c0988-31ff-4b51-9d45-bffeb339667d": {
					"name": "SequenceFlow5"
				},
				"a9fb1b57-4b0d-4d66-a89e-92a492ea94dd": {
					"name": "SequenceFlow6"
				},
				"759e1f79-1555-43d5-97c7-2fe3e1631417": {
					"name": "SequenceFlow7"
				}
			},
			"diagrams": {
				"18054ba5-5849-4761-a5db-40daade2b51a": {}
			}
		},
		"64486585-a2b6-4c85-8b19-9bf8aefcf1b6": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"dc98eed2-29eb-474b-bd9c-3565e14bda78": {}
			}
		},
		"b32429d8-d11d-4dec-9300-2d5ef3b59ab1": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"ac5e4850-36d2-4417-a675-3b8a64e9cc79": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval for Change ${context.changeId}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/requestapproval/webapp/com.sap.demo.requestapproval.requestapproval",
			"recipientUsers": "P182743",
			"id": "usertask1",
			"name": "Approval Task"
		},
		"12e9075b-b396-46bd-a9a1-1b68270d05f0": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "BUSINESS_RULES",
			"path": "/rules-service/rest/v1/rule-services/java/Reclassification/RequestRuleService",
			"httpMethod": "POST",
			"xsrfPath": "/rules-service/v1/rules/xsrf-token",
			"requestVariable": "${context.Account}",
			"responseVariable": "${context.output}",
			"id": "servicetask1",
			"name": "Construct Rules Payload"
		},
		"18054ba5-5849-4761-a5db-40daade2b51a": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"66d74a89-f548-4bbc-9f87-c1d95370a2df": {},
				"301db01b-97fe-40de-9743-b43015bd60b8": {},
				"b4c559cf-4255-4706-ae41-467f27eb3d5d": {},
				"14883b2a-1d40-4eb0-9209-d44be6468e3a": {},
				"3a4f2104-3382-414e-bb84-e0538ed7c28a": {},
				"864581b7-4343-4215-a5eb-dce6fb53e29c": {},
				"007fda8d-812d-4672-aa22-d07de9cf9487": {}
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
			"y": 26,
			"width": 32,
			"height": 32,
			"object": "64486585-a2b6-4c85-8b19-9bf8aefcf1b6"
		},
		"301db01b-97fe-40de-9743-b43015bd60b8": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 413.9999988079071,
			"y": 26.120733880294665,
			"width": 32,
			"height": 32,
			"object": "b32429d8-d11d-4dec-9300-2d5ef3b59ab1"
		},
		"b4c559cf-4255-4706-ae41-467f27eb3d5d": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 263.9999988079071,
			"y": 12.120733880294665,
			"width": 100,
			"height": 60,
			"object": "ac5e4850-36d2-4417-a675-3b8a64e9cc79"
		},
		"14883b2a-1d40-4eb0-9209-d44be6468e3a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 94,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "12e9075b-b396-46bd-a9a1-1b68270d05f0"
		},
		"2e0e98a2-537a-47df-baed-debfb222e193": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"hubapireference": 1,
			"sequenceflow": 7,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"servicetask": 1
		},
		"0d8c0988-31ff-4b51-9d45-bffeb339667d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "64486585-a2b6-4c85-8b19-9bf8aefcf1b6",
			"targetRef": "12e9075b-b396-46bd-a9a1-1b68270d05f0"
		},
		"3a4f2104-3382-414e-bb84-e0538ed7c28a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "44,42 94,42",
			"sourceSymbol": "66d74a89-f548-4bbc-9f87-c1d95370a2df",
			"targetSymbol": "14883b2a-1d40-4eb0-9209-d44be6468e3a",
			"object": "0d8c0988-31ff-4b51-9d45-bffeb339667d"
		},
		"a9fb1b57-4b0d-4d66-a89e-92a492ea94dd": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "12e9075b-b396-46bd-a9a1-1b68270d05f0",
			"targetRef": "ac5e4850-36d2-4417-a675-3b8a64e9cc79"
		},
		"864581b7-4343-4215-a5eb-dce6fb53e29c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "194,42 228.99999940395355,42 228.99999940395355,42.120733880294665 263.9999988079071,42.120733880294665",
			"sourceSymbol": "14883b2a-1d40-4eb0-9209-d44be6468e3a",
			"targetSymbol": "b4c559cf-4255-4706-ae41-467f27eb3d5d",
			"object": "a9fb1b57-4b0d-4d66-a89e-92a492ea94dd"
		},
		"759e1f79-1555-43d5-97c7-2fe3e1631417": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "ac5e4850-36d2-4417-a675-3b8a64e9cc79",
			"targetRef": "b32429d8-d11d-4dec-9300-2d5ef3b59ab1"
		},
		"007fda8d-812d-4672-aa22-d07de9cf9487": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "363.9999988079071,42.120733880294665 413.9999988079071,42.120733880294665",
			"sourceSymbol": "b4c559cf-4255-4706-ae41-467f27eb3d5d",
			"targetSymbol": "301db01b-97fe-40de-9743-b43015bd60b8",
			"object": "759e1f79-1555-43d5-97c7-2fe3e1631417"
		}
	}
}