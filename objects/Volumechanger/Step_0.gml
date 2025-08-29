

for (var i = 0; i < array_length_1d(sound_instances); i++) {
    var sound_instance = sound_instances[i];
    audio_sound_gain(sound_instance, global.Volume_num * 0.01, 0); // Adjust volume
}
for (var i = 0; i < array_length_1d(Music_instances); i++) {
    var sound_instance = Music_instances[i];
    audio_sound_gain(sound_instance, global.Volume_music * 0.01, 0); // Adjust volume
}