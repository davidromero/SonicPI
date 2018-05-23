use_bpm 128

#WET, pluck
use_synth :dsaw
with_fx :ixi_techno, phase: 64, cutoff_min: 115, cutoff_max: 129, res: 0.5 do
  with_fx :reverb, mix: 0.2, room: 0.75, damp: 1 do
    live_loop :squelch2 do
      n = (ring :e1, :e2, :e3, :e2).tick
      play n, cutoff: 80, env_curve: 4, release: 0.4, amp: 1
      sleep 0.25
    end
  end
end

