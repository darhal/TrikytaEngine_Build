--[[
--TRIKYTA ENGINE AVAIALBLE FUNCTIONS:
*) CreateSprite(String path, int w, int h, int x, int y) return sprite
*) GetPos(Sprite a) return position of sprite
*) SetPos(a, x, y) return set pos of sprite to x, y
*) Sleep(int t) pause program for t milisecond
*) DelSprite(Sprite a) delete a sprite (DONT DELETE TWICE IT GONNA CRASH TRUST ME)

--EVENTS:
	AddEventHandler("OnKeyboardInput", OnKeyboardInput)
	AddEventHandler("OnMouseClick", OnMouseClick)
	AddEventHandler("OnMouseMove", OnMouseMove)
	AddEventHandler("OnEngineRender", OnRender)
	AddEventHandler("OnEngineLoad", OnEngineLoad)
	AddEventHandler("OnEnginePreInit", OnPreInit)
	
--Function syntax:
	AddEventHandler(String event, Function ToBeCalledOnEvent)

--Special thanks to:
-Thomas Decroix (Tricky Patrick aka.ThoThoBoss)
--]]

WINDOW_WIDTH = 1024 
WINDOW_HEIGHT = 768
WINDOW_NAME = "Trikyta Engine"
