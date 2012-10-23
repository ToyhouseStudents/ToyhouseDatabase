/*
	Copyright (c) 2004-2011, The Dojo Foundation All Rights Reserved.
	Available via Academic Free License >= 2.1 OR the modified BSD license.
	see: http://dojotoolkit.org/license for details
*/


dojo._hasResource["dojox.mdnd.PureSource"]||(dojo._hasResource["dojox.mdnd.PureSource"]=!0,dojo.provide("dojox.mdnd.PureSource"),dojo.require("dojo.dnd.Selector"),dojo.require("dojo.dnd.Manager"),dojo.declare("dojox.mdnd.PureSource",dojo.dnd.Selector,{horizontal:!1,copyOnly:!0,skipForm:!1,withHandles:!1,isSource:!0,targetState:"Disabled",generateText:!0,constructor:function(a,b){dojo.mixin(this,dojo.mixin({},b));this.mouseDown=this.isDragging=!1;this.sourceState="";dojo.addClass(this.node,"dojoDndSource");
this.horizontal&&dojo.addClass(this.node,"dojoDndHorizontal");this.topics=[dojo.subscribe("/dnd/cancel",this,"onDndCancel"),dojo.subscribe("/dnd/drop",this,"onDndCancel")]},onDndCancel:function(){this.mouseDown=this.isDragging=!1;delete this.mouseButton},copyState:function(a){return this.copyOnly||a},destroy:function(){dojox.mdnd.PureSource.superclass.destroy.call(this);dojo.forEach(this.topics,dojo.unsubscribe);this.targetAnchor=null},markupFactory:function(a,b){a._skipStartup=!0;return new dojox.mdnd.PureSource(b,
a)},onMouseMove:function(a){if(!this.isDragging){dojox.mdnd.PureSource.superclass.onMouseMove.call(this,a);var b=dojo.dnd.manager();if(this.mouseDown&&!this.isDragging&&this.isSource){var c=this.getSelectedNodes();if(c.length)b.startDrag(this,c,this.copyState(dojo.isCopyKey(a))),this.isDragging=!0}}},onMouseDown:function(a){if(this._legalMouseDown(a)&&(!this.skipForm||!dojo.dnd.isFormElement(a)))this.mouseDown=!0,this.mouseButton=a.button,dojox.mdnd.PureSource.superclass.onMouseDown.call(this,a)},
onMouseUp:function(a){if(this.mouseDown)this.mouseDown=!1,dojox.mdnd.PureSource.superclass.onMouseUp.call(this,a)},onOverEvent:function(){dojox.mdnd.PureSource.superclass.onOverEvent.call(this);dojo.dnd.manager().overSource(this)},onOutEvent:function(){dojox.mdnd.PureSource.superclass.onOutEvent.call(this);dojo.dnd.manager().outSource(this)},_markDndStatus:function(a){this._changeState("Source",a?"Copied":"Moved")},_legalMouseDown:function(a){if(!this.withHandles)return!0;for(a=a.target;a&&!dojo.hasClass(a,
"dojoDndItem");a=a.parentNode)if(dojo.hasClass(a,"dojoDndHandle"))return!0;return!1}}));