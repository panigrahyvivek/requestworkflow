{
	"contents": {
		"424e5637-9db8-4be0-87fe-caba04be603c": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "assetcreation",
			"subject": "assetcreation",
			"name": "assetcreation",
			"documentation": "",
			"lastIds": "dd405d7a-413b-4f92-867e-10f48d540eb4",
			"events": {
				"7f5d5e3d-451e-4c29-b822-0051d7556e64": {
					"name": "StartEvent"
				},
				"d93f5e72-8c7b-4d82-bd9d-682c1455c6c4": {
					"name": "EndEvent"
				},
				"678f13b4-debc-4a94-ae2b-8b96ed64b63e": {
					"name": "Wait for Confirmation"
				}
			},
			"activities": {
				"46ddd68f-7d50-4ab7-a397-03cbf02fcfef": {
					"name": "Fetch Approvers"
				},
				"55909920-9d7d-4ba3-8700-27587a36c7a7": {
					"name": "Approval - Agent 98"
				},
				"44a777b3-410c-4b0e-86dc-bfdca26aa42f": {
					"name": "Approval - Wave Apps"
				},
				"8435f926-4fda-4bbb-96f6-725c713712fc": {
					"name": "Approval - Mandatory"
				},
				"3a2c2752-dffc-45f9-9007-40269b7b93fd": {
					"name": "Fetch Cloud Approver Details"
				},
				"d928efa5-8570-4834-9d2e-01b1a0e72d9a": {
					"name": "Update Approval Status - Step 3"
				},
				"883f7d8c-9009-4f8c-8344-1abaa0b3f576": {
					"name": "Manage Initial Payload"
				},
				"334dc71d-e77b-465c-891c-d6a1e1d212ad": {
					"name": "Manage Approve Recipients"
				},
				"07edc1d2-366d-4a20-9bbe-af77e8caa781": {
					"name": "ExclusiveGateway1"
				},
				"57f430eb-de5f-4973-baa2-204a64c033df": {
					"name": "ExclusiveGateway2"
				},
				"3db2d8e0-91c1-4a51-81a5-7ee58db2f636": {
					"name": "Update Form Status"
				},
				"165b170f-5351-4a77-b63d-ab05ce5b80f2": {
					"name": "Handle Reject"
				},
				"b55ac736-c614-4162-bc0a-0177230a8264": {
					"name": "ExclusiveGateway3"
				},
				"30001ac9-9642-49d5-b2a0-5b80b0c6aad4": {
					"name": "Start Settlement Process"
				},
				"f4138df6-84e3-4642-b4b1-ed28f5f5b047": {
					"name": "Send Notifications"
				},
				"e9eff8a3-2d0c-4515-991b-df3cf4fd9217": {
					"name": "Test Update status workflow"
				}
			},
			"sequenceFlows": {
				"3eb6908e-4fad-4630-96ab-c74e1fe1915a": {
					"name": "SequenceFlow1"
				},
				"806bc54d-2ade-435e-8fce-1c301107784b": {
					"name": "SequenceFlow6"
				},
				"46dbf209-68e0-4b1e-997c-28fa32b8e71a": {
					"name": "SequenceFlow9"
				},
				"1db2f8ff-2e72-40b1-8ca8-9e46c9918acf": {
					"name": "SequenceFlow11"
				},
				"5ef607b5-6ec0-4bed-a522-bc8220caac05": {
					"name": "SequenceFlow13"
				},
				"a19a509d-0a34-44f3-9099-a502c24da58b": {
					"name": "SequenceFlow14"
				},
				"0464b389-f47d-483f-98d5-e0e1f45eeb82": {
					"name": "S16"
				},
				"aac07c8b-9933-410a-8f86-51ea7fdda8fb": {
					"name": "S17"
				},
				"c8ea2d99-885f-4fb0-8296-b6951188ec6f": {
					"name": "S21"
				},
				"fac29f9b-f58c-4ac0-bc1e-2e8925708a7c": {
					"name": "S22"
				},
				"c94db3cd-4e12-4ea9-a128-75d2771ec65d": {
					"name": "S23"
				},
				"19bae768-7f45-420b-9dc3-30d8c8a2eaad": {
					"name": "S24"
				},
				"dabf0671-a3cf-4b0b-9464-2562cd03910d": {
					"name": "SequenceFlow26"
				},
				"105ec0e7-c051-40cf-b817-504f97dc08c9": {
					"name": "SequenceFlow27"
				},
				"d9c203ae-d604-4c20-80f2-d2e4854e3b57": {
					"name": "SequenceFlow28"
				},
				"6e7f04b5-ddf9-495f-becb-63a980b5111e": {
					"name": "SequenceFlow32"
				},
				"4676be4f-8591-4d62-baeb-f17df7461f62": {
					"name": "SequenceFlow35"
				},
				"23bf2031-78ff-4d15-a306-7e27ff07282d": {
					"name": "SequenceFlow36"
				},
				"80652a71-4bed-45ff-b222-8588f1dac711": {
					"name": "SequenceFlow40"
				},
				"6c4df763-5736-4833-ba80-7a3071684dfc": {
					"name": "SequenceFlow42"
				},
				"c17f64d1-c84e-4910-900e-1a98fd065ddc": {
					"name": "SequenceFlow43"
				}
			},
			"diagrams": {
				"155bd779-3e4d-4875-bbfc-38b57abc82a8": {}
			}
		},
		"7f5d5e3d-451e-4c29-b822-0051d7556e64": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent",
			"sampleContextRefs": {
				"e5f38df5-350b-42fe-86b9-6be354ceffbe": {}
			}
		},
		"d93f5e72-8c7b-4d82-bd9d-682c1455c6c4": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent"
		},
		"678f13b4-debc-4a94-ae2b-8b96ed64b63e": {
			"classDefinition": "com.sap.bpm.wfs.IntermediateCatchEvent",
			"id": "intermediatetimerevent1",
			"name": "Wait for Confirmation",
			"eventDefinitions": {
				"cdf64a28-1ae6-4f1d-9595-e12d38b192d3": {}
			}
		},
		"46ddd68f-7d50-4ab7-a397-03cbf02fcfef": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "assetcreation",
			"path": "/sap/opu/odata/sap/ZPGPOCROC_SRV/ZROC_I_FORM('804')/to_Approvers",
			"httpMethod": "GET",
			"responseVariable": "${context.approvers}",
			"id": "servicetask1",
			"name": "Fetch Approvers"
		},
		"55909920-9d7d-4ba3-8700-27587a36c7a7": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval - Agent 98",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/assetapproval/webapp/com.assetapproval.assetapproval",
			"recipientUsers": "${context.agent98Approvers}",
			"recipientGroups": "",
			"id": "usertask1",
			"name": "Approval - Agent 98"
		},
		"44a777b3-410c-4b0e-86dc-bfdca26aa42f": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval - Wave Apps",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/assetapproval/webapp/com.assetapproval.assetapproval",
			"recipientUsers": "${context.waveAppsApprovers}",
			"recipientGroups": "",
			"id": "usertask2",
			"name": "Approval - Wave Apps"
		},
		"8435f926-4fda-4bbb-96f6-725c713712fc": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval - Mandatory",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/assetapproval/webapp/com.assetapproval.assetapproval",
			"recipientUsers": "${context.mandatoryApprovers}",
			"id": "usertask3",
			"name": "Approval - Mandatory"
		},
		"3a2c2752-dffc-45f9-9007-40269b7b93fd": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "BUSINESS_RULES",
			"path": "/rules-service/rest/v1/rule-services/java/AssetCreation/assetApproversRuleService",
			"httpMethod": "POST",
			"xsrfPath": "/rules-service/v1/rules/xsrf-token",
			"requestVariable": "${context.backedUserDetailsForRule}",
			"responseVariable": "${context.cloudApproverDetails}",
			"id": "servicetask2",
			"name": "Fetch Cloud Approver Details"
		},
		"d928efa5-8570-4834-9d2e-01b1a0e72d9a": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "assetcreation",
			"path": "${context.formupdate.servicePath}",
			"httpMethod": "PUT",
			"xsrfPath": "/sap/opu/odata/sap/ZPGPOCROC_SRV/",
			"requestVariable": "${context.statusPayloads.APPROVED_SETTLEMENT_IN_PROGRESS}",
			"responseVariable": "${context.statusResponse.settlement}",
			"id": "servicetask5",
			"name": "Update Approval Status - Step 3"
		},
		"883f7d8c-9009-4f8c-8344-1abaa0b3f576": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/assetcreation/ManageInitialPayload.js",
			"id": "scripttask1",
			"name": "Manage Initial Payload"
		},
		"334dc71d-e77b-465c-891c-d6a1e1d212ad": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/assetcreation/ApproverRecipients.js",
			"id": "scripttask2",
			"name": "Manage Approve Recipients"
		},
		"07edc1d2-366d-4a20-9bbe-af77e8caa781": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "ExclusiveGateway1",
			"default": "0464b389-f47d-483f-98d5-e0e1f45eeb82"
		},
		"57f430eb-de5f-4973-baa2-204a64c033df": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "ExclusiveGateway2",
			"default": "aac07c8b-9933-410a-8f86-51ea7fdda8fb"
		},
		"3db2d8e0-91c1-4a51-81a5-7ee58db2f636": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "assetcreation",
			"path": "${context.formupdate.servicePath}",
			"httpMethod": "PUT",
			"xsrfPath": "/sap/opu/odata/sap/ZPGPOCROC_SRV/",
			"requestVariable": "${context.statusPayloads.APPROVAL_STARTED}",
			"responseVariable": "${context.statusResponse.APPROVAL_STARTED}",
			"id": "servicetask6",
			"name": "Update Form Status"
		},
		"165b170f-5351-4a77-b63d-ab05ce5b80f2": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/assetcreation/HandleReject.js",
			"id": "scripttask3",
			"name": "Handle Reject"
		},
		"b55ac736-c614-4162-bc0a-0177230a8264": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway3",
			"name": "ExclusiveGateway3",
			"default": "c94db3cd-4e12-4ea9-a128-75d2771ec65d"
		},
		"30001ac9-9642-49d5-b2a0-5b80b0c6aad4": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "assetcreation",
			"path": "${context.formupdate.settlmentServicePath}",
			"httpMethod": "GET",
			"responseVariable": "${context.settlementResponse}",
			"id": "servicetask7",
			"name": "Start Settlement Process"
		},
		"3eb6908e-4fad-4630-96ab-c74e1fe1915a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "7f5d5e3d-451e-4c29-b822-0051d7556e64",
			"targetRef": "46ddd68f-7d50-4ab7-a397-03cbf02fcfef"
		},
		"806bc54d-2ade-435e-8fce-1c301107784b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "3a2c2752-dffc-45f9-9007-40269b7b93fd",
			"targetRef": "334dc71d-e77b-465c-891c-d6a1e1d212ad"
		},
		"46dbf209-68e0-4b1e-997c-28fa32b8e71a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "44a777b3-410c-4b0e-86dc-bfdca26aa42f",
			"targetRef": "57f430eb-de5f-4973-baa2-204a64c033df"
		},
		"1db2f8ff-2e72-40b1-8ca8-9e46c9918acf": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "8435f926-4fda-4bbb-96f6-725c713712fc",
			"targetRef": "b55ac736-c614-4162-bc0a-0177230a8264"
		},
		"5ef607b5-6ec0-4bed-a522-bc8220caac05": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow13",
			"name": "SequenceFlow13",
			"sourceRef": "46ddd68f-7d50-4ab7-a397-03cbf02fcfef",
			"targetRef": "883f7d8c-9009-4f8c-8344-1abaa0b3f576"
		},
		"a19a509d-0a34-44f3-9099-a502c24da58b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "883f7d8c-9009-4f8c-8344-1abaa0b3f576",
			"targetRef": "3a2c2752-dffc-45f9-9007-40269b7b93fd"
		},
		"0464b389-f47d-483f-98d5-e0e1f45eeb82": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "S16",
			"sourceRef": "07edc1d2-366d-4a20-9bbe-af77e8caa781",
			"targetRef": "44a777b3-410c-4b0e-86dc-bfdca26aa42f"
		},
		"aac07c8b-9933-410a-8f86-51ea7fdda8fb": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow17",
			"name": "S17",
			"sourceRef": "57f430eb-de5f-4973-baa2-204a64c033df",
			"targetRef": "8435f926-4fda-4bbb-96f6-725c713712fc"
		},
		"c8ea2d99-885f-4fb0-8296-b6951188ec6f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approved == false}",
			"id": "sequenceflow21",
			"name": "S21",
			"sourceRef": "07edc1d2-366d-4a20-9bbe-af77e8caa781",
			"targetRef": "165b170f-5351-4a77-b63d-ab05ce5b80f2"
		},
		"fac29f9b-f58c-4ac0-bc1e-2e8925708a7c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approved == false}",
			"id": "sequenceflow22",
			"name": "S22",
			"sourceRef": "57f430eb-de5f-4973-baa2-204a64c033df",
			"targetRef": "165b170f-5351-4a77-b63d-ab05ce5b80f2"
		},
		"c94db3cd-4e12-4ea9-a128-75d2771ec65d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow23",
			"name": "S23",
			"sourceRef": "b55ac736-c614-4162-bc0a-0177230a8264",
			"targetRef": "d928efa5-8570-4834-9d2e-01b1a0e72d9a"
		},
		"19bae768-7f45-420b-9dc3-30d8c8a2eaad": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approved == false}",
			"id": "sequenceflow24",
			"name": "S24",
			"sourceRef": "b55ac736-c614-4162-bc0a-0177230a8264",
			"targetRef": "165b170f-5351-4a77-b63d-ab05ce5b80f2"
		},
		"dabf0671-a3cf-4b0b-9464-2562cd03910d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow26",
			"name": "SequenceFlow26",
			"sourceRef": "165b170f-5351-4a77-b63d-ab05ce5b80f2",
			"targetRef": "678f13b4-debc-4a94-ae2b-8b96ed64b63e"
		},
		"105ec0e7-c051-40cf-b817-504f97dc08c9": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow27",
			"name": "SequenceFlow27",
			"sourceRef": "678f13b4-debc-4a94-ae2b-8b96ed64b63e",
			"targetRef": "d93f5e72-8c7b-4d82-bd9d-682c1455c6c4"
		},
		"d9c203ae-d604-4c20-80f2-d2e4854e3b57": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow28",
			"name": "SequenceFlow28",
			"sourceRef": "334dc71d-e77b-465c-891c-d6a1e1d212ad",
			"targetRef": "3db2d8e0-91c1-4a51-81a5-7ee58db2f636"
		},
		"6e7f04b5-ddf9-495f-becb-63a980b5111e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow32",
			"name": "SequenceFlow32",
			"sourceRef": "55909920-9d7d-4ba3-8700-27587a36c7a7",
			"targetRef": "07edc1d2-366d-4a20-9bbe-af77e8caa781"
		},
		"155bd779-3e4d-4875-bbfc-38b57abc82a8": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"16e053aa-d3cf-4e6d-b24a-807347918ccf": {},
				"d80bc542-14a8-4740-8a65-a9e07b582d89": {},
				"96338fb8-6b05-4232-950e-81774751f244": {},
				"ae8651d8-b904-4584-bd9f-d92863a2fa04": {},
				"1860ecd1-a0ad-4c35-875f-a27620ad4dc7": {},
				"a3e98af7-55cf-44b9-a51e-d1fec9982e7d": {},
				"76b89571-af2d-481d-b3b7-4f083777732a": {},
				"520c4a20-abd0-499c-943c-23012e75669e": {},
				"b9a8482c-4c3b-4aea-8dc8-432e071fb921": {},
				"c61177f7-897b-4dc5-b85c-77e92bb02b05": {},
				"29991a4f-9769-45db-b63b-cdb098e0ac8c": {},
				"949a07f6-3e34-4f61-8e85-548bcb039b70": {},
				"44d799ba-046c-4ae1-aa6a-08ff1acbf3dc": {},
				"888da6d2-a408-439f-8610-cf7bbd079b31": {},
				"77695939-ccf5-4aad-9559-b862245cf67d": {},
				"f218d0aa-d516-49db-9941-38b37bf8b9b3": {},
				"e03fe5c2-a396-4a91-981a-5bd96546df6a": {},
				"10f6a3ec-7b86-420b-b5af-fbcbb5a1f558": {},
				"af134b0c-df60-4e0c-9aa1-db7c9a213b72": {},
				"181ce398-0aff-4bee-ad84-5f882a4d08ad": {},
				"2d490a5e-be67-408a-9143-e58cb1316507": {},
				"afa4015d-aa77-4c8c-af7c-0393f8b949ac": {},
				"aca3d385-072f-43a9-9a38-9e1770efb2d0": {},
				"8f617fe5-40c9-4c82-982c-09cc4e59ab17": {},
				"f6a25c42-f16a-4a7d-a80b-4f51e4ea667c": {},
				"fc87dede-b7fb-4a21-89db-265507b14463": {},
				"b4e1ce98-3e0e-4739-8089-e00e0187495a": {},
				"d9768390-dc14-4e18-8623-86ad56e9af58": {},
				"7f2daf1b-cc7a-4327-8dcf-efdb9642a7a8": {},
				"ce475525-8506-474d-aee4-8395cc1a8e64": {},
				"c52d100b-60c6-4c9d-9c83-8b5eb3ac5f22": {},
				"cf4ac5b4-59ab-4da0-8f14-38d8a65a10f3": {},
				"14e35012-6bad-4688-ba6e-66d0d083550a": {},
				"1f3c8864-8615-4aa8-bba1-31556964f5e4": {},
				"afe30f7c-bdcf-4100-9207-b3069ab250bd": {},
				"18427170-de00-41b4-938f-939f444d5690": {},
				"6807ec30-b149-44b0-b641-57bb0f2c3008": {},
				"7754f151-281e-4979-b420-0f9d4e477709": {},
				"8682a3d2-d412-4ed6-9e37-d776e619688b": {},
				"7cac2a27-dc5a-447c-87b1-48610335a11e": {}
			}
		},
		"cdf64a28-1ae6-4f1d-9595-e12d38b192d3": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "PT1M",
			"id": "timereventdefinition1"
		},
		"16e053aa-d3cf-4e6d-b24a-807347918ccf": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 12,
			"y": 81,
			"width": 32,
			"height": 32,
			"object": "7f5d5e3d-451e-4c29-b822-0051d7556e64"
		},
		"d80bc542-14a8-4740-8a65-a9e07b582d89": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 2563.9999916553497,
			"y": 91.5,
			"width": 35,
			"height": 35,
			"object": "d93f5e72-8c7b-4d82-bd9d-682c1455c6c4"
		},
		"96338fb8-6b05-4232-950e-81774751f244": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "44,97 94,97",
			"sourceSymbol": "16e053aa-d3cf-4e6d-b24a-807347918ccf",
			"targetSymbol": "ae8651d8-b904-4584-bd9f-d92863a2fa04",
			"object": "3eb6908e-4fad-4630-96ab-c74e1fe1915a"
		},
		"ae8651d8-b904-4584-bd9f-d92863a2fa04": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 94,
			"y": 67,
			"width": 100,
			"height": 60,
			"object": "46ddd68f-7d50-4ab7-a397-03cbf02fcfef"
		},
		"1860ecd1-a0ad-4c35-875f-a27620ad4dc7": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 844,
			"y": 67,
			"width": 100,
			"height": 60,
			"object": "55909920-9d7d-4ba3-8700-27587a36c7a7"
		},
		"a3e98af7-55cf-44b9-a51e-d1fec9982e7d": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 1105.999998807907,
			"y": 49.000000298023224,
			"width": 100,
			"height": 60,
			"object": "44a777b3-410c-4b0e-86dc-bfdca26aa42f"
		},
		"76b89571-af2d-481d-b3b7-4f083777732a": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 1387.9999964237213,
			"y": 49.000000298023224,
			"width": 100,
			"height": 60,
			"object": "8435f926-4fda-4bbb-96f6-725c713712fc"
		},
		"520c4a20-abd0-499c-943c-23012e75669e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 394,
			"y": 67,
			"width": 100,
			"height": 60,
			"object": "3a2c2752-dffc-45f9-9007-40269b7b93fd"
		},
		"b9a8482c-4c3b-4aea-8dc8-432e071fb921": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "494,97 544,97",
			"sourceSymbol": "520c4a20-abd0-499c-943c-23012e75669e",
			"targetSymbol": "f218d0aa-d516-49db-9941-38b37bf8b9b3",
			"object": "806bc54d-2ade-435e-8fce-1c301107784b"
		},
		"c61177f7-897b-4dc5-b85c-77e92bb02b05": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1205.999998807907,79.00000029802322 1275.9999976158142,79.00000029802322",
			"sourceSymbol": "a3e98af7-55cf-44b9-a51e-d1fec9982e7d",
			"targetSymbol": "af134b0c-df60-4e0c-9aa1-db7c9a213b72",
			"object": "46dbf209-68e0-4b1e-997c-28fa32b8e71a"
		},
		"29991a4f-9769-45db-b63b-cdb098e0ac8c": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1831.4999940395355,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "d928efa5-8570-4834-9d2e-01b1a0e72d9a"
		},
		"949a07f6-3e34-4f61-8e85-548bcb039b70": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1487.9999964237213,79.00000029802322 1557.9999952316284,79.00000029802322",
			"sourceSymbol": "76b89571-af2d-481d-b3b7-4f083777732a",
			"targetSymbol": "f6a25c42-f16a-4a7d-a80b-4f51e4ea667c",
			"object": "1db2f8ff-2e72-40b1-8ca8-9e46c9918acf"
		},
		"44d799ba-046c-4ae1-aa6a-08ff1acbf3dc": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 244,
			"y": 67,
			"width": 100,
			"height": 60,
			"object": "883f7d8c-9009-4f8c-8344-1abaa0b3f576"
		},
		"888da6d2-a408-439f-8610-cf7bbd079b31": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "194,97 244,97",
			"sourceSymbol": "ae8651d8-b904-4584-bd9f-d92863a2fa04",
			"targetSymbol": "44d799ba-046c-4ae1-aa6a-08ff1acbf3dc",
			"object": "5ef607b5-6ec0-4bed-a522-bc8220caac05"
		},
		"77695939-ccf5-4aad-9559-b862245cf67d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "344,97 394,97",
			"sourceSymbol": "44d799ba-046c-4ae1-aa6a-08ff1acbf3dc",
			"targetSymbol": "520c4a20-abd0-499c-943c-23012e75669e",
			"object": "a19a509d-0a34-44f3-9099-a502c24da58b"
		},
		"f218d0aa-d516-49db-9941-38b37bf8b9b3": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 544,
			"y": 67,
			"width": 100,
			"height": 60,
			"object": "334dc71d-e77b-465c-891c-d6a1e1d212ad"
		},
		"e03fe5c2-a396-4a91-981a-5bd96546df6a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 994,
			"y": 76,
			"object": "07edc1d2-366d-4a20-9bbe-af77e8caa781"
		},
		"10f6a3ec-7b86-420b-b5af-fbcbb5a1f558": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1036,97 1070.9999994039536,97 1070.9999994039536,79.00000029802322 1105.999998807907,79.00000029802322",
			"sourceSymbol": "e03fe5c2-a396-4a91-981a-5bd96546df6a",
			"targetSymbol": "a3e98af7-55cf-44b9-a51e-d1fec9982e7d",
			"object": "0464b389-f47d-483f-98d5-e0e1f45eeb82"
		},
		"af134b0c-df60-4e0c-9aa1-db7c9a213b72": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1275.9999976158142,
			"y": 58.000000298023224,
			"object": "57f430eb-de5f-4973-baa2-204a64c033df"
		},
		"181ce398-0aff-4bee-ad84-5f882a4d08ad": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1317.9999976158142,79.00000029802322 1387.9999964237213,79.00000029802322",
			"sourceSymbol": "af134b0c-df60-4e0c-9aa1-db7c9a213b72",
			"targetSymbol": "76b89571-af2d-481d-b3b7-4f083777732a",
			"object": "aac07c8b-9933-410a-8f86-51ea7fdda8fb"
		},
		"2d490a5e-be67-408a-9143-e58cb1316507": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 694,
			"y": 67,
			"width": 100,
			"height": 60,
			"object": "3db2d8e0-91c1-4a51-81a5-7ee58db2f636"
		},
		"afa4015d-aa77-4c8c-af7c-0393f8b949ac": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 1669.9999940395355,
			"y": 122,
			"width": 423,
			"height": 60,
			"object": "165b170f-5351-4a77-b63d-ab05ce5b80f2"
		},
		"aca3d385-072f-43a9-9a38-9e1770efb2d0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1036,97 1070.9999994039536,97 1070.9999994039536,143.99999970197678 1240.9999982118607,143.99999970197678 1240.9999982118607,134.99999970197678 1352.9999970197678,134.99999970197678 1352.9999970197678,143.99999970197678 1522.9999958276749,143.99999970197678 1522.9999958276749,134.99999970197678 1634.999994635582,134.99999970197678 1634.999994635582,152 1669.9999940395355,152",
			"sourceSymbol": "e03fe5c2-a396-4a91-981a-5bd96546df6a",
			"targetSymbol": "afa4015d-aa77-4c8c-af7c-0393f8b949ac",
			"object": "c8ea2d99-885f-4fb0-8296-b6951188ec6f"
		},
		"8f617fe5-40c9-4c82-982c-09cc4e59ab17": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1317.9999976158142,79.00000029802322 1352.9999970197678,79.00000029802322 1352.9999970197678,143.99999970197678 1522.9999958276749,143.99999970197678 1522.9999958276749,134.99999970197678 1634.999994635582,134.99999970197678 1634.999994635582,152 1669.9999940395355,152",
			"sourceSymbol": "af134b0c-df60-4e0c-9aa1-db7c9a213b72",
			"targetSymbol": "afa4015d-aa77-4c8c-af7c-0393f8b949ac",
			"object": "fac29f9b-f58c-4ac0-bc1e-2e8925708a7c"
		},
		"f6a25c42-f16a-4a7d-a80b-4f51e4ea667c": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1557.9999952316284,
			"y": 58.000000298023224,
			"object": "b55ac736-c614-4162-bc0a-0177230a8264"
		},
		"fc87dede-b7fb-4a21-89db-265507b14463": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1599.9999952316284,79.00000029802322 1634.999994635582,79.00000029802322 1634.999994635582,42 1831.4999940395355,42",
			"sourceSymbol": "f6a25c42-f16a-4a7d-a80b-4f51e4ea667c",
			"targetSymbol": "29991a4f-9769-45db-b63b-cdb098e0ac8c",
			"object": "c94db3cd-4e12-4ea9-a128-75d2771ec65d"
		},
		"b4e1ce98-3e0e-4739-8089-e00e0187495a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1599.9999952316284,79.00000029802322 1634.999994635582,79.00000029802322 1634.999994635582,152 1669.9999940395355,152",
			"sourceSymbol": "f6a25c42-f16a-4a7d-a80b-4f51e4ea667c",
			"targetSymbol": "afa4015d-aa77-4c8c-af7c-0393f8b949ac",
			"object": "19bae768-7f45-420b-9dc3-30d8c8a2eaad"
		},
		"d9768390-dc14-4e18-8623-86ad56e9af58": {
			"classDefinition": "com.sap.bpm.wfs.ui.IntermediateCatchEventSymbol",
			"x": 2524.9999916553497,
			"y": 251,
			"width": 32,
			"height": 32,
			"object": "678f13b4-debc-4a94-ae2b-8b96ed64b63e"
		},
		"7f2daf1b-cc7a-4327-8dcf-efdb9642a7a8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "2092.9999940395355,152 2309.25,152 2309.25,267 2524.9999916553497,267",
			"sourceSymbol": "afa4015d-aa77-4c8c-af7c-0393f8b949ac",
			"targetSymbol": "d9768390-dc14-4e18-8623-86ad56e9af58",
			"object": "dabf0671-a3cf-4b0b-9464-2562cd03910d"
		},
		"ce475525-8506-474d-aee4-8395cc1a8e64": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "2556.9999916553497,267 2560.5,267 2560.5,109 2563.9999916553497,109",
			"sourceSymbol": "d9768390-dc14-4e18-8623-86ad56e9af58",
			"targetSymbol": "d80bc542-14a8-4740-8a65-a9e07b582d89",
			"object": "105ec0e7-c051-40cf-b817-504f97dc08c9"
		},
		"c52d100b-60c6-4c9d-9c83-8b5eb3ac5f22": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "644,97 694,97",
			"sourceSymbol": "f218d0aa-d516-49db-9941-38b37bf8b9b3",
			"targetSymbol": "2d490a5e-be67-408a-9143-e58cb1316507",
			"object": "d9c203ae-d604-4c20-80f2-d2e4854e3b57"
		},
		"cf4ac5b4-59ab-4da0-8f14-38d8a65a10f3": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "944,97 994,97",
			"sourceSymbol": "1860ecd1-a0ad-4c35-875f-a27620ad4dc7",
			"targetSymbol": "e03fe5c2-a396-4a91-981a-5bd96546df6a",
			"object": "6e7f04b5-ddf9-495f-becb-63a980b5111e"
		},
		"14e35012-6bad-4688-ba6e-66d0d083550a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 2160.9999928474426,
			"y": 17.000000298023224,
			"width": 100,
			"height": 60,
			"object": "30001ac9-9642-49d5-b2a0-5b80b0c6aad4"
		},
		"dd405d7a-413b-4f92-867e-10f48d540eb4": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 1,
			"maildefinition": 1,
			"sequenceflow": 43,
			"startevent": 1,
			"intermediatetimerevent": 1,
			"endevent": 1,
			"usertask": 3,
			"servicetask": 9,
			"scripttask": 3,
			"mailtask": 1,
			"exclusivegateway": 3
		},
		"4676be4f-8591-4d62-baeb-f17df7461f62": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow35",
			"name": "SequenceFlow35",
			"sourceRef": "3db2d8e0-91c1-4a51-81a5-7ee58db2f636",
			"targetRef": "55909920-9d7d-4ba3-8700-27587a36c7a7"
		},
		"1f3c8864-8615-4aa8-bba1-31556964f5e4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "794,97 844,97",
			"sourceSymbol": "2d490a5e-be67-408a-9143-e58cb1316507",
			"targetSymbol": "1860ecd1-a0ad-4c35-875f-a27620ad4dc7",
			"object": "4676be4f-8591-4d62-baeb-f17df7461f62"
		},
		"23bf2031-78ff-4d15-a306-7e27ff07282d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow36",
			"name": "SequenceFlow36",
			"sourceRef": "d928efa5-8570-4834-9d2e-01b1a0e72d9a",
			"targetRef": "30001ac9-9642-49d5-b2a0-5b80b0c6aad4"
		},
		"afe30f7c-bdcf-4100-9207-b3069ab250bd": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1931.4999940395355,44.50000014901161 2160.9999928474426,44.50000014901161",
			"sourceSymbol": "29991a4f-9769-45db-b63b-cdb098e0ac8c",
			"targetSymbol": "14e35012-6bad-4688-ba6e-66d0d083550a",
			"object": "23bf2031-78ff-4d15-a306-7e27ff07282d"
		},
		"f4138df6-84e3-4642-b4b1-ed28f5f5b047": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask1",
			"name": "Send Notifications",
			"mailDefinitionRef": "6f135ddd-cd6b-40f3-9e7f-ec797a801bae"
		},
		"18427170-de00-41b4-938f-939f444d5690": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 2338,
			"y": 17,
			"width": 100,
			"height": 60,
			"object": "f4138df6-84e3-4642-b4b1-ed28f5f5b047"
		},
		"80652a71-4bed-45ff-b222-8588f1dac711": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow40",
			"name": "SequenceFlow40",
			"sourceRef": "30001ac9-9642-49d5-b2a0-5b80b0c6aad4",
			"targetRef": "f4138df6-84e3-4642-b4b1-ed28f5f5b047"
		},
		"6807ec30-b149-44b0-b641-57bb0f2c3008": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "2210.9999928474426,47.000000298023224 2377,47.000000298023224",
			"sourceSymbol": "14e35012-6bad-4688-ba6e-66d0d083550a",
			"targetSymbol": "18427170-de00-41b4-938f-939f444d5690",
			"object": "80652a71-4bed-45ff-b222-8588f1dac711"
		},
		"6f135ddd-cd6b-40f3-9e7f-ec797a801bae": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "vivekananda.panigrahy@sap.com",
			"cc": "",
			"bcc": "",
			"subject": "Mail test",
			"text": "${context.settlementResponse}",
			"id": "maildefinition1"
		},
		"e9eff8a3-2d0c-4515-991b-df3cf4fd9217": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "bpmworkflowruntime_CLONING",
			"path": "/workflow-service/rest/v1/workflow-instances/4f495ee3-bc3f-11e8-bb1d-00163e70df5e",
			"httpMethod": "PATCH",
			"xsrfPath": "/workflow-service/rest/v1/xsrf-token",
			"requestVariable": "${context.workflowInstanceUpdatePayload}",
			"responseVariable": "${context.workflowInstanceUpdateResponse}",
			"id": "servicetask9",
			"name": "Test Update status workflow"
		},
		"7754f151-281e-4979-b420-0f9d4e477709": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 2415,
			"y": 122,
			"width": 100,
			"height": 60,
			"object": "e9eff8a3-2d0c-4515-991b-df3cf4fd9217"
		},
		"6c4df763-5736-4833-ba80-7a3071684dfc": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow42",
			"name": "SequenceFlow42",
			"sourceRef": "f4138df6-84e3-4642-b4b1-ed28f5f5b047",
			"targetRef": "e9eff8a3-2d0c-4515-991b-df3cf4fd9217"
		},
		"8682a3d2-d412-4ed6-9e37-d776e619688b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "2388,47 2388,99.75 2482,99.75 2482,156",
			"sourceSymbol": "18427170-de00-41b4-938f-939f444d5690",
			"targetSymbol": "7754f151-281e-4979-b420-0f9d4e477709",
			"object": "6c4df763-5736-4833-ba80-7a3071684dfc"
		},
		"c17f64d1-c84e-4910-900e-1a98fd065ddc": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow43",
			"name": "SequenceFlow43",
			"sourceRef": "e9eff8a3-2d0c-4515-991b-df3cf4fd9217",
			"targetRef": "678f13b4-debc-4a94-ae2b-8b96ed64b63e"
		},
		"7cac2a27-dc5a-447c-87b1-48610335a11e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "2465,152 2465,216.75 2541,216.75 2540.9999916553497,267",
			"sourceSymbol": "7754f151-281e-4979-b420-0f9d4e477709",
			"targetSymbol": "d9768390-dc14-4e18-8623-86ad56e9af58",
			"object": "c17f64d1-c84e-4910-900e-1a98fd065ddc"
		},
		"e5f38df5-350b-42fe-86b9-6be354ceffbe": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/assetcreation/initialContext.json",
			"id": "default-start-context"
		}
	}
}