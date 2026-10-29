import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.CompactInduction

set_option autoImplicit false

namespace Think.Validation.CompactInductionCorrect

theorem poles_only_require_compact_conservative_residue_cover
    (H : Think.RadoProjectedModularHeatflow.MemoryCore.CompactInductionHypotheses)
    (h : Think.RadoProjectedModularHeatflow.MemoryCore.compactInductiveFromPoles H) :
    H.poleCoversCompactConservative ∧ H.poleResiduesComplete :=
  Think.RadoProjectedModularHeatflow.MemoryCore.poles_alone_need_compact_conservative_residue_cover H h

theorem admitted_compact_induction_has_poles_determine_compacts
    (H : Think.RadoProjectedModularHeatflow.MemoryCore.CompactInductionHypotheses)
    (h : H.admitted) :
    H.polesDetermineCompacts := by
  exact h.1

theorem admitted_compact_induction_has_pair_bound
    (H : Think.RadoProjectedModularHeatflow.MemoryCore.CompactInductionHypotheses)
    (h : H.admitted) :
    H.pairCorrelationBelowTolerance := by
  exact h.2.2.2.2.2

end Think.Validation.CompactInductionCorrect
