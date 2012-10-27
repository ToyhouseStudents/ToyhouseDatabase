/*
	Copyright (c) 2004-2011, The Dojo Foundation All Rights Reserved.
	Available via Academic Free License >= 2.1 OR the modified BSD license.
	see: http://dojotoolkit.org/license for details
*/


dojo._hasResource["dojox.charting.themes.Julie"]||(dojo._hasResource["dojox.charting.themes.Julie"]=!0,dojo.provide("dojox.charting.themes.Julie"),dojo.require("dojox.gfx.gradutils"),dojo.require("dojox.charting.Theme"),function(){var d=dojox.charting,c=d.themes,e=d.Theme,a=e.generateGradient,b={type:"linear",space:"shape",x1:0,y1:0,x2:0,y2:100};c.Julie=new d.Theme({seriesThemes:[{fill:a(b,"#59a0bd","#497c91"),stroke:{color:"#22627d"}},{fill:a(b,"#8d88c7","#6c6d8e"),stroke:{color:"#8a84c5"}},{fill:a(b,
"#85a54a","#768b4e"),stroke:{color:"#5b6d1f"}},{fill:a(b,"#e8e667","#c6c361"),stroke:{color:"#918e38"}},{fill:a(b,"#e9c756","#c7a223"),stroke:{color:"#947b30"}},{fill:a(b,"#a05a5a","#815454"),stroke:{color:"#572828"}},{fill:a(b,"#b17044","#72543e"),stroke:{color:"#74482e"}},{fill:a(b,"#a5a5a5","#727272"),stroke:{color:"#535353"}},{fill:a(b,"#9dc7d9","#59a0bd"),stroke:{color:"#22627d"}},{fill:a(b,"#b7b3da","#8681b3"),stroke:{color:"#8a84c5"}},{fill:a(b,"#a8c179","#85a54a"),stroke:{color:"#5b6d1f"}},
{fill:a(b,"#eeea99","#d6d456"),stroke:{color:"#918e38"}},{fill:a(b,"#ebcf81","#e9c756"),stroke:{color:"#947b30"}},{fill:a(b,"#c99999","#a05a5a"),stroke:{color:"#572828"}},{fill:a(b,"#c28b69","#7d5437"),stroke:{color:"#74482e"}},{fill:a(b,"#bebebe","#8c8c8c"),stroke:{color:"#535353"}},{fill:a(b,"#c7e0e9","#92baca"),stroke:{color:"#22627d"}},{fill:a(b,"#c9c6e4","#ada9d6"),stroke:{color:"#8a84c5"}},{fill:a(b,"#c0d0a0","#98ab74"),stroke:{color:"#5b6d1f"}},{fill:a(b,"#f0eebb","#dcd87c"),stroke:{color:"#918e38"}},
{fill:a(b,"#efdeb0","#ebcf81"),stroke:{color:"#947b30"}},{fill:a(b,"#ddc0c0","#c99999"),stroke:{color:"#572828"}},{fill:a(b,"#cfb09b","#c28b69"),stroke:{color:"#74482e"}},{fill:a(b,"#d8d8d8","#bebebe"),stroke:{color:"#535353"}},{fill:a(b,"#ddeff5","#a5c4cd"),stroke:{color:"#22627d"}},{fill:a(b,"#dedcf0","#b3afd3"),stroke:{color:"#8a84c5"}},{fill:a(b,"#dfe9ca","#c0d0a0"),stroke:{color:"#5b6d1f"}},{fill:a(b,"#f8f7db","#e5e28f"),stroke:{color:"#918e38"}},{fill:a(b,"#f7f0d8","#cfbd88"),stroke:{color:"#947b30"}},
{fill:a(b,"#eedede","#caafaf"),stroke:{color:"#572828"}},{fill:a(b,"#e3cdbf","#cfb09b"),stroke:{color:"#74482e"}},{fill:a(b,"#efefef","#cacaca"),stroke:{color:"#535353"}}]});c.Julie.next=function(a,b,d){if(a=="line"||a=="area"){var c=this.seriesThemes[this._current%this.seriesThemes.length];c.fill.space="plot";var f=e.prototype.next.apply(this,arguments);c.fill.space="shape";return f}return e.prototype.next.apply(this,arguments)};c.Julie.post=function(a,b){a=e.prototype.post.apply(this,arguments);
if(b=="slice"&&a.series.fill&&a.series.fill.type=="radial")a.series.fill=dojox.gfx.gradutils.reverse(a.series.fill);return a}}());