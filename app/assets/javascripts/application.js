// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

// 地図を作成する
var mymap = L.map('map');
 
// タイルレイヤーを作成し、地図にセットする
L.tileLayer('https://cyberjapandata.gsi.go.jp/xyz/std/{z}/{x}/{y}.png', {
  maxZoom: 18,
  attribution: '<a href="https://maps.gsi.go.jp/development/ichiran.html" target="_blank">国土地理院</a>',
}).addTo(mymap);
 
// 地図の中心座標とズームレベルを設定する
mymap.setView([37.508106, 139.930239], 13);

// マーカーを作成する
var marker = L.marker([37.508106, 139.930239]).addTo(mymap);
 
// クリックした際にポップアップメッセージを表示する
marker.bindPopup("ここ");

// アイコンを作成する
var markerIcon = L.icon({
    iconUrl: 'http://www.nowhere.co.jp/blog/wp-content/uploads/2018/07/marker.png', // アイコン画像のURL
    iconSize:     [32, 32], // アイコンの大きさ
    iconAnchor:   [16, 32], // 画像内でマーカーの位置を指し示す点の位置
    popupAnchor:  [0, -32]  // ポップアップが出現する位置（iconAnchorからの相対位置）
});
 
// 上記で作成したアイコンを使用してマーカーを作成する
var marker = L.marker([37.508106, 139.930239], {icon: markerIcon}).addTo(mymap);

var route = L.polyline([
    [37.507543, 139.930619],
    [37.507016, 139.932408],
    [37.498371, 139.928649],
    [37.495337, 139.928006],
    [37.495123, 139.929800],
    [37.494833, 139.929750]
], {color: "blue", weight: 6}).addTo(mymap);