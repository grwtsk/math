import Think.SourceTree.PoleAssignment

set_option autoImplicit false

namespace Think.Poles.Cluster

def placements : List Think.SourceTree.PhasePlacement :=
  Think.SourceTree.placementsForPole Think.SourceTree.Pole.cluster

theorem placements_count :
    placements.length = 5 :=
  Think.SourceTree.clusterPole_count

theorem placements_centerControlled :
    ∀ q ∈ placements, q.phase ∈ Think.centerSpine := by
  intro q _hq
  exact Think.SourceTree.center_spine_controls_all_poles q

end Think.Poles.Cluster
