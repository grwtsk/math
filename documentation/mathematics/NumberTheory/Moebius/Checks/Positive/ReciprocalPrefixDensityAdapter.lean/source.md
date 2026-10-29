# Complete source: GRWTSK.NumberTheory.Moebius.Checks.Positive.ReciprocalPrefixDensityAdapter

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c4f56e23b48bad2b746a1dece6ba380ff1e23a8` · SHA-256 `27cb0b261bb9bc330c9303c1fff7dbc2cc62941b46e2812c3db5ca8f9efa2f07`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bbbc7e4ac103e1f367ec743867b0ff0ea5f6783d46756ff6ab10d75e6d5cedcd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/Checks/Positive/ReciprocalPrefixDensityAdapter.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
