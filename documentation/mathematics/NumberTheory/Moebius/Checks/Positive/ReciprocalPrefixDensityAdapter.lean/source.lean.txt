import GRWTSK.NumberTheory.Moebius.ReciprocalPrefixDensityAdapter
import Lean

open Lean Elab Command
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefix
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixDensityAdapter
open GRWTSK.NumberTheory.ArithmeticFunctions

example (N : ℕ) :
    pickupReciprocalPrefix N = densityMobiusReciprocalPrefix (N : ℝ) :=
  pickupReciprocalPrefix_eq_densityMobiusReciprocalPrefix N

example (N : ℕ) : |pickupReciprocalPrefix N| ≤ 1 :=
  pickupReciprocalPrefix_abs_le_one N

elab "#audit_reciprocal_prefix_density_adapter" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner := `GRWTSK.NumberTheory.Moebius.ReciprocalPrefixDensityAdapter
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty reciprocal-prefix density adapter family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"RECIPROCAL_PREFIX_DENSITY_ADAPTER_COUNT::{declarations.length}"

#audit_reciprocal_prefix_density_adapter
