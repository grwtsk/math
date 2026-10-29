# Complete source: GRWTSK.Algebra.Defs.Variant8c4d68838eddd91274a009bc943dfb46268fa7a0ad539b5f8625ef31abeba815

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58e184777c8f9e6caac059f3f072d0c4651b79f5` · SHA-256 `8c4d68838eddd91274a009bc943dfb46268fa7a0ad539b5f8625ef31abeba815`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs

/-!
# Integral algebras

## Main definitions

Let `R` be a `CommRing` and let `A` be an R-algebra.

* `Algebra.IsIntegral R A` : An algebra is integral if every element of the extension is integral
  over the base ring.
-/


open Polynomial Submodule

section Ring

variable {R S A : Type*}
variable [CommRing R] [Ring A] [Ring S] (f : R →+* S)

variable [Algebra R A] (R)

variable (A)

/-- An algebra is integral if every element of the extension is integral over the base ring. -/
protected class Algebra.IsIntegral : Prop where
  isIntegral : ∀ x : A, IsIntegral R x

variable {R A}

lemma Algebra.isIntegral_def : Algebra.IsIntegral R A ↔ ∀ x : A, IsIntegral R x :=
  ⟨fun ⟨h⟩ ↦ h, fun h ↦ ⟨h⟩⟩

end Ring
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=05f02597ece24eaa5df4dba8382d7de1cb43dc7c9566e5c175c65c9508f6badc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Defs/Variant8c4d68838eddd91274a009bc943dfb46268fa7a0ad539b5f8625ef31abeba815.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
