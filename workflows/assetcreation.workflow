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
					"name": "StartEvent1"
				},
				"d93f5e72-8c7b-4d82-bd9d-682c1455c6c4": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"46ddd68f-7d50-4ab7-a397-03cbf02fcfef": {
					"name": "Fetch Approvers"
				}
			},
			"sequenceFlows": {
				"3eb6908e-4fad-4630-96ab-c74e1fe1915a": {
					"name": "SequenceFlow1"
				},
				"6edb4d92-be0c-44de-a4c7-4c49421f2b57": {
					"name": "SequenceFlow2"
				}
			},
			"diagrams": {
				"155bd779-3e4d-4875-bbfc-38b57abc82a8": {}
			}
		},
		"7f5d5e3d-451e-4c29-b822-0051d7556e64": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"d93f5e72-8c7b-4d82-bd9d-682c1455c6c4": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"46ddd68f-7d50-4ab7-a397-03cbf02fcfef": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "glob-s4fes-sandbox",
			"path": "/sap/opu/odata/sap/ZPGPOCROC_SRV/ZROC_I_FORM('804')",
			"httpMethod": "GET",
			"responseVariable": "${context.response}",
			"id": "servicetask1",
			"name": "Fetch Approvers"
		},
		"3eb6908e-4fad-4630-96ab-c74e1fe1915a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "7f5d5e3d-451e-4c29-b822-0051d7556e64",
			"targetRef": "46ddd68f-7d50-4ab7-a397-03cbf02fcfef"
		},
		"6edb4d92-be0c-44de-a4c7-4c49421f2b57": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "46ddd68f-7d50-4ab7-a397-03cbf02fcfef",
			"targetRef": "d93f5e72-8c7b-4d82-bd9d-682c1455c6c4"
		},
		"155bd779-3e4d-4875-bbfc-38b57abc82a8": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"16e053aa-d3cf-4e6d-b24a-807347918ccf": {},
				"d80bc542-14a8-4740-8a65-a9e07b582d89": {},
				"96338fb8-6b05-4232-950e-81774751f244": {},
				"ae8651d8-b904-4584-bd9f-d92863a2fa04": {},
				"c5cd7f44-0bbe-4dfe-b452-a4b905a2621f": {}
			}
		},
		"16e053aa-d3cf-4e6d-b24a-807347918ccf": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "7f5d5e3d-451e-4c29-b822-0051d7556e64"
		},
		"d80bc542-14a8-4740-8a65-a9e07b582d89": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 340,
			"y": 100,
			"width": 35,
			"height": 35,
			"object": "d93f5e72-8c7b-4d82-bd9d-682c1455c6c4"
		},
		"96338fb8-6b05-4232-950e-81774751f244": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,117 223,117",
			"sourceSymbol": "16e053aa-d3cf-4e6d-b24a-807347918ccf",
			"targetSymbol": "ae8651d8-b904-4584-bd9f-d92863a2fa04",
			"object": "3eb6908e-4fad-4630-96ab-c74e1fe1915a"
		},
		"ae8651d8-b904-4584-bd9f-d92863a2fa04": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 173,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "46ddd68f-7d50-4ab7-a397-03cbf02fcfef"
		},
		"c5cd7f44-0bbe-4dfe-b452-a4b905a2621f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "223,117.75 357.5,117.75",
			"sourceSymbol": "ae8651d8-b904-4584-bd9f-d92863a2fa04",
			"targetSymbol": "d80bc542-14a8-4740-8a65-a9e07b582d89",
			"object": "6edb4d92-be0c-44de-a4c7-4c49421f2b57"
		},
		"dd405d7a-413b-4f92-867e-10f48d540eb4": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 2,
			"startevent": 1,
			"endevent": 1,
			"servicetask": 1
		}
	}
}