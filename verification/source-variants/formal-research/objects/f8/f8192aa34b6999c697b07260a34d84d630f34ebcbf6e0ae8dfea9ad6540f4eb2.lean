import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- Tannakian reconstruction with values in effective Henselian semantics. -/
theorem tan01_effectiveTannaka
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    TAN01Claim S :=
  registry.tan01

end FCRS.Algebraization.Theorems
