-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Hausdorff.Variant6789f671266bf77ac3533278b1864f1c5f805ed7183d5eb643d44b3633206bb2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6789f671266bf77ac3533278b1864f1c5f805ed7183d5eb643d44b3633206bb2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Hausdorff.Variant6789f671266bf77ac3533278b1864f1c5f805ed7183d5eb643d44b3633206bb2","mathematical_subject":"Topology.GeneralTopology","original_sha256":"6789f671266bf77ac3533278b1864f1c5f805ed7183d5eb643d44b3633206bb2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Connected/Separation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.Topology.Separation.Hausdorff
import Mathlib.Topology.Connected.TotallyDisconnected
/-!

# Separation and (dis)connectedness properties of topological spaces.

This file provides an instance `T2Space X` given `TotallySeparatedSpace X`.

## TODO
* Move the last part of `Topology/Separation` to this file.
-/



namespace GRWTSK.Topology.GeneralTopology.Hausdorff.Variant6789f671266bf77ac3533278b1864f1c5f805ed7183d5eb643d44b3633206bb2

variable {X : Type*} [TopologicalSpace X]

section TotallySeparated

/-- A totally separated space is T2. -/
instance TotallySeparatedSpace.t2Space [TotallySeparatedSpace X] : T2Space X where
  t2 x y h := by
    obtain ⟨u, v, h₁, h₂, h₃, h₄, _, h₅⟩ := isTotallySeparated_univ trivial trivial h
    exact ⟨u, v, h₁, h₂, h₃, h₄, h₅⟩

end TotallySeparated
