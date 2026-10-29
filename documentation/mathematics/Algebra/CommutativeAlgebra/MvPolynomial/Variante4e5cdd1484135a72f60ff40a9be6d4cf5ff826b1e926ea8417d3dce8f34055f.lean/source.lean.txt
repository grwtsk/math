-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.MvPolynomialContinuousEval.Variant3a228dd0e0813d269d808444b26210183f6b26b2a8c2d605d25c41c1bff9c467","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3a228dd0e0813d269d808444b26210183f6b26b2a8c2d605d25c41c1bff9c467","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.MvPolynomialContinuousEval.Variant3a228dd0e0813d269d808444b26210183f6b26b2a8c2d605d25c41c1bff9c467","mathematical_subject":"Algebra.Polynomials","original_sha256":"3a228dd0e0813d269d808444b26210183f6b26b2a8c2d605d25c41c1bff9c467","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/MvPolynomial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Ruben Van de Velde. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Ruben Van de Velde
-/

import Mathlib.Algebra.MvPolynomial.Eval
import Mathlib.Topology.Algebra.Ring.Basic

/-!
# Multivariate polynomials and continuity

In this file we prove the following lemma:

* `MvPolynomial.continuous_eval`: `MvPolynomial.eval` is continuous

## Tags

multivariate polynomial, continuity
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.MvPolynomialContinuousEval.Variant3a228dd0e0813d269d808444b26210183f6b26b2a8c2d605d25c41c1bff9c467

variable {X σ : Type*} [TopologicalSpace X] [CommSemiring X] [IsTopologicalSemiring X]
  (p : MvPolynomial σ X)

theorem MvPolynomial.continuous_eval : Continuous fun x ↦ eval x p := by
  continuity
