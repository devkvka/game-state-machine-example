package client

import rl "vendor:raylib"
import "game"

main :: proc() {
    rl.InitWindow(750, 750, "Multiplayer Game")
    defer rl.CloseWindow()

    rl.ToggleFullscreen()
    rl.SetExitKey(.KEY_NULL)

    client_state : game.Game_State = .In_Menu

    rl.SetTargetFPS(60)

    for !rl.WindowShouldClose() {
        switch client_state {
        case .Quit:     return
        case .In_Menu:  client_state = game.run_menu()
        case .In_Lobby: client_state = game.run_lobby()
        case .In_Game:  client_state = game.run_game()
        }
    }
}

