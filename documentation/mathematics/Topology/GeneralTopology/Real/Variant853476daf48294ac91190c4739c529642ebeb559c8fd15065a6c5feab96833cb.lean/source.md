# Complete source: GRWTSK.Topology.GeneralTopology.Real.Variant853476daf48294ac91190c4739c529642ebeb559c8fd15065a6c5feab96833cb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `160ff95bcac995f96c9f9802182eb9b25f6d7db8` · SHA-256 `853476daf48294ac91190c4739c529642ebeb559c8fd15065a6c5feab96833cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
module

public import Mathlib.Basic.NNReal.Star
public import Mathlib.Topology.Algebra.Star
public import Mathlib.Topology.MetricSpace.Pseudo.Constructions

/-!
# Topological properties of conjugation on ℝ
-/

public section

assert_not_exists IsTopologicalRing UniformContinuousConstSMul UniformOnFun

noncomputable section

instance : ContinuousStar ℝ := ⟨continuous_id⟩

namespace NNReal

instance : ContinuousStar ℝ≥0 where
  continuous_star := continuous_id

end NNReal
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d3cf065b373c764f531fecaa236d8485842a960374e09ddeea747b3fb81c504b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Real/Variant853476daf48294ac91190c4739c529642ebeb559c8fd15065a6c5feab96833cb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
