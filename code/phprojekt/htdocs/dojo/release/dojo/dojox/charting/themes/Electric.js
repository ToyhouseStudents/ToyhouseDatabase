/*
	Copyright (c) 2004-2011, The Dojo Foundation All Rights Reserved.
	Available via Academic Free License >= 2.1 OR the modified BSD license.
	see: http://dojotoolkit.org/license for details
*/


dojo._hasResource["dojox.charting.themes.Electric"]||(dojo._hasResource["dojox.charting.themes.Electric"]=!0,dojo.provide("dojox.charting.themes.Electric"),dojo.require("dojox.gfx.gradutils"),dojo.require("dojox.charting.Theme"),function(){var g=dojox.charting,h=g.themes,e=g.Theme,a=e.generateGradient,c={type:"linear",space:"shape",x1:0,y1:0,x2:0,y2:75};h.Electric=new g.Theme({chart:{fill:"#252525",stroke:{color:"#252525"},pageStyle:{backgroundColor:"#252525",backgroundImage:"none",color:"#ccc"}},
plotarea:{fill:"#252525"},axis:{stroke:{color:"#aaa",width:1},tick:{color:"#777",position:"center",font:"normal normal normal 7pt Helvetica, Arial, sans-serif",fontColor:"#777"}},series:{stroke:{width:2,color:"#ccc"},outline:null,font:"normal normal normal 8pt Helvetica, Arial, sans-serif",fontColor:"#ccc"},marker:{stroke:{width:3,color:"#ccc"},outline:null,font:"normal normal normal 8pt Helvetica, Arial, sans-serif",fontColor:"#ccc"},seriesThemes:[{fill:a(c,"#004cbf","#06f")},{fill:a(c,"#bf004c",
"#f06")},{fill:a(c,"#43bf00","#6f0")},{fill:a(c,"#7300bf","#90f")},{fill:a(c,"#bf7300","#f90")},{fill:a(c,"#00bf73","#0f9")}],markerThemes:[{fill:"#06f",stroke:{color:"#06f"}},{fill:"#f06",stroke:{color:"#f06"}},{fill:"#6f0",stroke:{color:"#6f0"}},{fill:"#90f",stroke:{color:"#90f"}},{fill:"#f90",stroke:{color:"#f90"}},{fill:"#0f9",stroke:{color:"#0f9"}}]});h.Electric.next=function(b,a,c){var f=b=="line";if(f||b=="area"){var d=this.seriesThemes[this._current%this.seriesThemes.length];d.fill.space=
"plot";if(f)d.stroke={width:2.5,color:d.fill.colors[1].color};if(b=="area")d.fill.y2=90;f=e.prototype.next.apply(this,arguments);delete d.stroke;d.fill.y2=75;d.fill.space="shape";return f}return e.prototype.next.apply(this,arguments)};h.Electric.post=function(b,a){b=e.prototype.post.apply(this,arguments);if((a=="slice"||a=="circle")&&b.series.fill&&b.series.fill.type=="radial")b.series.fill=dojox.gfx.gradutils.reverse(b.series.fill);return b}}());