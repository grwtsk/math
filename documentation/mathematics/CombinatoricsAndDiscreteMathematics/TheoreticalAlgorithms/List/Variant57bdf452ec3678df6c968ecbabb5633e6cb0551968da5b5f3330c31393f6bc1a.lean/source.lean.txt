-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Small.Variant1eaac1c205aed7650a09bd5104ec24f0cbf25820854aacd0e6a193db9c7f1c2d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1eaac1c205aed7650a09bd5104ec24f0cbf25820854aacd0e6a193db9c7f1c2d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Small.Variant1eaac1c205aed7650a09bd5104ec24f0cbf25820854aacd0e6a193db9c7f1c2d","mathematical_subject":"Computation.DataStructures","original_sha256":"1eaac1c205aed7650a09bd5104ec24f0cbf25820854aacd0e6a193db9c7f1c2d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Logic/Small/List.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Logic.Small.Basic
import Mathlib.Data.Vector.Basic

/-!
# Instances for `Small (List α)` and `Small (Vector α)`.

These must not be in `Logic.Small.Basic` as this is very low in the import hierarchy,
and is used by category theory files which do not need everything imported by `Data.Vector.Basic`.
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Small.Variant1eaac1c205aed7650a09bd5104ec24f0cbf25820854aacd0e6a193db9c7f1c2d

universe u v

open Mathlib

instance smallVector {α : Type v} {n : ℕ} [Small.{u} α] : Small.{u} (List.Vector α n) :=
  small_of_injective (Equiv.vectorEquivFin α n).injective

instance smallList {α : Type v} [Small.{u} α] : Small.{u} (List α) := by
  let e : (Σn, List.Vector α n) ≃ List α := Equiv.sigmaFiberEquiv List.length
  exact small_of_surjective e.surjective
