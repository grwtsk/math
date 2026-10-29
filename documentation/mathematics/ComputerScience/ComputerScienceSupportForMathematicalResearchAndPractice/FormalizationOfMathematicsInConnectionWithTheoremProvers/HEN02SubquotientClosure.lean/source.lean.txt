import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/--
HEN-2: the essential image is closed under coherent subobjects and
epimorphic quotients.  No ambient extension-closure conclusion is included.
-/
theorem hen02_subquotientClosure
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    HEN02Claim S :=
  registry.hen02

end FCRS.Algebraization.Theorems
