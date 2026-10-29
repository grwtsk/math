import GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel
import Lean

open Lean Elab Command
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefix
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel

example (n : ℕ) :
    pickupWeightedPrefix n =
      Real.sqrt n * pickupReciprocalPrefix n -
        ∑ k ∈ Finset.range n,
          (Real.sqrt ((k + 1 : ℕ) : ℝ) - Real.sqrt (k : ℝ)) *
            pickupReciprocalPrefix k :=
  pickupWeightedPrefix_eq_reciprocalPartialSummation n

example (u : ℝ) (n : ℕ) :
    (Real.sqrt n - (n : ℝ) * Real.exp (-u / 2)) +
        ∑ k ∈ Finset.range n, reciprocalFluxWeight u k = 0 :=
  reciprocalFluxWeight_sum_zero u n

example (u : ℝ) (n : ℕ) :
    pickupWeightedPrefix n - Real.exp (-u / 2) * pickupMertensPrefix n =
      ∑ k ∈ Finset.range n,
        reciprocalFluxWeight u k *
          (pickupReciprocalPrefix k - pickupReciprocalPrefix n) :=
  pickupFlux_eq_reciprocalVariationKernel u n

example (n : ℕ) :
    criticalIntervalBlock n = reciprocalVariationBlock n :=
  criticalIntervalBlock_eq_reciprocalVariationKernel n

example :
    CriticalBoundaryVerticalLineUniform ↔ ReciprocalVariationBlockUniform :=
  criticalBoundary_iff_reciprocalVariationBlockUniform

elab "#audit_reciprocal_prefix_kernel" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner := `GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty reciprocal-prefix kernel family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"RECIPROCAL_PREFIX_KERNEL_COUNT::{declarations.length}"

#audit_reciprocal_prefix_kernel
