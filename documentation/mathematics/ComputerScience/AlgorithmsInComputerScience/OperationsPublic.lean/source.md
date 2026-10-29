# Operations Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc84dbfa07e3a8b2acb65fba9a4503a8b6e8a4a6` · SHA-256 `02c8aa436c21bba594a42c9bb91a9c3983d995065ce109f88d863eb66229e3f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
module

public import Mathlib.Data.EReal.Operations

open ENNReal

namespace EReal

proof_wanted recENNReal_neg_coe_ennreal {motive : EReal → Sort*} (coe : ∀ x : ℝ≥0∞, motive x)
    (neg_coe : ∀ x : ℝ≥0∞, 0 < x → motive (-x)) {x : ℝ≥0∞} (hx : 0 < x) :
    recENNReal coe neg_coe (-x) = neg_coe x hx

end EReal
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=69a6eb5384459000eab6b16e291d2acb89a21ed4013a55cc4551ad9c180cfc32 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operations/Variant02c8aa436c21bba594a42c9bb91a9c3983d995065ce109f88d863eb66229e3f7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
