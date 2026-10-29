# Original Native Audit Failed Counter Inference — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `70bd91c474e5e1ac724293ac5287050bde066f10` · SHA-256 `e43e2c434c235f97e7160504935e5de7db4f460b8abe157f2a98192ad9e1c3f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import OAI.Computability.TypeSystem.Normalization
import Lean.Util.CollectAxioms

open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true

run_cmd do
  let env ← getEnv
  let selected : Array String := #["OAI.Computability.TypeSystem.Basic", "OAI.Computability.TypeSystem.Reduction", "OAI.Computability.TypeSystem.Typing", "OAI.Computability.TypeSystem.Restriction", "OAI.Computability.TypeSystem.Contexts", "OAI.Computability.TypeSystem.Candidates", "OAI.Computability.TypeSystem.Profiles", "OAI.Computability.TypeSystem.Potential", "OAI.Computability.TypeSystem.Interface", "OAI.Computability.TypeSystem.Components", "OAI.Computability.TypeSystem.Signed", "OAI.Computability.TypeSystem.OneChild", "OAI.Computability.TypeSystem.Spaces", "OAI.Computability.TypeSystem.Plain", "OAI.Computability.TypeSystem.Values", "OAI.Computability.TypeSystem.Evaluation", "OAI.Computability.TypeSystem.Bounds", "OAI.Computability.TypeSystem.Congruence", "OAI.Computability.TypeSystem.Substitution", "OAI.Computability.TypeSystem.ObservationReduction", "OAI.Computability.TypeSystem.ObservationCandidates", "OAI.Computability.TypeSystem.Labelled", "OAI.Computability.TypeSystem.Wrappers", "OAI.Computability.TypeSystem.Logic", "OAI.Computability.TypeSystem.Channels", "OAI.Computability.TypeSystem.Relations", "OAI.Computability.TypeSystem.Pairs", "OAI.Computability.TypeSystem.Relational", "OAI.Computability.TypeSystem.Specialization", "OAI.Computability.TypeSystem.Equivalence", "OAI.Computability.TypeSystem.Response", "OAI.Computability.TypeSystem.Diagonal", "OAI.Computability.TypeSystem.Normalization"]
  for expected in selected do
    if !(env.header.moduleNames.any fun mod => mod.toString == expected) then
      throwError "Original module absent from native import closure: {expected}"
  let mut inspected := 0
  for (name, info) in env.constants do
    if let some idx := env.getModuleIdxFor? name then
      let mod := env.header.moduleNames[idx.toNat]!
      if selected.contains mod.toString then
        let axioms ← Lean.collectAxioms name
        if axioms.contains ``sorryAx then
          throwError "Rejected sorryAx dependency: {name}"
        for axiomName in axioms do
          if !#[``propext, ``Classical.choice, ``Quot.sound].contains axiomName then
            throwError "Unadmitted axiom {axiomName} in {name}"
        let declarationType ← liftTermElabM <| PrettyPrinter.ppExpr info.type
        let kind := match info with
          | .thmInfo _ => "theorem"
          | .axiomInfo _ => "axiom"
          | .defnInfo _ => "definition"
          | .opaqueInfo _ => "opaque"
          | .inductInfo _ => "inductive"
          | .ctorInfo _ => "constructor"
          | .recInfo _ => "recursor"
          | .quotInfo _ => "quotient"
        let record := Json.mkObj [
          ("name", toJson name.toString),
          ("module", toJson mod.toString),
          ("kind", toJson kind),
          ("type", toJson declarationType.pretty),
          ("axioms", toJson (axioms.map Name.toString))]
        logInfo m!"ORIGINAL_AUDIT {record.compress}"
        inspected := inspected + 1
  logInfo m!"ORIGINAL_AUDIT_COUNT {inspected}"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e62a0b863b6c9ec08326fa76bc01c09f8ce18fa167d112638652f2c9dbb509c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OriginalNativeAuditFailedCounterInference/Variante43e2c434c235f97e7160504935e5de7db4f460b8abe157f2a98192ad9e1c3f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
