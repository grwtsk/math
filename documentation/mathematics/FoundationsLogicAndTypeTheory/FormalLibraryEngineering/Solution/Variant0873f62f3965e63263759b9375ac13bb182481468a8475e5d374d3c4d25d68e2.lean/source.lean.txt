-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BadNatUnsafe.Variant721377c985fd778c9e334a324d1320183095cae74ea69eb3ec433f0979a0df88","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"721377c985fd778c9e334a324d1320183095cae74ea69eb3ec433f0979a0df88","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.BadNatUnsafe.Variant721377c985fd778c9e334a324d1320183095cae74ea69eb3ec433f0979a0df88","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"721377c985fd778c9e334a324d1320183095cae74ea69eb3ec433f0979a0df88","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/artifacts/comparator-206/tests/projects/olean_issue/Solution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BadNatUnsafe.Variant721377c985fd778c9e334a324d1320183095cae74ea69eb3ec433f0979a0df88

open Lean

unsafe def badNatUnsafe : Nat := unsafeCast (-4294967296 : Int)

@[implemented_by badNatUnsafe] opaque badNatVal : Nat

run_elab
  addDecl <| .defnDecl {
    name        := .str .anonymous "badNat"
    levelParams := []
    type        := .const ``Nat []
    value       := .lit <| .natVal badNatVal
    hints       := .opaque
    safety      := .safe
  }

theorem boom : False := by
  have truly_marvelous_0 : ¬badNat ≤ 9223372036854775807 := by decide
  have truly_marvelous_1 : ¬9223372036854775807 < badNat := by decide
  omega
