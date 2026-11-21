package game

import rl "vendor:raylib"

Input :: struct {
    escape: bool,
    confirmation: bool,
}

poll_input :: proc(input_object: ^Input) {
    input_object.confirmation = rl.IsKeyPressed(.ENTER)
    input_object.escape = rl.IsKeyPressed(.ESCAPE)
}
