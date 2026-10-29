-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Submonoid.Variantd6fda891f1e0cfdac590e72d0df3f8894cacbe0dd24ae8b3123db98031b4f54d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d6fda891f1e0cfdac590e72d0df3f8894cacbe0dd24ae8b3123db98031b4f54d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Submonoid.Variantd6fda891f1e0cfdac590e72d0df3f8894cacbe0dd24ae8b3123db98031b4f54d","mathematical_subject":"Algebra.Groups","original_sha256":"d6fda891f1e0cfdac590e72d0df3f8894cacbe0dd24ae8b3123db98031b4f54d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Order/Archimedean/Submonoid.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yakov Pechersky. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yakov Pechersky
-/
module

public import Mathlib.Algebra.Group.Submonoid.Defs
public import Mathlib.Algebra.Order.Archimedean.Defs
public import Mathlib.Data.Rat.Floor

/-!
# Submonoids of archimedean monoids

This file defines the instances that show that the (mul)archimedean property is retained in a
submonoid of the ambient group.

## Main statements

* `SubmonoidClass.instMulArchimedean`: the submonoid (and similar subobjects) of a mul-archimedean
  group retains the mul-archimedean property when restricted to the submonoid.
* `AddSubmonoidClass.instArchimedean`: the additive submonoid (and similar subobjects) of an
  archimedean additive group retains the archimedean property when restricted to the additive
  submonoid.
-/


namespace GRWTSK.Algebra.GroupTheory.Submonoid.Variantd6fda891f1e0cfdac590e72d0df3f8894cacbe0dd24ae8b3123db98031b4f54d

public section

assert_not_exists Finset

@[to_additive]
instance SubmonoidClass.instMulArchimedean {M S : Type*} [SetLike S M]
    [CommMonoid M] [PartialOrder M]
    [SubmonoidClass S M] [MulArchimedean M] (H : S) : MulArchimedean H := by
  constructor
  rintro x _
  simp only [← Subtype.coe_lt_coe, OneMemClass.coe_one]
  exact MulArchimedean.arch x.val
