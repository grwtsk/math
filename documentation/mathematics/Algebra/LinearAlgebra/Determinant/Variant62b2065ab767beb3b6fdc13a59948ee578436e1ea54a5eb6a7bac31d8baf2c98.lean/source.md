# Complete source: GRWTSK.Algebra.LinearAlgebra.Determinant.Variant62b2065ab767beb3b6fdc13a59948ee578436e1ea54a5eb6a7bac31d8baf2c98

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `678e3c2b8a8c23ef8dafda1c92aa495ae8069eb4` · SHA-256 `62b2065ab767beb3b6fdc13a59948ee578436e1ea54a5eb6a7bac31d8baf2c98`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen, Alex J. Best
-/
import Mathlib.LinearAlgebra.Determinant
import Mathlib.LinearAlgebra.FreeModule.Finite.Basic

/-!
# Determinants in free (finite) modules

Quite a lot of our results on determinants (that you might know in vector spaces) will work for all
free (finite) modules over any commutative ring.

## Main results

* `LinearMap.det_zero''`: The determinant of the constant zero map is zero, in a finite free
nontrivial module.
-/


@[simp high]
theorem LinearMap.det_zero'' {R M : Type*} [CommRing R] [AddCommGroup M] [Module R M]
    [Module.Free R M] [Module.Finite R M] [Nontrivial M] : LinearMap.det (0 : M →ₗ[R] M) = 0 := by
  letI : Nonempty (Module.Free.ChooseBasisIndex R M) := (Module.Free.chooseBasis R M).index_nonempty
  nontriviality R
  exact LinearMap.det_zero' (Module.Free.chooseBasis R M)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1a2ff575a5fbe11bbe8539e638f9bc5769d04c3f33a2b3e061157651989211b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Determinant/Variant62b2065ab767beb3b6fdc13a59948ee578436e1ea54a5eb6a7bac31d8baf2c98.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
