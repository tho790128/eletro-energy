var _up = keyboard_check(ord("W"))
var _down = keyboard_check(ord("S"))
var _right = keyboard_check(ord("D"))
var _left = keyboard_check(ord("A"))

y += (_down-_up) *10
x += (_right-_left) *10