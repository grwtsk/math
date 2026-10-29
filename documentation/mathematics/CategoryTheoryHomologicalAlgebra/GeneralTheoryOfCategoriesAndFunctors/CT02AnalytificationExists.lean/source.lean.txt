import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-02: functorial analytification and natural support.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct02_analytificationExists
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT02Claim S :=
  registry.ct02

end FCRS.Theorems
