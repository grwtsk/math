# Complete source: GRWTSK.Algebra.LinearAlgebra.AtPrime.Variant6925a7d5f9da8e55b3581c60be5ef61858eaec5f5f6b9ffb06fd8b77da6873bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `791f3c0ccd6da7faa2d9bb26a744d63319b8875f` · SHA-256 `6925a7d5f9da8e55b3581c60be5ef61858eaec5f5f6b9ffb06fd8b77da6873bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Yongle Hu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yongle Hu
-/
import Mathlib.Algebra.Module.LocalizedModule.Basic
import Mathlib.RingTheory.Ideal.Prime

/-!
# Localizations of modules at the complement of a prime ideal
-/

/-- Given a prime ideal `P` and `f : M →ₗ[R] M'`, `IsLocalizedModule.AtPrime P f` states that `M'`
  is isomorphic to the localization of `M` at the complement of `P`. -/
protected abbrev IsLocalizedModule.AtPrime {R M M' : Type*} [CommSemiring R] (P : Ideal R)
    [P.IsPrime] [AddCommMonoid M] [AddCommMonoid M'] [Module R M] [Module R M'] (f : M →ₗ[R] M') :=
  IsLocalizedModule P.primeCompl f

/-- Given a prime ideal `P`, `LocalizedModule.AtPrime P M` is a localization of `M`
  at the complement of `P`. -/
protected abbrev LocalizedModule.AtPrime {R : Type*} [CommSemiring R] (P : Ideal R) [P.IsPrime]
    (M : Type*) [AddCommMonoid M] [Module R M] :=
  LocalizedModule P.primeCompl M
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed6cfee887120c551e0b705ad2b7ef41c43b612b41d8390d4a94d457ac46bfbf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/AtPrime/Variant6925a7d5f9da8e55b3581c60be5ef61858eaec5f5f6b9ffb06fd8b77da6873bc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
