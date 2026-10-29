# Direct Sum Basis — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `92ff32c19f4f71e250f4dfd21ddada0697a5241a` · SHA-256 `b2fc01a18e81d3c2ac74518fcda68a9cb2eb6498398b1a012b3822089fca2ca0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Riccardo Brasca. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Riccardo Brasca
-/
import Mathlib.Algebra.DirectSum.Module
import Mathlib.LinearAlgebra.Finsupp.VectorSpace

/-!
# Bases for direct sum of modules

This file defines a `Module.Free` instance for the direct sum of modules.

## Implementation notes

Currently, to get a basis on `⨁ i, M i` from a basis on each `M i`, use `DFinsupp.basis`
(using that the types are defeq).
-/

open DirectSum

section Semiring

variable (R : Type*) [Semiring R] {ι : Type*} (M : ι → Type*) [∀ i : ι, AddCommMonoid (M i)]
variable [∀ i : ι, Module R (M i)]

instance Module.Free.directSum [∀ i : ι, Module.Free R (M i)] : Module.Free R (⨁ i, M i) :=
  Module.Free.dfinsupp R M

end Semiring
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd078542f4c209e915801375bade279df27dd5c8b6359d9f47ad0e611f2a6e6e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basis/Variantb2fc01a18e81d3c2ac74518fcda68a9cb2eb6498398b1a012b3822089fca2ca0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
