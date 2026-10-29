-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompatibleCtors.Variantefe386e010be2b15578d4c4ae7edabf058612700a6e46ed257dfeadcc205ec60","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"efe386e010be2b15578d4c4ae7edabf058612700a6e46ed257dfeadcc205ec60","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CompatibleCtors.Variantefe386e010be2b15578d4c4ae7edabf058612700a6e46ed257dfeadcc205ec60","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"efe386e010be2b15578d4c4ae7edabf058612700a6e46ed257dfeadcc205ec60","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Inductive.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompatibleCtors.Variantefe386e010be2b15578d4c4ae7edabf058612700a6e46ed257dfeadcc205ec60

public section

/-! # Helper methods for inductive datatypes -/

namespace Lean.Meta

/-- Return true if the types of the given constructors are compatible. -/
def compatibleCtors (ctorName₁ ctorName₂ : Name) : MetaM Bool := do
  let ctorInfo₁ ← getConstInfoCtor ctorName₁
  let ctorInfo₂ ← getConstInfoCtor ctorName₂
  if ctorInfo₁.induct != ctorInfo₂.induct then
    return false
  else
    let (_, _, ctorType₁) ← forallMetaTelescope ctorInfo₁.type
    let (_, _, ctorType₂) ← forallMetaTelescope ctorInfo₂.type
    isDefEq ctorType₁ ctorType₂

end Lean.Meta
