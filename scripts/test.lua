--[[
Called On Keyboard Input
(int key, int state)
*) For key codes: https://wiki.libsdl.org/SDL_Keycode
*) State: 
	- is equal to 768 On Button Pressed
	- is equal to 769 On Button Release
--]]
function OnKeyboardInput(key, state)
	--print("KEY BOARD INPUT DETECTED!!!")
end

--[[
Called on mouse click:
(int EventType, int MouseButton, int PosX, int PosY)
*)EventType:
	- 1025 if button is down
	- 1025 if button is up
*)MouseButton:
	- 3 RMB
	- 1 LMB
	- 2 Mouse wheel
*)PoX and PosY coordinates of the click
--]]
function OnMouseClick(EventType, MouseButton, PosX, PosY)
	--print("MOUSE INPUT DETECTED")
end

-- Called on mouse move arguments: ([int] x, [int] y) {POSITION OF THE MOUSE MOVE}
function OnMouseMove(x, y) 
	--print("MOUSE MOVE DETECTED")
end

-- Called every frame arguments: ([double] dt)
function OnRender(dt) 
	--print("RENDER")
end

function test()
	print("Im called every 3000")
end

function test2()
	print("Im called forever every 1000")
end

--Called when engine is already loaded!
function OnEngineLoad()
	--print("____________________________________________________________________")
	--AddEventHandler("OnKeyboardInput", OnKeyboardInput)
	--AddEventHandler("OnMouseClick", OnMouseClick)
	--AddEventHandler("OnMouseMove", OnMouseMove)
	--AddEventHandler("OnEngineRender", OnRender)
	--setTimer(test, 3000, 3) -- call test every 3000 for 3 times
	
	--setTimer(test2, 1000, -1) -- call test2 every 3000 forever
end
AddEventHandler("OnEngineLoad", OnEngineLoad)

--Called On Engine Pre Init (YOU CANT USE TRIKYTA FUNCTIONS HERE!!)
function OnPreInit()
	--DO SMTHG
end
AddEventHandler("OnEnginePreInit", OnPreInit) -- NOT WORKING FOR THIS VERSION!