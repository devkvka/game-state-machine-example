package game

import rl "vendor:raylib"

run_menu :: proc() -> Game_State {
    input := Input{}

    for {
        rl.BeginDrawing()
        rl.ClearBackground(rl.BLACK)

        rl.DrawRectangle(500, 500, 500, 500, rl.RED)

        rl.EndDrawing()

        poll_input(&input)

        if rl.WindowShouldClose() || input.escape {
            return .Quit
        }
        if input.confirmation {
            return .In_Lobby
        }
    }
}
