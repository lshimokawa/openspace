/*!
 * GMaps.js
 * http://hpneo.github.com/gmaps/
 *
 * Copyright 2012, Gustavo Leon
 * Released under the MIT License.
 */
var GMaps=function(a){"use strict";var b=document,c=function(c,d){var e;return"jQuery"in a&&d?e=$("#"+c.replace("#",""),d)[0]:e=b.getElementById(c.replace("#","")),e},d=function(a){var d=this;window.context_menu={},typeof a.div=="string"?this.div=c(a.div,a.context):this.div=a.div,this.div.style.width=this.div.clientWidth||a.width,this.div.style.height=this.div.clientHeight||a.height,this.controls=[],this.overlays=[],this.layers=[],this.markers=[],this.polylines=[],this.routes=[],this.polygons=[],this.infoWindow=null,this.overlay_div=null,this.zoom=a.zoom||15;var e;a.mapType?e=google.maps.MapTypeId[a.mapType.toUpperCase()]:e=google.maps.MapTypeId.ROADMAP;var f=new google.maps.LatLng(a.lat,a.lng);delete a.div,delete a.lat,delete a.lng,delete a.mapType,delete a.width,delete a.height;var g=a.zoomControlOpt||{style:"DEFAULT",position:"TOP_LEFT"},h=a.zoomControl||!0,i=g.style||"DEFAULT",j=g.position||"TOP_LEFT",k=a.panControl||!0,l=a.mapTypeControl||!0,m=a.scaleControl||!0,n=a.streetViewControl||!0,o=o||!0,p={zoom:this.zoom,center:f,mapTypeId:e,panControl:k,zoomControl:h,zoomControlOptions:{style:google.maps.ZoomControlStyle[i],position:google.maps.ControlPosition[j]},mapTypeControl:l,scaleControl:m,streetViewControl:n,overviewMapControl:o},q=extend_object(p,a);this.map=new google.maps.Map(this.div,q);var r=function(a,b){var e="",f=window.context_menu[a];for(var g in f)if(f.hasOwnProperty(g)){var h=f[g];e+='<li><a id="'+a+"_"+g+'" href="#">'+h.title+"</a></li>"}if(!c("gmaps_context_menu"))return;var i=c("gmaps_context_menu");i.innerHTML=e;var j=i.getElementsByTagName("a"),k=j.length;for(var g=0;g<k;g++){var l=j[g],m=function(c){c.preventDefault(),f[this.id.replace(a+"_","")].action.call(d,b),d.hideContextMenu()};google.maps.event.clearListeners(l,"click"),google.maps.event.addDomListenerOnce(l,"click",m,!1)}var n=d.div.offsetLeft+b.pixel.x-15,o=d.div.offsetTop+b.pixel.y-15;i.style.left=n+"px",i.style.top=o+"px",i.style.display="block"},s=function(a,b){if(a==="marker"){b.pixel={};var c=new google.maps.OverlayView;c.setMap(d.map),c.draw=function(){var d=c.getProjection(),e=b.marker.getPosition();b.pixel=d.fromLatLngToContainerPixel(e),r(a,b)}}else r(a,b)};this.setContextMenu=function(a){window.context_menu[a.control]={};for(var d in a.options)if(a.options.hasOwnProperty(d)){var e=a.options[d];window.context_menu[a.control][e.name]={title:e.title,action:e.action}}var f=b.createElement("ul");f.id="gmaps_context_menu",f.style.display="none",f.style.position="absolute",f.style.minWidth="100px",f.style.background="white",f.style.listStyle="none",f.style.padding="8px",f.style.boxShadow="2px 2px 6px #ccc",b.body.appendChild(f);var g=c("gmaps_context_menu");google.maps.event.addDomListener(g,"mouseout",function(a){(!a.relatedTarget||!this.contains(a.relatedTarget))&&window.setTimeout(function(){g.style.display="none"},400)},!1)},this.hideContextMenu=function(){var a=c("gmaps_context_menu");a&&(a.style.display="none")};var t=["bounds_changed","center_changed","click","dblclick","drag","dragend","dragstart","idle","maptypeid_changed","projection_changed","resize","tilesloaded","zoom_changed"],u=["mousemove","mouseout","mouseover"];for(var v=0;v<t.length;v++)(function(b,c){google.maps.event.addListener(b,c,function(b){a[c]&&a[c].apply(this,[b]),d.hideContextMenu()})})(this.map,t[v]);for(var v=0;v<u.length;v++)(function(b,c){google.maps.event.addListener(b,c,function(b){a[c]&&a[c].apply(this,[b])})})(this.map,u[v]);google.maps.event.addListener(this.map,"rightclick",function(b){a.rightclick&&a.rightclick.apply(this,[b]),s("map",b)}),this.refresh=function(){google.maps.event.trigger(this.map,"resize")},this.fitZoom=function(){var a=[],b=this.markers.length;for(var c=0;c<b;c++)a.push(this.markers[c].getPosition());this.fitBounds(a)},this.fitBounds=function(a){var b=a.length,c=new google.maps.LatLngBounds;for(var d=0;d<b;d++)c.extend(a[d]);this.map.fitBounds(c)},this.setCenter=function(a,b,c){this.map.panTo(new google.maps.LatLng(a,b)),c&&c()},this.getCenter=function(){return this.map.getCenter()},this.getDiv=function(){return this.div},this.setZoom=function(a){this.map.setZoom(a)},this.getZoom=function(){return this.map.getZoom()},this.zoomIn=function(a){this.map.setZoom(this.map.getZoom()+a)},this.zoomOut=function(a){this.map.setZoom(this.map.getZoom()-a)},this.createControl=function(a){var c=b.createElement("div");c.style.cursor="pointer",c.style.fontFamily="Arial, sans-serif",c.style.fontSize="13px",c.style.boxShadow="rgba(0, 0, 0, 0.398438) 0px 2px 4px";for(var d in a.style)c.style[d]=a.style[d];c.textContent=a.text;for(var e in a.events)(function(b,c){google.maps.event.addDomListener(b,c,function(){a.events[c].apply(this,[this])})})(c,e);return c.index=1,c},this.addControl=function(a){var b=google.maps.ControlPosition[a.position.toUpperCase()];delete a.position;var c=this.createControl(a);return this.controls.push(c),this.map.controls[b].push(c),c},this.createMarker=function(a){if(a.lat&&a.lng){var b=this,c=a.details,d=a.fences,e=a.outside,f={position:new google.maps.LatLng(a.lat,a.lng),map:null};delete a.lat,delete a.lng,delete a.fences,delete a.outside;var g=extend_object(f,a),h=new google.maps.Marker(g);h.fences=d;if(a.infoWindow){h.infoWindow=new google.maps.InfoWindow(a.infoWindow);var i=["closeclick","content_changed","domready","position_changed","zindex_changed"];for(var j=0;j<i.length;j++)(function(b,c){google.maps.event.addListener(b,c,function(b){a.infoWindow[c]&&a.infoWindow[c].apply(this,[b])})})(h.infoWindow,i[j])}var k=["drag","dragstart","mouseout","mouseover","mouseup","position_changed"];for(var j=0;j<k.length;j++)(function(b,c){google.maps.event.addListener(b,c,function(){a[c]&&a[c].apply(this,[this])})})(h,k[j]);return google.maps.event.addListener(h,"click",function(){this.details=c,a.click&&a.click.apply(this,[this]),h.infoWindow&&(b.hideInfoWindows(),h.infoWindow.open(b.map,h))}),(a.dragend||h.fences)&&google.maps.event.addListener(h,"dragend",function(){a.dragend&&a.dragend.apply(this,[this]),h.fences&&b.checkMarkerGeofence(h,function(a,b){e(a,b)})}),h}throw"No latitude or longitude defined"},this.addMarker=function(a){if(a.lat&&a.lng){var b=this.createMarker(a);return b.setMap(this.map),this.markers.push(b),b}throw"No latitude or longitude defined"},this.addMarkers=function(a){for(var b=0,c;c=a[b];b++)this.addMarker(c);return this.markers},this.hideInfoWindows=function(){for(var a=0,b;b=this.markers[a];a++)b.infoWindow&&b.infoWindow.close()},this.removeMarkers=function(){for(var a=0,b;b=this.markers[a];a++)b.setMap(null);this.markers=[]},this.drawOverlay=function(a){var c=new google.maps.OverlayView;return c.setMap(d.map),c.onAdd=function(){var c=b.createElement("div");c.style.borderStyle="none",c.style.borderWidth="0px",c.style.position="absolute",c.style.zIndex=100,c.innerHTML=a.content,d.overlay_div=c;var e=this.getPanes();a.layer||(a.layer="overlayLayer");var f=e[a.layer];f.appendChild(c)},c.draw=function(){var b=this.getProjection(),c=b.fromLatLngToDivPixel(new google.maps.LatLng(a.lat,a.lng));a.horizontalOffset=a.horizontalOffset||0,a.verticalOffset=a.verticalOffset||0;var e=d.overlay_div,f=e.children[0],g=f.clientHeight,h=f.clientWidth;switch(a.verticalAlign){case"top":e.style.top=c.y-g+a.verticalOffset+"px";break;default:case"middle":e.style.top=c.y-g/2+a.verticalOffset+"px";break;case"bottom":e.style.top=c.y+a.verticalOffset+"px"}switch(a.horizontalAlign){case"left":e.style.left=c.x-h+a.horizontalOffset+"px";break;default:case"center":e.style.left=c.x-h/2+a.horizontalOffset+"px";break;case"right":e.style.left=c.x+a.horizontalOffset+"px"}},c.onRemove=function(){d.overlay_div.parentNode.removeChild(d.overlay_div),d.overlay_div=null},d.overlays.push(c),c},this.removeOverlay=function(a){a.setMap(null)},this.removeOverlays=function(){for(var a=0,b;b=d.overlays[a];a++)b.setMap(null);d.overlays=[]},this.drawPolyline=function(a){var b=[],c=a.path;if(c.length)if(c[0][0]===undefined)b=c;else for(var d=0,e;e=c[d];d++)b.push(new google.maps.LatLng(e[0],e[1]));var f=new google.maps.Polyline({map:this.map,path:b,strokeColor:a.strokeColor,strokeOpacity:a.strokeOpacity,strokeWeight:a.strokeWeight}),g=["click","dblclick","mousedown","mousemove","mouseout","mouseover","mouseup","rightclick"];for(var h=0;h<g.length;h++)(function(b,c){google.maps.event.addListener(b,c,function(b){a[c]&&a[c].apply(this,[b])})})(f,g[h]);return this.polylines.push(f),f},this.drawCircle=function(a){a=extend_object({map:this.map,center:new google.maps.LatLng(a.lat,a.lng)},a),delete a.lat,delete a.lng;var b=new google.maps.Circle(a),c=["click","dblclick","mousedown","mousemove","mouseout","mouseover","mouseup","rightclick"];for(var d=0;d<c.length;d++)(function(b,c){google.maps.event.addListener(b,c,function(b){a[c]&&a[c].apply(this,[b])})})(b,c[d]);return b},this.drawPolygon=function(a){function e(a){return new google.maps.LatLng(a[0],a[1])}a=extend_object({map:this.map},a),a.paths.length>0&&a.paths[0].length>0&&(a.paths=array_map(a.paths,e));var b=new google.maps.Polygon(a),c=["click","dblclick","mousedown","mousemove","mouseout","mouseover","mouseup","rightclick"];for(var d=0;d<c.length;d++)(function(b,c){google.maps.event.addListener(b,c,function(b){a[c]&&a[c].apply(this,[b])})})(b,c[d]);return this.polygons.push(b),b},this.getFromFusionTables=function(a){var b=a.events;delete a.events;var c=a,d=new google.maps.FusionTablesLayer(c);for(var e in b)(function(a,c){google.maps.event.addListener(a,c,function(a){b[c].apply(this,[a])})})(d,e);return this.layers.push(d),d},this.loadFromFusionTables=function(a){var b=this.getFromFusionTables(a);return b.setMap(this.map),b},this.getFromKML=function(a){var b=a.url,c=a.events;delete a.url,delete a.events;var d=a,e=new google.maps.KmlLayer(b,d);for(var f in c)(function(a,b){google.maps.event.addListener(a,b,function(a){c[b].apply(this,[a])})})(e,f);return this.layers.push(e),e},this.loadFromKML=function(a){var b=this.getFromKML(a);return b.setMap(this.map),b};var w,x;this.getRoutes=function(a){switch(a.travelMode){case"bicycling":w=google.maps.TravelMode.BICYCLING;break;case"driving":w=google.maps.TravelMode.DRIVING;break;default:w=google.maps.TravelMode.WALKING}a.unitSystem==="imperial"?x=google.maps.UnitSystem.IMPERIAL:x=google.maps.UnitSystem.METRIC;var b={avoidHighways:!1,avoidTolls:!1,optimizeWaypoints:!1,waypoints:[]},c=extend_object(b,a);c.origin=new google.maps.LatLng(a.origin[0],a.origin[1]),c.destination=new google.maps.LatLng(a.destination[0],a.destination[1]),c.travelMode=w,c.unitSystem=x,delete c.callback;var d=this,e=new google.maps.DirectionsService;e.route(c,function(b,c){if(c===google.maps.DirectionsStatus.OK)for(var e in b.routes)b.routes.hasOwnProperty(e)&&d.routes.push(b.routes[e]);a.callback&&a.callback(d.routes)})},this.removePolylines=function(){var a;for(a in this.polylines)this.polylines[a].setMap(null);this.polylines=[]},this.cleanRoute=this.removePolylines,this.drawRoute=function(a){var b=this;this.getRoutes({origin:a.origin,destination:a.destination,travelMode:a.travelMode,waypoints:a.waypoints,callback:function(c){c.length>0&&(b.drawPolyline({path:c[c.length-1].overview_path,strokeColor:a.strokeColor,strokeOpacity:a.strokeOpacity,strokeWeight:a.strokeWeight}),a.callback&&a.callback(c[c.length-1]))}})},this.travelRoute=function(a){if(a.origin&&a.destination)this.getRoutes({origin:a.origin,destination:a.destination,travelMode:a.travelMode,waypoints:a.waypoints,callback:function(b){if(b.length>0&&a.step){var c=b[b.length-1];if(c.legs.length>0){var d=c.legs[0].steps;for(var e=0,f;f=d[e];e++)f.step_number=e,a.step(f)}}}});else if(a.route&&a.route.legs.length>0){var b=a.route.legs[0].steps;for(var c=0,d;d=b[c];c++)d.step_number=c,a.step(d)}},this.drawSteppedRoute=function(a){if(a.origin&&a.destination)this.getRoutes({origin:a.origin,destination:a.destination,travelMode:a.travelMode,callback:function(b){if(b.length>0&&a.step){var c=b[b.length-1];if(c.legs.length>0){var e=c.legs[0].steps;for(var f=0,g;g=e[f];f++)g.step_number=f,d.drawPolyline({path:g.path,strokeColor:a.strokeColor,strokeOpacity:a.strokeOpacity,strokeWeight:a.strokeWeight}),a.step(g)}}}});else if(a.route&&a.route.legs.length>0){var b=a.route.legs[0].steps;for(var c=0,e;e=b[c];c++)e.step_number=c,d.drawPolyline({path:e.path,strokeColor:a.strokeColor,strokeOpacity:a.strokeOpacity,strokeWeight:a.strokeWeight}),a.step(e)}},this.checkGeofence=function(a,b,c){return c.containsLatLng(new google.maps.LatLng(a,b))},this.checkMarkerGeofence=function(a,b){if(a.fences)for(var c=0,e;e=a.fences[c];c++){var f=a.getPosition();d.checkGeofence(f.lat(),f.lng(),e)||b(a,e)}}};return d.Route=function(a){this.map=a.map,this.route=a.route,this.step_count=0,this.steps=this.route.legs[0].steps,this.steps_length=this.steps.length,this.polyline=this.map.drawPolyline({path:new google.maps.MVCArray,strokeColor:a.strokeColor,strokeOpacity:a.strokeOpacity,strokeWeight:a.strokeWeight}).getPath(),this.back=function(){if(this.step_count>0){this.step_count--;var a=this.route.legs[0].steps[this.step_count].path;for(var b in a)a.hasOwnProperty(b)&&this.polyline.pop()}},this.forward=function(){if(this.step_count<this.steps_length){var a=this.route.legs[0].steps[this.step_count].path;for(var b in a)a.hasOwnProperty(b)&&this.polyline.push(a[b]);this.step_count++}}},d.geolocate=function(a){navigator.geolocation?navigator.geolocation.getCurrentPosition(function(b){a.success(b),a.always&&a.always()},function(b){a.error(b),a.always&&a.always()},a.options):(a.not_supported(),a.always&&a.always())},d.geocode=function(a){this.geocoder=new google.maps.Geocoder;var b=a.callback;a.lat&&a.lng&&(a.latLng=new google.maps.LatLng(a.lat,a.lng)),delete a.lat,delete a.lng,delete a.callback,this.geocoder.geocode(a,function(a,c){b(a,c)})},d.staticMapURL=function(a){function n(a,b){if(a[0]==="#"){a=a.replace("#","0x");if(b){b=parseFloat(b),b=Math.min(1,Math.max(b,0));if(b===0)return"0x00000000";b=(b*255).toString(16),b.length===1&&(b+=b),a=a.slice(0,8)+b}}return a}var b=[],c,d="http://maps.googleapis.com/maps/api/staticmap";a.url&&(d=a.url,delete a.url),d+="?";var e=a.markers;delete a.markers,!e&&a.marker&&(e=[a.marker],delete a.marker);var f=a.polyline;delete a.polyline;if(a.center)b.push("center="+a.center),delete a.center;else if(a.address)b.push("center="+a.address),delete a.address;else if(a.lat)b.push(["center=",a.lat,",",a.lng].join("")),delete a.lat,delete a.lng;else if(a.visible){var g=encodeURI(a.visible.join("|"));b.push("visible="+g)}var h=a.size;h?(h.join&&(h=h.join("x")),delete a.size):h="630x300",b.push("size="+h),a.zoom||(a.zoom=15);var i=a.hasOwnProperty("sensor")?!!a.sensor:!0;delete a.sensor,b.push("sensor="+i);for(var j in a)a.hasOwnProperty(j)&&b.push(j+"="+a[j]);if(e){var k,l;for(var m=0;c=e[m];m++)k=[],c.size&&c.size!=="normal"?k.push("size:"+c.size):c.icon&&k.push("icon:"+encodeURI(c.icon)),c.color&&k.push("color:"+c.color.replace("#","0x")),c.label&&k.push("label:"+c.label[0].toUpperCase()),l=c.address?c.address:c.lat+","+c.lng,k.length||m===0?(k.push(l),k=k.join("|"),b.push("markers="+encodeURI(k))):(k=b.pop()+encodeURI("|"+l),b.push(k))}if(f){c=f,f=[],c.strokeWeight&&f.push("weight:"+parseInt(c.strokeWeight,10));if(c.strokeColor){var o=n(c.strokeColor,c.strokeOpacity);f.push("color:"+o)}if(c.fillColor){var p=n(c.fillColor,c.fillOpacity);f.push("fillcolor:"+p)}var q=c.path;if(q.join)for(var r=0,s;s=q[r];r++)f.push(s.join(","));else f.push("enc:"+q);f=f.join("|"),b.push("path="+encodeURI(f))}return b=b.join("&"),d+b},google.maps.Polygon.prototype.getBounds||(google.maps.Polygon.prototype.getBounds=function(a){var b=new google.maps.LatLngBounds,c=this.getPaths(),d;for(var e=0;e<c.getLength();e++){d=c.getAt(e);for(var f=0;f<d.getLength();f++)b.extend(d.getAt(f))}return b}),google.maps.Polygon.prototype.containsLatLng=function(a){var b=this.getBounds();if(b!==null&&!b.contains(a))return!1;var c=!1,d=this.getPaths().getLength();for(var e=0;e<d;e++){var f=this.getPaths().getAt(e),g=f.getLength(),h=g-1;for(var i=0;i<g;i++){var j=f.getAt(i),k=f.getAt(h);(j.lng()<a.lng()&&k.lng()>=a.lng()||k.lng()<a.lng()&&j.lng()>=a.lng())&&j.lat()+(a.lng()-j.lng())/(k.lng()-j.lng())*(k.lat()-j.lat())<a.lat()&&(c=!c),h=i}}return c},google.maps.LatLngBounds.prototype.containsLatLng=function(a){return this.contains(a)},google.maps.Marker.prototype.setFences=function(a){this.fences=a},google.maps.Marker.prototype.addFence=function(a){this.fences.push(a)},d}(this),extend_object=function(a,b){if(a===b)return a;for(var c in b)a[c]=b[c];return a},array_map=function(a,b){if(Array.prototype.map&&a.map===Array.prototype.map)return a.map(b);var c=[],d=a.length;for(var e=0;e<d;e++)c.push(b(a[e]));return c};((function(){})).call(this);