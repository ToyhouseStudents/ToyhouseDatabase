/*
	Copyright (c) 2004-2011, The Dojo Foundation All Rights Reserved.
	Available via Academic Free License >= 2.1 OR the modified BSD license.
	see: http://dojotoolkit.org/license for details
*/


dojo._hasResource["dojox.storage.WhatWGStorageProvider"]||(dojo._hasResource["dojox.storage.WhatWGStorageProvider"]=!0,dojo.provide("dojox.storage.WhatWGStorageProvider"),dojo.require("dojox.storage.Provider"),dojo.require("dojox.storage.manager"),dojo.declare("dojox.storage.WhatWGStorageProvider",[dojox.storage.Provider],{initialized:!1,_domain:null,_available:null,_statusHandler:null,_allNamespaces:null,_storageEventListener:null,initialize:function(){if(dojo.config.disableWhatWGStorage!=!0)this._domain=
location.hostname,this.initialized=!0,dojox.storage.manager.loaded()},isAvailable:function(){return this._available=!0},put:function(a,b,c,d){if(this.isValidKey(a)==!1)throw Error("Invalid key given: "+a);d=d||this.DEFAULT_NAMESPACE;a=this.getFullKey(a,d);this._statusHandler=c;var b=dojo.isString(b)?"string:"+b:dojo.toJson(b),e=dojo.hitch(this,function(){window.removeEventListener("storage",e,!1);c&&c.call(null,this.SUCCESS,a,null,d)});window.addEventListener("storage",e,!1);try{globalStorage[this._domain].setItem(a,
b)}catch(f){this._statusHandler.call(null,this.FAILED,a,f.toString(),d)}},get:function(a,b){if(this.isValidKey(a)==!1)throw Error("Invalid key given: "+a);var b=b||this.DEFAULT_NAMESPACE,a=this.getFullKey(a,b),c=globalStorage[this._domain].getItem(a);if(c==null||c=="")return null;c=c.value;return c=dojo.isString(c)&&/^string:/.test(c)?c.substring(7):dojo.fromJson(c)},getNamespaces:function(){for(var a=[this.DEFAULT_NAMESPACE],b={},c=globalStorage[this._domain],d=/^__([^_]*)_/,e=0;e<c.length;e++){var f=
c.key(e);d.test(f)==!0&&(f=f.match(d)[1],typeof b[f]=="undefined"&&(b[f]=!0,a.push(f)))}return a},getKeys:function(a){a=a||this.DEFAULT_NAMESPACE;if(this.isValidKey(a)==!1)throw Error("Invalid namespace given: "+a);for(var a=a==this.DEFAULT_NAMESPACE?/^([^_]{2}.*)$/:RegExp("^__"+a+"_(.*)$"),b=globalStorage[this._domain],c=[],d=0;d<b.length;d++){var e=b.key(d);a.test(e)==!0&&(e=e.match(a)[1],c.push(e))}return c},clear:function(a){a=a||this.DEFAULT_NAMESPACE;if(this.isValidKey(a)==!1)throw Error("Invalid namespace given: "+
a);for(var a=a==this.DEFAULT_NAMESPACE?/^[^_]{2}/:RegExp("^__"+a+"_"),b=globalStorage[this._domain],c=[],d=0;d<b.length;d++)a.test(b.key(d))==!0&&(c[c.length]=b.key(d));dojo.forEach(c,dojo.hitch(b,"removeItem"))},remove:function(a,b){a=this.getFullKey(a,b);globalStorage[this._domain].removeItem(a)},isPermanent:function(){return!0},getMaximumSize:function(){return this.SIZE_NO_LIMIT},hasSettingsUI:function(){return!1},showSettingsUI:function(){throw Error(this.declaredClass+" does not support a storage settings user-interface");
},hideSettingsUI:function(){throw Error(this.declaredClass+" does not support a storage settings user-interface");},getFullKey:function(a,b){b=b||this.DEFAULT_NAMESPACE;if(this.isValidKey(b)==!1)throw Error("Invalid namespace given: "+b);return b==this.DEFAULT_NAMESPACE?a:"__"+b+"_"+a}}),dojox.storage.manager.register("dojox.storage.WhatWGStorageProvider",new dojox.storage.WhatWGStorageProvider));