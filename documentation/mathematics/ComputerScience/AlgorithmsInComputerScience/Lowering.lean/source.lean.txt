import Think.SourceTree.PoleAssignment

set_option autoImplicit false

namespace Think.Poles.Lowering

def placements : List Think.SourceTree.PhasePlacement :=
  Think.SourceTree.placementsForPole Think.SourceTree.Pole.lowering

theorem placements_count :
    placements.length = 4 :=
  Think.SourceTree.loweringPole_count

theorem placements_centerControlled :
    ∀ q ∈ placements, q.phase ∈ Think.centerSpine := by
  intro q _hq
  exact Think.SourceTree.center_spine_controls_all_poles q

end Think.Poles.Lowering
