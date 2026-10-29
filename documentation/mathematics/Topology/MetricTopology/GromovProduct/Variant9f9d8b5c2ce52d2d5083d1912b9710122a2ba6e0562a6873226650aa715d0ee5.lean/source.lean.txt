-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.GromovProduct.Variantdcbe4e3cf3800a686d4b1b1fdf0828cd49d459d18843267f99c0ecd1ed506ef3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dcbe4e3cf3800a686d4b1b1fdf0828cd49d459d18843267f99c0ecd1ed506ef3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.GromovProduct.Variantdcbe4e3cf3800a686d4b1b1fdf0828cd49d459d18843267f99c0ecd1ed506ef3","mathematical_subject":"Topology.MetricSpaces","original_sha256":"dcbe4e3cf3800a686d4b1b1fdf0828cd49d459d18843267f99c0ecd1ed506ef3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/MetricSpace/GromovProduct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Hang Lu Su, Katerina Hristova. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Hang Lu Su, Katerina Hristova
-/
module

public import Mathlib.Topology.MetricSpace.Pseudo.Defs

/-!
# The Gromov product

The Gromov product of `y` and `z` with respect to `x` in a pseudometric space is
`(y, z)_x = (dist x y + dist x z - dist y z) / 2`.

## Main definitions

* `Metric.gromovProduct x y z`: the Gromov product of `y` and `z` with respect to `x`.

## Tags

Gromov product

## Implementation notes

We intentionally omit grind tags which would introduce `dist` terms in general proofs about
`gromovProduct`, to avoid introducing the dist-theory.
In proofs where it is useful to convert `gromovProduct` to a `dist`, users should feel free to add
the relevant lemmas to the `grind [...]` list in an application.
-/


namespace GRWTSK.Topology.MetricTopology.GromovProduct.Variantdcbe4e3cf3800a686d4b1b1fdf0828cd49d459d18843267f99c0ecd1ed506ef3

public section

namespace Metric

variable {X : Type*} [PseudoMetricSpace X] (x y z : X)

/-- The Gromov product of `y` and `z` with respect to `x`. -/
noncomputable def gromovProduct : ℝ := (dist x y + dist x z - dist y z) / 2

lemma gromovProduct_eq : gromovProduct x y z = (dist x y + dist x z - dist y z) / 2 := by rfl

lemma gromovProduct_comm : gromovProduct x y z = gromovProduct x z y := by
  grind [gromovProduct_eq, dist_comm]

grind_pattern gromovProduct_comm => gromovProduct x y z where y =/= z

@[grind! .]
lemma gromovProduct_nonneg : 0 ≤ gromovProduct x y z := by
  grind [gromovProduct_eq, dist_triangle_left y z x]

lemma gromovProduct_le_dist_left : gromovProduct x y z ≤ dist x y := by
  grind [gromovProduct_eq, dist_triangle x y z]

lemma gromovProduct_le_dist_right : gromovProduct x y z ≤ dist x z := by
  grind [gromovProduct_le_dist_left]

@[simp, grind =]
lemma gromovProduct_self_left : gromovProduct x x y = 0 := by
  simp [gromovProduct_eq]

@[simp, grind =]
lemma gromovProduct_self_right : gromovProduct x y x = 0 := by
  simp [gromovProduct_eq, dist_comm]

@[simp]
lemma gromovProduct_self : gromovProduct x y y = dist x y := by
  simp [gromovProduct_eq]

lemma gromovProduct_add_gromovProduct₁₃ : gromovProduct x y z + gromovProduct z y x = dist x z := by
  grind [gromovProduct_eq, dist_comm]

lemma gromovProduct_add_gromovProduct₁₂ : gromovProduct x y z + gromovProduct y x z = dist x y := by
  grind [gromovProduct_eq, dist_comm]

end Metric
