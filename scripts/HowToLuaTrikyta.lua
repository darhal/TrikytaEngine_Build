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
	*) isSpriteVisible(Sprite a) return a bool wether the sprite is visisble or not
	
#Animation Functions:
	*) createAnimation(String SpritesPath, string ParserPath, int w, int h, int x, int y float UpdateRate) return animation
	*) getSpritePosition(Animation a) return position of Animation
	*) setSpritePosition(Animation a, x, y) return set pos of Animation to x, y
	*) deleteSprite(Animation a) delete a Animation (DONT DELETE TWICE IT GONNA CRASH TRUST ME)
	*) rotateSprite(Animation a, int Rot) Rotate a Animation
	*) getSpriteRotation(Animation a) return the Animation rotation
	*) flipSpriteHorizental(Animation a, bool isFlip) flip Animation horizentaly depending on the bool
	*) flipSpriteVertical(Animation a, bool isFlip) flip Animation Vertical depending on the bool
	*) setSpriteRotationCenter(a, int x, int y) Sets Animation rotation centre
	*) getSpriteSize(Animation a) return int w, h Animation size
	*) attachSpriteTo(Animation a, Animation b, int offsetX, int offsetY) attach Animation a to b in the given offset
	*) setSpriteVisible(Animation a, bool visible) set Animation to visible or not (USE THIS INSTEAD OF DELETE)
	*) isSpriteVisible(Animation a) return a bool wether the Animation is visisble or not
	
/************************ LEAGCY CODE : ********************************/
-THE FOLLOWING FUNCTION CHANGED SO PLEASE USE THE NEW SYNTAX:
	*) CreateSprite(String path, int w, int h, int x, int y) return sprite
	*) GetPos(Sprite a) return position of sprite
	*) SetPos(a, x, y) return set pos of sprite to x, y
	*) Sleep(int t) pause program for t milisecond (DELETED)
	*) DelSprite(Sprite a) delete a sprite (DONT DELETE TWICE IT GONNA CRASH TRUST ME)
In order to excute leagcy code on new builds Type this in config:
--LEAGCY CODE SUPPORT
CreateSprite=createSprite
SetPos=setSpritePosition
GetPos=getSpritePosition
DelSprite=deleteSprite
/***********************************************************************/
	
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
