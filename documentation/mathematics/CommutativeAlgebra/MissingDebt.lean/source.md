# Complete source: GRWTSK.NumberTheory.Moebius.FiniteEulerProduct.Checks.Negative.MissingDebt

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e09766ed11962506392cb714510b2e8fc0ac17ba` · SHA-256 `f557f6427e8e21b0d922d3fec460f4101ffd4dc2f82d98d1fe42b9d5ee3129b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.FiniteEulerProduct
open scoped BigOperators ArithmeticFunction.Moebius
open GRWTSK.NumberTheory.Moebius
example {R : Type*} [CommRing R] (f : ArithmeticFunction R)
    (hf : f.IsMultiplicative) (N : ℕ) :
    (∏ p ∈ Nat.primesLE N, (1-f p)) =
      ∑ n ∈ Finset.Icc 1 N, (μ n : R) * f n :=
  finite_euler_product_cutoff f hf N
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ea614962e3abc785e1ec71b74a5eca9f18e2b594c23d2c2d4c0566b630cd32eb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/FiniteEulerProduct/Checks/Negative/MissingDebt.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
