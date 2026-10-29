# Complete source: GRWTSK.NumberTheory.Moebius.Checks.Positive.MertensSquareEnergyPowerBound

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87b1000fc437d4702fb49ff2e411bbbbf534e43e` · SHA-256 `850aba90f0a6c0a01fb2da973f67e182120851f5c7cbb6d9eba707343d138043`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.MertensSquareEnergyPowerBound
import Lean

open Lean Elab Command
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationMertensEnergy
open GRWTSK.NumberTheory.Moebius.MertensSquareEnergyPowerBound

example {C β : ℝ} (hβ0 : 1 / 2 < β) (hβ1 : β < 1)
    (hM : ∀ n : ℕ, 1 ≤ n →
      |pickupMertensPrefix n| ≤ C * (n : ℝ) ^ β) :
    MertensSquareEnergyPowerSaving :=
  mertensSquareEnergyPowerSaving_of_mertensPowerBound hβ0 hβ1 hM

example {C β : ℝ} (hβ0 : 1 / 2 < β) (hβ1 : β < 1)
    (hM : ∀ n : ℕ, 1 ≤ n →
      |pickupMertensPrefix n| ≤ C * (n : ℝ) ^ β) :
    CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_of_mertensPowerBound_viaSquareEnergy hβ0 hβ1 hM

elab "#audit_mertens_square_energy_power_bound" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner := `GRWTSK.NumberTheory.Moebius.MertensSquareEnergyPowerBound
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty Mertens square-energy power-bound family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"MERTENS_SQUARE_ENERGY_POWER_BOUND_COUNT::{declarations.length}"

#audit_mertens_square_energy_power_bound
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8e1419152984f55d48f378e5d0e29903b6c9345b3f8f9d6e06fbc0425280c3b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/Checks/Positive/MertensSquareEnergyPowerBound.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
