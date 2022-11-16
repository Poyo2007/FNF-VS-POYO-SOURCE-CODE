local notesmoothupdown = false
local camerarotating = false
local cameracenter = true
local notesjumping = false
local centerarrows = true
local crazynotes = false
local coolercamerarotation = false
local backnforth = false
local offsetos = 10
local timing = 1
local songPos
local NotePos = {}
function onSongStart()
    for i = 0, 3 do
        local X = getPropertyFromGroup('strumLineNotes', i+4, 'x')
        local Y = getPropertyFromGroup('strumLineNotes', i+4, 'y')
        table.insert(NotePos, {X,Y})
    end
end

function onCreate()
    setPropertyFromClass('ClientPrefs', 'middleScroll', true)
end

function onBeatHit()
	if curBeat == 8 then
		centerarrows = false
		camerarotating = false
		notesmoothupdown = true
	elseif curBeat == 72 then
		notesmoothupdown = true
		camerarotating = true
		cameracenter = false
	elseif curBeat == 200 then
		centerarrows = true
		notesmoothupdown = false
		camerarotating = false
		cameracenter = true
	elseif curBeat == 230 then 
		centerarrows = false
		notesmoothupdown = true
		camerarotating = true
		cameracenter = false
	elseif curBeat == 260 then
		centerarrows = true
		notesmoothupdown = false
		
		camerarotating = false
		cameracenter = true
		
		doTweenZoom("poosay2", "camGame", 1.75, 0.75, 'backOut')
		doTweenAngle("poosay", "camHUD", 0, 0.25, 'backOut')
	elseif curBeat == 264 then
	
		doTweenZoom("poosay3", "camHUD", 0.8, 0.2, 'backOut')
		doTweenZoom("poosay2", "camGame", 0.75, 0.5, 'backOut')
		
		centerarrows = false
		notesmoothupdown = false
		
		camerarotating = false
		coolercamerarotation = true
		cameracenter = false
		notesjumping = true
	elseif curBeat == 280 then
		doTweenZoom("poosay3", "camHUD", 0.8, 0.2, 'backOut')
		doTweenZoom("poosay2", "camGame", 0.75, 0.5, 'backOut')
	elseif curBeat == 296 then
		doTweenZoom("poosay3", "camHUD", 0.8, 0.2, 'backOut')
		doTweenZoom("poosay2", "camGame", 0.75, 0.5, 'backOut')
	elseif curBeat == 312 then
		doTweenZoom("poosay3", "camHUD", 0.8, 0.2, 'backOut')
		doTweenZoom("poosay2", "camGame", 0.75, 0.5, 'backOut')
	elseif curBeat == 328 then
		centerarrows = true
		coolercamerarotation = false
		cameracenter = true
		notesmoothupdown = false
		notesjumping = false
	elseif curBeat == 360 then
		doTweenZoom("poosay2", "camGame", 0.75, 0.5, 'backOut')
		camerarotating = true
		cameracenter = false
	elseif curBeat == 392 then centerarrows = false
		doTweenZoom("poosay3", "camHUD", 0.8, 0.2, 'backOut')
		doTweenZoom("poosay2", "camGame", 0.75, 0.5, 'backOut')
		crazynotes = true
		notesjumping = false
	elseif curBeat == 408 then
		doTweenZoom("poosay3", "camHUD", 0.8, 0.2, 'backOut')
		doTweenZoom("poosay2", "camGame", 0.75, 0.5, 'backOut')
		crazynotes = false
		notesjumping = true
	elseif curBeat == 424 then
		doTweenZoom("poosay3", "camHUD", 0.8, 0.2, 'backOut')
		doTweenZoom("poosay2", "camGame", 0.75, 0.5, 'backOut')
		crazynotes = true
		notesjumping = false
	elseif curBeat == 440 then
		doTweenZoom("poosay3", "camHUD", 0.8, 0.2, 'backOut')
		doTweenZoom("poosay2", "camGame", 0.75, 0.5, 'backOut')
		crazynotes = false
		notesjumping = true
	elseif curBeat == 456 then
		crazynotes = false
		camerarotating = false

		coolercamerarotation = true
		notegridmoving = true
		doTweenZoom("poosay3", "camHUD", 0.7, 0.2, 'backOut')
		doTweenZoom("poosay2", "camGame", 0.7, 0.5, 'backOut')
	elseif curBeat == 520 then
		coolercamerarotation = false
		cameracenter = true
		centerarrows = true
		
		notesjumping = false
		notegridmoving = false
		doTweenZoom("poosay3", "camHUD", 0.7, 1, 'backOut')
		doTweenZoom("poosay2", "camGame", 0.7, 1, 'backOut')
	elseif curBeat == 528 then
		cameracenter = false
		centerarrows = false
		coolercamerarotation = true
		notegridmoving = true
		notesjumping = true
		doTweenZoom("poosay3", "camHUD", 0.7, 0.2, 'backOut')
		doTweenZoom("poosay2", "camGame", 0.7, 0.5, 'backOut')
	elseif curBeat == 656 then
		coolercamerarotation = false
		cameracenter = true
		centerarrows = true
		
		notesjumping = false
		notegridmoving = false
	elseif curBeat == 728 then
		doTweenZoom("poosay3", "camHUD", 0.8, 0.2, 'backOut')
		doTweenZoom("poosay2", "camGame", 0.75, 0.5, 'backOut')
		
		centerarrows = false
		notesmoothupdown = false
		
		camerarotating = false
		coolercamerarotation = true
		cameracenter = false
		notesjumping = true
	elseif curBeat == 736 then
		doTweenZoom("poosay3", "camHUD", 0.8, 0.2, 'backOut')
		doTweenZoom("poosay2", "camGame", 0.75, 0.5, 'backOut')

		notesmoothupdown = true
		notesjumping = false
	elseif curBeat == 744 then
		doTweenZoom("poosay3", "camHUD", 0.8, 0.2, 'backOut')
		doTweenZoom("poosay2", "camGame", 0.75, 0.5, 'backOut')
		camerarotating = true
		coolercamerarotation = false
		
		notesmoothupdown = true
		notesjumping = false
	elseif curBeat == 752 then
		doTweenZoom("poosay3", "camHUD", 0.8, 0.2, 'backOut')
		doTweenZoom("poosay2", "camGame", 0.75, 0.5, 'backOut')
		notesmoothupdown = false
		notesjumping = true
	elseif curBeat == 760 then
		doTweenZoom("poosay3", "camHUD", 0.8, 0.2, 'backOut')
		doTweenZoom("poosay2", "camGame", 0.75, 0.5, 'backOut')
		camerarotating = false
		coolercamerarotation = true
		
		notesmoothupdown = true
		notesjumping = false
	elseif curBeat == 768 then
		doTweenZoom("poosay3", "camHUD", 0.8, 0.2, 'backOut')
		doTweenZoom("poosay2", "camGame", 0.75, 0.5, 'backOut')
		notesmoothupdown = false
		notesjumping = true
	elseif curBeat == 776 then
		doTweenZoom("poosay3", "camHUD", 0.8, 0.2, 'backOut')
		doTweenZoom("poosay2", "camGame", 0.75, 0.5, 'backOut')
		camerarotating = true
		coolercamerarotation = false
		
		notesmoothupdown = true
		notesjumping = false
		
	elseif curBeat == 784 then
		doTweenZoom("poosay3", "camHUD", 0.8, 0.2, 'backOut')
		doTweenZoom("poosay2", "camGame", 0.75, 0.5, 'backOut')
		notesmoothupdown = false
		notesjumping = true
	elseif curBeat == 792 then
		camerarotating = false
		coolercamerarotation = true
		notegridmoving = true
		notesjumping = true
		doTweenZoom("poosay3", "camHUD", 0.7, 0.2, 'backOut')
		doTweenZoom("poosay2", "camGame", 0.7, 0.5, 'backOut')
	elseif curBeat == 856 then
		coolercamerarotation = false
		cameracenter = true
		centerarrows = true
		
		notesjumping = false
		notegridmoving = false
	elseif curBeat == 860 then
		centerarrows = false
		noteTweenY("posei1", 4, 900, 1, 'elasticIn')
		noteTweenY("posei2", 5, 900, 1, 'elasticIn')
		noteTweenY("posei3", 6, 900, 1, 'elasticIn')
		noteTweenY("posei4", 7, 900, 1, 'elasticIn')
	end
	timing = timing + 1 -- logically dumb but hey it works
	if timing == 4 then
		timing = 1
		offsetos = offsetos *-1
	end -- that code did not make it on sync
	-- mine is technically a entire redo???
	if camerarotating == true then
	  if backnforth == false then
  	  setProperty("camHUD.angle", 15)
  	  backnforth = true
  	else
  	  setProperty("camHUD.angle", -15)
  	  backnforth = false
  	end
		doTweenAngle("poosay", "camHUD", 0, crochet / 1000 * 2, 'backOut') -- * math.sin(songPos)
	end
end

function onUpdate(elapsed)
	local songPos = getPropertyFromClass('Conductor', 'songPosition') /1000

	if cameracenter == true then
		doTweenAngle("poosay", "camHUD", 0, 0.5, 'backOut')
	end
	if coolercamerarotation == true then
		setProperty("camHUD.angle", 3 * math.sin(songPos*2))
	end
	if notegridmoving == true then
		for i = 0, 3 do
			--setPropertyFromGroup('strumLineNotes', i+4, 'y', NotePos[i + 1][2] + 25 * math.sin(songPos*3))
			setPropertyFromGroup('strumLineNotes', i+4, 'x', NotePos[i + 1][1] - 250 * math.cos(songPos*3))
		end
	end
	if crazynotes == true then
		for i = 0, 3 do
			setPropertyFromGroup('strumLineNotes', i+4, 'y', NotePos[i + 1][2] - 15 + 30 * math.cos(songPos*4+i))
			setPropertyFromGroup('strumLineNotes', i+4, 'x', NotePos[i + 1][1] - 5 * math.sin(songPos*4))
		end
	end
	if notesjumping == true then
		for i = 0, 3 do
			setPropertyFromGroup('strumLineNotes', i+4, 'y', NotePos[i + 1][2] - 15 + 30 * math.sin(songPos*4))
		end
	end
	if centerarrows == true then
		for i = 0, 3 do
			setPropertyFromGroup('strumLineNotes', i+4, 'y', NotePos[i + 1][2] + 0 * math.sin(songPos+i))
			setPropertyFromGroup('strumLineNotes', i+4, 'x', NotePos[i + 1][1] - 0 * math.sin(songPos*i))
		end
	end
	if notesmoothupdown == true then
		for i = 0, 3 do
			setPropertyFromGroup('strumLineNotes', i+4, 'y', NotePos[i + 1][2] + 14 * math.cos(songPos+i))
		end
	end
    for i = 0, 3 do -- Hide Notes
        setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
    end
end

