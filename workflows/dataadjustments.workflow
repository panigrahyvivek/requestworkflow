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
					"name": "Is Apply Rules true ?"
				},
				"58001691-47da-41dc-aa11-e31567e61ccd": {
					"name": "Mail Notification"
				},
				"aa8a0fa2-cd41-4649-ba70-d9c516f242bc": {
					"name": "Is Approved ?"
				},
				"d11ebec8-36a2-4afd-b590-7c7a982797ee": {
					"name": "Maintain payload from Rule Service"
				},
				"4650780c-4d48-4d2f-8078-79e4f1ec0cab": {
					"name": "ExclusiveGateway4"
				},
				"fdfe2375-c8a3-4262-abe9-d6f599e6fb3a": {
					"name": "Fetch Rule Definition for Restatements"
				}
			},
			"sequenceFlows": {
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
				},
				"10e08cef-b1b3-4067-b304-b22cd73fb8f2": {
					"name": "SequenceFlow20"
				},
				"ab53d90b-1d36-491f-8b63-8c9285fad396": {
					"name": "SequenceFlow21"
				},
				"810478b7-581b-4e2e-94f3-a2bad2645246": {
					"name": "SequenceFlow22"
				},
				"58f5332a-6676-41b7-b34b-7c04d7146a13": {
					"name": "SequenceFlow23"
				},
				"af5fd1b2-332f-4d87-bbb2-ebd54b00c248": {
					"name": "SequenceFlow24"
				},
				"048e744d-05f2-4201-8f8c-4c588fd7e31e": {
					"name": "SequenceFlow25"
				},
				"cb229e97-46b5-48f8-babb-1e4df6cd5018": {
					"name": "SequenceFlow26"
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
			"name": "Is Apply Rules true ?",
			"default": "d874a0bb-0508-4375-82e8-f67e6372323a"
		},
		"58001691-47da-41dc-aa11-e31567e61ccd": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask1",
			"name": "Mail Notification",
			"mailDefinitionRef": "ec30714f-39f4-44db-bf09-ca8b92b5642a"
		},
		"aa8a0fa2-cd41-4649-ba70-d9c516f242bc": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway3",
			"name": "Is Approved ?",
			"default": "10e08cef-b1b3-4067-b304-b22cd73fb8f2"
		},
		"d11ebec8-36a2-4afd-b590-7c7a982797ee": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/dataadjustments/postRuleServicePayload.js",
			"id": "scripttask2",
			"name": "Maintain payload from Rule Service"
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
			"targetRef": "aa8a0fa2-cd41-4649-ba70-d9c516f242bc"
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
		"37b749d9-ae88-4cb5-a73c-281ce1e77504": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow17",
			"name": "SequenceFlow17",
			"sourceRef": "56e342ba-11b9-4fa6-bf29-a9cda5119ce0",
			"targetRef": "58001691-47da-41dc-aa11-e31567e61ccd"
		},
		"a319c625-6cdd-497d-bcfb-fd7ce13ebc1a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow18",
			"name": "SequenceFlow18",
			"sourceRef": "58001691-47da-41dc-aa11-e31567e61ccd",
			"targetRef": "b32429d8-d11d-4dec-9300-2d5ef3b59ab1"
		},
		"10e08cef-b1b3-4067-b304-b22cd73fb8f2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow20",
			"name": "SequenceFlow20",
			"sourceRef": "aa8a0fa2-cd41-4649-ba70-d9c516f242bc",
			"targetRef": "4650780c-4d48-4d2f-8078-79e4f1ec0cab"
		},
		"ab53d90b-1d36-491f-8b63-8c9285fad396": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approved== false}",
			"id": "sequenceflow21",
			"name": "SequenceFlow21",
			"sourceRef": "aa8a0fa2-cd41-4649-ba70-d9c516f242bc",
			"targetRef": "b32429d8-d11d-4dec-9300-2d5ef3b59ab1"
		},
		"810478b7-581b-4e2e-94f3-a2bad2645246": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow22",
			"name": "SequenceFlow22",
			"sourceRef": "12e9075b-b396-46bd-a9a1-1b68270d05f0",
			"targetRef": "d11ebec8-36a2-4afd-b590-7c7a982797ee"
		},
		"58f5332a-6676-41b7-b34b-7c04d7146a13": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow23",
			"name": "SequenceFlow23",
			"sourceRef": "d11ebec8-36a2-4afd-b590-7c7a982797ee",
			"targetRef": "ac5e4850-36d2-4417-a675-3b8a64e9cc79"
		},
		"18054ba5-5849-4761-a5db-40daade2b51a": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"66d74a89-f548-4bbc-9f87-c1d95370a2df": {},
				"301db01b-97fe-40de-9743-b43015bd60b8": {},
				"b4c559cf-4255-4706-ae41-467f27eb3d5d": {},
				"14883b2a-1d40-4eb0-9209-d44be6468e3a": {},
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
				"03bf3aab-b6aa-4cca-9e82-9659e824e2bd": {},
				"723f56f7-3589-403a-8cf8-fb1490ea847e": {},
				"7c37bb1f-0a8f-42a5-a33e-56b3d5c20911": {},
				"02d7c445-a827-4486-b142-69f08feff45d": {},
				"3d772303-7526-4f4a-b638-75c4c857d63b": {},
				"f5f414f2-44fe-4ae1-be6b-47e80869c982": {},
				"c1275a6f-7ad0-4085-ba79-fef253fe8c49": {},
				"cf6b4151-d690-4bb1-bb41-29a9f956cc00": {},
				"75293942-c80c-49f7-96af-65b94f414017": {},
				"3a582917-13e6-4448-9625-54cefcd698e8": {},
				"458d932d-b098-499d-833b-a032aa8caab1": {},
				"797a575a-9bf0-48a1-b51e-f61037834528": {}
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
			"y": 66.99999970197678,
			"width": 32,
			"height": 32,
			"object": "64486585-a2b6-4c85-8b19-9bf8aefcf1b6"
		},
		"301db01b-97fe-40de-9743-b43015bd60b8": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1539.9999928474426,
			"y": 66.99999970197678,
			"width": 32,
			"height": 32,
			"object": "b32429d8-d11d-4dec-9300-2d5ef3b59ab1"
		},
		"b4c559cf-4255-4706-ae41-467f27eb3d5d": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 675.9999976158142,
			"y": 52.999999701976776,
			"width": 100,
			"height": 60,
			"object": "ac5e4850-36d2-4417-a675-3b8a64e9cc79"
		},
		"14883b2a-1d40-4eb0-9209-d44be6468e3a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 355.9999988079071,
			"y": 35,
			"width": 100,
			"height": 60,
			"object": "12e9075b-b396-46bd-a9a1-1b68270d05f0"
		},
		"1df5eae4-b533-4173-ad59-3891a819bf56": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 94,
			"y": 52.999999701976776,
			"width": 100,
			"height": 60,
			"object": "aee60677-640c-4280-b846-87f75469f966"
		},
		"e6e14c73-8e4d-4678-8226-ca9ef412eebc": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "44,82.99999970197678 94,82.99999970197678",
			"sourceSymbol": "66d74a89-f548-4bbc-9f87-c1d95370a2df",
			"targetSymbol": "1df5eae4-b533-4173-ad59-3891a819bf56",
			"object": "a50e196f-f87e-417b-bd44-939038a7d6a1"
		},
		"b4b449e3-07a4-4dde-a5ac-ff70756766a7": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1219.9999940395355,
			"y": 70.99999940395355,
			"width": 100,
			"height": 60,
			"object": "56e342ba-11b9-4fa6-bf29-a9cda5119ce0"
		},
		"4c92631f-9c64-4c74-bf76-6e63a0f837bf": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "775.9999976158142,82.99999970197678 825.9999976158142,82.99999970197678",
			"sourceSymbol": "b4c559cf-4255-4706-ae41-467f27eb3d5d",
			"targetSymbol": "723f56f7-3589-403a-8cf8-fb1490ea847e",
			"object": "71cb4988-262a-415c-b5ed-1709fed3421c"
		},
		"a7b404d2-6332-413f-9802-e679be6bad90": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 244,
			"y": 61.999999701976776,
			"object": "fa32dda3-b4c6-4c35-9b3f-50ca72c42eba"
		},
		"e7000b3e-1bc7-4ba5-8940-8dde5e1bcdaf": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "286,82.99999970197678 320.99999940395355,82.99999970197678 320.99999940395355,65 355.9999988079071,65",
			"sourceSymbol": "a7b404d2-6332-413f-9802-e679be6bad90",
			"targetSymbol": "14883b2a-1d40-4eb0-9209-d44be6468e3a",
			"object": "d874a0bb-0508-4375-82e8-f67e6372323a"
		},
		"83e8f167-342a-4ea3-a7c9-8c460db92475": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "194,82.99999970197678 244,82.99999970197678",
			"sourceSymbol": "1df5eae4-b533-4173-ad59-3891a819bf56",
			"targetSymbol": "a7b404d2-6332-413f-9802-e679be6bad90",
			"object": "cb5fb78a-3c05-4f7e-8822-6ea241198f86"
		},
		"c4646f68-2387-4a6d-99db-2bf6eba3be5c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "286,82.99999970197678 320.99999940395355,82.99999970197678 320.99999940395355,129.99999940395355 640.9999982118607,129.99999940395355 640.9999982118607,82.99999970197678 675.9999976158142,82.99999970197678",
			"sourceSymbol": "a7b404d2-6332-413f-9802-e679be6bad90",
			"targetSymbol": "b4c559cf-4255-4706-ae41-467f27eb3d5d",
			"object": "c22321f2-b1fc-46ed-ba03-135b6e23475f"
		},
		"21daa87a-2d67-444f-99b0-91b417e43317": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 1369.9999940395355,
			"y": 70.99999940395355,
			"width": 100,
			"height": 60,
			"object": "58001691-47da-41dc-aa11-e31567e61ccd"
		},
		"025df662-0dda-486d-8a87-0d381e1b58bc": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1319.9999940395355,100.99999940395355 1369.9999940395355,100.99999940395355",
			"sourceSymbol": "b4b449e3-07a4-4dde-a5ac-ff70756766a7",
			"targetSymbol": "21daa87a-2d67-444f-99b0-91b417e43317",
			"object": "37b749d9-ae88-4cb5-a73c-281ce1e77504"
		},
		"03bf3aab-b6aa-4cca-9e82-9659e824e2bd": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1469.9999940395355,100.99999940395355 1504.999993443489,100.99999940395355 1504.999993443489,82.99999970197678 1539.9999928474426,82.99999970197678",
			"sourceSymbol": "21daa87a-2d67-444f-99b0-91b417e43317",
			"targetSymbol": "301db01b-97fe-40de-9743-b43015bd60b8",
			"object": "a319c625-6cdd-497d-bcfb-fd7ce13ebc1a"
		},
		"723f56f7-3589-403a-8cf8-fb1490ea847e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 825.9999976158142,
			"y": 61.999999701976776,
			"object": "aa8a0fa2-cd41-4649-ba70-d9c516f242bc"
		},
		"7c37bb1f-0a8f-42a5-a33e-56b3d5c20911": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "867.9999976158142,82.99999970197678 902.9999970197678,82.99999970197678 902.9999970197678,100.99999940395355 937.9999964237213,100.99999940395355",
			"sourceSymbol": "723f56f7-3589-403a-8cf8-fb1490ea847e",
			"targetSymbol": "cf6b4151-d690-4bb1-bb41-29a9f956cc00",
			"object": "10e08cef-b1b3-4067-b304-b22cd73fb8f2"
		},
		"02d7c445-a827-4486-b142-69f08feff45d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "867.9999976158142,82.99999970197678 902.9999970197678,82.99999970197678 902.9999970197678,44 1014.9999958276749,44 1014.9999958276749,12 1184.999994635582,12 1184.999994635582,35 1504.999993443489,35 1504.999993443489,82.99999970197678 1539.9999928474426,82.99999970197678",
			"sourceSymbol": "723f56f7-3589-403a-8cf8-fb1490ea847e",
			"targetSymbol": "301db01b-97fe-40de-9743-b43015bd60b8",
			"object": "ab53d90b-1d36-491f-8b63-8c9285fad396"
		},
		"3d772303-7526-4f4a-b638-75c4c857d63b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 505.9999988079071,
			"y": 35,
			"width": 100,
			"height": 60,
			"object": "d11ebec8-36a2-4afd-b590-7c7a982797ee"
		},
		"f5f414f2-44fe-4ae1-be6b-47e80869c982": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "455.9999988079071,65 505.9999988079071,65",
			"sourceSymbol": "14883b2a-1d40-4eb0-9209-d44be6468e3a",
			"targetSymbol": "3d772303-7526-4f4a-b638-75c4c857d63b",
			"object": "810478b7-581b-4e2e-94f3-a2bad2645246"
		},
		"c1275a6f-7ad0-4085-ba79-fef253fe8c49": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "605.9999988079071,65 640.9999982118607,65 640.9999982118607,82.99999970197678 675.9999976158142,82.99999970197678",
			"sourceSymbol": "3d772303-7526-4f4a-b638-75c4c857d63b",
			"targetSymbol": "b4c559cf-4255-4706-ae41-467f27eb3d5d",
			"object": "58f5332a-6676-41b7-b34b-7c04d7146a13"
		},
		"2e0e98a2-537a-47df-baed-debfb222e193": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 2,
			"maildefinition": 1,
			"hubapireference": 2,
			"sequenceflow": 26,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"servicetask": 3,
			"scripttask": 2,
			"mailtask": 1,
			"exclusivegateway": 4,
			"parallelgateway": 1
		},
		"ec30714f-39f4-44db-bf09-ca8b92b5642a": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "vivekananda.panigrahy@sap.com",
			"subject": "Mail test",
			"text": "${context.S4HANAService.response}",
			"id": "maildefinition1"
		},
		"4650780c-4d48-4d2f-8078-79e4f1ec0cab": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway4",
			"name": "ExclusiveGateway4",
			"default": "cb229e97-46b5-48f8-babb-1e4df6cd5018"
		},
		"cf6b4151-d690-4bb1-bb41-29a9f956cc00": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 937.9999964237213,
			"y": 79.99999940395355,
			"object": "4650780c-4d48-4d2f-8078-79e4f1ec0cab"
		},
		"af5fd1b2-332f-4d87-bbb2-ebd54b00c248": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.__metadata__.changeType== 'retumble_mgmtact'}",
			"id": "sequenceflow24",
			"name": "SequenceFlow24",
			"sourceRef": "4650780c-4d48-4d2f-8078-79e4f1ec0cab",
			"targetRef": "fdfe2375-c8a3-4262-abe9-d6f599e6fb3a"
		},
		"75293942-c80c-49f7-96af-65b94f414017": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "979.9999964237213,100.99999940395355 1014.9999958276749,100.99999940395355 1014.9999958276749,123.99999940395355 1049.4999952316284,123.99999940395355",
			"sourceSymbol": "cf6b4151-d690-4bb1-bb41-29a9f956cc00",
			"targetSymbol": "3a582917-13e6-4448-9625-54cefcd698e8",
			"object": "af5fd1b2-332f-4d87-bbb2-ebd54b00c248"
		},
		"fdfe2375-c8a3-4262-abe9-d6f599e6fb3a": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "BUSINESS_RULES_REPOSITORY",
			"path": "/rules-service/rest/v1/projects/b403800df52b4b8992ac98d0af1597d5/rules/2a2ee09cb4174b6e8c532bb9dd86a2aa",
			"httpMethod": "GET",
			"responseVariable": "${context.S4HANAService.request.IRuleData}",
			"id": "servicetask3",
			"name": "Fetch Rule Definition for Restatements"
		},
		"3a582917-13e6-4448-9625-54cefcd698e8": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1049.9999952316284,
			"y": 93.99999940395355,
			"width": 100,
			"height": 60,
			"object": "fdfe2375-c8a3-4262-abe9-d6f599e6fb3a"
		},
		"048e744d-05f2-4201-8f8c-4c588fd7e31e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow25",
			"name": "SequenceFlow25",
			"sourceRef": "fdfe2375-c8a3-4262-abe9-d6f599e6fb3a",
			"targetRef": "56e342ba-11b9-4fa6-bf29-a9cda5119ce0"
		},
		"458d932d-b098-499d-833b-a032aa8caab1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1149.9999952316284,123.99999940395355 1184.999994635582,123.99999940395355 1184.999994635582,100.99999940395355 1219.9999940395355,100.99999940395355",
			"sourceSymbol": "3a582917-13e6-4448-9625-54cefcd698e8",
			"targetSymbol": "b4b449e3-07a4-4dde-a5ac-ff70756766a7",
			"object": "048e744d-05f2-4201-8f8c-4c588fd7e31e"
		},
		"cb229e97-46b5-48f8-babb-1e4df6cd5018": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow26",
			"name": "SequenceFlow26",
			"sourceRef": "4650780c-4d48-4d2f-8078-79e4f1ec0cab",
			"targetRef": "56e342ba-11b9-4fa6-bf29-a9cda5119ce0"
		},
		"797a575a-9bf0-48a1-b51e-f61037834528": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "979.9999964237213,100.99999940395355 1014.9999958276749,100.99999940395355 1014.9999958276749,58 1184.999994635582,58 1184.999994635582,100.99999940395355 1219.9999940395355,100.99999940395355",
			"sourceSymbol": "cf6b4151-d690-4bb1-bb41-29a9f956cc00",
			"targetSymbol": "b4b449e3-07a4-4dde-a5ac-ff70756766a7",
			"object": "cb229e97-46b5-48f8-babb-1e4df6cd5018"
		}
	}
}