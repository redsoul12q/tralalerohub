local Username = game.Players.LocalPlayer.Name

print("Succesfully loaded tralaleroHub. Welcome, " .. Username .. "!")


if game.PlaceId == 85896571713843 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/redsoul12q/tralalerohub/refs/heads/main/bubblegumsim.lua"))()
else
game.Players.LocalPlayer:Kick("game not supported by tralaleroHub")
end
