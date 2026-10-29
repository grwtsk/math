-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpTelescope.Variant11e7937843bd1711f3a82bf694230aef6668d8d809f861dbc27ca9f93ae19dee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"11e7937843bd1711f3a82bf694230aef6668d8d809f861dbc27ca9f93ae19dee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SimpTelescope.Variant11e7937843bd1711f3a82bf694230aef6668d8d809f861dbc27ca9f93ae19dee","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"11e7937843bd1711f3a82bf694230aef6668d8d809f861dbc27ca9f93ae19dee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/Simp/Telescope.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.Simp.SimpM
import Lean.Meta.Sym.Simp.Have
import Lean.Meta.Sym.Simp.Forall

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpTelescope.Variant11e7937843bd1711f3a82bf694230aef6668d8d809f861dbc27ca9f93ae19dee

namespace Lean.Meta.Sym.Simp
/--
Simplify telescope binders (`have`-expression values, and arrow hypotheses)
but not the final body. This simproc is useful to simplify target before
introducing.
-/
public partial def simpTelescope : Simproc := fun e => do
  match e with
  | .letE .. =>
    simpLet' (simpLambda' simpTelescope) e
  | .forallE .. =>
    simpForall' (simpArrow := simpArrowTelescope simpTelescope) (simpBody := simpLambda' simpTelescope) e
  | _ => return .rfl

end Lean.Meta.Sym.Simp
