global.tileSize = 32
global.tutorialZ = 0
global.tutorialDisableSpikes = 1
global.tutorialArrowKeys = 1
global.debugMode = true
global.seedsInventory = 0
global.guiAnimT = 0

for (var i=0; i<100; i+=1) {
    global.pondDrained[i] = false
}

global.musicSound = audio_play_sound(sndMusic, 0, true)
global.musicMuted = false
global.volume = 0.5
audio_master_gain(global.volume)

window_set_caption('Vine Story')

global.endingIsHappeningSoHideUI = false
