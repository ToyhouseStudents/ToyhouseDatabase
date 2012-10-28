/*
	Copyright (c) 2004-2011, The Dojo Foundation All Rights Reserved.
	Available via Academic Free License >= 2.1 OR the modified BSD license.
	see: http://dojotoolkit.org/license for details
*/


dojo._hasResource["dojox.layout.GridContainerLite"]||(dojo._hasResource["dojox.layout.GridContainerLite"]=!0,dojo.provide("dojox.layout.GridContainerLite"),dojo.require("dijit._Templated"),dojo.require("dijit.layout._LayoutWidget"),dojo.require("dojox.mdnd.AreaManager"),dojo.require("dojox.mdnd.DropIndicator"),dojo.require("dojox.mdnd.dropMode.OverDropMode"),dojo.require("dojox.mdnd.AutoScroll"),dojo.declare("dojox.layout.GridContainerLite",[dijit.layout._LayoutWidget,dijit._Templated],{autoRefresh:!0,
templateString:dojo.cache("dojox.layout","resources/GridContainer.html",'<div id="${id}" class="gridContainer" dojoAttachPoint="containerNode" tabIndex="0" dojoAttachEvent="onkeypress:_selectFocus">\n\t<div dojoAttachPoint="gridContainerDiv">\n\t\t<table class="gridContainerTable" dojoAttachPoint="gridContainerTable" cellspacing="0" cellpadding="0">\n\t\t\t<tbody>\n\t\t\t\t<tr dojoAttachPoint="gridNode" >\n\t\t\t\t\t\n\t\t\t\t</tr>\n\t\t\t</tbody>\n\t\t</table>\n\t</div>\n</div>\n'),dragHandleClass:"dojoxDragHandle",
nbZones:1,doLayout:!0,isAutoOrganized:!0,acceptTypes:[],colWidths:"",constructor:function(a){this.acceptTypes=(a||{}).acceptTypes||["text"];this._disabled=!0},postCreate:function(){this.inherited(arguments);this._grid=[];this._createCells();this.subscribe("/dojox/mdnd/drop","resizeChildAfterDrop");this.subscribe("/dojox/mdnd/drag/start","resizeChildAfterDragStart");this._dragManager=dojox.mdnd.areaManager();this._dragManager.autoRefresh=this.autoRefresh;this._dragManager.dragHandleClass=this.dragHandleClass;
this.doLayout?this._border={h:dojo.isIE?dojo._getBorderExtents(this.gridContainerTable).h:0,w:dojo.isIE==6?1:0}:(dojo.style(this.domNode,"overflowY","hidden"),dojo.style(this.gridContainerTable,"height","auto"));this.inherited(arguments)},startup:function(){this._started||(this.isAutoOrganized?this._organizeChildren():this._organizeChildrenManually(),dojo.forEach(this.getChildren(),function(a){a.startup()}),this._isShown()&&this.enableDnd(),this.inherited(arguments))},resizeChildAfterDrop:function(a,
b){if(this._disabled)return!1;if(dijit.getEnclosingWidget(b.node)==this){var c=dijit.byNode(a);c.resize&&dojo.isFunction(c.resize)&&c.resize();c.set("column",a.parentNode.cellIndex);if(this.doLayout)c=this._contentBox.h,dojo.contentBox(this.gridContainerDiv).h>=c&&dojo.style(this.gridContainerTable,"height",c-this._border.h+"px");return!0}return!1},resizeChildAfterDragStart:function(a,b){return this._disabled?!1:dijit.getEnclosingWidget(b.node)==this?(this._draggedNode=a,this.doLayout&&dojo.marginBox(this.gridContainerTable,
{h:dojo.contentBox(this.gridContainerDiv).h-this._border.h}),!0):!1},getChildren:function(){var a=[];dojo.forEach(this._grid,function(b){a=a.concat(dojo.query("> [widgetId]",b.node).map(dijit.byNode))});return a},_isShown:function(){if("open"in this)return this.open;else{var a=this.domNode;return a.style.display!="none"&&a.style.visibility!="hidden"&&!dojo.hasClass(a,"dijitHidden")}},layout:function(){if(this.doLayout){var a=this._contentBox;dojo.marginBox(this.gridContainerTable,{h:a.h-this._border.h});
dojo.contentBox(this.domNode,{w:a.w-this._border.w})}dojo.forEach(this.getChildren(),function(a){a.resize&&dojo.isFunction(a.resize)&&a.resize()})},onShow:function(){this._disabled&&this.enableDnd()},onHide:function(){this._disabled||this.disableDnd()},_createCells:function(){if(this.nbZones===0)this.nbZones=1;for(var a=this.acceptTypes.join(","),b=0,c=this.colWidths||[],d=[],e,h=0,b=0;b<this.nbZones;b++)d.length<c.length?(h+=c[b],d.push(c[b])):(e||(e=(100-h)/(this.nbZones-b)),d.push(e));for(b=0;b<
this.nbZones;)this._grid.push({node:dojo.create("td",{"class":"gridContainerZone",accept:a,id:this.id+"_dz"+b,style:{width:d[b]+"%"}},this.gridNode)}),b++},_getZonesAttr:function(){return dojo.query(".gridContainerZone",this.containerNode)},enableDnd:function(){var a=this._dragManager;dojo.forEach(this._grid,function(b){a.registerByNode(b.node)});a._dropMode.updateAreas(a._areaList);this._disabled=!1},disableDnd:function(){var a=this._dragManager;dojo.forEach(this._grid,function(b){a.unregister(b.node)});
a._dropMode.updateAreas(a._areaList);this._disabled=!0},_organizeChildren:function(){for(var a=dojox.layout.GridContainerLite.superclass.getChildren.call(this),b=this.nbZones,c=Math.floor(a.length/b),d=a.length%b,e=0,h=0;h<b;h++){for(var f=0;f<c;f++)this._insertChild(a[e],h),e++;if(d>0){try{this._insertChild(a[e],h),e++}catch(g){console.error("Unable to insert child in GridContainer",g)}d--}else if(c===0)break}},_organizeChildrenManually:function(){for(var a=dojox.layout.GridContainerLite.superclass.getChildren.call(this),
b=a.length,c,d=0;d<b;d++){c=a[d];try{this._insertChild(c,c.column-1)}catch(e){console.error("Unable to insert child in GridContainer",e)}}},_insertChild:function(a,b,c){var d=this._grid[b].node,e=d.childNodes.length;if(typeof c==void 0||c>e)c=e;this._disabled?(dojo.place(a.domNode,d,c),dojo.attr(a.domNode,"tabIndex","0")):a.dragRestriction?(dojo.place(a.domNode,d,c),dojo.attr(a.domNode,"tabIndex","0")):this._dragManager.addDragItem(d,a.domNode,c,!0);a.set("column",b);return a},removeChild:function(a){this._disabled?
this.inherited(arguments):this._dragManager.removeDragItem(a.domNode.parentNode,a.domNode)},addService:function(a,b,c){dojo.deprecated("addService is deprecated.","Please use  instead.","Future");this.addChild(a,b,c)},addChild:function(a,b,c){a.domNode.id=a.id;dojox.layout.GridContainerLite.superclass.addChild.call(this,a,0);if(b<0||b==void 0)b=0;c<=0&&(c=0);try{return this._insertChild(a,b,c)}catch(d){console.error("Unable to insert child in GridContainer",d)}return null},_setColWidthsAttr:function(a){this.colWidths=
dojo.isString(a)?a.split(","):dojo.isArray(a)?a:[a];this._started&&this._updateColumnsWidth()},_updateColumnsWidth:function(){var a=this._grid.length,b=this.colWidths||[],c=[],d,e=0,h;for(h=0;h<a;h++)c.length<b.length?(e+=b[h]*1,c.push(b[h])):(d||(d=(100-e)/(this.nbZones-h),d<0&&(d=100/this.nbZones)),c.push(d),e+=d*1);if(e>100){b=100/e;for(h=0;h<c.length;h++)c[h]*=b}for(h=0;h<a;h++)this._grid[h].node.style.width=c[h]+"%"},_selectFocus:function(a){if(!this._disabled){var b=a.keyCode,c=dojo.keys,d=
null,e=dijit.getFocus().node,h=this._dragManager,f,g;if(e==this.containerNode)switch(e=this.gridNode.childNodes,b){case c.DOWN_ARROW:case c.RIGHT_ARROW:c=!1;for(f=0;f<e.length;f++){b=e[f].childNodes;for(g=0;g<b.length;g++)if(d=b[g],d!=null&&d.style.display!="none"){dijit.focus(d);dojo.stopEvent(a);c=!0;break}if(c)break}break;case c.UP_ARROW:case c.LEFT_ARROW:e=this.gridNode.childNodes;c=!1;for(f=e.length-1;f>=0;f--){b=e[f].childNodes;for(g=b.length;g>=0;g--)if(d=b[g],d!=null&&d.style.display!="none"){dijit.focus(d);
dojo.stopEvent(a);c=!0;break}if(c)break}}else if(e.parentNode.parentNode==this.gridNode){var i=b==c.UP_ARROW||b==c.LEFT_ARROW?"lastChild":"firstChild";g=b==c.UP_ARROW||b==c.LEFT_ARROW?"previousSibling":"nextSibling";switch(b){case c.UP_ARROW:case c.DOWN_ARROW:dojo.stopEvent(a);for(var c=!1,j=e;!c;){b=j.parentNode.childNodes;for(f=d=0;f<b.length;f++)if(b[f].style.display!="none"&&d++,d>1)break;if(d==1)return;d=j[g]==null?j.parentNode[i]:j[g];d.style.display==="none"?j=d:c=!0}if(a.shiftKey){c=e.parentNode;
for(f=0;f<this.gridNode.childNodes.length;f++)if(c==this.gridNode.childNodes[f])break;b=this.gridNode.childNodes[f].childNodes;for(g=0;g<b.length;g++)if(d==b[g])break;(dojo.isMoz||dojo.isWebKit)&&f--;d=dijit.byNode(e);d.dragRestriction?dojo.publish("/dojox/layout/gridContainer/moveRestriction",[this]):(h.removeDragItem(c,e),this.addChild(d,f,g),dojo.attr(e,"tabIndex","0"),dijit.focus(e))}else dijit.focus(d);break;case c.RIGHT_ARROW:case c.LEFT_ARROW:if(dojo.stopEvent(a),a.shiftKey){a=0;if(e.parentNode[g]==
null)dojo.isIE&&b==c.LEFT_ARROW&&(a=this.gridNode.childNodes.length-1);else if(e.parentNode[g].nodeType==3)a=this.gridNode.childNodes.length-2;else{for(f=0;f<this.gridNode.childNodes.length;f++){if(e.parentNode[g]==this.gridNode.childNodes[f])break;a++}(dojo.isMoz||dojo.isWebKit)&&a--}d=dijit.byNode(e);i=e.getAttribute("dndtype");i=i==null?d&&d.dndType?d.dndType.split(/\s*,\s*/):["text"]:i.split(/\s*,\s*/);j=!1;for(f=0;f<this.acceptTypes.length;f++)for(g=0;g<i.length;g++)if(i[g]==this.acceptTypes[f]){j=
!0;break}if(j&&!d.dragRestriction){f=e.parentNode;g=0;if(c.LEFT_ARROW==b){b=a;if(dojo.isMoz||dojo.isWebKit)b=a+1;g=this.gridNode.childNodes[b].childNodes.length}e=h.removeDragItem(f,e);this.addChild(d,a,g);dojo.attr(e,"tabIndex","0");dijit.focus(e)}else dojo.publish("/dojox/layout/gridContainer/moveRestriction",[this])}else{for(e=e.parentNode;d===null;)if(e=e[g]!==null&&e[g].nodeType!==3?e[g]:g==="previousSibling"?e.parentNode.childNodes[e.parentNode.childNodes.length-1]:dojo.isIE?e.parentNode.childNodes[0]:
e.parentNode.childNodes[1],(d=e[i])&&d.style.display=="none"){b=d.parentNode.childNodes;h=null;if(g=="previousSibling")for(f=b.length-1;f>=0;f--){if(b[f].style.display!="none"){h=b[f];break}}else for(f=0;f<b.length;f++)if(b[f].style.display!="none"){h=b[f];break}h?d=h:(e=d,e=e.parentNode,d=null)}dijit.focus(d)}}}}},destroy:function(){var a=this._dragManager;dojo.forEach(this._grid,function(b){a.unregister(b.node)});this.inherited(arguments)}}),dojo.extend(dijit._Widget,{column:"1",dragRestriction:!1}));