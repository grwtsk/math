# Complete source: GRWTSK.NumberTheory.Manifold.Variantff344ac851f88815eccfe3f7876b9d8cd1ff25f6453bb50e8e4094ffc3c2e1b4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be0610ef074c3bb2e92120e48c6c76b6cd814d91` · SHA-256 `ff344ac851f88815eccfe3f7876b9d8cd1ff25f6453bb50e8e4094ffc3c2e1b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 David Loeffler. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Loeffler
-/
import Mathlib.Analysis.Complex.UpperHalfPlane.Manifold
import Mathlib.Geometry.Manifold.MFDeriv.FDeriv
import Mathlib.NumberTheory.ModularForms.JacobiTheta.OneVariable

/-!
# Manifold differentiability of the Jacobi theta function

In this file we reformulate differentiability of the Jacobi theta function in terms of manifold
differentiability.

## TODO

Prove smoothness (in terms of `Smooth`).
-/


open scoped UpperHalfPlane Manifold

theorem mdifferentiable_jacobiTheta : MDifferentiable 𝓘(ℂ) 𝓘(ℂ) (jacobiTheta ∘ (↑) : ℍ → ℂ) :=
  fun τ => (differentiableAt_jacobiTheta τ.2).mdifferentiableAt.comp τ τ.mdifferentiable_coe
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a55dd5084f9ea9234588227f0dfe9e7ec75458546f6a4f1d841d5c5a4bb6f981 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Manifold/Variantff344ac851f88815eccfe3f7876b9d8cd1ff25f6453bb50e8e4094ffc3c2e1b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
