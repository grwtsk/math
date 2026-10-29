-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.PderivOfNat.Variant3d57839414cab4bde4f9d82c6bdd7330efea5a9c3ed607e89728a5b8e1aaf57a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3d57839414cab4bde4f9d82c6bdd7330efea5a9c3ed607e89728a5b8e1aaf57a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.PderivOfNat.Variant3d57839414cab4bde4f9d82c6bdd7330efea5a9c3ed607e89728a5b8e1aaf57a","mathematical_subject":"Algebra.Polynomials","original_sha256":"3d57839414cab4bde4f9d82c6bdd7330efea5a9c3ed607e89728a5b8e1aaf57a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/3d/3d57839414cab4bde4f9d82c6bdd7330efea5a9c3ed607e89728a5b8e1aaf57a--DerivativeAPICheck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.MvPolynomial.PDeriv
import Mathlib.Tactic


namespace GRWTSK.Algebra.CommutativeAlgebra.PderivOfNat.Variant3d57839414cab4bde4f9d82c6bdd7330efea5a9c3ed607e89728a5b8e1aaf57a

noncomputable section

open MvPolynomial

private theorem pderiv_ofNat {R : Type*} [CommRing R] (i : Fin 3) (n : ℕ)
    [n.AtLeastTwo] : pderiv i (ofNat(n) : MvPolynomial (Fin 3) R) = 0 :=
  Derivation.map_natCast _ n

example {R : Type*} [CommRing R] (x : Fin 3 → R) :
    eval x (pderiv (0 : Fin 3) ((X 0 + 1) ^ 3 * X 2 + 4 : MvPolynomial (Fin 3) R)) =
      3 * (x 0 + 1) ^ 2 * x 2 := by
  simp [pderiv_ofNat]
  ring
