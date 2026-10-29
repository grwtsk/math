-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Northcott.Variantc9c93748bf110cfe1bd467cade437139722ecdaf74d7540143db919009d037a7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c9c93748bf110cfe1bd467cade437139722ecdaf74d7540143db919009d037a7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Northcott.Variantc9c93748bf110cfe1bd467cade437139722ecdaf74d7540143db919009d037a7","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"c9c93748bf110cfe1bd467cade437139722ecdaf74d7540143db919009d037a7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/Ideal/Quotient/HasFiniteQuotients/Norm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Thomas Browning. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Thomas Browning
-/
module

public import Mathlib.Order.Northcott
public import Mathlib.RingTheory.Ideal.Norm.AbsNorm

/-! # Northcott property for the norm of ideals in rings with finite quotients

For a ring with finite quotients, there are only finitely many ideals of bounded norm, see
`Ring.HasFiniteQuotients.finite_cardQuot_le`. This file records the resulting `Northcott`
instances.

-/


namespace GRWTSK.Algebra.Northcott.Variantc9c93748bf110cfe1bd467cade437139722ecdaf74d7540143db919009d037a7

public section

namespace Ring.HasFiniteQuotients

variable {R : Type*} [CommRing R] [HasFiniteQuotients R]

instance : Northcott fun p : Ideal R ↦ p.cardQuot :=
  ⟨Ring.HasFiniteQuotients.finite_cardQuot_le⟩

instance [IsDedekindDomain R] [Infinite R] :
    Northcott fun p : IsDedekindDomain.HeightOneSpectrum R ↦ p.asIdeal.absNorm :=
  ⟨Ring.HasFiniteQuotients.finite_absNorm_heightOneSpectrum_le⟩

end Ring.HasFiniteQuotients
