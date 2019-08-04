/// @description Fall

grav_speed = 0.2

var sound = audio_play_sound(snd_eyes,0,0)
audio_sound_gain(sound,global.master_volume*global.sound_volume*.8,0)
audio_sound_gain(sound,0,1500)

xsp = image_xscale
ysp = -3


