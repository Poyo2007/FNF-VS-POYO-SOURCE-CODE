function onCreate()
  makeAnimatedLuaSprite('speaker', 'Speaker', getProperty('gf.x') - 130, getProperty('gf.y') + 70)
	addAnimationByPrefix('speaker', 'bop', 'SpeakerLol', 24, true)
	addLuaSprite('speaker', false)
end

function onBeatHit()
  if curBeat % 1 == 0 then
  objectPlayAnimation('speaker', 'bop', true)
  end
end