-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimprocAndThen.Variant8cb0168306f21bd2b80d43f4262c50735aed2456b9a7444fcf2843b1dd8decd7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8cb0168306f21bd2b80d43f4262c50735aed2456b9a7444fcf2843b1dd8decd7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SimprocAndThen.Variant8cb0168306f21bd2b80d43f4262c50735aed2456b9a7444fcf2843b1dd8decd7","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8cb0168306f21bd2b80d43f4262c50735aed2456b9a7444fcf2843b1dd8decd7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/Simp/Simproc.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.Simp.Result

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimprocAndThen.Variant8cb0168306f21bd2b80d43f4262c50735aed2456b9a7444fcf2843b1dd8decd7

namespace Lean.Meta.Sym.Simp

public abbrev Simproc.andThen (f g : Simproc) : Simproc := fun e₁ => do
  let r ← f e₁
  match r with
  | .step _ _ true _ | .rfl true _  => return r
  -- Propagate cd₁: if `f` was context-dependent but returned `.rfl`, in another
  -- context `f` might succeed and the whole `andThen` would take a different path.
  | .rfl false cd₁ =>
    let r₂ ← g e₁
    return if cd₁ && !r₂.isContextDependent then r₂.withContextDependent else r₂
  -- `cd₁` from `f` is threaded into `mkEqTransResult` so the combined result
  -- is context-dependent if either `f` or `g` was.
  | .step e₂ h₁ false cd₁ => mkEqTransResult e₁ e₂ h₁ (← g e₂) cd₁

public instance : AndThen Simproc where
  andThen f g := Simproc.andThen f (g ())

public abbrev Simproc.orElse (f g : Simproc) : Simproc := fun e₁ => do
  let r ← f e₁
  match r with
  | .step _ _ _ _ | .rfl true _  => return r
  -- Propagate cd₁: if `f` was context-dependent but returned `.rfl`, in another
  -- context `f` might succeed and the `orElse` would return `f`'s result instead.
  | .rfl false cd₁ =>
    let r₂ ← g e₁
    return if cd₁ && !r₂.isContextDependent then r₂.withContextDependent else r₂

public instance : OrElse Simproc where
  orElse f g := Simproc.orElse f (g ())

/-- Wraps a simproc so that any exception is caught and treated as `.rfl` (no rewrite). -/
public abbrev Simproc.tryCatch (f : Simproc) : Simproc := fun e => do
  try f e catch _ => return .rfl

end Lean.Meta.Sym.Simp
