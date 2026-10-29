# Complete source: GRWTSK.NumberTheory.Moebius.Checks.Positive.ReciprocalPrefix

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a08fb9b4c1fbe10e49206932670c1aad4a227299` · SHA-256 `410d7bb2e7cc9b603f79206d697e36aabe552b9f4c106b38edd606b63a6ae179`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.ReciprocalPrefix
import Lean

open Lean Elab Command
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefix

example (N : ℕ) :
    pickupMertensPrefix N =
      (N : ℝ) * pickupReciprocalPrefix N -
        ∑ k ∈ Finset.range N, pickupReciprocalPrefix k :=
  pickupMertensPrefix_eq_reciprocalPartialSummation N

example (N : ℕ) :
    |pickupMertensPrefix N| ≤
      (N : ℝ) * |pickupReciprocalPrefix N| +
        ∑ k ∈ Finset.range N, |pickupReciprocalPrefix k| :=
  pickupMertensPrefix_abs_le_reciprocalPartialSummation N

example {C β : ℝ}
    (hC : 0 ≤ C) (hβ0 : 0 < β) (hβ1 : β < 1)
    (hR : ∀ n : ℕ, 1 ≤ n →
      |pickupReciprocalPrefix n| ≤ C * (n : ℝ) ^ (β - 1)) :
    ∀ n : ℕ, 1 ≤ n →
      |pickupMertensPrefix n| ≤ (C + C / β) * (n : ℝ) ^ β :=
  pickupMertensPrefix_le_of_reciprocalPrefixDecay hC hβ0 hβ1 hR

example {C β : ℝ}
    (hC : 0 ≤ C) (hβ0 : 0 < β) (hβ1 : β < 1)
    (hR : ∀ n : ℕ, 1 ≤ n →
      |pickupReciprocalPrefix n| ≤ C * (n : ℝ) ^ (β - 1)) :
    GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_of_reciprocalPrefixDecay hC hβ0 hβ1 hR

elab "#audit_reciprocal_prefix" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner := `GRWTSK.NumberTheory.Moebius.ReciprocalPrefix
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty reciprocal-prefix source family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"RECIPROCAL_PREFIX_COUNT::{declarations.length}"

#audit_reciprocal_prefix
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=028beffe985dc777b7cf1c1eb7581a6f5fa176446c463494b9d8daf44fb89b20 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/Checks/Positive/ReciprocalPrefix.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
