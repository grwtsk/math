import SourcePeanoSignedShortJet
import SourceCompleteOmegaReconstruction

/-!
# Exact signed Peano assembly in the independently specified complete Omega

AI attribution: OpenAI Codex. The original independent I+P+L-discreteB Omega
is retained. Genuine local Peano evaluation combines only I and the complete
four-kappa short sector. Full L, the discrete unit-inclusive baseline, and
actual signed cubic remainder stay explicit. No signed estimate is supplied.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceCompleteOmegaPeanoAssembly
open SourcePeanoSignedShortJet SourceCompleteOmegaReconstruction
open SourceFullDivisorLogInventory
open ContinuousResearch.ActualIntegerInventory
noncomputable section

/-- The full independent Omega retains its complementary and original discrete sectors. -/
theorem completeOmega_eq_actual_signed_Peano_kappa (A : ℝ) (hA : 1 ≤ A) :
    completeOmega A = actualSignedPeanoKappaShortSector A +
      literalOmegaComplementarySector A - plainInventory A := by
  unfold completeOmega
  rw [literalOmegaCubicSector_eq_actual_main,
    literal_I_add_cubic_main_eq_signed_Peano_kappa A hA]

/-- The original integer source retains the actual error after the exact signed local assembly. -/
theorem integerJ_eq_actual_signed_Peano_kappa_add_error (A : ℝ) (hA : 91 ≤ A) :
    integerJ A = actualSignedPeanoKappaShortSector A + literalOmegaComplementarySector A -
      plainInventory A + completeOmegaError A := by
  rw [integerJ_eq_completeOmega_add_error A hA,
    completeOmega_eq_actual_signed_Peano_kappa A (by linarith)]

end
end FormalResearch.RiemannHypothesis.SourceCompleteOmegaPeanoAssembly
