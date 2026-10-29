-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Expr.Variante9403bca917a5c256e378ffb0c4c9c8a288db04e0c7f4cbfc1fd6e0172f8d103","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e9403bca917a5c256e378ffb0c4c9c8a288db04e0c7f4cbfc1fd6e0172f8d103","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Expr.Variante9403bca917a5c256e378ffb0c4c9c8a288db04e0c7f4cbfc1fd6e0172f8d103","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e9403bca917a5c256e378ffb0c4c9c8a288db04e0c7f4cbfc1fd6e0172f8d103","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Lean/Meta/Expr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Lean.Expr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Expr.Variante9403bca917a5c256e378ffb0c4c9c8a288db04e0c7f4cbfc1fd6e0172f8d103

namespace Lean.Literal

instance : Ord Literal where
  compare
    | natVal n₁, natVal n₂ => compare n₁ n₂
    | strVal s₁, strVal s₂ => compare s₁ s₂
    | natVal _, strVal _ => .lt
    | strVal _, natVal _ => .gt
