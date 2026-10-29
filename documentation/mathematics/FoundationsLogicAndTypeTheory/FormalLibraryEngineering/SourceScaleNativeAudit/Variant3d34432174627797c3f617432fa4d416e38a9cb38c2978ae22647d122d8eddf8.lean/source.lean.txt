-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceScaleReconstruction.Variantdbd3854cf84504fcb96f660fcd3d26ca1ddca01faf6f534ca32f2d64b4b9be93","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dbd3854cf84504fcb96f660fcd3d26ca1ddca01faf6f534ca32f2d64b4b9be93","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.SourceScaleReconstruction.Variantdbd3854cf84504fcb96f660fcd3d26ca1ddca01faf6f534ca32f2d64b4b9be93","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"dbd3854cf84504fcb96f660fcd3d26ca1ddca01faf6f534ca32f2d64b4b9be93","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/type-theory-reconstruction/artifacts/type-theory/atlas/source-scale-reconstruction/SourceScaleNativeAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.SourceScaleReconstruction
import Lean.Util.CollectAxioms


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceScaleReconstruction.Variantdbd3854cf84504fcb96f660fcd3d26ca1ddca01faf6f534ca32f2d64b4b9be93

open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
run_cmd do
  let env ← getEnv
  let selected : Array String := #["FormalResearch.PositiveAtlas.SourceScaleReconstruction"]
  for expected in selected do
    if !(env.header.moduleNames.any fun mod => mod.toString == expected) then
      throwError "Source-scale consumer module absent from native closure: {expected}"
  let mut inspected : Nat := 0
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
        let mut definitionBody : Json := Json.null
        if #["FormalResearch.PositiveAtlas.SourceScaleReconstruction.fixtureInventory",
            "FormalResearch.PositiveAtlas.SourceScaleReconstruction.fixtureBlocks",
            "FormalResearch.PositiveAtlas.SourceScaleReconstruction.chartInventory"].contains name.toString then
          if let some value := info.value? then
            definitionBody := toJson (← liftTermElabM <| PrettyPrinter.ppExpr value).pretty
        let record := Json.mkObj [
          ("name", toJson name.toString),
          ("module", toJson mod.toString),
          ("kind", toJson kind),
          ("type", toJson declarationType.pretty),
          ("definition_body", definitionBody),
          ("axioms", toJson (axioms.map Name.toString))]
        logInfo m!"SOURCE_SCALE_AUDIT {record.compress}"
        inspected := inspected + 1
  logInfo m!"SOURCE_SCALE_AUDIT_COUNT {inspected}"
