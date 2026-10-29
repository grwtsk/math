# Pole Source Sensitivity Audit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c6f718f8e84a2b058322da2a888d3c1c0dd11e5` · SHA-256 `1aacc76b9bdcb166ae54dc41235b325f16472d79a7c3fe1a937c2a3f26d1aba9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.PoleSourceSensitivity
import Lean.Elab.Print
import Lean.Util.CollectAxioms

open Lean Elab Command

elab "audit_source_sensitivity" : command => do
  let env := (← getEnv).setExporting false
  let modules := env.allImportedModuleNames
  let target := `FormalResearch.RiemannHypothesis.PoleSourceSensitivity
  let candidates := (env.constants.toList.filter fun entry =>
    match env.getModuleIdxFor? entry.1 with
    | some index => modules[index]! == target
    | none => false).toArray.qsort (fun a b => Name.quickLt a.1 b.1)
  let mut entries : Array Json := #[]
  let mut badCount : Nat := 0
  let mut directCount : Nat := 0
  for (name, info) in candidates do
    let axioms ← collectAxioms name
    let bad := axioms.filter fun ax =>
      ax != ``propext && ax != ``Classical.choice && ax != ``Quot.sound
    if !bad.isEmpty then badCount := badCount + 1
    if let .axiomInfo _ := info then directCount := directCount + 1
    let ident := mkIdent name
    elabCommand (← `(command| #print sig $ident:ident))
    elabCommand (← `(command| #print axioms $ident:ident))
    entries := entries.push (Json.mkObj [
      ("name", toJson name.toString),
      ("unsafe", toJson info.isUnsafe),
      ("axioms", toJson (axioms.map Name.toString)),
      ("forbidden_axioms", toJson (bad.map Name.toString))])
  let report := Json.mkObj [
    ("selection", toJson "all declarations owned by the imported new module"),
    ("module", toJson target.toString),
    ("declarations", toJson entries),
    ("count", toJson entries.size),
    ("forbidden_count", toJson badCount),
    ("direct_axiom_count", toJson directCount)]
  liftIO <| IO.FS.writeFile "scratch/pole-source-sensitivity-environment.json"
    (report.pretty ++ "\n")
  logInfo m!"All own declarations: {entries.size}; forbidden: {badCount}; direct: {directCount}."
  if badCount != 0 || directCount != 0 then
    throwError "The source sensitivity axiom audit rejected the candidate."

audit_source_sensitivity
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2b4fe5a7b012de5df2207d25940531f3780bd4ae4ef126d21506db170f2c37ad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1aacc76b9bdcb166ae54dc41235b325f16472d79a7c3fe1a937c2a3f26d1aba9PoleSourceSensit/Variant1aacc76b9bdcb166ae54dc41235b325f16472d79a7c3fe1a937c2a3f26d1aba9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
