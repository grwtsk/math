-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LocalContext.Varianta453de8d62af6c2a84e786a52e4f29bb3fec6e1febd18b5c7ac06bfed2eec795","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a453de8d62af6c2a84e786a52e4f29bb3fec6e1febd18b5c7ac06bfed2eec795","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LocalContext.Varianta453de8d62af6c2a84e786a52e4f29bb3fec6e1febd18b5c7ac06bfed2eec795","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a453de8d62af6c2a84e786a52e4f29bb3fec6e1febd18b5c7ac06bfed2eec795","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Lean/LocalContext.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Init
import Lean.LocalContext

/-!
# Additional methods about `LocalContext`
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LocalContext.Varianta453de8d62af6c2a84e786a52e4f29bb3fec6e1febd18b5c7ac06bfed2eec795

namespace Lean.LocalContext

universe u v
variable {m : Type u → Type v} [Monad m] [Alternative m]
variable {β : Type u}

/-- Return the result of `f` on the first local declaration on which `f` succeeds. -/
@[specialize] def firstDeclM (lctx : LocalContext) (f : LocalDecl → m β) : m β :=
  do match (← lctx.findDeclM? (optional ∘ f)) with
  | none   => failure
  | some b => pure b

/-- Return the result of `f` on the last local declaration on which `f` succeeds. -/
@[specialize] def lastDeclM (lctx : LocalContext) (f : LocalDecl → m β) : m β :=
  do match (← lctx.findDeclRevM? (optional ∘ f)) with
  | none   => failure
  | some b => pure b

end Lean.LocalContext
