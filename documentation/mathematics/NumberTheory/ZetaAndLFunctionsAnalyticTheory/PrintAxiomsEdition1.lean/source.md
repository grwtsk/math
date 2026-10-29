# Print Axioms Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca116f5410fe6f269aebdb87e0165387a2a8d58f` · SHA-256 `28be87ece0426e2e6586fff1ccf4da3d1da082587df454ddad2217e320c06612`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
comparator/PrintAxioms.lean — quick axiom audit of the fifteen headline theorems WITHOUT the comparator
tool:   lake build Solution && lake env lean comparator/PrintAxioms.lean
Every line must print exactly:  'X' depends on axioms: [propext, Classical.choice, Quot.sound]
(no sorryAx, no other axiom).  The comparator run (comparator/README.md) is the stronger check: it also
verifies that these statements coincide with the trusted ones in Challenge.lean.
-/
import Solution

#print axioms two_thirds_on_critical_line
#print axioms two_thirds_on_critical_line_cumulative
#print axioms half_simple_on_critical_line
#print axioms half_simple_on_critical_line_cumulative
#print axioms three_quarters_distinct
#print axioms three_quarters_distinct_cumulative
#print axioms montgomery_taylor_on_critical_line
#print axioms montgomery_taylor_simple_on_critical_line
#print axioms montgomery_taylor_distinct
#print axioms dirichlet_two_thirds_on_critical_line
#print axioms dirichlet_half_simple_on_critical_line
#print axioms dirichlet_three_quarters_distinct
#print axioms dirichlet_montgomery_taylor_on_critical_line
#print axioms dirichlet_montgomery_taylor_simple_on_critical_line
#print axioms dirichlet_montgomery_taylor_distinct
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8378ae726101b5346b4ebcc85c55b529c49b5cf93538d44fa56d9cbeeee1e6d0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrintAxioms/Variant28be87ece0426e2e6586fff1ccf4da3d1da082587df454ddad2217e320c06612.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
