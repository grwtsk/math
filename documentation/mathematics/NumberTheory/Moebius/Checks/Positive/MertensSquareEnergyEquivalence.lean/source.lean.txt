import GRWTSK.NumberTheory.Moebius.MertensSquareEnergyEquivalence
import Lean

open Lean Elab Command
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationMertensEnergy
open GRWTSK.NumberTheory.Moebius.MertensSquareEnergyPowerBound
open GRWTSK.NumberTheory.Moebius.MertensSquareEnergyEquivalence

example (h : MertensSquareEnergyPowerSaving) :
    MertensPointwisePowerSaving :=
  mertensPointwisePowerSaving_of_squareEnergyPowerSaving h

example :
    MertensSquareEnergyPowerSaving ↔ MertensPointwisePowerSaving :=
  mertensSquareEnergyPowerSaving_iff_pointwisePowerSaving

example (h : MertensPointwisePowerSaving) :
    CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_of_mertensPointwisePowerSaving h

elab "#audit_mertens_square_energy_equivalence" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner := `GRWTSK.NumberTheory.Moebius.MertensSquareEnergyEquivalence
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty Mertens square-energy equivalence family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"MERTENS_SQUARE_ENERGY_EQUIVALENCE_COUNT::{declarations.length}"

#audit_mertens_square_energy_equivalence
