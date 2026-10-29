-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LightProfiniteToLightCondSet.Variant1be1a6fc628cf1886c8fb363de6afafdff050888d91690f4eaab55805d943ffb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1be1a6fc628cf1886c8fb363de6afafdff050888d91690f4eaab55805d943ffb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.LightProfiniteToLightCondSet.Variant1be1a6fc628cf1886c8fb363de6afafdff050888d91690f4eaab55805d943ffb","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"1be1a6fc628cf1886c8fb363de6afafdff050888d91690f4eaab55805d943ffb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Condensed/Light/Functors.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.Sites.Coherent.CoherentSheaves
import Mathlib.Condensed.Light.Basic

/-!
# Functors from categories of topological spaces to light condensed sets

This file defines the embedding of the test objects (light profinite sets) into light condensed
sets.

## Main definitions

* `lightProfiniteToLightCondSet : LightProfinite.{u} ⥤ LightCondSet.{u}`
  is the yoneda presheaf functor.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LightProfiniteToLightCondSet.Variant1be1a6fc628cf1886c8fb363de6afafdff050888d91690f4eaab55805d943ffb

universe u v

open CategoryTheory Limits

/-- The functor from `LightProfinite.{u}` to `LightCondSet.{u}` given by the Yoneda sheaf. -/
def lightProfiniteToLightCondSet : LightProfinite.{u} ⥤ LightCondSet.{u} :=
  (coherentTopology LightProfinite).yoneda

/-- Dot notation for the value of `lightProfiniteToLightCondSet`. -/
abbrev LightProfinite.toCondensed (S : LightProfinite.{u}) : LightCondSet.{u} :=
  lightProfiniteToLightCondSet.obj S

/-- `lightProfiniteToLightCondSet` is fully faithful. -/
abbrev lightProfiniteToLightCondSetFullyFaithful :
    lightProfiniteToLightCondSet.FullyFaithful :=
  (coherentTopology LightProfinite).yonedaFullyFaithful

instance : lightProfiniteToLightCondSet.Full :=
  inferInstanceAs ((coherentTopology LightProfinite).yoneda).Full

instance : lightProfiniteToLightCondSet.Faithful :=
  inferInstanceAs ((coherentTopology LightProfinite).yoneda).Faithful
