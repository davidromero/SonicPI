use_bpm 128

#DRY
#live_loop :bass do
#  use_synth :dsaw
#  use_synth_defaults release: 0.225, res: 0.5, cutoff: 70, detune: 0, amp: 0.8
#  n = (ring :c1, :f2, :c1, :f2).tick
#  play n
#  sleep 0.5
#end


#live_loop :sub_bass do
#  use_synth_defaults release: 0.2, env_curve: 1
#  with_fx :normaliser, level: 0.2 do
#    n = (ring :c1, :f2, :c1, :f2).tick
#    play n
#    sleep 0.5
#  end
#end

#WET
live_loop :bass do
  with_fx :reverb, room: 0.5, mix: 0.2 do
    use_synth :dsaw
    use_synth_defaults release: 0.225, sustain: 0.20, res: 0.5, cutoff: 60, detune: 0, amp: 2
    n = (ring :c1, :f2, :c1, :f2).tick
    play n
    sleep 0.5
  end
end


live_loop :sub_bass do
  use_synth_defaults release: 0.2, env_curve: 1, amp: 1
  with_fx :normaliser, level: 0.2 do
    n = (ring :c1, :f2, :c1, :f2).tick
    play n
    sleep 0.5
  end
end

