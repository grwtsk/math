# Public Alternative — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cac644f9ba9d9f752db9225cd432717f4b5211f4` · SHA-256 `194fdc7835d3a61ae98833fbadb06af7834bc8e5265d7c2f1e6f2c2725df9785`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright 2026 The Formal Conjectures Authors.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    https://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
-/
module

public import FormalConjecturesUtil

/-!
# Erdős Problem 234

*Reference:* [erdosproblems.com/234](https://www.erdosproblems.com/234)
-/

@[expose] public section

open Real Set
open scoped NNReal

namespace Erdos234

/--
Is it true that for all `c ≥ 0`, the density `f c` of integers for which
`(p (n + 1) - p n) / log n < c` exists and is a continuous function of `c`?
-/
@[category research open, AMS 11]
theorem erdos_234 : answer(sorry) ↔ ∃ f : ℝ≥0 → ℝ, Continuous f ∧
    ∀ c : ℝ≥0, HasDensity {n : ℕ | primeGap n / log n < c} (f c) := by
  sorry

end Erdos234
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01b779fc3ddcf0630e81c0d957cfb5ed60100f3075e49f792da16684fd9ed4df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/234/Variant194fdc7835d3a61ae98833fbadb06af7834bc8e5265d7c2f1e6f2c2725df9785.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
