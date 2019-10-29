{
	"contents": {
		"97f090fb-7985-421a-b68f-643b2c293fef": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "demo",
			"subject": "Demo",
			"name": "Demo",
			"lastIds": "f62a93d8-c0d1-4bc5-b2e0-b87e588935a0",
			"events": {
				"587fa9ab-c739-47c4-ab18-869d54266c4f": {
					"name": "StartEvent1"
				},
				"be592baf-a84b-49d9-88a6-5288c31e0ca1": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"ee78850c-1105-46e2-9a22-069f2dc1cb4e": {
					"name": "IsApproved"
				},
				"4697af3c-9352-4093-9c88-18d20edfad89": {
					"name": "MailTask1"
				},
				"64ff909d-a6c6-4c9e-bb23-dd86e0c8e6a0": {
					"name": "LM Approve"
				},
				"753720ee-2ac0-4b7c-a336-e256dcb6d6bc": {
					"name": "MailTask2"
				},
				"e6f1cfc6-b151-4b19-b685-71e9f8d6ad91": {
					"name": "ExclusiveGateway2"
				},
				"53434f6e-30f1-4df6-ac30-2a74682a3cb9": {
					"name": "Change Payment "
				},
				"21562fc2-93a4-4d12-a064-d3bab508283d": {
					"name": "HR Approve"
				},
				"650dd636-ef1b-4f3f-8f6c-4be3120d9b63": {
					"name": "IsApproved 2"
				}
			},
			"sequenceFlows": {
				"3803618d-2d2c-467a-8a3d-d6b5a9b89913": {
					"name": "Approve"
				},
				"05064911-ed79-4261-98a9-4a2e98e50337": {
					"name": "SequenceFlow9"
				},
				"4d12be8b-84bd-4988-98a2-a49fa39b06c6": {
					"name": "Reject"
				},
				"db4f0020-e869-4c51-998f-8b4cd069eece": {
					"name": "SequenceFlow11"
				},
				"88f40573-a561-4165-a5bb-5baf3b2c1dc3": {
					"name": "SequenceFlow12"
				},
				"e89594ee-6bc5-40a9-81f4-e337b5969421": {
					"name": "SequenceFlow13"
				},
				"e4cfc749-ecdc-4e6a-ae68-5b77ca9c2cc7": {
					"name": "SequenceFlow14"
				},
				"ba5d2183-7af4-4f12-8861-71195f5d3355": {
					"name": "SequenceFlow17"
				},
				"4896616f-8d8d-4255-9d2c-aa88d9d0dea0": {
					"name": "SequenceFlow18"
				},
				"2946ee7f-c171-472c-ae9c-ec04c7cab32e": {
					"name": "Approve 2"
				},
				"554c7289-0466-418f-aaf9-078d79b1f742": {
					"name": "Reject 2"
				}
			},
			"diagrams": {
				"d4e8362a-be55-4a2a-914b-02a572ace915": {}
			}
		},
		"587fa9ab-c739-47c4-ab18-869d54266c4f": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"be592baf-a84b-49d9-88a6-5288c31e0ca1": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"ee78850c-1105-46e2-9a22-069f2dc1cb4e": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "IsApproved",
			"default": "3803618d-2d2c-467a-8a3d-d6b5a9b89913"
		},
		"4697af3c-9352-4093-9c88-18d20edfad89": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask1",
			"name": "MailTask1",
			"mailDefinitionRef": "2b241743-beb1-42d1-9b8d-1647c0db286a"
		},
		"64ff909d-a6c6-4c9e-bb23-dd86e0c8e6a0": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "LM Approve",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/demo/approvePayment/start.samples.approvepayment",
			"recipientUsers": "I320869",
			"id": "usertask1",
			"name": "LM Approve"
		},
		"753720ee-2ac0-4b7c-a336-e256dcb6d6bc": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask2",
			"name": "MailTask2",
			"mailDefinitionRef": "456fed17-47a0-4e5e-a124-69643ef42093"
		},
		"e6f1cfc6-b151-4b19-b685-71e9f8d6ad91": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "ExclusiveGateway2"
		},
		"53434f6e-30f1-4df6-ac30-2a74682a3cb9": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Change or Confirm payment",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/demo/confirmPayment/start.samples.confirmpayment",
			"recipientUsers": "I320869",
			"id": "usertask2",
			"name": "Change Payment "
		},
		"3803618d-2d2c-467a-8a3d-d6b5a9b89913": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "Approve",
			"sourceRef": "ee78850c-1105-46e2-9a22-069f2dc1cb4e",
			"targetRef": "21562fc2-93a4-4d12-a064-d3bab508283d"
		},
		"05064911-ed79-4261-98a9-4a2e98e50337": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "64ff909d-a6c6-4c9e-bb23-dd86e0c8e6a0",
			"targetRef": "ee78850c-1105-46e2-9a22-069f2dc1cb4e"
		},
		"4d12be8b-84bd-4988-98a2-a49fa39b06c6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.equipApproved==\"false\"}",
			"id": "sequenceflow10",
			"name": "Reject",
			"sourceRef": "ee78850c-1105-46e2-9a22-069f2dc1cb4e",
			"targetRef": "753720ee-2ac0-4b7c-a336-e256dcb6d6bc"
		},
		"db4f0020-e869-4c51-998f-8b4cd069eece": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "e6f1cfc6-b151-4b19-b685-71e9f8d6ad91",
			"targetRef": "53434f6e-30f1-4df6-ac30-2a74682a3cb9"
		},
		"88f40573-a561-4165-a5bb-5baf3b2c1dc3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "SequenceFlow12",
			"sourceRef": "753720ee-2ac0-4b7c-a336-e256dcb6d6bc",
			"targetRef": "e6f1cfc6-b151-4b19-b685-71e9f8d6ad91"
		},
		"e89594ee-6bc5-40a9-81f4-e337b5969421": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow13",
			"name": "SequenceFlow13",
			"sourceRef": "4697af3c-9352-4093-9c88-18d20edfad89",
			"targetRef": "64ff909d-a6c6-4c9e-bb23-dd86e0c8e6a0"
		},
		"e4cfc749-ecdc-4e6a-ae68-5b77ca9c2cc7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "53434f6e-30f1-4df6-ac30-2a74682a3cb9",
			"targetRef": "4697af3c-9352-4093-9c88-18d20edfad89"
		},
		"d4e8362a-be55-4a2a-914b-02a572ace915": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"0aafccf7-b23b-47c5-8499-847806bf95d3": {},
				"1522c663-322d-4591-b9db-f62e9190f828": {},
				"92a3829d-4c3a-4750-a2b5-cb19655312a1": {},
				"44908b25-b2e7-4ef9-8dc3-007f9aaee377": {},
				"7e254617-c490-472d-8f95-212fd89e6d08": {},
				"16d3be7d-8420-404a-9934-64dbddde4b58": {},
				"b107b72d-510e-4eae-9216-9187c4d0448a": {},
				"ed242e69-c888-4ffb-bd3f-49d16e509344": {},
				"52084707-0372-4d14-b07b-22eef8cca919": {},
				"1001fb62-b9ef-4ac1-a1b1-fc5efb1943c6": {},
				"9d88060a-4990-4983-812e-98c95a65294f": {},
				"5c614970-e319-4651-9e9a-daff93001e49": {},
				"634f19fd-bb85-4424-9ba1-9c222e9e6d63": {},
				"3c6d5515-e8b7-4b99-9e2b-f875e514605a": {},
				"e715ab23-5597-476d-a37c-ad3d13e0909c": {},
				"e7325a09-a61f-4e13-96d2-7d23f3d90b6f": {},
				"f6fe2d9a-fbd9-4db1-8465-ba84d7c1ae83": {},
				"6e19f594-a8c9-4bac-9ced-b591673fa391": {},
				"5a69b67d-e7b3-4c51-ac85-31ad907d0158": {},
				"19ed7935-e57e-458b-b97b-77ed2dcf9329": {},
				"96f7a3f0-3321-439b-8286-f955620770b8": {}
			}
		},
		"0aafccf7-b23b-47c5-8499-847806bf95d3": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 131,
			"y": -106,
			"width": 32,
			"height": 32,
			"object": "587fa9ab-c739-47c4-ab18-869d54266c4f"
		},
		"1522c663-322d-4591-b9db-f62e9190f828": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 910.9999976158142,
			"y": 79.5,
			"width": 35,
			"height": 35,
			"object": "be592baf-a84b-49d9-88a6-5288c31e0ca1"
		},
		"92a3829d-4c3a-4750-a2b5-cb19655312a1": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 375.9999976158142,
			"y": 76,
			"object": "ee78850c-1105-46e2-9a22-069f2dc1cb4e"
		},
		"44908b25-b2e7-4ef9-8dc3-007f9aaee377": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "396.9999976158142,97 565,97",
			"sourceSymbol": "92a3829d-4c3a-4750-a2b5-cb19655312a1",
			"targetSymbol": "f6fe2d9a-fbd9-4db1-8465-ba84d7c1ae83",
			"object": "3803618d-2d2c-467a-8a3d-d6b5a9b89913"
		},
		"7e254617-c490-472d-8f95-212fd89e6d08": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 96.9999988079071,
			"y": 67,
			"width": 100,
			"height": 60,
			"object": "4697af3c-9352-4093-9c88-18d20edfad89"
		},
		"16d3be7d-8420-404a-9934-64dbddde4b58": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 242.9999988079071,
			"y": 67,
			"width": 100,
			"height": 60,
			"object": "64ff909d-a6c6-4c9e-bb23-dd86e0c8e6a0"
		},
		"b107b72d-510e-4eae-9216-9187c4d0448a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "342.9999988079071,97 375.9999976158142,97",
			"sourceSymbol": "16d3be7d-8420-404a-9934-64dbddde4b58",
			"targetSymbol": "92a3829d-4c3a-4750-a2b5-cb19655312a1",
			"object": "05064911-ed79-4261-98a9-4a2e98e50337"
		},
		"ed242e69-c888-4ffb-bd3f-49d16e509344": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 211,
			"y": 219,
			"width": 100,
			"height": 60,
			"object": "753720ee-2ac0-4b7c-a336-e256dcb6d6bc"
		},
		"52084707-0372-4d14-b07b-22eef8cca919": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "396.9999976158142,97 397,249 310.5,249",
			"sourceSymbol": "92a3829d-4c3a-4750-a2b5-cb19655312a1",
			"targetSymbol": "ed242e69-c888-4ffb-bd3f-49d16e509344",
			"object": "4d12be8b-84bd-4988-98a2-a49fa39b06c6"
		},
		"1001fb62-b9ef-4ac1-a1b1-fc5efb1943c6": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": -108,
			"y": 76,
			"object": "e6f1cfc6-b151-4b19-b685-71e9f8d6ad91"
		},
		"9d88060a-4990-4983-812e-98c95a65294f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-87,97 -2,97",
			"sourceSymbol": "1001fb62-b9ef-4ac1-a1b1-fc5efb1943c6",
			"targetSymbol": "3c6d5515-e8b7-4b99-9e2b-f875e514605a",
			"object": "db4f0020-e869-4c51-998f-8b4cd069eece"
		},
		"5c614970-e319-4651-9e9a-daff93001e49": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "261,249 -87,249 -87,117.5",
			"sourceSymbol": "ed242e69-c888-4ffb-bd3f-49d16e509344",
			"targetSymbol": "1001fb62-b9ef-4ac1-a1b1-fc5efb1943c6",
			"object": "88f40573-a561-4165-a5bb-5baf3b2c1dc3"
		},
		"634f19fd-bb85-4424-9ba1-9c222e9e6d63": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "146.9999988079071,97 292.9999988079071,97",
			"sourceSymbol": "7e254617-c490-472d-8f95-212fd89e6d08",
			"targetSymbol": "16d3be7d-8420-404a-9934-64dbddde4b58",
			"object": "e89594ee-6bc5-40a9-81f4-e337b5969421"
		},
		"3c6d5515-e8b7-4b99-9e2b-f875e514605a": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": -52,
			"y": 67,
			"width": 100,
			"height": 60,
			"object": "53434f6e-30f1-4df6-ac30-2a74682a3cb9"
		},
		"e715ab23-5597-476d-a37c-ad3d13e0909c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-2,97 146.9999988079071,97",
			"sourceSymbol": "3c6d5515-e8b7-4b99-9e2b-f875e514605a",
			"targetSymbol": "7e254617-c490-472d-8f95-212fd89e6d08",
			"object": "e4cfc749-ecdc-4e6a-ae68-5b77ca9c2cc7"
		},
		"f62a93d8-c0d1-4bc5-b2e0-b87e588935a0": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"maildefinition": 2,
			"sequenceflow": 22,
			"startevent": 1,
			"endevent": 1,
			"usertask": 5,
			"servicetask": 3,
			"mailtask": 2,
			"exclusivegateway": 3,
			"parallelgateway": 1
		},
		"2b241743-beb1-42d1-9b8d-1647c0db286a": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "pamela.piao@sap.com",
			"cc": "",
			"subject": "Need to Approve",
			"text": "Need to Approve",
			"id": "maildefinition1"
		},
		"456fed17-47a0-4e5e-a124-69643ef42093": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition2",
			"to": "pamela.piao@sap.com",
			"subject": "Rejected",
			"text": "reject",
			"id": "maildefinition2"
		},
		"ba5d2183-7af4-4f12-8861-71195f5d3355": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow17",
			"name": "SequenceFlow17",
			"sourceRef": "587fa9ab-c739-47c4-ab18-869d54266c4f",
			"targetRef": "4697af3c-9352-4093-9c88-18d20edfad89"
		},
		"e7325a09-a61f-4e13-96d2-7d23f3d90b6f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "147,-90 146.9999988079071,67.5",
			"sourceSymbol": "0aafccf7-b23b-47c5-8499-847806bf95d3",
			"targetSymbol": "7e254617-c490-472d-8f95-212fd89e6d08",
			"object": "ba5d2183-7af4-4f12-8861-71195f5d3355"
		},
		"21562fc2-93a4-4d12-a064-d3bab508283d": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "HR Approve",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/demo/approve2/start.samples.approve2",
			"recipientUsers": "I320869",
			"id": "usertask5",
			"name": "HR Approve"
		},
		"f6fe2d9a-fbd9-4db1-8465-ba84d7c1ae83": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 515,
			"y": 67,
			"width": 100,
			"height": 60,
			"object": "21562fc2-93a4-4d12-a064-d3bab508283d"
		},
		"4896616f-8d8d-4255-9d2c-aa88d9d0dea0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow18",
			"name": "SequenceFlow18",
			"sourceRef": "21562fc2-93a4-4d12-a064-d3bab508283d",
			"targetRef": "650dd636-ef1b-4f3f-8f6c-4be3120d9b63"
		},
		"6e19f594-a8c9-4bac-9ced-b591673fa391": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "565,95 718,95 718,174",
			"sourceSymbol": "f6fe2d9a-fbd9-4db1-8465-ba84d7c1ae83",
			"targetSymbol": "5a69b67d-e7b3-4c51-ac85-31ad907d0158",
			"object": "4896616f-8d8d-4255-9d2c-aa88d9d0dea0"
		},
		"650dd636-ef1b-4f3f-8f6c-4be3120d9b63": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway3",
			"name": "IsApproved 2",
			"default": "2946ee7f-c171-472c-ae9c-ec04c7cab32e"
		},
		"5a69b67d-e7b3-4c51-ac85-31ad907d0158": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 696,
			"y": 151,
			"object": "650dd636-ef1b-4f3f-8f6c-4be3120d9b63"
		},
		"2946ee7f-c171-472c-ae9c-ec04c7cab32e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow19",
			"name": "Approve 2",
			"sourceRef": "650dd636-ef1b-4f3f-8f6c-4be3120d9b63",
			"targetRef": "be592baf-a84b-49d9-88a6-5288c31e0ca1"
		},
		"19ed7935-e57e-458b-b97b-77ed2dcf9329": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "717,171.5 928.5,171.5 928.4999976158142,95",
			"sourceSymbol": "5a69b67d-e7b3-4c51-ac85-31ad907d0158",
			"targetSymbol": "1522c663-322d-4591-b9db-f62e9190f828",
			"object": "2946ee7f-c171-472c-ae9c-ec04c7cab32e"
		},
		"554c7289-0466-418f-aaf9-078d79b1f742": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.equipApproved==\"false\"}",
			"id": "sequenceflow22",
			"name": "Reject 2",
			"sourceRef": "650dd636-ef1b-4f3f-8f6c-4be3120d9b63",
			"targetRef": "753720ee-2ac0-4b7c-a336-e256dcb6d6bc"
		},
		"96f7a3f0-3321-439b-8286-f955620770b8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "717,172 503.5,172 503.5,269 302,269",
			"sourceSymbol": "5a69b67d-e7b3-4c51-ac85-31ad907d0158",
			"targetSymbol": "ed242e69-c888-4ffb-bd3f-49d16e509344",
			"object": "554c7289-0466-418f-aaf9-078d79b1f742"
		}
	}
}