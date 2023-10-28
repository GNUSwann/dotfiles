require'alpha'.setup(require'alpha.themes.dashboard'.config)
local dashboard = require'alpha.themes.dashboard'

--[[

dashboard.section.buttons.val = {
   dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
   dashboard.button( "q", "󰅚  Quit NVIM" , ":qa<CR>"),
}
--]]


dashboard.section.header.val = {
   "            :h-                                  Nhy`               ",
   "           -mh.                           h.    `Ndho               ",
   "           hmh+                          oNm.   oNdhh               ",
   "          `Nmhd`                        /NNmd  /NNhhd               ",
   "          -NNhhy                      `hMNmmm`+NNdhhh               ",
   "          .NNmhhs              ```....`..-:/./mNdhhh+               ",
   "           mNNdhhh-     `.-::///+++////++//:--.`-/sd`               ",
   "           oNNNdhhdo..://++//++++++/+++//++///++/-.`                ",
   "      y.   `mNNNmhhhdy+/++++//+/////++//+++///++////-` `/oos:       ",
   " .    Nmy:  :NNNNmhhhhdy+/++/+++///:.....--:////+++///:.`:s+        ",
   " h-   dNmNmy oNNNNNdhhhhy:/+/+++/-         ---:/+++//++//.`         ",
   " hd+` -NNNy`./dNNNNNhhhh+-://///    -+oo:`  ::-:+////++///:`        ",
   " /Nmhs+oss-:++/dNNNmhho:--::///    /mmmmmo  ../-///++///////.       ",
   "  oNNdhhhhhhhs//osso/:---:::///    /yyyyso  ..o+-//////////:/.      ",
   "   /mNNNmdhhhh/://+///::://////     -:::- ..+sy+:////////::/:/.     ",
   "     /hNNNdhhs--:/+++////++/////.      ..-/yhhs-/////////::/::/`    ",
   "       .ooo+/-::::/+///////++++//-/ossyyhhhhs/:///////:::/::::/:    ",
   "       -///:::::::////++///+++/////:/+ooo+/::///////.::://::---+`   ",
   "       /////+//++++/////+////-..//////////::-:::--`.:///:---:::/:   ",
   "       //+++//++++++////+++///::--                 .::::-------::   ",
   "       :/++++///////////++++//////.                -:/:----::../-   ",
   "       -/++++//++///+//////////////               .::::---:::-.+`   ",
   "       `////////////////////////////:.            --::-----...-/    ",
   "        -///://////////////////////::::-..      :-:-:-..-::.`.+`    ",
   "         :/://///:///::://::://::::::/:::::::-:---::-.-....``/- -   ",
   "           ::::://::://::::::::::::::----------..-:....`.../- -+oo/ ",
   "            -/:::-:::::---://:-::-::::----::---.-.......`-/.      ``",
   "           s-`::--:::------:////----:---.-:::...-.....`./:          ",
   "          yMNy.`::-.--::..-dmmhhhs-..-.-.......`.....-/:`           ",
   "         oMNNNh. `-::--...:NNNdhhh/.--.`..``.......:/-              ",
   "        :dy+:`      .-::-..NNNhhd+``..`...````.-::-`                ",
   "                        .-:mNdhh:.......--::::-`                    ",
   "                           yNh/..------..`                          ",
   "                                                                    ",
}
--[[
dashboard.section.header.val = {
     "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⣤⣤⣴⣦⣤⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
     "⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⣿⠿⠿⠿⠿⣿⣿⣿⣿⣶⣤⡀⠀⠀⠀⠀⠀⠀ ",
     "⠀⠀⠀⠀⣠⣾⣿⣿⡿⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⢿⣿⣿⣶⡀⠀⠀⠀⠀ ",
     "⠀⠀⠀⣴⣿⣿⠟⠁⠀⠀⠀⣶⣶⣶⣶⡆⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣦⠀⠀⠀ ",
     "⠀⠀⣼⣿⣿⠋⠀⠀⠀⠀⠀⠛⠛⢻⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣧⠀⠀ ",
     "⠀⢸⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⡇⠀ ",
     "⠀⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⠀ ",
     "⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⡟⢹⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⣹⣿⣿⠀ ",
     "⠀⣿⣿⣷⠀⠀⠀⠀⠀⠀⣰⣿⣿⠏⠀⠀⢻⣿⣿⡄⠀⠀⠀⠀⠀⠀⣿⣿⡿⠀ ",
     "⠀⢸⣿⣿⡆⠀⠀⠀⠀⣴⣿⡿⠃⠀⠀⠀⠈⢿⣿⣷⣤⣤⡆⠀⠀⣰⣿⣿⠇⠀ ",
     "⠀⠀⢻⣿⣿⣄⠀⠀⠾⠿⠿⠁⠀⠀⠀⠀⠀⠘⣿⣿⡿⠿⠛⠀⣰⣿⣿⡟⠀⠀ ",
     "⠀⠀⠀⠻⣿⣿⣧⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⠏⠀⠀⠀ ",
     "⠀⠀⠀⠀⠈⠻⣿⣿⣷⣤⣄⡀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣾⣿⣿⠟⠁⠀⠀⠀⠀ ",
     "⠀⠀⠀⠀⠀⠀⠈⠛⠿⣿⣿⣿⣿⣿⣶⣶⣿⣿⣿⣿⣿⠿⠋⠁⠀⠀⠀⠀⠀⠀ ",
     "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠛⠛⠛⠛⠛⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
  }
--]]