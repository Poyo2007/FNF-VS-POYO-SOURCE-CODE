bounce = false

function onBeatHit()
  if bounce then
    for i = 0,7 do
      setPropertyFromGroup("strumLineNotes", i, "y", defaultPlayerStrumY0 - 50)
      noteTweenY('NoteTween'..i..'Y', i, defaultPlayerStrumY0, 0.4, 'cubeOut')
    end
  end
end

function onStepHit()
  if curStep == 895 then
    bounce = true
  end
end