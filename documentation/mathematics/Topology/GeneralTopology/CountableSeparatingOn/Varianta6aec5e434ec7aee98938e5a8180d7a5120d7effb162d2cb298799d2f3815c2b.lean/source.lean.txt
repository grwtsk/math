-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.CountableSeparatingOn.Variant1625ad93903cc1497f01bd8ec73dc1bf19931ee0d5517ca975e3ebec52a13e16","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1625ad93903cc1497f01bd8ec73dc1bf19931ee0d5517ca975e3ebec52a13e16","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.CountableSeparatingOn.Variant1625ad93903cc1497f01bd8ec73dc1bf19931ee0d5517ca975e3ebec52a13e16","mathematical_subject":"Topology.GeneralTopology","original_sha256":"1625ad93903cc1497f01bd8ec73dc1bf19931ee0d5517ca975e3ebec52a13e16","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Separation/CountableSeparatingOn.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Order.Filter.CountableSeparatingOn
import Mathlib.Topology.Separation.Basic

/-!
# Countable separating families of sets in topological spaces

In this file we show that a T₀ topological space with second countable
topology has a countable family of open (or closed) sets separating the points.
-/


namespace GRWTSK.Topology.GeneralTopology.CountableSeparatingOn.Variant1625ad93903cc1497f01bd8ec73dc1bf19931ee0d5517ca975e3ebec52a13e16

variable {X : Type*}

open Set TopologicalSpace

/-- If `X` is a topological space, `s` is a set in `X` such that the induced topology is T₀ and is
second countable, then there exists a countable family of open sets in `X` that separates points
of `s`. -/
instance [TopologicalSpace X] {s : Set X} [T0Space s] [SecondCountableTopology s] :
    HasCountableSeparatingOn X IsOpen s := by
  suffices HasCountableSeparatingOn s IsOpen univ from .of_subtype fun _ ↦ isOpen_induced_iff.1
  refine ⟨⟨countableBasis s, countable_countableBasis _, fun _ ↦ isOpen_of_mem_countableBasis,
    fun x _ y _ h ↦ ?_⟩⟩
  exact ((isBasis_countableBasis _).inseparable_iff.2 h).eq

/-- If there exists a countable family of open sets separating points of `s`, then there exists
a countable family of closed sets separating points of `s`. -/
instance [TopologicalSpace X] {s : Set X} [h : HasCountableSeparatingOn X IsOpen s] :
    HasCountableSeparatingOn X IsClosed s :=
  let ⟨S, hSc, hSo, hS⟩ := h.1
  ⟨compl '' S, hSc.image _, forall_mem_image.2 fun U hU ↦ (hSo U hU).isClosed_compl,
    fun x hx y hy h ↦ hS x hx y hy fun _U hU ↦ not_iff_not.1 <| h _ (mem_image_of_mem _ hU)⟩
