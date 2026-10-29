# Complete source: GRWTSK.Topology.FiniteDimensional.Variant2faab6e41f116d5c83b1abb1f68217c5c6d801fb05b8c1369bd3454841bb8e8b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `208af77f6910552e0c75b7f4f5650b0acb0ddafb` · SHA-256 `2faab6e41f116d5c83b1abb1f68217c5c6d801fb05b8c1369bd3454841bb8e8b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Topology.Algebra.SeparationQuotient.Basic
import Mathlib.RingTheory.Finiteness.Basic

/-!
# Separation quotient is a finite module

In this file we show that the separation quotient of a finite module is a finite module.
-/

/-- The separation quotient of a finite module is a finite module. -/
instance SeparationQuotient.instModuleFinite
    {R M : Type*} [Semiring R] [AddCommMonoid M] [Module R M] [Module.Finite R M]
    [TopologicalSpace M] [ContinuousAdd M] [ContinuousConstSMul R M] :
    Module.Finite R (SeparationQuotient M) :=
  Module.Finite.of_surjective (mkCLM R M).toLinearMap Quotient.mk_surjective
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=716baed4b0c67097e487e65f059964827fd2cca9c51741ae5d5b7416f2260b4d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/FiniteDimensional/Variant2faab6e41f116d5c83b1abb1f68217c5c6d801fb05b8c1369bd3454841bb8e8b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
