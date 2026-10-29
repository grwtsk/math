import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/--
Formal-model route: Grothendieck effectivity, completion quasi-inverse data,
and compatibility of algebraization followed by analytification with the
formal generic fiber.
-/
theorem alg04_formalPolarizedEffectivity
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    ALG04Claim S :=
  registry.alg04

end FCRS.Algebraization.Theorems
