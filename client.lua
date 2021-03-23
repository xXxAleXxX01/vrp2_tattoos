--------------------------CREDITS--------------------------
-------------------Script made by AleXxX-------------------
--      Script made for ZenTrix Romania RolePlay         --
--         Discord: https://discord.gg/BEFrqay           --
--   Copyright 2020 ©AleXxXScript's. All rights served   --
-----------------------------------------------------------

Tunnel = module("vrp", "lib/Tunnel")
Proxy = module("vrp", "lib/Proxy")


local cvRP = module("vrp", "client/vRP")
vRP = cvRP() 


local Tattoos = class("Tattoos", vRP.Extension)



function Tattoos:cleanPlayer()
	ClearPedDecorations(GetPlayerPed(-1))
end

function Tattoos:drawTattoo(tattoo,tattooshop)
  ApplyPedOverlay(GetPlayerPed(-1), GetHashKey(tattooshop), GetHashKey(tattoo))
end

Tattoos.tunnel = {}
Tattoos.tunnel.cleanPlayer = Tattoos.cleanPlayer
Tattoos.tunnel.drawTattoo = Tattoos.drawTattoo

vRP:registerExtension(Tattoos)
