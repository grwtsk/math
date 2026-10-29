# Half Turn Involution — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc5037a7c70d09aa7da564e30ee5a6f379fc8585` · SHA-256 `b95dc2aad0d48d57b4b1b44e1595e89dd4f908d5931fc5b10292c2dcccab5158`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
HalfTurnInvolution — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 4e2379377c9ff95507b952ec8f7cda9198696a02ff44cb8388a3fcf9e908be66
Organized SHA-256: 0f9d71913c56d473935ae808113adc2641bd8dd826e9cc8b64ec33efa36f3e40
PMD: 510.3.010.010 euclidean geometry (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact affine coordinate formula 2*center-point and its full involution proof. No additional distance-preservation or runtime implementation theorem is introduced. -/

import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Ring

import GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.SuppliedCircleAndHalfTurn.Variant4e2379377c9ff955.SuppliedCircleIncidence

/-!
# Euclidean runtime vocabulary

Small exact semantic records for the finite two-dimensional geometry exposed by
the client. They specify the mathematical objects; they do not prove that a
floating-point JavaScript implementation realizes them.
-/

namespace GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.SuppliedCircleAndHalfTurn.Variant4e2379377c9ff955


namespace BitMatrix.Geometry.Euclidean

/-- The affine half-turn about a designated center. -/
def halfTurn (center point : Point) : Point where
  x := 2 * center.x - point.x
  y := 2 * center.y - point.y


@[simp]
theorem halfTurn_involutive (center point : Point) :
    halfTurn center (halfTurn center point) = point := by
  cases center
  cases point
  simp [halfTurn]


end BitMatrix.Geometry.Euclidean

end GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.SuppliedCircleAndHalfTurn.Variant4e2379377c9ff955
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c4f87f58320c4fa1a60d62be213e754042ba7e955fae29796245e1853f7c90a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SuppliedCircleAndHalfTurn/Variant4e2379377c9ff955/HalfTurnInvolution.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
