package game

import rl "vendor:raylib"

run_lobby :: proc() -> Game_State {
    input := Input{}

    for {
        rl.BeginDrawing()
        rl.ClearBackground(rl.BLACK)

        rl.DrawRectangle(750, 500, 500, 500, rl.YELLOW)

        rl.EndDrawing()

        poll_input(&input)

        if input.escape {
            return .In_Menu
        }
        if input.confirmation {
            return .In_Game
        }
    }
}
