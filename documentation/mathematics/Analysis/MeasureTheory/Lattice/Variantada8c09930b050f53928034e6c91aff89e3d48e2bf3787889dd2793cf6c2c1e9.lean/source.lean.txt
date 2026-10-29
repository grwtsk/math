-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.MeasurableOneLePart.Variant5af0b238946d772fcbf03a9f6cbe5a364a3fc4070439947a45fe62006cf5909f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5af0b238946d772fcbf03a9f6cbe5a364a3fc4070439947a45fe62006cf5909f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.MeasurableOneLePart.Variant5af0b238946d772fcbf03a9f6cbe5a364a3fc4070439947a45fe62006cf5909f","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"5af0b238946d772fcbf03a9f6cbe5a364a3fc4070439947a45fe62006cf5909f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/Order/Group/Lattice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Xavier Roblot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Xavier Roblot
-/
import Mathlib.Algebra.Order.Group.PosPart
import Mathlib.MeasureTheory.Group.Arithmetic
import Mathlib.MeasureTheory.Order.Lattice

/-!
# Measurability results on groups with a lattice structure.

## Tags

measurable function, group, lattice operation
-/


namespace GRWTSK.Analysis.MeasureTheory.MeasurableOneLePart.Variant5af0b238946d772fcbf03a9f6cbe5a364a3fc4070439947a45fe62006cf5909f

variable {α β : Type*} [Lattice α] [Group α] [MeasurableSpace α]
  [MeasurableSpace β] {f : β → α}

@[to_additive (attr := measurability)]
theorem measurable_oneLePart [MeasurableSup α] : Measurable (oneLePart : α → α) :=
  measurable_sup_const _

@[to_additive (attr := measurability)]
protected theorem Measurable.oneLePart [MeasurableSup α] (hf : Measurable f) :
    Measurable fun x ↦ oneLePart (f x) :=
  measurable_oneLePart.comp hf

variable [MeasurableInv α]

@[to_additive (attr := measurability)]
theorem measurable_leOnePart [MeasurableSup α] : Measurable (leOnePart : α → α) :=
  (measurable_sup_const _).comp measurable_inv

@[to_additive (attr := measurability)]
protected theorem Measurable.leOnePart [MeasurableSup α] (hf : Measurable f) :
    Measurable fun x ↦ leOnePart (f x) :=
  measurable_leOnePart.comp hf

variable [MeasurableSup₂ α]

@[to_additive (attr := measurability)]
theorem measurable_mabs : Measurable (mabs : α → α) :=
  measurable_id'.sup measurable_inv

@[to_additive (attr := measurability, fun_prop)]
protected theorem Measurable.mabs (hf : Measurable f) : Measurable fun x ↦ mabs (f x) :=
  measurable_mabs.comp hf

@[to_additive (attr := measurability, fun_prop)]
protected theorem AEMeasurable.mabs {μ : MeasureTheory.Measure β} (hf : AEMeasurable f μ) :
    AEMeasurable (fun x ↦ mabs (f x)) μ :=
  measurable_mabs.comp_aemeasurable hf
