/*
  ScrimLoader.js
  
  Created by Andy Lyon on 17/03/2012
  Copyright 2012 Andy Lyon. All rights reserved.
*/

var ScrimLoader = function() {}

/**
 * Show a loader
 */
ScrimLoader.prototype.showLoader = function() {
    Cordova.exec(null, null, "ScrimLoader", "showScrimLoader", []);
};

/**
 * Hide a loader
 */
ScrimLoader.prototype.hideLoader = function() {
    Cordova.exec(null, null, "ScrimLoader", "dismissScrimLoader", []);
};

Cordova.addConstructor(function() {
	if(!window.plugins) {
		window.plugins = {};
	}
	window.plugins.scrimLoader = new ScrimLoader();
});