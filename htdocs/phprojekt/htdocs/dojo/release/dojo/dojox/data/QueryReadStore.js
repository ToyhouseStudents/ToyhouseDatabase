/*
	Copyright (c) 2004-2011, The Dojo Foundation All Rights Reserved.
	Available via Academic Free License >= 2.1 OR the modified BSD license.
	see: http://dojotoolkit.org/license for details
*/


dojo._hasResource["dojox.data.QueryReadStore"]||(dojo._hasResource["dojox.data.QueryReadStore"]=!0,dojo.provide("dojox.data.QueryReadStore"),dojo.require("dojo.data.util.sorter"),dojo.require("dojo.string"),dojo.declare("dojox.data.QueryReadStore",null,{url:"",requestMethod:"get",_className:"dojox.data.QueryReadStore",_items:[],_lastServerQuery:null,_numRows:-1,lastRequestHash:null,doClientPaging:!1,doClientSorting:!1,_itemsByIdentity:null,_identifier:null,_features:{"dojo.data.api.Read":!0,"dojo.data.api.Identity":!0},
_labelAttr:"label",constructor:function(a){dojo.mixin(this,a)},getValue:function(a,c,e){this._assertIsItem(a);if(!dojo.isString(c))throw Error(this._className+".getValue(): Invalid attribute, string expected!");return!this.hasAttribute(a,c)&&e?e:a.i[c]},getValues:function(a,c){this._assertIsItem(a);var e=[];this.hasAttribute(a,c)&&e.push(a.i[c]);return e},getAttributes:function(a){this._assertIsItem(a);var c=[],e;for(e in a.i)c.push(e);return c},hasAttribute:function(a,c){return this.isItem(a)&&typeof a.i[c]!=
"undefined"},containsValue:function(a,c,e){for(var a=this.getValues(a,c),c=a.length,b=0;b<c;b++)if(a[b]==e)return!0;return!1},isItem:function(a){return a?typeof a.r!="undefined"&&a.r==this:!1},isItemLoaded:function(a){return this.isItem(a)},loadItem:function(a){this.isItemLoaded(a.item)},fetch:function(a){a=a||{};if(!a.store)a.store=this;var c=this;this._fetchItems(a,function(a,b,d){var f=b.abort||null,g=!1,h=b.start?b.start:0;c.doClientPaging==!1&&(h=0);var j=b.count?h+b.count:a.length;b.abort=function(){g=
!0;f&&f.call(b)};var i=b.scope||dojo.global;if(!b.store)b.store=c;b.onBegin&&b.onBegin.call(i,d,b);b.sort&&c.doClientSorting&&a.sort(dojo.data.util.sorter.createSortFunction(b.sort,c));if(b.onItem)for(d=h;d<a.length&&d<j;++d){var k=a[d];g||b.onItem.call(i,k,b)}b.onComplete&&!g&&(d=null,b.onItem||(d=a.slice(h,j)),b.onComplete.call(i,d,b))},function(a,b){b.onError&&b.onError.call(b.scope||dojo.global,a,b)});return a},getFeatures:function(){return this._features},close:function(){},getLabel:function(a){if(this._labelAttr&&
this.isItem(a))return this.getValue(a,this._labelAttr)},getLabelAttributes:function(){return this._labelAttr?[this._labelAttr]:null},_xhrFetchHandler:function(a,c,e){a=this._filterResponse(a);if(a.label)this._labelAttr=a.label;var b=a.numRows||-1;this._items=[];dojo.forEach(a.items,function(a){this._items.push({i:a,r:this})},this);a=a.identifier;this._itemsByIdentity={};if(a){this._identifier=a;var d;for(d=0;d<this._items.length;++d){var f=this._items[d].i,g=f[a];if(this._itemsByIdentity[g])throw Error(this._className+
":  The json data as specified by: ["+this.url+"] is malformed.  Items within the list have identifier: ["+a+"].  Value collided: ["+g+"]");else this._itemsByIdentity[g]=f}}else{this._identifier=Number;for(d=0;d<this._items.length;++d)this._items[d].n=d}b=this._numRows=b===-1?this._items.length:b;e(this._items,c,b);this._numRows=b},_fetchItems:function(a,c,e){var b=a.serverQuery||a.query||{};if(!this.doClientPaging&&(b.start=a.start||0,a.count))b.count=a.count;if(!this.doClientSorting&&a.sort){var d=
[];dojo.forEach(a.sort,function(a){a&&a.attribute&&d.push((a.descending?"-":"")+a.attribute)});b.sort=d.join(",")}if(this.doClientPaging&&this._lastServerQuery!==null&&dojo.toJson(b)==dojo.toJson(this._lastServerQuery))this._numRows=this._numRows===-1?this._items.length:this._numRows,c(this._items,a,this._numRows);else{var f=(this.requestMethod.toLowerCase()=="post"?dojo.xhrPost:dojo.xhrGet)({url:this.url,handleAs:"json-comment-optional",content:b,failOk:!0});a.abort=function(){f.cancel()};f.addCallback(dojo.hitch(this,
function(b){this._xhrFetchHandler(b,a,c,e)}));f.addErrback(function(b){e(b,a)});this.lastRequestHash=(new Date).getTime()+"-"+String(Math.random()).substring(2);this._lastServerQuery=dojo.mixin({},b)}},_filterResponse:function(a){return a},_assertIsItem:function(a){if(!this.isItem(a))throw Error(this._className+": Invalid item argument.");},_assertIsAttribute:function(a){if(typeof a!=="string")throw Error(this._className+": Invalid attribute argument ('"+a+"').");},fetchItemByIdentity:function(a){if(this._itemsByIdentity){var c=
this._itemsByIdentity[a.identity];if(c!==void 0){a.onItem&&a.onItem.call(a.scope?a.scope:dojo.global,{i:c,r:this});return}}this._fetchItems({serverQuery:{id:a.identity}},function(c){var b=a.scope?a.scope:dojo.global;try{var d=null;c&&c.length==1&&(d=c[0]);a.onItem&&a.onItem.call(b,d)}catch(f){a.onError&&a.onError.call(b,f)}},function(c){var b=a.scope?a.scope:dojo.global;a.onError&&a.onError.call(b,c)})},getIdentity:function(a){var c=null;return c=this._identifier===Number?a.n:a.i[this._identifier]},
getIdentityAttributes:function(){return[this._identifier]}}));