# Complete source: GRWTSK.Algebra.Defs.Variante70d2ea236e50939cd2708ecbb1eaf85f6e7ed826bdfbd1b3edc6786d4453ff4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd6ce9ce5005c5585441081d1fd58bc15f3ac053` · SHA-256 `e70d2ea236e50939cd2708ecbb1eaf85f6e7ed826bdfbd1b3edc6786d4453ff4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs

/-!
# Integral closure as a characteristic predicate

## Main definitions

Let `R` be a `CommRing` and let `A` be an R-algebra.

* `IsIntegralClosure R A` : the characteristic predicate stating `A` is the integral closure of `R`
  in `B`, i.e. that an element of `B` is integral over `R` iff it is an element of
  (the image of) `A`.
-/

open Polynomial
section IsIntegralClosure

/-- `IsIntegralClosure A R B` is the characteristic predicate stating `A` is
the integral closure of `R` in `B`,
i.e. that an element of `B` is integral over `R` iff it is an element of (the image of) `A`.
-/
class IsIntegralClosure (A R B : Type*) [CommRing R] [CommSemiring A] [CommRing B] [Algebra R B]
  [Algebra A B] : Prop where
  algebraMap_injective' : Function.Injective (algebraMap A B)
  isIntegral_iff : ∀ {x : B}, IsIntegral R x ↔ ∃ y, algebraMap A B y = x

end IsIntegralClosure
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=afb3ab3cb67d2388645abb1ec8412cbf608aa1b0c3b4c3fca88cceead6739bc2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Defs/Variante70d2ea236e50939cd2708ecbb1eaf85f6e7ed826bdfbd1b3edc6786d4453ff4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
