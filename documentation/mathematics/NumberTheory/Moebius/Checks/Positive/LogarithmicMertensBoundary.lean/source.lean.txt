import GRWTSK.NumberTheory.Moebius.LogarithmicMertensBoundary
import Lean

open Lean Elab Command
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
open GRWTSK.NumberTheory.Moebius.VerticalLineCriterion
open GRWTSK.NumberTheory.Moebius.LogarithmicMertensBoundary

example (hM : MertensLogSquareBound) {T : ℝ} (hT : 0 ≤ T) :
    verticalLineMass (1 / 2) T ≤ 16 :=
  verticalLineMass_half_le_of_mertens_log_sq_bound hM hT

example (hM : MertensLogSquareBound) : CriticalBoundaryVerticalLineUniform :=
  criticalBoundaryVerticalLineUniform_of_mertens_log_sq_bound hM

example (hM : MertensLogSquareBound) {σ T : ℝ}
    (hσ : 1 / 2 ≤ σ) (hT : 0 ≤ T) :
    verticalLineMass σ T ≤ 16 :=
  verticalLineMass_le_sixteen_of_mertens_log_sq_bound hM hσ hT

example {C β σ T : ℝ}
    (hC : 0 ≤ C) (hσ : 0 < σ) (hgap : β < σ + 1 / 2)
    (hM : ∀ x : ℝ, 1 ≤ x →
      |mertensPrefix x| ≤ C * x ^ β)
    (hT : 0 ≤ T) :
    verticalLineMass σ T ≤
      C ^ 2 / (2 * σ ^ 2 * (σ + 1 / 2 - β)) :=
  verticalLineMass_le_of_real_mertens_power_bound hC hσ hgap hM hT

example {C β T : ℝ}
    (hC : 0 ≤ C) (hβ0 : 0 ≤ β) (hβ : β < 5 / 6)
    (hM : ∀ n : ℕ, 1 ≤ n →
      |pickupMertensPrefix n| ≤ C * (n : ℝ) ^ β)
    (hT : 0 ≤ T) :
    verticalLineMass (1 / 3) T ≤
      C ^ 2 / (2 * (1 / 3) ^ 2 * (1 / 3 + 1 / 2 - β)) := by
  apply verticalLineMass_le_of_nat_mertens_power_bound hC hβ0
    (by norm_num) ?_ hM hT
  norm_num at hβ ⊢
  exact hβ

elab "#audit_logarithmic_mertens_boundary" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner := `GRWTSK.NumberTheory.Moebius.LogarithmicMertensBoundary
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty logarithmic Mertens boundary source family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"LOGARITHMIC_MERTENS_BOUNDARY_COUNT::{declarations.length}"

#audit_logarithmic_mertens_boundary
