/*
	Copyright (c) 2004-2011, The Dojo Foundation All Rights Reserved.
	Available via Academic Free License >= 2.1 OR the modified BSD license.
	see: http://dojotoolkit.org/license for details
*/


dojo._hasResource["dojox.charting.plot2d.Columns"]||(dojo._hasResource["dojox.charting.plot2d.Columns"]=!0,dojo.provide("dojox.charting.plot2d.Columns"),dojo.require("dojox.charting.plot2d.common"),dojo.require("dojox.charting.plot2d.Base"),dojo.require("dojox.gfx.fx"),dojo.require("dojox.lang.utils"),dojo.require("dojox.lang.functional"),dojo.require("dojox.lang.functional.reversed"),function(){var p=dojox.lang.functional,i=dojox.lang.utils,q=dojox.charting.plot2d.common,v=p.lambda("item.purgeGroup()");
dojo.declare("dojox.charting.plot2d.Columns",dojox.charting.plot2d.Base,{defaultParams:{hAxis:"x",vAxis:"y",gap:0,animate:null},optionalParams:{minBarSize:1,maxBarSize:1,stroke:{},outline:{},shadow:{},fill:{},font:"",fontColor:""},constructor:function(c,d){this.opt=dojo.clone(this.defaultParams);i.updateWithObject(this.opt,d);i.updateWithPattern(this.opt,d,this.optionalParams);this.series=[];this.hAxis=this.opt.hAxis;this.vAxis=this.opt.vAxis;this.animate=this.opt.animate},getSeriesStats:function(){var c=
q.collectSimpleStats(this.series);c.hmin-=0.5;c.hmax+=0.5;return c},render:function(c,d){if(this.zoom&&!this.isDataDirty())return this.performZoom(c,d);this.resetEvents();if(this.dirty=this.isDirty()){dojo.forEach(this.series,v);this._eventSeries={};this.cleanGroup();var f=this.group;p.forEachRev(this.series,function(a){a.cleanGroup(f)})}var k=this.chart.theme,g,i,w=this._hScaler.scaler.getTransformerFromModel(this._hScaler),r=this._vScaler.scaler.getTransformerFromModel(this._vScaler),s=Math.max(0,
this._vScaler.bounds.lower),l=r(s),x=this.events();g=q.calculateBarSize(this._hScaler.bounds.scale,this.opt);i=g.gap;g=g.size;for(var m=this.series.length-1;m>=0;--m){var b=this.series[m];if(!this.dirty&&!b.dirty)k.skip(),this._reconnectEvents(b.name);else{b.cleanGroup();for(var t=k.next("column",[this.opt,b]),f=b.group,u=Array(b.data.length),e=0;e<b.data.length;++e){var a=b.data[e];if(a!==null){var h=typeof a=="number"?a:a.y,j=r(h),n=Math.abs(j-l),a=typeof a!="number"?k.addMixin(t,"column",a,!0):
k.post(t,"column");if(g>=1&&n>=1){var j={x:d.l+w(e+0.5)+i,y:c.height-d.b-(h>s?j:l),width:g,height:n},o=this._plotFill(a.series.fill,c,d),o=this._shapeFill(o,j),a=f.createRect(j).setFill(o).setStroke(a.series.stroke);b.dyn.fill=a.getFill();b.dyn.stroke=a.getStroke();x&&(h={element:"column",index:e,run:b,shape:a,x:e+0.5,y:h},this._connectEvents(h),u[e]=h);this.animate&&this._animateColumn(a,c.height-d.b-l,n)}}}this._eventSeries[b.name]=u;b.dirty=!1}}this.dirty=!1;return this},_animateColumn:function(c,
d,f){dojox.gfx.fx.animateTransform(dojo.delegate({shape:c,duration:1200,transform:[{name:"translate",start:[0,d-d/f],end:[0,0]},{name:"scale",start:[1,1/f],end:[1,1]},{name:"original"}]},this.animate)).play()}})}());