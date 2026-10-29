-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteEulerFactor.Variant599af6b0b26eac7f30c40d4771510b2926a42fe6329f4bc1449766f1668c7b79","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"599af6b0b26eac7f30c40d4771510b2926a42fe6329f4bc1449766f1668c7b79","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FiniteEulerFactor.Variant599af6b0b26eac7f30c40d4771510b2926a42fe6329f4bc1449766f1668c7b79","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"599af6b0b26eac7f30c40d4771510b2926a42fe6329f4bc1449766f1668c7b79","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/NumberTheory/FiniteEulerProduct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.NumberTheory.Euclid
import Mathlib.Algebra.BigOperators.Finprod

/-!
# Folder.Rebuild.NumberTheory.FiniteEulerProduct

Finite Euler products as algebraic products of finite sums.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteEulerFactor.Variant599af6b0b26eac7f30c40d4771510b2926a42fe6329f4bc1449766f1668c7b79

namespace Folder
namespace Rebuild
namespace NumberTheory

open scoped BigOperators

def finiteEulerFactor
    [CommSemiring R]
    (p N : Nat)
    (x : Nat → R) : R :=
  ∑ k ∈ Finset.range (N + 1), x (p ^ k)

def finiteEulerProduct
    [CommSemiring R]
    (S : Finset Nat)
    (N : Nat → Nat)
    (x : Nat → R) : R :=
  ∏ p ∈ S, finiteEulerFactor p (N p) x

def exponentVectors
    (S : Finset Nat)
    (N : Nat → Nat) :
    Finset ((p : Nat) → p ∈ S → Nat) :=
  S.pi fun p => Finset.range (N p + 1)

/--
Finite products of finite Euler factors expand as a finite sum over exponent
vectors. This is an algebraic precursor only; it contains no convergence
claim.
-/
theorem finite_euler_product_expands_as_sum_over_exponents
    [CommSemiring R]
    (S : Finset Nat)
    (hS : ∀ p ∈ S, Nat.Prime p)
    (N : Nat → Nat)
    (x : Nat → R)
    (_hmul : ∀ a b, Nat.Coprime a b → x (a * b) = x a * x b) :
    finiteEulerProduct S N x =
      ∑ e ∈ exponentVectors S N,
        ∏ p ∈ S.attach, x ((p : Nat) ^ e p p.property) := by
  have _hS_checked := hS
  unfold finiteEulerProduct finiteEulerFactor exponentVectors
  simpa using
    (Finset.prod_sum S
      (fun p => Finset.range (N p + 1))
      (fun p k => x (p ^ k)))

end NumberTheory
end Rebuild
end Folder
