import GRWTSK.Analysis.MeasureTheory.Integral.FixedWidthEnergyTelescope
import GRWTSK.NumberTheory.Moebius.PolynomialEnergyHolomorphy

/-! Exact status of fixed-width high-shell signed settlement.
The local-energy proposition is an open arithmetic estimate. Its equivalence
to the literal ordered signed P04 target and its RH consumer are proved here;
no producer of HSS, P04, or RH is asserted.
-/
noncomputable section
namespace HSSCP04
open PPNCP04 LocalEnergyTelescope

/-- Fix the width before choosing uniform constants; quantify every real T≥b. -/
def HSS (b : ℝ) : Prop :=
  ∃ C q : ℝ, 0 ≤ C ∧ 0 ≤ q ∧
    ∀ T : ℝ, b ≤ T → localEnergy b T ≤ C*(1+T)^q

/-- The shell arithmetic adapter may use this narrower pinned-width condition.
The energy telescope itself only needs b>0. -/
def PinnedShellWidth (b : ℝ) : Prop := 0 < b ∧ b < Real.log 2

theorem HSS_implies_energy_polynomial {b : ℝ} (hb : 0 < b) (hHSS : HSS b) :
    PolynomialBound energy := by
  obtain ⟨C,q,hC,hq,hwindow⟩ := hHSS
  exact window_bound_implies_energy_polynomial hb hC hq hwindow

theorem HSS_implies_P04 {b : ℝ} (hb : 0 < b) (hHSS : HSS b) : P04 :=
  energy_polynomial_implies_P04 (HSS_implies_energy_polynomial hb hHSS)

/-- Reverse implication uses the independently proved diagonal polynomial bound,
then bounds a genuine terminal window by actual cumulative total energy. -/
theorem P04_implies_HSS {b : ℝ} (hb : 0 < b) (hP04 : P04) : HSS b := by
  obtain ⟨C,q,hC,hq,henergy⟩ := P04_implies_energy_polynomial hP04
  refine ⟨C,q,hC,hq,?_⟩
  intro T hT
  exact (localEnergy_le_total hb.le hT).trans (henergy T (hb.le.trans hT))

/-- A characterization, not a construction of either arithmetic statement. -/
theorem HSS_iff_P04 {b : ℝ} (hb : 0 < b) : HSS b ↔ P04 :=
  ⟨HSS_implies_P04 hb,P04_implies_HSS hb⟩

theorem pinned_HSS_iff_P04 {b : ℝ} (hb : PinnedShellWidth b) : HSS b ↔ P04 :=
  HSS_iff_P04 hb.1

/-- The terminal proposition is the literal root library RH statement. -/
theorem HSS_implies_literal_RH {b : ℝ} (hb : 0 < b) (hHSS : HSS b) :
    _root_.RiemannHypothesis :=
  EulerP04RH.LaplaceEnergy.literal_RH_of_P04 (HSS_implies_P04 hb hHSS)

theorem pinned_HSS_implies_literal_RH {b : ℝ} (hb : PinnedShellWidth b)
    (hHSS : HSS b) : _root_.RiemannHypothesis := HSS_implies_literal_RH hb.1 hHSS

end HSSCP04
#print axioms HSSCP04.HSS_implies_energy_polynomial
#print axioms HSSCP04.HSS_iff_P04
#print axioms HSSCP04.HSS_implies_literal_RH
