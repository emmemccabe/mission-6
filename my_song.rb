use_bpm 128

# Chord variables
e = chord(:E5, :minor)
g = chord(:G5, :major)
c = chord(:C5, :major)
d = chord(:D5, :major)
a = chord(:A5, :minor)
f = chord(:F5, :major)

2.times do
  with_fx :mono  do
    
    use_synth :pluck
    play chord(:E4, :minor), release: 2, amp: 3
  end
  
  2.times do
    
    play_pattern_timed [g, e, c, d],[1,1,1,1]
    
  end  
end

live_loop :beat do
  sample :bd_fat
  sleep 1
end

2.times do
  
  with_fx :mono  do
    
    use_synth :piano
    
    play chord(:E4, :minor), release: 2, amp: 3
  end
  
  2.times do
    
    play_pattern_timed [e, g, c, d],[1,1,1,1]
    
  end
end

live_loop :beat2 do
  sync :beat
  sample :bd_haus
  sleep 1
end

2.times do
  
  with_fx :mono  do
    
    use_synth :piano
    
    play chord(:E4, :minor), release: 2, amp: 3
  end
  
  2.times do
    
    play_pattern_timed [g, e, c, d],[1,1,1,1]
    
  end
end






