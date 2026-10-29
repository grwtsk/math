-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PoleSourceSensitivity.Variant1aacc76b9bdcb166ae54dc41235b325f16472d79a7c3fe1a937c2a3f26d1aba9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1aacc76b9bdcb166ae54dc41235b325f16472d79a7c3fe1a937c2a3f26d1aba9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.PoleSourceSensitivity.Variant1aacc76b9bdcb166ae54dc41235b325f16472d79a7c3fe1a937c2a3f26d1aba9","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"1aacc76b9bdcb166ae54dc41235b325f16472d79a7c3fe1a937c2a3f26d1aba9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/1a/1aacc76b9bdcb166ae54dc41235b325f16472d79a7c3fe1a937c2a3f26d1aba9--PoleSourceSensitivityAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.PoleSourceSensitivity
import Lean.Elab.Print
import Lean.Util.CollectAxioms


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PoleSourceSensitivity.Variant1aacc76b9bdcb166ae54dc41235b325f16472d79a7c3fe1a937c2a3f26d1aba9

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
