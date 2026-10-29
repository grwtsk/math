-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.MeasurableSetConstSmul.Variant01a5b5e2ec9723bd96ff080922a3e1d7ebef430c93f89f8ec075d54112a41fa5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"01a5b5e2ec9723bd96ff080922a3e1d7ebef430c93f89f8ec075d54112a41fa5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.MeasurableSetConstSmul.Variant01a5b5e2ec9723bd96ff080922a3e1d7ebef430c93f89f8ec075d54112a41fa5","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"01a5b5e2ec9723bd96ff080922a3e1d7ebef430c93f89f8ec075d54112a41fa5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/Group/Pointwise.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov, Alex J. Best
-/
import Mathlib.MeasureTheory.Group.Arithmetic

/-!
# Pointwise set operations on `MeasurableSet`s

In this file we prove several versions of the following fact: if `s` is a measurable set, then so is
`a • s`. Note that the pointwise product of two measurable sets need not be measurable, so there is
no `MeasurableSet.mul` etc.
-/



namespace GRWTSK.Analysis.MeasureTheory.MeasurableSetConstSmul.Variant01a5b5e2ec9723bd96ff080922a3e1d7ebef430c93f89f8ec075d54112a41fa5

open Pointwise

open Set

@[to_additive]
theorem MeasurableSet.const_smul {G α : Type*} [Group G] [MulAction G α] [MeasurableSpace G]
    [MeasurableSpace α] [MeasurableSMul G α] {s : Set α} (hs : MeasurableSet s) (a : G) :
    MeasurableSet (a • s) := by
  rw [← preimage_smul_inv]
  exact measurable_const_smul _ hs

theorem MeasurableSet.const_smul_of_ne_zero {G₀ α : Type*} [GroupWithZero G₀] [MulAction G₀ α]
    [MeasurableSpace G₀] [MeasurableSpace α] [MeasurableSMul G₀ α] {s : Set α}
    (hs : MeasurableSet s) {a : G₀} (ha : a ≠ 0) : MeasurableSet (a • s) := by
  rw [← preimage_smul_inv₀ ha]
  exact measurable_const_smul _ hs

theorem MeasurableSet.const_smul₀ {G₀ α : Type*} [GroupWithZero G₀] [Zero α]
    [MulActionWithZero G₀ α] [MeasurableSpace G₀] [MeasurableSpace α] [MeasurableSMul G₀ α]
    [MeasurableSingletonClass α] {s : Set α} (hs : MeasurableSet s) (a : G₀) :
    MeasurableSet (a • s) := by
  rcases eq_or_ne a 0 with (rfl | ha)
  exacts [(subsingleton_zero_smul_set s).measurableSet, hs.const_smul_of_ne_zero ha]
