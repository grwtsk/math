import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-07: stably uniform sheafiness.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct07_stableUniformSheafiness
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT07Claim S :=
  registry.ct07

end FCRS.Theorems
