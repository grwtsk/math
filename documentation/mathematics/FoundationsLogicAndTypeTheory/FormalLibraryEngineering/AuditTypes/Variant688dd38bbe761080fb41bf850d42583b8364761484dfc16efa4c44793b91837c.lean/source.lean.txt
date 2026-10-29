-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lean.Variant87fc076e51554c27213b7f041e51bf7abd31a7f500a5ad9f26ac7c09e5193152","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"87fc076e51554c27213b7f041e51bf7abd31a7f500a5ad9f26ac7c09e5193152","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Lean.Variant87fc076e51554c27213b7f041e51bf7abd31a7f500a5ad9f26ac7c09e5193152","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"87fc076e51554c27213b7f041e51bf7abd31a7f500a5ad9f26ac7c09e5193152","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/atlas-ghh-descent-20261007/artifacts/atlas-ghh/heisenberg-cocycle/Audit-types.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean
import FormalResearch.PositiveAtlas.ModularBoundary.HeisenbergCocycle

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lean.Variant87fc076e51554c27213b7f041e51bf7abd31a7f500a5ad9f26ac7c09e5193152

open Lean Elab Command
set_option pp.all true
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
set_option pp.deepTerms true
set_option pp.maxSteps 100000000
run_cmd do
  let env ← getEnv
  let names := (env.constants.toList.map Prod.fst).filter fun n =>
    "FormalResearch.PositiveAtlas.ModularBoundary.HeisenbergCocycle.".isPrefixOf n.toString
  for name in names do
    let axioms ← collectAxioms name
    let record := Json.mkObj [("name", toJson name.toString),
      ("axioms", toJson (axioms.map Name.toString))]
    liftIO <| IO.println ("ATLAS_HEISENBERG_EXPORT=" ++ record.compress)
    elabCommand (← `(command| #check $(mkIdent name)))
