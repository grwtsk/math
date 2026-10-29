-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Clear.Variantd2c015417aac57abbd07b9d9dc916618f12a6eedb8f50a14aa6aa4e36e810b0f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d2c015417aac57abbd07b9d9dc916618f12a6eedb8f50a14aa6aa4e36e810b0f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Clear.Variantd2c015417aac57abbd07b9d9dc916618f12a6eedb8f50a14aa6aa4e36e810b0f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d2c015417aac57abbd07b9d9dc916618f12a6eedb8f50a14aa6aa4e36e810b0f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Clear_.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Joshua Clune. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joshua Clune
-/
import Mathlib.Init
import Lean.Meta.Tactic.Clear
import Lean.Elab.Tactic.Basic

/-! # `clear_` tactic -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Clear.Variantd2c015417aac57abbd07b9d9dc916618f12a6eedb8f50a14aa6aa4e36e810b0f

namespace Mathlib.Tactic
open Lean Meta Elab.Tactic

/-- Clear all hypotheses starting with `_`, like `_match` and `_let_match`. -/
elab (name := clear_) "clear_" : tactic =>
  liftMetaTactic1 fun goal ↦ do
    let mut toClear := #[]
    for decl in ← getLCtx do
      if let Name.str _ str := decl.userName then
        if !str.isEmpty && str.front == '_' then
          if let none ← isClass? decl.type then
            toClear := toClear.push decl.fvarId
    goal.tryClearMany toClear

end Mathlib.Tactic
