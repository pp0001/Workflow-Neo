sap.ui.define([
	"sap/ui/core/mvc/Controller",
	"sap/ui/core/UIComponent"
], function (Controller, UIComponent) {
	"use strict";

	var thisController;

	return Controller.extend("start.controller.Detail", {

		/**
		 * Called when a controller is instantiated and its View controls (if available) are already created.
		 * Can be used to modify the View before it is displayed, to bind event handlers and do other one-time initialization.
		 * @memberOf start.view.Detail
		 */
		onInit: function () {
			var oRouter = UIComponent.getRouterFor(this);
			oRouter.getRoute("detail").attachPatternMatched(this._onObjectMatched, this);

			thisController = this;
		},

		_onObjectMatched: function (oEvent) {
			var sUserId = oEvent.getParameter("arguments").userId;
			var oDetailModel = new sap.ui.model.json.JSONModel({
				"UserID": sUserId,
				"FirstName": "",
				"LastName": "",
				"Email": "",
				"Manager": "",
				"CostCenter": "",
				"Payment": ""
			});

			$.ajax({
				url: "/sf/odata/v2/PerPersonal?$filter=personIdExternal eq '" + sUserId + "'",
				method: "GET",
				contentType: "application/json",
				dataType: "json",
				success: function (response) {
					thisController.getView().getModel("DetailModel").getData().FirstName = response.d.results[0].firstName;
					thisController.getView().getModel("DetailModel").getData().LastName = response.d.results[0].lastName;
				}
			});

			$.ajax({
				url: "/sf/odata/v2/PerEmail?$filter=personIdExternal eq '" + sUserId + "'",
				method: "GET",
				contentType: "application/json",
				dataType: "json",
				success: function (response) {
					thisController.getView().getModel("DetailModel").getData().Email = response.d.results[0].emailAddress;
				}
			});

			$.ajax({
				url: "/sf/odata/v2/EmpJob?$filter=userId eq '" + sUserId + "'",
				method: "GET",
				contentType: "application/json",
				dataType: "json",
				success: function (response) {
					var sCostCenter = response.d.results[0].costCenter;
					thisController.getView().getModel("DetailModel").getData().Manager = response.d.results[0].managerId;

					$.ajax({
						url: "/sf/odata/v2/FOCostCenter?$filter=externalCode eq '" + sCostCenter + "'",
						method: "GET",
						contentType: "application/json",
						dataType: "json",
						success: function (res) {
							thisController.getView().getModel("DetailModel").getData().CostCenter = res.d.results[0].costcenterManager;

						}
					});
				}
			});

			this.getView().setModel(oDetailModel, "DetailModel");
		},

		startApproval: function () {
			var oVBox = new sap.m.VBox();

			var oBusyDialog = new sap.m.BusyDialog();

			$.ajax({
				url: "/bpmworkflowruntime/workflow-service/rest/v1/xsrf-token",
				method: "GET",
				headers: {
					"X-CSRF-Token": "Fetch"
				},
				success: function (result, xhr, data) {
					if (data.responseText.indexOf("Unauthorized") > 0) {
						sap.m.MessageToast.show(
							"This request requires HTTP authentication. No valid session found. \nRestart the application or login again", {
								icon: sap.m.MessageBox.Icon.ERROR,
								title: "Session Time Out",
								actions: [sap.m.MessageBox.Action.OK]
							}
						);
					}
					var token = data.getResponseHeader("X-CSRF-Token");
					if (token === null) {
						return;
					}

					var workflowPayload = {};
					workflowPayload.definitionId = "demo";
					thisController.getView().getModel("DetailModel").getData().Payment = thisController.getView().byId("payment").getValue();
					workflowPayload.context = thisController.getView().getModel("DetailModel").getData();

					$.ajax({
						url: "/bpmworkflowruntime/workflow-service/rest/v1/workflow-instances",
						method: "POST",
						data: JSON.stringify(workflowPayload),
						headers: {
							"X-CSRF-Token": token,
							"Content-Type": "application/json"
						},
						success: function () {
							oBusyDialog.close();
							sap.m.MessageToast.show("Start WorkFlow success", {
								// icon: sap.m.MessageBox.Icon.INFORMATION, // default
								title: "", // default
								// actions: sap.m.MessageBox.Action.OK, // default
								onClose: null, // default
								styleClass: "", // default
								initialFocus: null, // default
								textDirection: sap.ui.core.TextDirection.Inherit // default
							});
						},
						error: function (jqXHR, status, error) {
							oBusyDialog.close();
							sap.m.MessageBox.show(
								error, {
									icon: sap.m.MessageBox.Icon.ERROR,
									title: "Workflow Initiation Error",
									actions: [sap.m.MessageBox.Action.OK]
								}
							);
						}
					});
				}
			});
		}

		/**
		 * Similar to onAfterRendering, but this hook is invoked before the controller's View is re-rendered
		 * (NOT before the first rendering! onInit() is used for that one!).
		 * @memberOf start.view.Detail
		 */
		//	onBeforeRendering: function() {
		//
		//	},

		/**
		 * Called when the View has been rendered (so its HTML is part of the document). Post-rendering manipulations of the HTML could be done here.
		 * This hook is the same one that SAPUI5 controls get after being rendered.
		 * @memberOf start.view.Detail
		 */
		//	onAfterRendering: function() {
		//
		//	},

		/**
		 * Called when the Controller is destroyed. Use this one to free resources and finalize activities.
		 * @memberOf start.view.Detail
		 */
		//	onExit: function() {
		//
		//	}

	});

});