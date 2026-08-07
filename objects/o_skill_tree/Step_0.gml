var _cima = mouse_wheel_up()
var _baxo = mouse_wheel_down()

cam_zoom += (_baxo - _cima) * 0.1
cam_zoom = clamp(cam_zoom,cam_min_zoom,cam_max_zoom)


cam_w = cam_w_a * cam_zoom
cam_h = cam_h_a * cam_zoom

camera_set_view_size(view_camera[0],cam_w,cam_h)


camx = o_cam2.x - cam_w/2
camy = o_cam2.y - cam_h/2

camera_set_view_pos(view_camera[0],camx,camy)

if keyboard_check_pressed(vk_escape)
{
    room_goto(rm_menu)
}