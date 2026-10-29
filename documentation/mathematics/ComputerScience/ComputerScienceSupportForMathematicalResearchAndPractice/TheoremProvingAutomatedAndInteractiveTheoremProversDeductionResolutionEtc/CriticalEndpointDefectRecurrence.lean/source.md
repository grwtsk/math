# Complete source: GRWTSK.NumberTheory.Moebius.Checks.Positive.CriticalEndpointDefectRecurrence

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40c7ce9827a8e1ef5aa014edb9b40584e0d0272c` · SHA-256 `b243b1047ba4bf9776f866f9a8c5c5fbd0a12543405a02e6bd675507df24fe27`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.CriticalEndpointDefectRecurrence
import Lean

open Lean Elab Command
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefectRecurrence

example (n : ℕ) :
    criticalEndpointDefect (n + 1) =
      criticalEndpointDefect n +
        GRWTSK.RiemannHypothesis.CCC.pickupMertensPrefix n *
          criticalEndpointGap n :=
  criticalEndpointDefect_succ n

example (n : ℕ) :
    criticalEndpointDefect n = criticalMertensTransform n :=
  criticalEndpointDefect_eq_mertensTransform n

example :
    CriticalBoundaryVerticalLineUniform ↔
      CriticalMertensTransformSummable :=
  criticalBoundary_iff_mertensTransformSummable

elab "#audit_critical_endpoint_defect_recurrence" : command => do
  let env ← getEnv
  let moduleNames := env.header.moduleNames
  unless env.header.moduleData.size == moduleNames.size do
    throwError "module ownership table is incomplete"
  let owner := `GRWTSK.NumberTheory.Moebius.CriticalEndpointDefectRecurrence
  let declarations := (env.header.moduleData.toList.zip moduleNames.toList).flatMap
    fun (data, moduleName) =>
      if moduleName == owner then
        (data.constants.toList.filter fun info =>
          match env.getModuleIdxFor? info.name with
          | some idx => moduleNames[idx]! == owner
          | none => false).map fun info => (info.name, info)
      else []
  if declarations.isEmpty then throwError "empty critical endpoint-defect recurrence family"
  for (name, info) in declarations do
    if info.isUnsafe then throwError "unsafe mathematical declaration: {name}"
    match info with
    | .axiomInfo _ => throwError "new mathematical axiom: {name}"
    | _ => pure ()
    let axioms ← collectAxioms name
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved axiom {ax} in {name}"
  logInfo m!"CRITICAL_ENDPOINT_DEFECT_RECURRENCE_COUNT::{declarations.length}"

#audit_critical_endpoint_defect_recurrence
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c8c5007b761e70d2c05074cf6c6091910b731485a035b6922e751ce1d2afa8e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/Checks/Positive/CriticalEndpointDefectRecurrence.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
