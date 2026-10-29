# Complete source: GRWTSK.Algebra.LinearAlgebra.Basic.Variant15aec5bfdd8524ecc59bcf88be6801c1a7b64283da2bb80f034fe8f7fce41d6b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65427af99b501eb4ce0d0215e568f95123b2f40a` · SHA-256 `15aec5bfdd8524ecc59bcf88be6801c1a7b64283da2bb80f034fe8f7fce41d6b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
module

public import Mathlib.RingTheory.SimpleModule.Basic

variable {R S : Type*} [Ring R] [Ring S]
  {M' : Type*} [AddCommGroup M'] [Module R M'] {N'} [AddCommGroup N'] [Module S N']
  {σ : R →+* S} (l : M' →ₛₗ[σ] N')

-- TODO: generalize Submodule.equivMapOfInjective from InvPair to RingHomSurjective
proof_wanted LinearMap.isSemisimpleModule_of_injective (_ : Function.Injective l)
    [IsSemisimpleModule S N'] : IsSemisimpleModule R M'

--TODO: generalize LinearMap.quotKerEquivOfSurjective to SemilinearMaps + RingHomSurjective
proof_wanted LinearMap.isSemisimpleModule_of_surjective (_ : Function.Surjective l)
    [IsSemisimpleModule R M'] : IsSemisimpleModule S N'
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=048ba918b20d42bfc6a283f95ca9d0687c52ec51f83f9204d1805488aff233fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant15aec5bfdd8524ecc59bcf88be6801c1a7b64283da2bb80f034fe8f7fce41d6b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
