/// @description Destroy this hitbox in a set number of steps
// You can write your code in this editor

if(frames_to_selfdestruct == 0) {
    instance_destroy(id);
}

frames_to_selfdestruct -= 1;