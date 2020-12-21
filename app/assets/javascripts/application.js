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
  //
  //



// this is to refactor the bottom part
let twenty = 20
let thirty = 30
let number = 100
let count = 0
let last_number = 400
let numbers = []
    
while(number < last_number) {
  if (count < 1) {
    numbers.push([number, number + thirty])
    number += thirty
    count = 1
   } else {
    numbers.push([number, number + twenty])
    number += twenty
    count = 0
  }
}
   
numbers.forEach((number) => {
  if (innerHeight > 80 && innerHeight <= 100){
    index = counting
  } else if (innerHeight > number[0] && innerHeight <= number[1]) {
    index = counting + 2
  } else {
    const innerWidth = getIndexFromWidth(width, Index)
    index = innerWidth
  }
})

return index


// let index = 100
// if (innerHeight > 80 && innerHeight <= 100) {
//   index = 5
// } else if (innerHeight > 100 && innerHeight < 130) {
//   index = 7
// } else if (innerHeight > 130 && innerHeight < 150) {
//   index = 9
// } else if (innerHeight > 150 && innerHeight < 180) {
//   index = 11 
// } else if (innerHeight > 180 && innerHeight < 200) {
//   index = 13 
// } else if (innerHeight > 200 && innerHeight < 230) {
//   index = 15 
// } else if (innerHeight > 230 && innerHeight < 260) {
//   index = 17 
// } else if (innerHeight > 260 && innerHeight < 290) {
//   index = 19 
// } else if (innerHeight > 290 && innerHeight < 310) {
//   index = 21 
// } else if (innerHeight > 340 && innerHeight < 340) {
//   index = 23 
// } else if (innerHeight > 370 && innerHeight < 400) {
//   index = 25 
// } else if (innerHeight > 130 && innerHeight < 150) {
//   index = 27 
//  else {
//   const innerHeight = getIndexFromWidth(width, Index) 
//    index = innerWidth
//  }
// return index
