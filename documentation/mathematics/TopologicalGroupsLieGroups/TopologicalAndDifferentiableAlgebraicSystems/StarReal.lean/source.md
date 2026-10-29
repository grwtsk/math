# Star Real — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f82312106d2a8aac5f44a5853b50f2887c61f524` · SHA-256 `384ff185f80e96845793bbcb3a46221bbc9f8e84d8cb1af1f466390db613f18f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Data.NNReal.Star
import Mathlib.Topology.Algebra.Star
import Mathlib.Topology.MetricSpace.Pseudo.Constructions

/-!
# Topological properties of conjugation on ℝ
-/

assert_not_exists IsTopologicalRing UniformContinuousConstSMul UniformOnFun

noncomputable section

instance : ContinuousStar ℝ := ⟨continuous_id⟩

namespace NNReal

instance : ContinuousStar ℝ≥0 where
  continuous_star := continuous_id

end NNReal
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f250f3e0982d707c0f5f8703d7e1984a70277a38cd8bc51b9940cb291d2b5867 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Real/Variant384ff185f80e96845793bbcb3a46221bbc9f8e84d8cb1af1f466390db613f18f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
