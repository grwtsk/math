-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.IsFixedPtOfTendstoIterate.Variant1413a3587f67df147be55d61db3b6d3455389ad8a042400aaa46f122048d052e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1413a3587f67df147be55d61db3b6d3455389ad8a042400aaa46f122048d052e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.IsFixedPtOfTendstoIterate.Variant1413a3587f67df147be55d61db3b6d3455389ad8a042400aaa46f122048d052e","mathematical_subject":"Topology.GeneralTopology","original_sha256":"1413a3587f67df147be55d61db3b6d3455389ad8a042400aaa46f122048d052e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Dynamics/FixedPoints/Topology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov, Johannes Hölzl
-/
import Mathlib.Dynamics.FixedPoints.Basic
import Mathlib.Topology.Separation.Hausdorff

/-!
# Topological properties of fixed points

Currently this file contains two lemmas:

- `isFixedPt_of_tendsto_iterate`: if `f^n(x) → y` and `f` is continuous at `y`, then `f y = y`;
- `isClosed_fixedPoints`: the set of fixed points of a continuous map is a closed set.

## TODO

fixed points, iterates
-/



namespace GRWTSK.Topology.GeneralTopology.IsFixedPtOfTendstoIterate.Variant1413a3587f67df147be55d61db3b6d3455389ad8a042400aaa46f122048d052e

variable {α : Type*} [TopologicalSpace α] [T2Space α] {f : α → α}

open Function Filter

open Topology

/-- If the iterates `f^[n] x` converge to `y` and `f` is continuous at `y`,
then `y` is a fixed point for `f`. -/
theorem isFixedPt_of_tendsto_iterate {x y : α} (hy : Tendsto (fun n => f^[n] x) atTop (𝓝 y))
    (hf : ContinuousAt f y) : IsFixedPt f y := by
  refine tendsto_nhds_unique ((tendsto_add_atTop_iff_nat 1).1 ?_) hy
  simp only [iterate_succ' f]
  exact hf.tendsto.comp hy

/-- The set of fixed points of a continuous map is a closed set. -/
theorem isClosed_fixedPoints (hf : Continuous f) : IsClosed (fixedPoints f) :=
  isClosed_eq hf continuous_id
