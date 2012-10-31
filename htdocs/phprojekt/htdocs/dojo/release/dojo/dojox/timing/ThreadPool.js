/*
	Copyright (c) 2004-2011, The Dojo Foundation All Rights Reserved.
	Available via Academic Free License >= 2.1 OR the modified BSD license.
	see: http://dojotoolkit.org/license for details
*/


dojo._hasResource["dojox.timing.ThreadPool"]||(dojo._hasResource["dojox.timing.ThreadPool"]=!0,dojo.provide("dojox.timing.ThreadPool"),dojo.require("dojox.timing"),dojo.experimental("dojox.timing.ThreadPool"),function(){var d=dojox.timing;d.threadStates={UNSTARTED:"unstarted",STOPPED:"stopped",PENDING:"pending",RUNNING:"running",SUSPENDED:"suspended",WAITING:"waiting",COMPLETE:"complete",ERROR:"error"};d.threadPriorities={LOWEST:1,BELOWNORMAL:2,NORMAL:3,ABOVENORMAL:4,HIGHEST:5};d.Thread=function(g,
i){var a=this;this.state=d.threadStates.UNSTARTED;this.priority=i||d.threadPriorities.NORMAL;this.lastError=null;this.func=g;this.invoke=function(){a.state=d.threadStates.RUNNING;try{g(this),a.state=d.threadStates.COMPLETE}catch(f){a.lastError=f,a.state=d.threadStates.ERROR}}};d.ThreadPool=new function(g,i){var a=[],f=Array(g+1),h=new dojox.timing.Timer;this.getMaxThreads=function(){return g};this.getAvailableThreads=function(){return g};this.getTickInterval=function(){return i};this.queueUserWorkItem=
function(e){e instanceof Function&&(e=new d.Thread(e));for(var c=a.length,b=0;b<a.length;b++)if(a[b].priority<e.priority){c=b;break}c<a.length?a.splice(c,0,e):a.push(e);return!0};this.removeQueuedUserWorkItem=function(e){if(e instanceof Function){for(var c=-1,b=0;b<a.length;b++)if(a[b].func==e){c=b;break}return c>-1?(a.splice(c,1),!0):!1}c=-1;for(b=0;b<a.length;b++)if(a[b]==e){c=b;break}return c>-1?(a.splice(c,1),!0):!1};this.start=function(){h.start()};this.stop=function(){h.stop()};this.abort=function(){this.stop();
for(var a=1;a<f.length;a++)f[a]&&window.clearTimeout(f[a]);for(var c in f[0])this.queueUserWorkItem(c);f[0]={}};this.reset=function(){this.abort();a=[]};this.sleep=function(a){h.stop();window.setTimeout(h.start,a)};h.onTick=this.invoke}(16,5E3)}());