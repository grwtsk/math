-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Infinite.Variant606fac4e4cd5e4b30d8678e15c418a45ae201b672262de3afa8d131a05f95cbb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"606fac4e4cd5e4b30d8678e15c418a45ae201b672262de3afa8d131a05f95cbb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Infinite.Variant606fac4e4cd5e4b30d8678e15c418a45ae201b672262de3afa8d131a05f95cbb","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"606fac4e4cd5e4b30d8678e15c418a45ae201b672262de3afa8d131a05f95cbb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Rat/Denumerable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes
-/
module

public import Mathlib.Algebra.CharZero.Infinite
public import Mathlib.Algebra.Ring.Rat
public import Mathlib.Basic.Denumerable
public import Mathlib.Data.Rat.Encodable

/-!
# Denumerability of ℚ

This file proves that ℚ is denumerable.

The fact that ℚ has cardinality ℵ₀ is proved in `Mathlib/Data/Rat/Cardinal.lean`
-/


namespace GRWTSK.Algebra.Infinite.Variant606fac4e4cd5e4b30d8678e15c418a45ae201b672262de3afa8d131a05f95cbb

public section

assert_not_exists Module Field

namespace Rat

open Denumerable

/-- **Denumerability of the Rational Numbers** -/
instance instDenumerable : Denumerable ℚ := ofEncodableOfInfinite ℚ

end Rat
