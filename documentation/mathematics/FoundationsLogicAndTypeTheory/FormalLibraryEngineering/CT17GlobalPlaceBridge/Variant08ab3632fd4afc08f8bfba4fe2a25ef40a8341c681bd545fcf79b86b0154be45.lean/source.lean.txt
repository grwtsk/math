import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-17: global place-wise realization bridge.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct17_globalPlaceBridge
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT17Claim S :=
  registry.ct17

end FCRS.Theorems
