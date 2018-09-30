--[[
Called On Keyboard Input
(int key, int state)
*) For key codes: https://wiki.libsdl.org/SDL_Keycode
*) State: 
	- is equal to 768 On Button Pressed
	- is equal to 769 On Button Release
--]]
function OnKeyboardInput(key, state)
	print("KEY BOARD INPUT DETECTED!!!"..key)
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
	print("MOUSE INPUT DETECTED"..PosX)
end

-- Called on mouse move arguments: ([int] x, [int] y) {POSITION OF THE MOUSE MOVE}
function OnMouseMove(x, y) 
	--print("MOUSE MOVE DETECTED")
end

-- Called every frame arguments: ([double] dt)
function OnRender1(dt) 
	--print("    "..dt)
end

function Hello()
	print("HELLO FROM LUA EVERY 3k MS")
end

--Called when engine is already loaded!
function OnEngineLoad()
	print("____________________________________________________________________")
	local ground = createSprite("assets/ground.png", WINDOW_WIDTH, 210, 0, WINDOW_HEIGHT-105)
	local ba = physicalizeV2(ground, {mass=1, friction=1,restitution=0.0,sensor=false}, {type="Static", shape="Box"})

	createBody({type="Dynamic", shape="Polygon"}, {mass=1,friction=1,restitution=0,sensor=false},550, 250,{34,50, 90, 120, -5, 250, 23, 80, 30, 56})

	--local b = Sprite.createSprite("assets/test.png", Vec2i(464, 464), Vec2i(50, 100))
	local b = createSprite("assets/test.png", 464, 464, 50, 100)
	flipSpriteVertical(ba, true)
	flipSpriteVertical(ground, false)
	local ba = physicalize(b, 1, 1,0.0,false, "Dynamic", "Box")
	setLinearVelocity(ba, 0, -100)
	flipSpriteVertical(ground, false)
	setZOrder(b, 1)
	local b = createSprite("assets/test.png", 464, 464, 250, 100)
	setZOrder(b, 2)
	local d = createSprite("assets/test.png", 464, 464, -50, 100)
	setZOrder(d, -1)
	
	local c = createAnimation("assets/anim_pack.png", "assets/anim_pack.a",200, 200, 600, 100, 0.0019)
	physicalizeWithOffsetV2(c, {mass=1, friction=1,restitution=0.0,sensor=false}, {type="Dynamic", shape="Circle"}, 0.2, 0.09)
	spritecount = 0
	for i, v in pairs(getObjectsByType("Sprite")) do
		outputConsole("I FOUND A SPRITE", "INFO")
		spritecount = spritecount+1
	end
	outputConsole("THERE IS "..spritecount.." Sprites", "INFO")
	
	
	local txt1 = createText("This is a simple output example", "Engine_Assets/fonts/DroidSans.ttf", 16, 500, math.random(50),  255,255,255);
	setLinearVelocity(physicalize(txt1, 1, 1,0.0,false, "Dynamic", "Box"), 20, 0)

	
	local txt2 = createText("THIS IS ANOTHER PHYSICLIZED TEXT", "Engine_Assets/fonts/DroidSans.ttf", 16, 550,  math.random(20),  255,255,255);
	setLinearVelocity(physicalize(txt2, 1, 1,0.6,false, "Dynamic", "Box"), -20, 0)
	
	local txt3 = createText("This is so funny bro", "Engine_Assets/fonts/DroidSans.ttf", 16, 750,  math.random(10),  255,255,255);
	setLinearVelocity(physicalize(txt3, 1, 1,0.6,false, "Dynamic", "Box"), 30, 0)
	--deleteSprite(a)
	--deleteSprite(a)
	--deleteSprite(a)
	--setTimer(Hello, 3000, 5)
	--AddEventHandler("OnKeyboardInput", OnKeyboardInput)
	--AddEventHandler("OnMouseClick", OnMouseClick)
	--AddEventHandler("OnMouseMove", OnMouseMove)
	--AddEventHandler("OnEngineRender", OnRender1)
end
AddEventHandler("OnEngineLoad", OnEngineLoad)

--Called On Engine Pre Init (YOU CANT USE TRIKYTA FUNCTIONS HERE!!)
function OnPreInit()
	--DO SMTHG
end
--AddEventHandler("OnEnginePreInit", OnPreInit) -- NOT WORKING FOR THIS VERSION!

--class Sprite *__cdecl Sprite::Create(const class std::basic_string<char,struct std::char_traits<char>,class std::allocator<char> > &,struct Vec2<int>,struct Vec2<int>)
