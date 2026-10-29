-- corpus-organization-transform:v1
-- Mathematical subject: Geometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.ConformalPregroupoid.Variant3e7877cdfc1dc85e7275822fba955debecda768263e150ee3523d536f3afe457","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3e7877cdfc1dc85e7275822fba955debecda768263e150ee3523d536f3afe457","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ConformalPregroupoid.Variant3e7877cdfc1dc85e7275822fba955debecda768263e150ee3523d536f3afe457","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"3e7877cdfc1dc85e7275822fba955debecda768263e150ee3523d536f3afe457","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Geometry/Manifold/ConformalGroupoid.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yourong Zang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yourong Zang
-/
import Mathlib.Analysis.Calculus.Conformal.NormedSpace
import Mathlib.Geometry.Manifold.ChartedSpace

/-!
# Conformal Groupoid

In this file we define the groupoid of conformal maps on normed spaces.

## Main definitions

* `conformalGroupoid`: the groupoid of conformal partial homeomorphisms.

## Tags

conformal, groupoid
-/



namespace GRWTSK.Geometry.ConformalPregroupoid.Variant3e7877cdfc1dc85e7275822fba955debecda768263e150ee3523d536f3afe457

variable {X : Type*} [NormedAddCommGroup X] [NormedSpace ℝ X]

/-- The pregroupoid of conformal maps. -/
def conformalPregroupoid : Pregroupoid X where
  property f u := ∀ x, x ∈ u → ConformalAt f x
  comp {f _} _ _ hf hg _ _ _ x hx := (hg (f x) hx.2).comp x (hf x hx.1)
  id_mem x _ := conformalAt_id x
  locality _ h x hx :=
    let ⟨_, _, h₂, h₃⟩ := h x hx
    h₃ x ⟨hx, h₂⟩
  congr hu h hf x hx := (hf x hx).congr hx hu h

/-- The groupoid of conformal maps. -/
def conformalGroupoid : StructureGroupoid X :=
  conformalPregroupoid.groupoid
