/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.RationalTentEnclosure
import GRWTSK.Analysis.Complex.Checks.RationalTentQuadratureControls

set_option autoImplicit false

/-! Elementary source controls, not zeta-zero data. NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Analysis.Complex.Checks.RationalTentFamilyControls

open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure
open RationalMellinFamily (Member memberAt)
open RationalTentFamily

/-- Reuse the preceding actual tent trace, not the unweighted interval trace. -/
def unitFamily : List Member := [⟨10, one, 2⟩, ⟨20, one, 3⟩]
def unitEvaluations : List Evaluation :=
  [⟨10, 1, RationalTentQuadratureControls.unitTrace⟩,
    ⟨20, 1, RationalTentQuadratureControls.unitTrace⟩]
def unitTrace : Trace := withExactAccumulation unitFamily unitEvaluations

theorem weighted_unit_control :
    checkWithin unitFamily 3 1 unitTrace 0 = true ∧ output unitFamily unitTrace = (5, 0) := by decide +kernel

theorem weighted_unit_analytic : ‖centerSum unitFamily 3 1 - (5 : ℂ)‖ ≤ 0 := by
  have he := checkWithin_sound weighted_unit_control.1
  rw [weighted_unit_control.2] at he
  simpa using he

theorem missing_extra_reordered_rejected :
    check unitFamily 3 1 ⟨unitEvaluations.take 1, unitTrace.accumulation⟩ = false ∧
    check unitFamily 3 1 ⟨unitEvaluations ++ unitEvaluations.take 1, unitTrace.accumulation⟩ = false ∧
    check unitFamily 3 1 ⟨unitEvaluations.reverse, unitTrace.accumulation⟩ = false := by decide +kernel

theorem duplicate_key_rejected :
    check [⟨10, one, 2⟩, ⟨10, one, 3⟩] 3 1
      (withExactAccumulation [⟨10, one, 2⟩, ⟨10, one, 3⟩]
        [⟨10, 1, RationalTentQuadratureControls.unitTrace⟩,
          ⟨10, 1, RationalTentQuadratureControls.unitTrace⟩]) = false := by decide +kernel

theorem multiplicity_and_geometry_rejected :
    check [⟨10, one, 1⟩, ⟨20, one, 3⟩] 3 1 unitTrace = false ∧
    check [⟨10, one, 0⟩, ⟨20, one, 3⟩] 3 1 unitTrace = false ∧
    check unitFamily 4 2 unitTrace = false := by decide +kernel

theorem intermediate_and_imaginary_rejected :
    check unitFamily 3 1 ⟨unitEvaluations, ⟨[zero, (0, 1), (5, 0)], [0, 0]⟩⟩ = false ∧
    check unitFamily 3 1 ⟨unitEvaluations, ⟨[zero, (2, 0), (5, 1/10)], [0, 0]⟩⟩ = false := by decide +kernel

def roundedTrace : Trace := ⟨unitEvaluations, ⟨[zero, (2, 1/10), (5, 1/10)], [1/10, 0]⟩⟩

theorem rounded_family_error :
    checkWithin unitFamily 3 1 roundedTrace (1/10) = true ∧
    checkWithin unitFamily 3 1 roundedTrace (1/20) = false := by decide +kernel

def nonconstantFamily : List Member := [⟨10, zero, 2⟩, ⟨20, zero, 3⟩]
def nonconstantTrace : Trace := withExactAccumulation nonconstantFamily
  [⟨10, 1, RationalTentQuadratureControls.nonconstantTrace⟩,
    ⟨20, 1, RationalTentQuadratureControls.nonconstantTrace⟩]

theorem member_precision_not_family_precision :
    checkWithin nonconstantFamily 3 1 nonconstantTrace 5 = true ∧
    checkWithin nonconstantFamily 3 1 nonconstantTrace 1 = false := by decide +kernel

/-- Exact rational upper log(4) bound is 2; the computed coordinate charge is 8/5. -/
def coordinateData : RationalTentEnclosure.CoordinateData := ⟨2, 1, 1, [1/10, 1/5]⟩

theorem coordinate_charge_control :
    RationalTentEnclosure.logUpper 3 1 coordinateData = 2 ∧
    RationalTentEnclosure.coordinateBudget unitFamily 3 1 coordinateData = 8/5 ∧
    RationalTentEnclosure.checkWithin unitFamily 3 1 unitTrace coordinateData (8/5) = true ∧
    RationalTentEnclosure.checkWithin unitFamily 3 1 unitTrace coordinateData (4/5) = false := by decide +kernel

theorem missing_negative_radii_rejected :
    RationalTentEnclosure.checkWithin unitFamily 3 1 unitTrace
      { coordinateData with radii := [1/10] } 10 = false ∧
    RationalTentEnclosure.checkWithin unitFamily 3 1 unitTrace
      { coordinateData with radii := [1/10, -1/5] } 10 = false := by decide +kernel

theorem invalid_endpoint_log_rejected :
    RationalTentEnclosure.checkWithin unitFamily 3 1 unitTrace
      { coordinateData with logScale := 5 } 10 = false ∧
    RationalTentEnclosure.checkWithin unitFamily 3 1 unitTrace
      { coordinateData with logTwoCells := 0 } 10 = false := by decide +kernel

/-- Record identifiers do not construct a bijection: duplicate and omitted source maps fail. -/
theorem nonbijective_source_controls :
    ¬ Function.Injective (fun _ : Fin 2 => (0 : Fin 1)) ∧
    ¬ Function.Surjective (fun _ : Fin 1 => (0 : Fin 2)) := by decide +kernel

/-- Empty finite evaluation remains distinct from an empty canonical divisor. -/
theorem empty_family_controls :
    checkWithin [] 3 1 (withExactAccumulation [] []) 0 = true ∧
    check [] 3 1 ⟨[], ⟨[], []⟩⟩ = false ∧
    check [] 3 0 (withExactAccumulation [] []) = false := by decide +kernel

theorem negative_tolerance_rejected : checkWithin unitFamily 3 1 unitTrace (-1) = false := by decide +kernel

end GRWTSK.Analysis.Complex.Checks.RationalTentFamilyControls
