# Complete source: GRWTSK.Algebra.CommutativeAlgebra.3d57839414cab4bde4f9d82c6bdd7330efea5a9c3ed607e89728a5b8e1aaf57aDerivativeAPIChe.Variant3d57839414cab4bde4f9d82c6bdd7330efea5a9c3ed607e89728a5b8e1aaf57a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05a5373e17cc7a39260e7a285305269849da19f9` · SHA-256 `3d57839414cab4bde4f9d82c6bdd7330efea5a9c3ed607e89728a5b8e1aaf57a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.MvPolynomial.PDeriv
import Mathlib.Tactic

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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f3fdb2f8b48570747ed5d620bea904bf5dbe0235cb6d65156faac448d79f93c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/3d57839414cab4bde4f9d82c6bdd7330efea5a9c3ed607e89728a5b8e1aaf57aDerivativeAPIChe/Variant3d57839414cab4bde4f9d82c6bdd7330efea5a9c3ed607e89728a5b8e1aaf57a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
