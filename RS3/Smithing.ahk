!1::Reload

!2::ExitApp

createsquare(xpos, ypos) {
    ; Create square from start position
    Random, xSway, 0, 20
    Random, ySway, 0, 20

    xpos += %xSway%
    ypos += %ySway%

    square := {x: xpos, y: ypos}
    return square
}

1::
    while(1) {
        square := createsquare(870,404) ; Click anvil
        MouseMove, square.x, square.y, 4
        click

        Random, rand, 17500, 21350 ; Sleep time till reheat
        Sleep, %rand%

        square := createsquare(508,178) ; Click heater
        MouseMove, square.x, square.y, 4
        click

        Random, rand, 1450, 2000 ; Sleep time for reheat
        Sleep, %rand%
    }