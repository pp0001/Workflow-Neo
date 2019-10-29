sap.ui.define([
	"sap/ui/core/mvc/Controller"
], function (Controller) {
	"use strict";

	return Controller.extend("start.controller.App", {

		onInit: function () {
			var oUserModel = new sap.ui.model.json.JSONModel();
			$.ajax({
				url: "/services/userapi/currentUser",
				method: "GET",
				contentType: "application/json",
				dataType: "json",
				success: function (result) {
					oUserModel.setData(result);
				}
			});
			var appModel = new sap.ui.model.json.JSONModel({
				"userId": ""
			});
			this.getView().setModel(appModel);
		},

		goToDetail: function () {
			var oItem = this.getView().byId("userId").getValue();
			var oRouter = sap.ui.core.UIComponent.getRouterFor(this);
			oRouter.navTo("detail", {
				userId: oItem
			});
		}
	});
});