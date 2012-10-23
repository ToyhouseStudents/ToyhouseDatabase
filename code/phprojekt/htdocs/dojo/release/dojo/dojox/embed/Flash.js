/*
	Copyright (c) 2004-2011, The Dojo Foundation All Rights Reserved.
	Available via Academic Free License >= 2.1 OR the modified BSD license.
	see: http://dojotoolkit.org/license for details
*/


dojo._hasResource["dojox.embed.Flash"]||(dojo._hasResource["dojox.embed.Flash"]=!0,dojo.provide("dojox.embed.Flash"),function(){function g(a){a=dojo.delegate(h,a);if(!("path"in a))return console.error("dojox.embed.Flash(ctor):: no path reference to a Flash movie was provided."),null;if(!("id"in a))a.id=i+j++;return a}var f,d,i="dojox-embed-flash-",j=0,h={expressInstall:!1,width:320,height:240,swLiveConnect:"true",allowScriptAccess:"sameDomain",allowNetworking:"all",style:null,redirect:null};dojo.isIE?
(f=function(a){a=g(a);if(!a)return null;var b,c=a.path;if(a.vars){var e=[];for(b in a.vars)e.push(b+"="+a.vars[b]);a.params.FlashVars=e.join("&");delete a.vars}c='<object id="'+a.id+'" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="'+a.width+'" height="'+a.height+'"'+(a.style?' style="'+a.style+'"':"")+'><param name="movie" value="'+c+'" />';if(a.params)for(b in a.params)c+='<param name="'+b+'" value="'+a.params[b]+'" />';c+="</object>";return{id:a.id,markup:c}},d=function(){for(var a=
10,b=null;!b&&a>7;)try{b=new ActiveXObject("ShockwaveFlash.ShockwaveFlash."+a--)}catch(c){}return b?(a=b.GetVariable("$version").split(" ")[1].split(","),{major:a[0]!=null?parseInt(a[0]):0,minor:a[1]!=null?parseInt(a[1]):0,rev:a[2]!=null?parseInt(a[2]):0}):{major:0,minor:0,rev:0}}(),dojo.addOnUnload(function(){var a=function(){};dojo.query("object").reverse().style("display","none").forEach(function(b){for(var c in b)if(c!="FlashVars"&&dojo.isFunction(b[c]))try{b[c]=a}catch(e){}})})):(f=function(a){a=
g(a);if(!a)return null;var b,c=a.path;if(a.vars){var e=[];for(b in a.vars)e.push(b+"="+a.vars[b]);a.params.flashVars=e.join("&");delete a.vars}c='<embed type="application/x-shockwave-flash" src="'+c+'" id="'+a.id+'" width="'+a.width+'" height="'+a.height+'"'+(a.style?' style="'+a.style+'" ':"")+'pluginspage="'+window.location.protocol+'//www.adobe.com/go/getflashplayer" ';if(a.params)for(b in a.params)c+=" "+b+'="'+a.params[b]+'"';c+=" />";return{id:a.id,markup:c}},d=function(){var a=navigator.plugins["Shockwave Flash"];
return a&&a.description?(a=a.description.replace(/([a-zA-Z]|\s)+/,"").replace(/(\s+r|\s+b[0-9]+)/,".").split("."),{major:a[0]!=null?parseInt(a[0]):0,minor:a[1]!=null?parseInt(a[1]):0,rev:a[2]!=null?parseInt(a[2]):0}):{major:0,minor:0,rev:0}}());dojox.embed.Flash=function(a,b){if(location.href.toLowerCase().indexOf("file://")>-1)throw Error("dojox.embed.Flash can't be run directly from a file. To instatiate the required SWF correctly it must be run from a server, like localHost.");this.available=dojox.embed.Flash.available;
this.minimumVersion=a.minimumVersion||9;this.domNode=this.movie=this.id=null;b&&(b=dojo.byId(b));setTimeout(dojo.hitch(this,function(){if(a.expressInstall||this.available&&this.available>=this.minimumVersion)if(a&&b)this.init(a,b);else this.onError("embed.Flash was not provided with the proper arguments.");else if(this.available)this.onError("Flash version detected: "+this.available+" is out of date. Minimum required: "+this.minimumVersion);else this.onError("Flash is not installed.")}),100)};dojo.extend(dojox.embed.Flash,
{onReady:function(a){console.warn("embed.Flash.movie.onReady:",a)},onLoad:function(a){console.warn("embed.Flash.movie.onLoad:",a)},onError:function(){},_onload:function(){clearInterval(this._poller);delete this._poller;delete this._pollCount;delete this._pollMax;this.onLoad(this.movie)},init:function(a,b){console.log("embed.Flash.movie.init");this.destroy();b=dojo.byId(b||this.domNode);if(!b)throw Error("dojox.embed.Flash: no domNode reference has been passed.");var c=0;this._poller=null;this._pollCount=
0;this._pollMax=15;this.pollTime=100;if(dojox.embed.Flash.initialized)this.id=dojox.embed.Flash.place(a,b),this.domNode=b,setTimeout(dojo.hitch(this,function(){this.movie=this.byId(this.id,a.doc);this.onReady(this.movie);this._poller=setInterval(dojo.hitch(this,function(){try{c=this.movie.PercentLoaded()}catch(a){console.warn("this.movie.PercentLoaded() failed")}if(c==100)this._onload();else if(c==0&&this._pollCount++>this._pollMax)throw clearInterval(this._poller),Error("Building SWF failed.");}),
this.pollTime)}),1)},_destroy:function(){try{this.domNode.removeChild(this.movie)}catch(a){}this.id=this.movie=this.domNode=null},destroy:function(){if(this.movie){var a=dojo.delegate({id:!0,movie:!0,domNode:!0,onReady:!0,onLoad:!0}),b;for(b in this)a[b]||delete this[b];this._poller?dojo.connect(this,"onLoad",this,"_destroy"):this._destroy()}},byId:function(a,b){b=b||document;return b.embeds[a]?b.embeds[a]:b[a]?b[a]:window[a]?window[a]:document[a]?document[a]:null}});dojo.mixin(dojox.embed.Flash,
{minSupported:8,available:d.major,supported:d.major>=d.required,minimumRequired:d.required,version:d,initialized:!1,onInitialize:function(){dojox.embed.Flash.initialized=!0},__ie_markup__:function(a){return f(a)},proxy:function(a,b){dojo.forEach(dojo.isArray(b)?b:[b],function(a){this[a]=dojo.hitch(this,function(){return function(){return eval(this.movie.CallFunction('<invoke name="'+a+'" returntype="javascript"><arguments>'+dojo.map(arguments,function(a){return __flash__toXML(a)}).join("")+"</arguments></invoke>"))}.apply(this,
arguments||[])})},a)}});dojox.embed.Flash.place=function(a,b){var c=f(a),b=dojo.byId(b);if(!b)b=dojo.doc.createElement("div"),b.id=c.id+"-container",dojo.body().appendChild(b);return c?(b.innerHTML=c.markup,c.id):null};dojox.embed.Flash.onInitialize()}());