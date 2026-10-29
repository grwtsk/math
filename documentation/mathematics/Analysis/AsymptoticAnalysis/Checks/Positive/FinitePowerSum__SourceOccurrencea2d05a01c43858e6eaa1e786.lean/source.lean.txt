import GRWTSK.Analysis.AsymptoticAnalysis.FinitePowerSum
import Lean

open Lean Elab Command
open GRWTSK.Analysis.Asymptotics.FinitePowerSum

example {β : ℝ} (hβ0 : 0 < β) (hβ1 : β ≤ 1) (N : ℕ) :
    (∑ k ∈ Finset.Icc 1 N, (k : ℝ) ^ (β - 1)) ≤
      (N : ℝ) ^ β / β :=
  sum_Icc_rpow_sub_one_le hβ0 hβ1 N

elab "#audit_finite_power_sum" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner := `GRWTSK.Analysis.Asymptotics.FinitePowerSum
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty finite-power-sum source family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"FINITE_POWER_SUM_COUNT::{declarations.length}"

#audit_finite_power_sum
