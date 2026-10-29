# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteEulerProduct.Variant599af6b0b26eac7f30c40d4771510b2926a42fe6329f4bc1449766f1668c7b79

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `44c4805ce569c771de548ce2d2c10bc0bbe6c066` · SHA-256 `599af6b0b26eac7f30c40d4771510b2926a42fe6329f4bc1449766f1668c7b79`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.NumberTheory.Euclid
import Mathlib.Algebra.BigOperators.Finprod

/-!
# Folder.Rebuild.NumberTheory.FiniteEulerProduct

Finite Euler products as algebraic products of finite sums.
-/

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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=35fdb941a3cb8db935b6f496c7c1f303d1315bc003635f65e992182c2a4dcfe0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteEulerProduct/Variant599af6b0b26eac7f30c40d4771510b2926a42fe6329f4bc1449766f1668c7b79.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
