/*
	Copyright (c) 2004-2011, The Dojo Foundation All Rights Reserved.
	Available via Academic Free License >= 2.1 OR the modified BSD license.
	see: http://dojotoolkit.org/license for details
*/


dojo._hasResource["dojox.editor.plugins.StatusBar"]||(dojo._hasResource["dojox.editor.plugins.StatusBar"]=!0,dojo.provide("dojox.editor.plugins.StatusBar"),dojo.require("dijit.Toolbar"),dojo.require("dijit._editor._Plugin"),dojo.require("dojox.layout.ResizeHandle"),dojo.require("dojo.i18n"),dojo.requireLocalization("dojox.editor.plugins","StatusBar",null,""),dojo.experimental("dojox.editor.plugins.StatusBar"),dojo.declare("dojox.editor.plugins._StatusBar",[dijit._Widget,dijit._Templated],{templateString:'<div class="dojoxEditorStatusBar"><table><tbody><tr><td class="dojoxEditorStatusBarText" tabindex="-1" aria-role="presentation" aria-live="aggressive"><span dojoAttachPoint="barContent">&nbsp;</span></td><td><span dojoAttachPoint="handle"></span></td></tr></tbody><table></div>',
_getValueAttr:function(){return this.barContent.innerHTML},_setValueAttr:function(a){a?(a=dojo.trim(a))||(a="&nbsp;"):a="&nbsp;";this.barContent.innerHTML=a}}),dojo.declare("dojox.editor.plugins.StatusBar",dijit._editor._Plugin,{statusBar:null,resizer:!0,setEditor:function(a){this.editor=a;this.statusBar=new dojox.editor.plugins._StatusBar;this.resizer?(this.resizeHandle=new dojox.layout.ResizeHandle({targetId:this.editor,activeResize:!0},this.statusBar.handle),this.resizeHandle.startup()):dojo.style(this.statusBar.handle.parentNode,
"display","none");var b=null;a.footer.lastChild&&(b="after");dojo.place(this.statusBar.domNode,a.footer.lastChild||a.footer,b);this.statusBar.startup();this.editor.statusBar=this;this._msgListener=dojo.subscribe(this.editor.id+"_statusBar",dojo.hitch(this,this._setValueAttr))},_getValueAttr:function(){return this.statusBar.get("value")},_setValueAttr:function(a){this.statusBar.set("value",a)},set:function(a,b){if(a){var c="_set"+a.charAt(0).toUpperCase()+a.substring(1,a.length)+"Attr";if(dojo.isFunction(this[c]))this[c](b);
else this[a]=b}},get:function(a){if(a){var b="_get"+a.charAt(0).toUpperCase()+a.substring(1,a.length)+"Attr";return dojo.isFunction(this[b])?this[b]():this[a]}return null},destroy:function(){this.statusBar&&(this.statusBar.destroy(),delete this.statusBar);this.resizeHandle&&(this.resizeHandle.destroy(),delete this.resizeHandle);this._msgListener&&(dojo.unsubscribe(this._msgListener),delete this._msgListener);delete this.editor.statusBar}}),dojo.subscribe(dijit._scopeName+".Editor.getPlugin",null,
function(a){if(!a.plugin&&a.args.name.toLowerCase()==="statusbar")a.plugin=new dojox.editor.plugins.StatusBar({resizer:"resizer"in a.args?a.args.resizer:!0})}));