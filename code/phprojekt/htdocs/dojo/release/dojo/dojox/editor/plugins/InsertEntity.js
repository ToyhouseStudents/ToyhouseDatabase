/*
	Copyright (c) 2004-2011, The Dojo Foundation All Rights Reserved.
	Available via Academic Free License >= 2.1 OR the modified BSD license.
	see: http://dojotoolkit.org/license for details
*/


dojo._hasResource["dojox.editor.plugins.InsertEntity"]||(dojo._hasResource["dojox.editor.plugins.InsertEntity"]=!0,dojo.provide("dojox.editor.plugins.InsertEntity"),dojo.require("dijit.TooltipDialog"),dojo.require("dijit._editor._Plugin"),dojo.require("dijit.form.Button"),dojo.require("dojox.html.entities"),dojo.require("dojox.editor.plugins.EntityPalette"),dojo.require("dojo.i18n"),dojo.requireLocalization("dojox.editor.plugins","InsertEntity",null,"ROOT,ar,ca,cs,da,de,el,es,fi,fr,he,hu,it,ja,kk,ko,nb,nl,pl,pt,pt-pt,ro,ru,sk,sl,sv,th,tr,zh,zh-tw"),
dojo.declare("dojox.editor.plugins.InsertEntity",dijit._editor._Plugin,{iconClassPrefix:"dijitAdditionalEditorIcon",_initButton:function(){this.dropDown=new dojox.editor.plugins.EntityPalette({showCode:this.showCode,showEntityName:this.showEntityName});this.connect(this.dropDown,"onChange",function(a){this.button.closeDropDown();this.editor.focus();this.editor.execCommand("inserthtml",a)});var a=dojo.i18n.getLocalization("dojox.editor.plugins","InsertEntity");this.button=new dijit.form.DropDownButton({label:a.insertEntity,
showLabel:!1,iconClass:this.iconClassPrefix+" "+this.iconClassPrefix+"InsertEntity",tabIndex:"-1",dropDown:this.dropDown})},updateState:function(){this.button.set("disabled",this.get("disabled"))},setEditor:function(a){this.editor=a;this._initButton();this.editor.addKeyHandler("s",!0,!0,dojo.hitch(this,function(){this.button.openDropDown();this.dropDown.focus()}));a.contentPreFilters.push(this._preFilterEntities);a.contentPostFilters.push(this._postFilterEntities)},_preFilterEntities:function(a){return dojox.html.entities.decode(a,
dojox.html.entities.latin)},_postFilterEntities:function(a){return dojox.html.entities.encode(a,dojox.html.entities.latin)}}),dojo.subscribe(dijit._scopeName+".Editor.getPlugin",null,function(a){if(!a.plugin&&(a.args.name?a.args.name.toLowerCase():"")==="insertentity")a.plugin=new dojox.editor.plugins.InsertEntity({showCode:"showCode"in a.args?a.args.showCode:!1,showEntityName:"showEntityName"in a.args?a.args.showEntityName:!1})}));