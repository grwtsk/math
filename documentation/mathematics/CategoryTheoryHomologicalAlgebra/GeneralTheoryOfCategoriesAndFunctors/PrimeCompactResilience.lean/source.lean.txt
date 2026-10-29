import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.PrimeCompact

set_option autoImplicit false

namespace Think.Validation.PrimeCompactResilience

theorem admitted_prime_adjunction_preserves_old_source_tree
    (P : Think.RadoProjectedModularHeatflow.PrimeCompact.PrimeCompactAdjunctionPlan)
    (h : P.admitted) :
    P.oldSourceTreeRestrictionPreserved := by
  exact h.2.2.2

theorem admitted_prime_compact_pass_has_pnt_zero
    (P : Think.RadoProjectedModularHeatflow.PrimeCompact.PrimeCompactCanonicalPass)
    (h : P.admitted) :
    P.pntNormalizer.residue = 0 :=
  Think.RadoProjectedModularHeatflow.PrimeCompact.admitted_prime_compact_pass_has_pnt_residue_zero P h

theorem memory_prime_resilience_gives_stable_extension
    (W : Think.RadoProjectedModularHeatflow.MemoryCore.PrimeResilienceWitness)
    (h : W.admitted) :
    W.oldRestrictionPreserved ∧
      W.enhancedResidueResolved ∧
      W.torsionRestricts ∧
      W.scatteringIncrementStable :=
  Think.RadoProjectedModularHeatflow.MemoryCore.prime_resilience_admitted_gives_stable_extension W h

end Think.Validation.PrimeCompactResilience
