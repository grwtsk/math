# Descent Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0cafeef8ee5c2039da7716755c69338c31f3d0e0` · SHA-256 `24cb027e07b66fdc0a15dc39c8702a92684cd7df66cfe81cea985b3f62d24629`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
module

public import Mathlib.RingTheory.Etale.Descent

open TensorProduct

namespace Algebra

/-
The lemma `Algebra.FormallySmooth.of_formallySmooth_tensorProduct_of_faithfullyFlat` has an
additional `Algebra.FinitePresentation` assumption, because the proof uses that a flat module
of finite presentation is projective and the former descends. This also holds without
the finite presentation assumption, but requires showing that projectivity descends
along faithfully flat base change, which is due to Raynaud and Gruson
(see https://stacks.math.columbia.edu/tag/058B).
-/

/-- Formally smooth algebras descend along faithfully flat base change. See the TODO
in the module docstring of `Mathlib/RingTheory/Etale/Descent.lean`. -/
proof_wanted FormallySmooth.of_formallySmooth_tensorProduct_of_faithfullyFlat
    {R S : Type*} [CommRing R] [CommRing S] [Algebra R S]
    (T : Type*) [CommRing T] [Algebra R T] [Module.FaithfullyFlat R T]
    [FormallySmooth T (T ⊗[R] S)] :
    FormallySmooth R S

end Algebra
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc270df7de8e2f680874b107de5579e8e90b95dc9d50b8cf1768b81e3234a7fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Descent/Variant24cb027e07b66fdc0a15dc39c8702a92684cd7df66cfe81cea985b3f62d24629.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
