-----------------------------------------------------------------------------------------
--
-- command line Lua
--
-- show how to use an if statement
--  and random numbers
-- 
-----------------------------------------------------------------------------------------
----- background
----------------

local background = display.newImageRect( "assets/background.jpg", 330, 600 )
background.x = display.contentCenterX
background.y = display.contentCenterY
background.id = "check button" 

----seed

math.randomseed( 2222 )

-----------
----text field
-------------------

local answer = native.newTextField( display.contentCenterX, display.contentCenterY + 50, 250, 50 )
answer.id = "answer textField"

--------text will say "Guess the Number", the title of the game
local titleText = display.newText( "Guess The Number!" , 160, 25, native.systemFont, 30)
titleText.id = "title text"
titleText:setFillColor( 1, 1, 1)

-----------text will say the range of the numbers
local rangeText = display.newText( "Pick a number(1 to 6)" , 160, 200, native.systemFont, 25)
rangeText.id = "range text"
rangeText:setFillColor( 1, 1, 1)

------------correct/incorrect text
local checkText = display.newText( " " , 160, 100, native.systemFont, 20)
checkText.id = "check text"
checkText:setFillColor( 0, 0, 255)
-------play again text
local playAgain = display.newText( " " , 160, 150, native.systemFont, 20)
playAgain.id = "play again text"
playAgain:setFillColor( 0, 0, 255)
------- correct answer text
local correctAnswer = display.newText( " " , 160, 125, native.systemFont, 20)
correctAnswer.id = "correct answer text"
correctAnswer:setFillColor( 0, 0, 255)

--------button

local check = display.newImageRect( "assets/check.png", 150, 100 )
check.x = display.contentCenterX
check.y = 400
check.id = "check button" 

-- makes the answer a number

local answerAsNumber = tonumber(answer.text)


local function checkButtonTouch( event )
	-- will check and display correct or incorrect
	
	local answerAsNumber = tonumber(answer.text)

	local numberToGuess = math.random( 1, 6 )
	
	if answerAsNumber == numberToGuess then
    	checkText.text = "Correct!"
    	playAgain.text = "Play Again!"
    	correctAnswer.text = " "
	else 
		checkText.text = "Incorrect"
		correctAnswer.text = "Correct Answer ="..tostring(numberToGuess)
		playAgain.text = "Play Again!"
	end 



end


check:addEventListener( 'touch' , checkButtonTouch)