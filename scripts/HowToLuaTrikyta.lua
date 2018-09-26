--[[
-- Where to Start:
	-To Specify what scripts gonna load modify the meta.txt seprates your script names using at the end';'
	-You can Modify the config.lua

--TRIKYTA ENGINE AVAIALBLE FUNCTIONS:
#Sprite Functions:
	*) createSprite(String path, int w, int h, int x, int y) return sprite
	*) getSpritePosition(Sprite a) return position of sprite
	*) setSpritePosition(a, x, y) return set pos of sprite to x, y
	*) deleteSprite(Sprite a) delete a sprite (DONT DELETE TWICE IT GONNA CRASH TRUST ME)
	*) rotateSprite(Sprite a, int Rot) Rotate a sprite
	*) getSpriteRotation(Sprite a) return the sprite rotation
	*) flipSpriteHorizental(Sprite a, bool isFlip) flip sprite horizentaly depending on the bool
	*) flipSpriteVertical(Sprite a, bool isFlip) flip sprite Vertical depending on the bool
	*) setSpriteRotationCenter(a, int x, int y) Sets sprite rotation centre
	*) getSpriteSize(Sprite a) return int w, h sprite size
	*) attachSpriteTo(Sprite a, Sprite b, int offsetX, int offsetY) attach sprite a to b in the given offset
	*) setSpriteVisible(Sprite a, bool visible) set sprite to visible or not (USE THIS INSTEAD OF DELETE)
	*) isSpriteVisible([Sprite, Text..] a) return a bool wether the sprite is visisble or not
	
#Animation Functions:
	*) createAnimation(String AnimationsPath, string ParserPath, int w, int h, int x, int y float UpdateRate) return animation
	*) getAnimationPosition(Animation a) return position of Animation
	*) setAnimationPosition(Animation a, x, y) return set pos of Animation to x, y
	*) deleteAnimation(Animation a) delete a Animation (DONT DELETE TWICE IT GONNA CRASH TRUST ME)
	*) rotateAnimation(Animation a, int Rot) Rotate a Animation
	*) getAnimationRotation(Animation a) return the Animation rotation
	*) flipAnimationHorizental(Animation a, bool isFlip) flip Animation horizentaly depending on the bool
	*) flipAnimationVertical(Animation a, bool isFlip) flip Animation Vertical depending on the bool
	*) setAnimationRotationCenter(a, int x, int y) Sets Animation rotation centre
	*) getAnimationSize(Animation a) return int w, h Animation size
	*) attachAnimationTo(Animation a, Animation b, int offsetX, int offsetY) attach Animation a to b in the given offset
	*) setAnimationVisible(Animation a, bool visible) set Animation to visible or not (USE THIS INSTEAD OF DELETE)
	*) isAnimationVisible(Animation a) return a bool wether the Animation is visisble or not
#Utility functions:
	*) setTimer(Function func,int TimerPeriod, int NumberofCalls) --TimerPeriod is in ms / put -1 in NumberofCalls to call it forever

#Text functions:
	*) createText(String str, String FontPath, Int8 size, Int PosX, Int PosY, Int8 r, int8 g, int8 b)
	*) setTextColor(Text txt, int8 r, int8 g, int8 b)
	*) getTextPosition(Text a) return position of Text
	*) setTextPosition(a, x, y) return set pos of Text to x, y
	*) deleteText(Text a) delete a Text (DONT DELETE TWICE IT GONNA CRASH TRUST ME)
	*) rotateText(Text a, int Rot) Rotate a Text
	*) getTextRotation(Text a) return the Text rotation
	*) flipTextHorizental(Text a, bool isFlip) flip Text horizentaly depending on the bool
	*) flipTextVertical(Text a, bool isFlip) flip Text Vertical depending on the bool
	*) setTextRotationCenter(a, int x, int y) Sets Text rotation centre
	*) getTextSize(Text a) return int w, h Text size
	*) attachTextTo(Text a, Text b, int offsetX, int offsetY) attach Text a to b in the given offset
	*) setTextVisible(Text a, bool visible) set Text to visible or not (USE THIS INSTEAD OF DELETE)
	*) isTextVisible(Text a) return a bool wether the Text is visisble or not
	*) attachTextTo(Text a, [Sprite, Text, .. ] b, int offsetX, int offsetY) attach text a to b in the given offset
	
#Console functions:
	*) outputConsole(String text, String type): type can be "error", "warning", "info" the case doesnt matter so "error" is count as "ErRor"
	*) outputCConsole(String text, int8 r, int8 g, int8 b)
	e.g:
		outputConsole("ERROR FROM LUA!", "eRror")
		outputConsole("warning FROM LUA!", "warning")
		outputConsole("info FROM LUA!", "info")
		outputCConsole("Custom color message from lua", 125, 125, 125)

--EVENTS:
	AddEventHandler("OnKeyboardInput", OnKeyboardInput)
	AddEventHandler("OnMouseClick", OnMouseClick)
	AddEventHandler("OnMouseMove", OnMouseMove)
	AddEventHandler("OnEngineRender", OnRender)
	AddEventHandler("OnEngineLoad", OnEngineLoad)
	AddEventHandler("OnEnginePreInit", OnPreInit) --BROKEN AT THE MOMENT
	
--Function syntax for AddEventHandler:
	AddEventHandler(String event, Function ToBeCalledOnEvent)
	
--Examples:
	Look At test.lua and lol.lua

--Special thanks to:
	-Thomas Decroix (Tricky Patrick aka.ThoThoBoss)
--]]
