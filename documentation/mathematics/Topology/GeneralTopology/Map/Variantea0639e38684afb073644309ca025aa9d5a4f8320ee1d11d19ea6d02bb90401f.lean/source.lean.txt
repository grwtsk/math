-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ComapAtTop.Variant1a123b3d5a45228388661c9b7084bc63ff53e814807683dc6877bd08e6b7efdd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1a123b3d5a45228388661c9b7084bc63ff53e814807683dc6877bd08e6b7efdd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ComapAtTop.Variant1a123b3d5a45228388661c9b7084bc63ff53e814807683dc6877bd08e6b7efdd","mathematical_subject":"Topology.GeneralTopology","original_sha256":"1a123b3d5a45228388661c9b7084bc63ff53e814807683dc6877bd08e6b7efdd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/Filter/AtTopBot/Map.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Jeremy Avigad, Yury Kudryashov, Patrick Massot
-/
module

public import Mathlib.Order.Filter.AtTopBot.Defs
public import Mathlib.Order.Filter.Map
public import Mathlib.Order.Filter.Tendsto
public import Mathlib.Order.Interval.Set.OrderIso

/-!
# Map and comap of `Filter.atTop` and `Filter.atBot`
-/


namespace GRWTSK.Topology.GeneralTopology.ComapAtTop.Variant1a123b3d5a45228388661c9b7084bc63ff53e814807683dc6877bd08e6b7efdd

public section

assert_not_exists Finset

variable {α β γ : Type*}

open Set

namespace OrderIso

open Filter

variable [Preorder α] [Preorder β]

@[to_dual (attr := simp)]
theorem comap_atTop (e : α ≃o β) : comap e atTop = atTop := by
  simp [atTop, ← e.surjective.iInf_comp]

@[to_dual (attr := simp)]
theorem map_atTop (e : α ≃o β) : map (e : α → β) atTop = atTop := by
  rw [← e.comap_atTop, map_comap_of_surjective e.surjective]

@[to_dual]
theorem tendsto_atTop (e : α ≃o β) : Tendsto e atTop atTop :=
  e.map_atTop.le

@[to_dual (attr := simp)]
theorem tendsto_atTop_iff {l : Filter γ} {f : γ → α} (e : α ≃o β) :
    Tendsto (fun x => e (f x)) l atTop ↔ Tendsto f l atTop := by
  rw [← e.comap_atTop, tendsto_comap_iff, Function.comp_def]

end OrderIso
