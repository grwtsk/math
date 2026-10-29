-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasUnusedForallBindersWhere.Variant9be3e7c9d66672b9c1419db49628da596ff490122283ff69a9fa8c4998e30cb3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9be3e7c9d66672b9c1419db49628da596ff490122283ff69a9fa8c4998e30cb3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.HasUnusedForallBindersWhere.Variant9be3e7c9d66672b9c1419db49628da596ff490122283ff69a9fa8c4998e30cb3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9be3e7c9d66672b9c1419db49628da596ff490122283ff69a9fa8c4998e30cb3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/UnusedBinders.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Thomas Murrils. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Thomas Murrils
-/
module

prelude
public import Lean.Expr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasUnusedForallBindersWhere.Variant9be3e7c9d66672b9c1419db49628da596ff490122283ff69a9fa8c4998e30cb3

public section

namespace Lean.Expr

/--
Tests if any of the binders of `(x₀ : A₀) → (x₁ : A₁) → ⋯ → X` which satisfy `p Aᵢ bi` (with `bi`
the `binderInfo`) are unused in the renainder of the type (i.e. in `(xᵢ₊₁ : Aᵢ₊₁) → ⋯ → X`).

Note that the argument to `p` may have loose bvars. This is a performance optimization.

This function runs `cleanupAnnotations` on each type suffix `(xᵢ₊₁ : Aᵢ₊₁) → ⋯ → X` before
examining it.

We see through `let`s, and do not report if any of them are unused.
-/
@[specialize p]
partial def hasUnusedForallBindersWhere (p : BinderInfo → Expr → Bool) (e : Expr) : Bool :=
  match e.cleanupAnnotations with
  | .forallE _ type body bi =>
    p bi type && !(body.hasLooseBVar 0) || body.hasUnusedForallBindersWhere p
  /- See through `letE` -/
  | .letE _ _ _ body _ => body.hasUnusedForallBindersWhere p
  | _ => false

end Lean.Expr
