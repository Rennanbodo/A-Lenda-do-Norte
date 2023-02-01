//capturando comandos do jogador
key_right= keyboard_check(ord("D"));
key_left= keyboard_check(ord("A"));
key_jump= keyboard_check_pressed(vk_space);
//calculando movimentação
var move= key_right - key_left;
xsp= move * walksp;
ysp= ysp + grav;
if(place_meeting(x, y+1, oWall) and key_jump){
	ysp= -7
}

// Colisão
if place_meeting(x+xsp, y, oWall){
	while(!place_meeting(x+sign(xsp), y, oWall)){
		x += sign(xsp)
	}
	xsp= 0;
}
x += xsp

if place_meeting(x, y+ysp, oWall){
	while(!place_meeting(x, y+sign(ysp), oWall)){
		y += sign(ysp)
	}
	ysp= 0;
}
y += ysp

//animações
if (xsp == 0){
	sprite_index= sIdle
	
}else{
	sprite_index = sRun
}
if(xsp !=0) image_xscale= sign(xsp);


