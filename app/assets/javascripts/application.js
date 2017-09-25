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
//= require jquery
//= require jquery_ujs
//= require rails-ujs

//  confirmで不具合が生じた為、コメント化する require_tree .

$(function() {
    console.log("jquery導入成功！");

    setInterval("timeNow()", 1000); // 1秒ごとに実行

})

/* 現在の時間を取得しHTMLに埋め込む */
function timeNow() {
    var time = new Date(); // 現在の時間を取得
    var weekOfDay = ["月", "火", "水", "木", "金", "土", "日"]; // 曜日用の配列を定義

    // 取得した日時を文字列に格納
    var timeString = "現在の日付と時刻: " +
                     String(time.getMonth() + 1) + "月" +
                     time.getDate() + "日(" +
                     weekOfDay[time.getDay() - 1] + ") " + 
                     time.getHours() + "時" +
                     time.getMinutes() + "分";

    $(".time_now").empty(); // 空にする
    $(".time_now").append(timeString); // timeStringを埋め込む
}