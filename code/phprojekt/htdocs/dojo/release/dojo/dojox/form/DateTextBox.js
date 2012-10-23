/*
	Copyright (c) 2004-2011, The Dojo Foundation All Rights Reserved.
	Available via Academic Free License >= 2.1 OR the modified BSD license.
	see: http://dojotoolkit.org/license for details
*/


dojo._hasResource["dojox.form.DateTextBox"]||(dojo._hasResource["dojox.form.DateTextBox"]=!0,dojo.provide("dojox.form.DateTextBox"),dojo.experimental("dojox.form.DateTextBox"),dojo.require("dojox.widget.Calendar"),dojo.require("dojox.widget.CalendarViews"),dojo.require("dijit.form._DateTimeTextBox"),dojo.declare("dojox.form.DateTextBox",dijit.form._DateTimeTextBox,{popupClass:"dojox.widget.Calendar",_selector:"date",openDropDown:function(){this.inherited(arguments);dojo.style(this.dropDown.domNode.parentNode,
"position","absolute")}}),dojo.declare("dojox.form.DayTextBox",dojox.form.DateTextBox,{popupClass:"dojox.widget.DailyCalendar",parse:function(a){return a},format:function(a){return a.getDate?a.getDate():a},validator:function(a){var b=Number(a),c=/(^-?\d\d*$)/.test(String(a));return a==""||a==null||c&&b>=1&&b<=31},_setValueAttr:function(a,b,c){a&&a.getDate&&(a=a.getDate());dijit.form.TextBox.prototype._setValueAttr.call(this,a,b,c)},openDropDown:function(){this.inherited(arguments);this.dropDown.onValueSelected=
dojo.hitch(this,function(a){this.focus();setTimeout(dojo.hitch(this,"closeDropDown"),1);dijit.form.TextBox.prototype._setValueAttr.call(this,String(a.getDate()),!0,String(a.getDate()))})}}),dojo.declare("dojox.form.MonthTextBox",dojox.form.DateTextBox,{popupClass:"dojox.widget.MonthlyCalendar",selector:"date",postMixInProperties:function(){this.inherited(arguments);this.constraints.datePattern="MM"},format:function(a){return!a&&a!==0?1:a.getMonth?a.getMonth()+1:Number(a)+1},parse:function(a){return Number(a)-
1},serialize:function(a){return String(a)},validator:function(a){var b=Number(a),c=/(^-?\d\d*$)/.test(String(a));return a==""||a==null||c&&b>=1&&b<=12},_setValueAttr:function(a,b,c){a&&a.getMonth&&(a=a.getMonth());dijit.form.TextBox.prototype._setValueAttr.call(this,a,b,c)},openDropDown:function(){this.inherited(arguments);this.dropDown.onValueSelected=dojo.hitch(this,function(a){this.focus();setTimeout(dojo.hitch(this,"closeDropDown"),1);dijit.form.TextBox.prototype._setValueAttr.call(this,a,!0,
a)})}}),dojo.declare("dojox.form.YearTextBox",dojox.form.DateTextBox,{popupClass:"dojox.widget.YearlyCalendar",format:function(a){console.log("Year format "+a);return typeof a!="string"&&a.getFullYear?a.getFullYear():a},validator:function(a){return a==""||a==null||/(^-?\d\d*$)/.test(String(a))},_setValueAttr:function(a,b,c){a&&a.getFullYear&&(a=a.getFullYear());dijit.form.TextBox.prototype._setValueAttr.call(this,a,b,c)},openDropDown:function(){this.inherited(arguments);console.log("yearly openDropDown and value = "+
this.get("value"));this.dropDown.onValueSelected=dojo.hitch(this,function(a){this.focus();setTimeout(dojo.hitch(this,"closeDropDown"),1);dijit.form.TextBox.prototype._setValueAttr.call(this,a,!0,a)})},parse:function(a){return a||(this._isEmpty(a)?null:void 0)},filter:function(a){return a&&a.getFullYear?a.getFullYear().toString():this.inherited(arguments)}}));