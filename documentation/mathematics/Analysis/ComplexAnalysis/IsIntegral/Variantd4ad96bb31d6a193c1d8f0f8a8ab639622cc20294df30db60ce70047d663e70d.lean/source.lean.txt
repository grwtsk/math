-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.ComplexAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ComplexAnalysis.IsIntegralI.Variantd16847dd96e57d1b6667434ebab66ef7c45e07fca5f136b875dafdbd526a8680","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d16847dd96e57d1b6667434ebab66ef7c45e07fca5f136b875dafdbd526a8680","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ComplexAnalysis.SourceCorpus.IsIntegralI.Variantd16847dd96e57d1b6667434ebab66ef7c45e07fca5f136b875dafdbd526a8680","mathematical_subject":"Analysis.ComplexAnalysis","original_sha256":"d16847dd96e57d1b6667434ebab66ef7c45e07fca5f136b875dafdbd526a8680","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Complex/IsIntegral.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yuyang Zhao. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yuyang Zhao, Snir Broshi
-/
module

public import Mathlib.Basic.Complex.Basic
public import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs

import Mathlib.Algebra.Polynomial.Monic

/-!
# Integral elements of ℂ

This file proves that `Complex.I` is integral over any commutative ring `R` when `ℂ` is an
`R`-algebra.
-/


namespace GRWTSK.Analysis.ComplexAnalysis.IsIntegralI.Variantd16847dd96e57d1b6667434ebab66ef7c45e07fca5f136b875dafdbd526a8680

public section

open Polynomial

namespace Complex

theorem isIntegral_I (R : Type*) [CommRing R] [Algebra R ℂ] : IsIntegral R I :=
  ⟨X ^ 2 + C 1, monic_X_pow_add_C _ two_ne_zero, by simp⟩

@[deprecated (since := "2026-08-06")] alias isIntegral_int_I := isIntegral_I

@[deprecated (since := "2026-08-06")] alias isIntegral_rat_I := isIntegral_I

end Complex
