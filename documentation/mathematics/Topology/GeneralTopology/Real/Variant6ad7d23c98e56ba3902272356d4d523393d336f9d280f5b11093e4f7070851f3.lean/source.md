# Complete source: GRWTSK.Topology.GeneralTopology.Real.Variant6ad7d23c98e56ba3902272356d4d523393d336f9d280f5b11093e4f7070851f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd271dabdcefe9d8744be3448ad9a3d48097c577` · SHA-256 `6ad7d23c98e56ba3902272356d4d523393d336f9d280f5b11093e4f7070851f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Topology.Metrizable.Basic
import Mathlib.Topology.Order.MonotoneContinuity
import Mathlib.Topology.Order.Real

/-!
# `ENNReal` is metrizable

## Implementation details

This file currently only contains results on `ENNReal` but is named `Real.lean`
to make it clear we can accept more `(E)(NN)Real` results.
-/

namespace ENNReal

open NNReal TopologicalSpace

instance : MetrizableSpace ENNReal :=
  orderIsoUnitIntervalBirational.toHomeomorph.isEmbedding.metrizableSpace

end ENNReal
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e28129266c111f58082f7bdc8f72ab66f227dc344fbc4633df672410001370d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Real/Variant6ad7d23c98e56ba3902272356d4d523393d336f9d280f5b11093e4f7070851f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
