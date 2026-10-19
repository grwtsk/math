import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-08: rigid/Berkovich equivalence.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct08_rigidBerkovichEquivalence
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT08Claim S :=
  registry.ct08

end FCRS.Theorems
