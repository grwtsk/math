-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Order.Variant2d7702f6866b78c7d5ff73d3f057f85117896143fd72df2d732e1cad8ee83018","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2d7702f6866b78c7d5ff73d3f057f85117896143fd72df2d732e1cad8ee83018","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Order.Variant2d7702f6866b78c7d5ff73d3f057f85117896143fd72df2d732e1cad8ee83018","mathematical_subject":"Topology.GeneralTopology","original_sha256":"2d7702f6866b78c7d5ff73d3f057f85117896143fd72df2d732e1cad8ee83018","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Instances/ZMod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 David Loeffler. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Loeffler
-/
import Mathlib.Topology.Order
import Mathlib.Data.ZMod.Defs

/-!
# Topology on `ZMod N`

We equip `ZMod N` with the discrete topology.
-/


namespace GRWTSK.Topology.GeneralTopology.Order.Variant2d7702f6866b78c7d5ff73d3f057f85117896143fd72df2d732e1cad8ee83018

namespace ZMod

variable {N : ℕ}

/-- The discrete topology (every set is open). -/
instance : TopologicalSpace (ZMod N) := ⊥

instance : DiscreteTopology (ZMod N) := ⟨rfl⟩

end ZMod
