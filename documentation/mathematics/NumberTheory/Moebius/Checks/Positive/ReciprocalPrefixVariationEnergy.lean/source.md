# Complete source: GRWTSK.NumberTheory.Moebius.Checks.Positive.ReciprocalPrefixVariationEnergy

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ed4aa4ef742e2d59ee93c731986448c517a2029` · SHA-256 `728db27a7f7e0f2057c46d918b734abb7c12312abdc1a3731200b44c4bd58526`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationEnergy
import Lean

open Lean Elab Command
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationEnergy

example {n : ℕ} (hn : 1 ≤ n) :
    reciprocalVariationBlock n ≤ reciprocalCauchyBlock n :=
  reciprocalVariationBlock_le_cauchyBlock hn

example (hC : ReciprocalCauchyBlockUniform) :
    ReciprocalVariationBlockUniform :=
  reciprocalVariationBlockUniform_of_cauchyBlockUniform hC

example (hC : ReciprocalCauchyBlockUniform) :
    CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_of_reciprocalCauchyBlockUniform hC

elab "#audit_reciprocal_prefix_variation_energy" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner := `GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationEnergy
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty reciprocal-prefix variation-energy family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"RECIPROCAL_PREFIX_VARIATION_ENERGY_COUNT::{declarations.length}"

#audit_reciprocal_prefix_variation_energy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=567c16cfde2e95bfcde56df6785748cca470ecf106b1a1195eecd24317a8a2e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/Checks/Positive/ReciprocalPrefixVariationEnergy.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
