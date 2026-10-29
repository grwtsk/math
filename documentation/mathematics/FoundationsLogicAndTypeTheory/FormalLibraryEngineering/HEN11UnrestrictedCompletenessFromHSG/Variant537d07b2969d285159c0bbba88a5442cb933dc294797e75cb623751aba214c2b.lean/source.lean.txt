import FCRS.Algebraization.Theorems.HEN01_ExactFullyFaithful
import FCRS.Algebraization.Theorems.HEN05_HSGCriterion

namespace FCRS.Algebraization.Theorems

/--
If Henselian Serre generation is supplied, the unrestricted coherent
Henselian pullback becomes an equivalence.
-/
theorem hen11_unrestrictedCompletenessFromHSG
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hProfile : S.P.henselianProfile)
    (hSource : SourceGenerated S.generators S.cohAlgEpi)
    (hHSG :
      HenselianSerreGeneration
        S.generators
        S.cohHenEpi) :
    EquivalenceWitness S.functors.HenPullback := by
  have hExact :=
    (hen01_exactFullyFaithful S registry) hProfile
  have hEssential :=
    (hen05_hsgCriterion
      S registry hProfile hSource).mpr hHSG
  exact {
    full := hExact.full
    faithful := hExact.faithful
    essentiallySurjective := hEssential
  }

end FCRS.Algebraization.Theorems
