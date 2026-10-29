# Complete source: GRWTSK.Algebra.GroupTheory.BasicGroupTheory.Conjugacy.WidthThreeHammingConjugacy.Variante3f1879167b76977.AggregateSACScoreEqualities

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b6876899d806196d9a9310b31f16ad88e482060` · SHA-256 `97ab3906ad651e81b153740f706faf6d5755306a29a57aa3e81b057ff26e6d80`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
AggregateSACScoreEqualities — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: e3f1879167b769771523cc514ab302cba0ffb90bd9ace971c5eede4a21fa5e83
Organized SHA-256: dea4d7e33731fd5d52a8420650805e9d79e780ada5b5d87e0aad745d159eba26
PMD: 510.1.030.010.060 conjugacy (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The supplied width-three transformation and two exact aggregate rational-score equalities under this explicit Hamming-isometric conjugacy. No arbitrary-conjugacy SAC, independence or security claim. -/

import BitMatrix.Algebra.Symmetry
import Mathlib.Logic.Equiv.Fin.Rotate

import GRWTSK.Geometry.MetricGeometry.MetricSpaces.WidthThreeHammingIsometry.Variante3f1879167b76977.TranslatedCoordinateDistanceEquality
/-!
# Concrete tests for finite bit-state symmetries

These width-three checks exercise the faithful translation and coordinate
actions, a translated coordinate Hamming isometry, and the general SAC-score
invariance theorems for Hamming-isometric conjugacy.
-/

namespace BitMatrix.Tests.Symmetry

open BitMatrix.Reduction.SAT
open BitMatrix.Dynamics.Avalanche
open BitMatrix.Algebra.Symmetry
open BitMatrix.Network.Permutation

/-! ## Faithful width-three actions -/

/-- A concrete state permutation used as the conjugated transformation. -/
def symmetryTransformation3 : BitPerm 3 :=
  xorTranslation (basisBit (1 : Fin 3))

example :
    sacScore
        (conjugate symmetryHammingIso3.toPerm symmetryTransformation3) =
      sacScore symmetryTransformation3 :=
  sacScore_conjugate_hammingIso symmetryHammingIso3 symmetryTransformation3

example :
    varianceScore
        (conjugate symmetryHammingIso3.toPerm symmetryTransformation3) =
      varianceScore symmetryTransformation3 :=
  varianceScore_conjugate_hammingIso
    symmetryHammingIso3 symmetryTransformation3

end BitMatrix.Tests.Symmetry
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0baab6c6e98e6c99043459c09e0fb37f430e1ab58e0d1a23a4adfccb286ae970 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/BasicGroupTheory/Conjugacy/WidthThreeHammingConjugacy/Variante3f1879167b76977/AggregateSACScoreEqualities.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
