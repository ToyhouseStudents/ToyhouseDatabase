/*
	Copyright (c) 2004-2011, The Dojo Foundation All Rights Reserved.
	Available via Academic Free License >= 2.1 OR the modified BSD license.
	see: http://dojotoolkit.org/license for details
*/


if(!dojo._hasResource["dojox.fx.text"])dojo._hasResource["dojox.fx.text"]=!0,dojo.provide("dojox.fx.text"),dojo.require("dojo.fx"),dojo.require("dojo.fx.easing"),dojox.fx.text._split=function(a){function e(b){var c=b.nextSibling;if(b.tagName=="SPAN"&&b.childNodes.length==1&&b.firstChild.nodeType==3){var d=dojo.coords(b,!0);n++;dojo.style(b,{padding:0,margin:0,top:a.crop?"0px":d.t+"px",left:a.crop?"0px":d.l+"px",display:"inline"});b=a.pieceAnimation(b,d,h,n,o);dojo.isArray(b)?k=k.concat(b):k[k.length]=
b}else b.firstChild&&e(b.firstChild);c&&e(c)}var c=a.node=dojo.byId(a.node),b=c.style,d=dojo.getComputedStyle(c),h=dojo.coords(c,!0);a.duration=a.duration||1E3;a.words=a.words||!1;var f=a.text&&typeof a.text=="string"?a.text:c.innerHTML,g=b.height,i=b.width,k=[];dojo.style(c,{height:d.height,width:d.width});for(var b=/(<\/?\w+((\s+\w+(\s*=\s*(?:".*?"|'.*?'|[^'">\s]+))?)+\s*|\s*)\/?>)/g,d=a.words?/(<\/?\w+((\s+\w+(\s*=\s*(?:".*?"|'.*?'|[^'">\s]+))?)+\s*|\s*)\/?>)\s*|([^\s<]+\s*)/g:/(<\/?\w+((\s+\w+(\s*=\s*(?:".*?"|'.*?'|[^'">\s]+))?)+\s*|\s*)\/?>)\s*|([^\s<]\s*)/g,
d=typeof a.text=="string"?a.text.match(d):c.innerHTML.match(d),j="",o=0,n=0,l=0;l<d.length;l++){var m=d[l];m.match(b)?j+=m:(j+="<span>"+m+"</span>",o++)}c.innerHTML=j;e(c.firstChild);b=dojo.fx.combine(k);dojo.connect(b,"onEnd",b,function(){c.innerHTML=f;dojo.style(c,{height:g,width:i})});a.onPlay&&dojo.connect(b,"onPlay",b,a.onPlay);a.onEnd&&dojo.connect(b,"onEnd",b,a.onEnd);return b},dojox.fx.text.explode=function(a){a.node=dojo.byId(a.node);a.distance=a.distance||1;a.duration=a.duration||1E3;a.random=
a.random||0;if(typeof a.fade=="undefined")a.fade=!0;if(typeof a.sync=="undefined")a.sync=!0;a.random=Math.abs(a.random);a.pieceAnimation=function(e,c,b){var d=c.h,h=c.w,f=a.distance*2,g=a.duration,i=parseFloat(e.style.top),k=parseFloat(e.style.left),j=0,o=0,n=0;a.random&&(j=Math.random()*a.random+Math.max(1-a.random,0),f*=j,g*=j,j=a.unhide&&a.sync||!a.unhide&&!a.sync?a.duration-g:0,o=Math.random()-0.5,n=Math.random()-0.5);var d=(b.h-d)/2-(c.y-b.y),c=(b.w-h)/2-(c.x-b.x),b=Math.sqrt(Math.pow(c,2)+Math.pow(d,
2)),l=i-d*f+b*n,m=k-c*f+b*o,f=dojo.animateProperty({node:e,duration:g,delay:j,easing:a.easing||(a.unhide?dojo.fx.easing.sinOut:dojo.fx.easing.circOut),beforeBegin:a.unhide?function(){a.fade&&dojo.style(e,"opacity",0);e.style.position=a.crop?"relative":"absolute";e.style.top=l+"px";e.style.left=m+"px"}:function(){e.style.position=a.crop?"relative":"absolute"},properties:{top:a.unhide?{start:l,end:i}:{start:i,end:l},left:a.unhide?{start:m,end:k}:{start:k,end:m}}});return a.fade?(g=dojo.animateProperty({node:e,
duration:g,delay:j,easing:a.fadeEasing||dojo.fx.easing.quadOut,properties:{opacity:a.unhide?{start:0,end:1}:{end:0}}}),a.unhide?[g,f]:[f,g]):f};return dojox.fx.text._split(a)},dojox.fx.text.converge=function(a){a.unhide=!0;return dojox.fx.text.explode(a)},dojox.fx.text.disintegrate=function(a){a.node=dojo.byId(a.node);a.duration=a.duration||1500;a.distance=a.distance||1.5;a.random=a.random||0;if(!a.fade)a.fade=!0;var e=Math.abs(a.random);a.pieceAnimation=function(c,b,d,h,f){var g=a.interval||a.duration/
(1.5*f),b=a.duration-f*g,h=Math.random()*f*g*e+Math.max(1-e,0)*(a.reverseOrder||a.distance<0?h*g:(f-h)*g),i={};if(a.unhide){if(i.top={start:parseFloat(c.style.top)-d.h*a.distance,end:parseFloat(c.style.top)},a.fade)i.opacity={start:0,end:1}}else if(i.top={end:parseFloat(c.style.top)+d.h*a.distance},a.fade)i.opacity={end:0};return dojo.animateProperty({node:c,duration:b,delay:h,easing:a.easing||(a.unhide?dojo.fx.easing.sinIn:dojo.fx.easing.circIn),properties:i,beforeBegin:a.unhide?function(){a.fade&&
dojo.style(c,"opacity",0);c.style.position=a.crop?"relative":"absolute";c.style.top=i.top.start+"px"}:function(){c.style.position=a.crop?"relative":"absolute"}})};return dojox.fx.text._split(a)},dojox.fx.text.build=function(a){a.unhide=!0;return dojox.fx.text.disintegrate(a)},dojox.fx.text.blockFadeOut=function(a){a.node=dojo.byId(a.node);a.duration=a.duration||1E3;a.random=a.random||0;var e=Math.abs(a.random);a.pieceAnimation=function(c,b,d,h,f){b=a.interval||a.duration/(1.5*f);return dojo.animateProperty({node:c,
duration:a.duration-f*b,delay:Math.random()*f*b*e+Math.max(1-e,0)*(a.reverseOrder?(f-h)*b:h*b),easing:a.easing||dojo.fx.easing.sinInOut,properties:{opacity:a.unhide?{start:0,end:1}:{end:0}},beforeBegin:a.unhide?function(){dojo.style(c,"opacity",0)}:void 0})};return dojox.fx.text._split(a)},dojox.fx.text.blockFadeIn=function(a){a.unhide=!0;return dojox.fx.text.blockFadeOut(a)},dojox.fx.text.backspace=function(a){a.node=dojo.byId(a.node);a.words=!1;a.duration=a.duration||2E3;a.random=a.random||0;var e=
Math.abs(a.random),c=10;a.pieceAnimation=function(b,d,h,f,g){var d=a.interval||a.duration/(1.5*g),h="textContent"in b?b.textContent:b.innerText,i=h.match(/\s/g);if(typeof a.wordDelay=="undefined")a.wordDelay=d*2;a.unhide||(c=(g-f-1)*d);var k,j;a.fixed?a.unhide&&(k=function(){dojo.style(b,"opacity",0)}):a.unhide?(k=function(){b.style.display="none"},j=function(){b.style.display="inline"}):j=function(){b.style.display="none"};f=dojo.animateProperty({node:b,duration:1,delay:c,easing:a.easing||dojo.fx.easing.sinInOut,
properties:{opacity:a.unhide?{start:0,end:1}:{end:0}},beforeBegin:k,onEnd:j});a.unhide&&(g=Math.random()*h.length*d,c+=g*e+Math.max(1-e,0)*d*h.length+(g*e/2+Math.max(1-e/2,0)*a.wordDelay)*(i&&h.lastIndexOf(i[i.length-1])==h.length-1));return f};return dojox.fx.text._split(a)},dojox.fx.text.type=function(a){a.unhide=!0;return dojox.fx.text.backspace(a)};