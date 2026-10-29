-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IfTrueRightEqOr.Variantc6feb3bb4b07ce7a5a4e668f5f016a5c1f22832545438b0142c9d9b055489b10","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c6feb3bb4b07ce7a5a4e668f5f016a5c1f22832545438b0142c9d9b055489b10","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IfTrueRightEqOr.Variantc6feb3bb4b07ce7a5a4e668f5f016a5c1f22832545438b0142c9d9b055489b10","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"c6feb3bb4b07ce7a5a4e668f5f016a5c1f22832545438b0142c9d9b055489b10","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Init/IteSimp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/

import Mathlib.Init.Data.Bool.Basic
import Mathlib.Init.Data.Bool.Lemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IfTrueRightEqOr.Variantc6feb3bb4b07ce7a5a4e668f5f016a5c1f22832545438b0142c9d9b055489b10

#align_import init.ite_simp from "leanprover-community/lean"@"4a03bdeb31b3688c31d02d7ff8e0ff2e5d6174db"

/-!
# Simplification lemmas for ite.

We don't prove them at logic.lean because it is easier to prove them using
the tactic framework.
-/


@[simp]
theorem if_true_right_eq_or (p : Prop) [h : Decidable p] (q : Prop) :
    (if p then q else True) = (¬p ∨ q) := by by_cases p <;> simp [h]
#align if_true_right_eq_or if_true_right_eq_or

@[simp]
theorem if_true_left_eq_or (p : Prop) [h : Decidable p] (q : Prop) :
    (if p then True else q) = (p ∨ q) := by by_cases p <;> simp [h]
#align if_true_left_eq_or if_true_left_eq_or

@[simp]
theorem if_false_right_eq_and (p : Prop) [h : Decidable p] (q : Prop) :
    (if p then q else False) = (p ∧ q) := by by_cases p <;> simp [h]
#align if_false_right_eq_and if_false_right_eq_and

@[simp]
theorem if_false_left_eq_and (p : Prop) [h : Decidable p] (q : Prop) :
    (if p then False else q) = (¬p ∧ q) := by by_cases p <;> simp [h]
#align if_false_left_eq_and if_false_left_eq_and
