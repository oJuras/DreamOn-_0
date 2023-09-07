var camera_X = camera_get_view_x(view_camera[0]);
var camera_Y = camera_get_view_y(view_camera[0]);
var camera_Width = camera_get_view_width(view_camera[0]); 
var camera_Height = camera_get_view_height(view_camera[0]);

hue += 0.2;

color1 = make_color_hsv(hue, 255, 255);
draw_rectangle_color(camera_X, camera_Y, camera_X + camera_Width, camera_Y + camera_Height, color1, color1, color2, color2, 0
);