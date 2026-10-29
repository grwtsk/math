import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Compact

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.PrimeCompact

structure PrimeCompactAdjunctionPlan where
  newPrimeLabel : Nat
  attachLocally : Prop
  torsionCompatible : Prop
  residueStable : Prop
  oldSourceTreeRestrictionPreserved : Prop

def PrimeCompactAdjunctionPlan.admitted
    (P : PrimeCompactAdjunctionPlan) : Prop :=
  P.attachLocally ∧
    P.torsionCompatible ∧
    P.residueStable ∧
    P.oldSourceTreeRestrictionPreserved

structure PrimeCompactCanonicalPass where
  plan : PrimeCompactAdjunctionPlan
  pntNormalizer : Think.RadoProjectedModularHeatflow.MemoryCore.PNTNormalizer
  pairCorrelationBelowTolerance : Prop

def PrimeCompactCanonicalPass.admitted
    (P : PrimeCompactCanonicalPass) : Prop :=
  P.plan.admitted ∧
    P.pntNormalizer.residue = 0 ∧
    P.pairCorrelationBelowTolerance

theorem admitted_prime_compact_pass_has_pnt_residue_zero
    (P : PrimeCompactCanonicalPass)
    (h : P.admitted) :
    P.pntNormalizer.residue = 0 := by
  exact h.2.1

end Think.RadoProjectedModularHeatflow.PrimeCompact
