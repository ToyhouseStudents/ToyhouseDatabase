/*
	Copyright (c) 2004-2011, The Dojo Foundation All Rights Reserved.
	Available via Academic Free License >= 2.1 OR the modified BSD license.
	see: http://dojotoolkit.org/license for details
*/


dojo._hasResource["dojox.grid.enhanced._Events"]||(dojo._hasResource["dojox.grid.enhanced._Events"]=!0,dojo.provide("dojox.grid.enhanced._Events"),dojo.declare("dojox.grid.enhanced._Events",null,{_events:null,headerCellActiveClass:"dojoxGridHeaderActive",cellActiveClass:"dojoxGridCellActive",rowActiveClass:"dojoxGridRowActive",constructor:function(a){this._events=new dojox.grid._Events;for(var b in this._events)if(!this[b])this.p=this._events.p;a.mixin(a,this)},dokeyup:function(a){this.focus.currentArea().keyup(a)},
onKeyDown:function(a){if(!a.altKey&&!a.metaKey){var b=dojo.keys,c=this.focus;switch(a.keyCode){case b.TAB:if(a.ctrlKey)break;c.tab(a.shiftKey?-1:1,a);break;case b.UP_ARROW:case b.DOWN_ARROW:c.currentArea().move(a.keyCode==b.UP_ARROW?-1:1,0,a);break;case b.LEFT_ARROW:case b.RIGHT_ARROW:b=a.keyCode==b.LEFT_ARROW?1:-1;dojo._isBodyLtr()&&(b*=-1);c.currentArea().move(0,b,a);break;case b.F10:if(this.menus&&a.shiftKey)this.onRowContextMenu(a);break;default:c.currentArea().keydown(a)}}},domouseup:function(a){if(a.cellNode)this.onMouseUp(a);
else this.onRowSelectorMouseUp(a)},domousedown:function(a){if(!a.cellNode)this.onRowSelectorMouseDown(a)},onMouseUp:function(a){this[a.rowIndex==-1?"onHeaderCellMouseUp":"onCellMouseUp"](a)},onCellMouseDown:function(a){dojo.addClass(a.cellNode,this.cellActiveClass);dojo.addClass(a.rowNode,this.rowActiveClass)},onCellMouseUp:function(a){dojo.removeClass(a.cellNode,this.cellActiveClass);dojo.removeClass(a.rowNode,this.rowActiveClass)},onCellClick:function(a){this._events.onCellClick.call(this,a);this.focus.contentMouseEvent(a)},
onCellDblClick:function(a){if(!this.pluginMgr.isFixedCell(a.cell)){if(this._click.length>1&&(!this._click[0]||!this._click[1]))this._click[0]=this._click[1]=a;this._events.onCellDblClick.call(this,a)}},onRowClick:function(a){this.edit.rowClick(a);(!a.cell||!a.cell.isRowSelector&&(!this.rowSelectCell||!this.rowSelectCell.disabled(a.rowIndex)))&&this.selection.clickSelectEvent(a)},onRowContextMenu:function(a){!this.edit.isEditing()&&this.menus&&this.showMenu(a)},onSelectedRegionContextMenu:function(a){this.selectedRegionMenu&&
(this.selectedRegionMenu._openMyself({target:a.target,coords:a.keyCode!==dojo.keys.F10&&"pageX"in a?{x:a.pageX,y:a.pageY}:null}),dojo.stopEvent(a))},onHeaderCellMouseOut:function(a){a.cellNode&&(dojo.removeClass(a.cellNode,this.cellOverClass),dojo.removeClass(a.cellNode,this.headerCellActiveClass))},onHeaderCellMouseDown:function(a){a.cellNode&&dojo.addClass(a.cellNode,this.headerCellActiveClass)},onHeaderCellMouseUp:function(a){a.cellNode&&dojo.removeClass(a.cellNode,this.headerCellActiveClass)},
onHeaderCellClick:function(a){this.focus.currentArea("header");a.cell.isRowSelector||this._events.onHeaderCellClick.call(this,a);this.focus.headerMouseEvent(a)},onRowSelectorMouseDown:function(a){this.focus.focusArea("rowHeader",a)},onRowSelectorMouseUp:function(){},onMouseUpRow:function(a){if(a.rowIndex!=-1)this.onRowMouseUp(a)},onRowMouseUp:function(){}}));