package game

import rl "vendor:raylib"

run_game :: proc() -> Game_State {
    input := Input{}

    for {
        rl.BeginDrawing()
        rl.ClearBackground(rl.BLACK)

        rl.DrawRectangle(1000, 500, 500, 500, rl.GREEN)

        rl.EndDrawing()

        poll_input(&input)

        if rl.WindowShouldClose() {
            return .Quit
        }

        if input.escape {
            return .In_Lobby
        }
    }
}
