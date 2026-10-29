-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Star.Variant56468583e65fcf84d68d6c20b1d6be7c63d04c9ef263abbb37f31fbb4541aa1d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"56468583e65fcf84d68d6c20b1d6be7c63d04c9ef263abbb37f31fbb4541aa1d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Star.Variant56468583e65fcf84d68d6c20b1d6be7c63d04c9ef263abbb37f31fbb4541aa1d","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"56468583e65fcf84d68d6c20b1d6be7c63d04c9ef263abbb37f31fbb4541aa1d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Basic/Real/Star.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Floris van Doorn, Yury Kudryashov
-/
module

public import Mathlib.Algebra.Star.Basic
public import Mathlib.Basic.Real.Basic

/-!
# The real numbers are a \*-ring, with the trivial \*-structure
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Star.Variant56468583e65fcf84d68d6c20b1d6be7c63d04c9ef263abbb37f31fbb4541aa1d

public section

/-- The real numbers are a \*-ring, with the trivial \*-structure. -/
instance : StarRing ℝ :=
  starRingOfComm

instance : TrivialStar ℝ :=
  ⟨fun _ => rfl⟩
