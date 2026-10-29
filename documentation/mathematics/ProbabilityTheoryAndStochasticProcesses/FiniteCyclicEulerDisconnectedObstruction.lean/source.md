# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCyclicEulerDisconnectedObstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e83c1785215b349c0e97ecaee6c7f7a6275a7701` · SHA-256 `edc09ea9dfaf23aedf494d82fa7734f2a24689a713e7670b710657a4bc5690bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Finite counted Euler obstruction proof drafting assistance: OpenAI. -/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCyclicEdgeCertificate
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Two disconnected balanced loops are not cyclically realizable

The width-two binary blocks 00 and 11 each have multiplicity one,
and 01 and 10 each have multiplicity zero. The resulting counted
directed graph has balanced in/out degrees at both supported vertices
but no single cyclic Euler ordering. This negative fixture preserves
parallel-edge instances and is independent of any Liouville assertion.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

/-- Exactly one 00 and one 11 edge, with no cross edges. -/
def disconnectedTwoLoopCounts (w : BinaryEdgeWord 1) : ℕ :=
  if w ⟨0, by omega⟩ = w ⟨1, by omega⟩ then 1 else 0

/-- The counted edge total is exactly two. -/
theorem disconnectedTwoLoopCounts_total :
    countedBinaryEdgeTotal 1 disconnectedTwoLoopCounts = 2 := by
  decide

/-- Every supported edge is a loop, so the graph is degree balanced.
The two loops lie in different weak components. -/
theorem disconnectedTwoLoopCounts_loops (w : BinaryEdgeWord 1)
    (hw : 0 < disconnectedTwoLoopCounts w) :
    binaryEdgePrefix 1 w = binaryEdgeSuffix 1 w := by
  have heq : w ⟨0, by omega⟩ = w ⟨1, by omega⟩ := by
    by_contra hn
    simp [disconnectedTwoLoopCounts, hn] at hw
  funext i
  fin_cases i
  exact heq

/-- A two-position cyclic binary word has two equal adjacent blocks
only if its two bits agree; it cannot simultaneously realize 00
and 11 once each. -/
theorem disconnectedTwoLoopCounts_not_realizable :
    ¬ CyclicCountRealizable 1 disconnectedTwoLoopCounts := by
  decide

/-- Consequently there is no compatible cyclic order of the
individual counted edge instances. This consumes the independently
verified certificate/word equivalence. -/
theorem disconnectedTwoLoopCounts_no_euler_certificate :
    ¬ ∃ hN : 0 < countedBinaryEdgeTotal 1 disconnectedTwoLoopCounts,
        Nonempty (CountedCyclicEulerCertificate 1 disconnectedTwoLoopCounts hN) := by
  exact (cyclicCountRealizable_iff_certificate 1 disconnectedTwoLoopCounts).not.mp
    disconnectedTwoLoopCounts_not_realizable

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7603d39224d66eca55e2cf7dff7551c2dd6304e6c2aa10888b9777092281d301 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicEulerDisconnectedObstruction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
