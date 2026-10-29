-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.Compact.Variant3801586ee5845d979b722c95d3256f1c8f3dea77a3798047e601607d647c8731","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3801586ee5845d979b722c95d3256f1c8f3dea77a3798047e601607d647c8731","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.Compact.Variant3801586ee5845d979b722c95d3256f1c8f3dea77a3798047e601607d647c8731","mathematical_subject":"Topology.MetricSpaces","original_sha256":"3801586ee5845d979b722c95d3256f1c8f3dea77a3798047e601607d647c8731","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/MetricSpace/Ultra/ContinuousMaps.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 David Loeffler. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Loeffler
-/

import Mathlib.Topology.ContinuousMap.Compact
import Mathlib.Topology.MetricSpace.Ultra.Basic

/-!
# Ultrametric structure on continuous maps
-/


namespace GRWTSK.Topology.MetricTopology.Compact.Variant3801586ee5845d979b722c95d3256f1c8f3dea77a3798047e601607d647c8731

/-- Continuous maps from a compact space to an ultrametric space are an ultrametric space. -/
instance ContinuousMap.isUltrametricDist {X Y : Type*}
    [TopologicalSpace X] [CompactSpace X] [MetricSpace Y] [IsUltrametricDist Y] :
    IsUltrametricDist C(X, Y) := by
  constructor
  intro f g h
  rw [ContinuousMap.dist_le (by positivity)]
  refine fun x ↦ (dist_triangle_max (f x) (g x) (h x)).trans (max_le_max ?_ ?_) <;>
  exact ContinuousMap.dist_apply_le_dist x
