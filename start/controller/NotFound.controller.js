sap.ui.define([
		"sap/ui/core/mvc/Controller"
	], function (BaseController) {
		"use strict";

		return BaseController.extend("sap.grc.acs.aud.audit.controller.NotFound", {

			/**
			 * Navigates to the worklist when the link is pressed
			 * @public
			 */
			onLinkPressed : function () {
				this.getRouter().navTo("worklist");
			}

		});

	}
);