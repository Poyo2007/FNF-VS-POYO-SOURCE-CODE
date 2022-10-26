function onStepHit()
  if curStep == 1564 then
    setProperty('dad.alpha', 0)
    setProperty('gf.alpha', 0)
    setProperty('speaker.alpha', 0)
    setProperty('poyobg.alpha', 0)
    for i = 0,3 do
      setPropertyFromGroup("strumLineNotes", i, "alpha", 0)
    end
  end
  if curStep == 1568 then
    setProperty('dad.alpha', 1)
    setProperty('gf.alpha', 1)
    setProperty('speaker.alpha', 1)
    setProperty('poyobg.alpha', 1)
    for i = 0,3 do
      setPropertyFromGroup("strumLineNotes", i, "alpha", 1)
    end
  end
end