-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ULiftDownInjective.Variantb785d6708032f86c2fa555d9be0c1b4db1f259dffe6dd296deb88f9ff488688f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b785d6708032f86c2fa555d9be0c1b4db1f259dffe6dd296deb88f9ff488688f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.ULiftDownInjective.Variantb785d6708032f86c2fa555d9be0c1b4db1f259dffe6dd296deb88f9ff488688f","mathematical_subject":"Logic.Foundations","original_sha256":"b785d6708032f86c2fa555d9be0c1b4db1f259dffe6dd296deb88f9ff488688f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Logic/Function/ULift.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Logic.Function.Defs

/-!
# `ULift` and `PLift`
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ULiftDownInjective.Variantb785d6708032f86c2fa555d9be0c1b4db1f259dffe6dd296deb88f9ff488688f

theorem ULift.down_injective {α : Sort _} : Function.Injective (@ULift.down α)
  | ⟨a⟩, ⟨b⟩, _ => by congr

@[simp] theorem ULift.down_inj {α : Sort _} {a b : ULift α} : a.down = b.down ↔ a = b :=
  ⟨fun h ↦ ULift.down_injective h, fun h ↦ by rw [h]⟩

variable {α : Sort*}

theorem PLift.down_injective : Function.Injective (@PLift.down α)
  | ⟨a⟩, ⟨b⟩, _ => by congr

@[simp] theorem PLift.down_inj {a b : PLift α} : a.down = b.down ↔ a = b :=
  ⟨fun h ↦ PLift.down_injective h, fun h ↦ by rw [h]⟩
