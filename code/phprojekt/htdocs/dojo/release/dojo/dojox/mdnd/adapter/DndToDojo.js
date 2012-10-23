/*
	Copyright (c) 2004-2011, The Dojo Foundation All Rights Reserved.
	Available via Academic Free License >= 2.1 OR the modified BSD license.
	see: http://dojotoolkit.org/license for details
*/


if(!dojo._hasResource["dojox.mdnd.adapter.DndToDojo"])dojo._hasResource["dojox.mdnd.adapter.DndToDojo"]=!0,dojo.provide("dojox.mdnd.adapter.DndToDojo"),dojo.require("dojox.mdnd.PureSource"),dojo.require("dojox.mdnd.LazyManager"),dojo.declare("dojox.mdnd.adapter.DndToDojo",null,{_dojoList:null,_currentDojoArea:null,_dojoxManager:null,_dragStartHandler:null,_dropHandler:null,_moveHandler:null,_moveUpHandler:null,_draggedNode:null,constructor:function(){this._dojoList=[];this._currentDojoArea=null;this._dojoxManager=
dojox.mdnd.areaManager();this._dragStartHandler=dojo.subscribe("/dojox/mdnd/drag/start",this,function(a){this._draggedNode=a;this._moveHandler=dojo.connect(dojo.doc,"onmousemove",this,"onMouseMove")});this._dropHandler=dojo.subscribe("/dojox/mdnd/drop",this,function(){this._currentDojoArea&&dojo.publish("/dojox/mdnd/adapter/dndToDojo/cancel",[this._currentDojoArea.node,this._currentDojoArea.type,this._draggedNode,this.accept]);this._currentDojoArea=this._draggedNode=null;dojo.disconnect(this._moveHandler)})},
_getIndexDojoArea:function(a){if(a)for(var b=0,c=this._dojoList.length;b<c;b++)if(this._dojoList[b].node===a)return b;return-1},_initCoordinates:function(a){if(a){var a=dojo.position(a,!0),b={};b.x=a.x;b.y=a.y;b.x1=a.x+a.w;b.y1=a.y+a.h;return b}return null},register:function(a,b,c){if(this._getIndexDojoArea(a)==-1){var d=this._initCoordinates(a);this._dojoList.push({node:a,type:b,dojo:c?c:!1,coords:d});if(c&&!this._lazyManager)this._lazyManager=new dojox.mdnd.LazyManager}},unregisterByNode:function(a){a=
this._getIndexDojoArea(a);a!=-1&&this._dojoList.splice(a,1)},unregisterByType:function(a){if(a){var b=[];dojo.forEach(this._dojoList,function(c){c.type!=a&&b.push(c)});this._dojoList=b}},unregister:function(){this._dojoList=[]},refresh:function(){var a=this._dojoList;this.unregister();dojo.forEach(a,function(a){a.coords=this._initCoordinates(a.node)},this);this._dojoList=a},refreshByType:function(a){var b=this._dojoList;this.unregister();dojo.forEach(b,function(b){if(b.type==a)b.coords=this._initCoordinates(b.node)},
this);this._dojoList=b},_getHoverDojoArea:function(a){this._oldDojoArea=this._currentDojoArea;this._currentDojoArea=null;for(var b=a.x,a=a.y,c=this._dojoList.length,d=0;d<c;d++){var f=this._dojoList[d],e=f.coords;if(e.x<=b&&b<=e.x1&&e.y<=a&&a<=e.y1){this._currentDojoArea=f;break}}},onMouseMove:function(a){this._getHoverDojoArea({x:a.pageX,y:a.pageY});if(this._currentDojoArea!=this._oldDojoArea)if(this._currentDojoArea==null)this.onDragExit(a);else{if(this._oldDojoArea!=null)this.onDragExit(a);this.onDragEnter(a)}},
isAccepted:function(){return!0},onDragEnter:function(a){if(this._currentDojoArea.dojo){dojo.disconnect(this._dojoxManager._dragItem.handlers.pop());dojo.disconnect(this._dojoxManager._dragItem.handlers.pop());dojo.disconnect(this._dojoxManager._dragItem.item.events.pop());dojo.body().removeChild(this._dojoxManager._cover);dojo.body().removeChild(this._dojoxManager._cover2);var b=this._dojoxManager._dragItem.item.node;dojox.mdnd.adapter._dndFromDojo&&dojox.mdnd.adapter._dndFromDojo.unsubscribeDnd();
dojo.style(b,{position:"relative",top:"0",left:"0"});this._lazyManager.startDrag(a,b);var c=dojo.connect(this._lazyManager.manager,"overSource",this,function(){dojo.disconnect(c);if(this._lazyManager.manager.canDropFlag)this._dojoxManager._dropIndicator.node.style.display="none"});this.cancelHandler=dojo.subscribe("/dnd/cancel",this,function(){var a=this._dojoxManager._dragItem.item;a.events=[dojo.connect(a.handle,"onmousedown",a,"onMouseDown")];dojo.body().appendChild(this._dojoxManager._cover);
dojo.body().appendChild(this._dojoxManager._cover2);this._dojoxManager._cover.appendChild(a.node);this._dojoxManager._dragItem.handlers.push(dojo.connect(this._dojoxManager._dragItem.item,"onDrag",this._dojoxManager,"onDrag"));this._dojoxManager._dragItem.handlers.push(dojo.connect(this._dojoxManager._dragItem.item,"onDragEnd",this._dojoxManager,"onDrop"));this._draggedNode.style.display="";this._dojoxManager.onDrop(this._draggedNode);dojo.unsubscribe(this.cancelHandler);dojo.unsubscribe(this.dropHandler);
dojox.mdnd.adapter._dndFromDojo&&dojox.mdnd.adapter._dndFromDojo.subscribeDnd()});this.dropHandler=dojo.subscribe("/dnd/drop/before",this,function(){dojo.unsubscribe(this.cancelHandler);dojo.unsubscribe(this.dropHandler);this.onDrop()})}else if(this.accept=this.isAccepted(this._dojoxManager._dragItem.item.node,this._currentDojoArea))if(dojo.disconnect(this._dojoxManager._dragItem.handlers.pop()),dojo.disconnect(this._dojoxManager._dragItem.handlers.pop()),this._dojoxManager._dropIndicator.node.style.display=
"none",!this._moveUpHandler)this._moveUpHandler=dojo.connect(dojo.doc,"onmouseup",this,"onDrop");dojo.publish("/dojox/mdnd/adapter/dndToDojo/over",[this._currentDojoArea.node,this._currentDojoArea.type,this._draggedNode,this.accept])},onDragExit:function(a){if(this._oldDojoArea.dojo){dojo.unsubscribe(this.cancelHandler);dojo.unsubscribe(this.dropHandler);var b=this._dojoxManager._dragItem.item;this._dojoxManager._dragItem.item.events.push(dojo.connect(b.node.ownerDocument,"onmousemove",b,"onMove"));
dojo.body().appendChild(this._dojoxManager._cover);dojo.body().appendChild(this._dojoxManager._cover2);this._dojoxManager._cover.appendChild(b.node);var c=b.node.style;c.position="absolute";c.left=b.offsetDrag.l+a.pageX+"px";c.top=b.offsetDrag.t+a.pageX+"px";c.display="";this._lazyManager.cancelDrag();dojox.mdnd.adapter._dndFromDojo&&dojox.mdnd.adapter._dndFromDojo.subscribeDnd();if(this._dojoxManager._dropIndicator.node.style.display=="none")this._dojoxManager._dropIndicator.node.style.display="";
this._dojoxManager._dragItem.handlers.push(dojo.connect(this._dojoxManager._dragItem.item,"onDrag",this._dojoxManager,"onDrag"));this._dojoxManager._dragItem.handlers.push(dojo.connect(this._dojoxManager._dragItem.item,"onDragEnd",this._dojoxManager,"onDrop"));this._dojoxManager._dragItem.item.onMove(a)}else if(this.accept){if(this._moveUpHandler)dojo.disconnect(this._moveUpHandler),this._moveUpHandler=null;if(this._dojoxManager._dropIndicator.node.style.display=="none")this._dojoxManager._dropIndicator.node.style.display=
"";this._dojoxManager._dragItem.handlers.push(dojo.connect(this._dojoxManager._dragItem.item,"onDrag",this._dojoxManager,"onDrag"));this._dojoxManager._dragItem.handlers.push(dojo.connect(this._dojoxManager._dragItem.item,"onDragEnd",this._dojoxManager,"onDrop"));this._dojoxManager._dragItem.item.onMove(a)}dojo.publish("/dojox/mdnd/adapter/dndToDojo/out",[this._oldDojoArea.node,this._oldDojoArea.type,this._draggedNode,this.accept])},onDrop:function(){this._currentDojoArea.dojo&&dojox.mdnd.adapter._dndFromDojo&&
dojox.mdnd.adapter._dndFromDojo.subscribeDnd();if(this._dojoxManager._dropIndicator.node.style.display=="none")this._dojoxManager._dropIndicator.node.style.display="";this._dojoxManager._cover.parentNode&&this._dojoxManager._cover.parentNode.nodeType==1&&(dojo.body().removeChild(this._dojoxManager._cover),dojo.body().removeChild(this._dojoxManager._cover2));this._draggedNode.parentNode==this._dojoxManager._cover&&this._dojoxManager._cover.removeChild(this._draggedNode);dojo.disconnect(this._moveHandler);
dojo.disconnect(this._moveUpHandler);this._moveHandler=this._moveUpHandler=null;dojo.publish("/dojox/mdnd/adapter/dndToDojo/drop",[this._draggedNode,this._currentDojoArea.node,this._currentDojoArea.type]);dojo.removeClass(this._draggedNode,"dragNode");var a=this._draggedNode.style;a.position="relative";a.left="0";a.top="0";a.width="auto";dojo.forEach(this._dojoxManager._dragItem.handlers,dojo.disconnect);this._dojoxManager._deleteMoveableItem(this._dojoxManager._dragItem);this._currentDojoArea=this._draggedNode=
null;this._dojoxManager._resetAfterDrop()}}),dojox.mdnd.adapter._dndToDojo=null,dojox.mdnd.adapter.dndToDojo=function(){if(!dojox.mdnd.adapter._dndToDojo)dojox.mdnd.adapter._dndToDojo=new dojox.mdnd.adapter.DndToDojo;return dojox.mdnd.adapter._dndToDojo};