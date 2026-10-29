-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.GenericFactorization.Variant82188cd3da5c0611e11f2245d451ee3ffdf874372e5fba15427ad80cca7547f6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"82188cd3da5c0611e11f2245d451ee3ffdf874372e5fba15427ad80cca7547f6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.GenericFactorization.Variant82188cd3da5c0611e11f2245d451ee3ffdf874372e5fba15427ad80cca7547f6","mathematical_subject":"Algebra.Polynomials","original_sha256":"82188cd3da5c0611e11f2245d451ee3ffdf874372e5fba15427ad80cca7547f6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/24/\\/noeoueue-memory-canvas/formal/Noeoueue/Modular/ReciprocalPolynomial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Polynomial.Basic
import Mathlib.Tactic.Ring


namespace GRWTSK.Algebra.CommutativeAlgebra.GenericFactorization.Variant82188cd3da5c0611e11f2245d451ee3ffdf874372e5fba15427ad80cca7547f6

namespace Noeoueue.Modular.ReciprocalPolynomial

open Polynomial

variable {R : Type} [CommRing R]

theorem generic_factorization (alpha beta : R) :
    (X - C alpha) * (X - C beta) = X ^ 2 - C (alpha + beta) * X + C (alpha * beta) := by
  calc
    (X - C alpha) * (X - C beta) = X ^ 2 - (C alpha + C beta) * X + C alpha * C beta := by ring
    _ = X ^ 2 - C (alpha + beta) * X + C (alpha * beta) := by simp

theorem determinant_one_polynomial (alpha beta : R) (hdet : alpha * beta = 1) :
    (X - C alpha) * (X - C beta) = X ^ 2 - C (alpha + beta) * X + 1 := by
  rw [generic_factorization, hdet]
  simp

variable {K : Type} [GroupWithZero K]

theorem inverse_involution (alpha : K) : (alpha⁻¹)⁻¹ = alpha := inv_inv alpha

/-- The central-character dual remains separately typed from plain inversion. -/
def characterDual (chi alpha : K) : K := chi * alpha⁻¹

end Noeoueue.Modular.ReciprocalPolynomial
