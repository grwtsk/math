# Complete source: GRWTSK.Logic.Counterexamples.Checks.Positive.PositivityIsNotVanishing

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f741483848a360e3c4d8f1f88eded8682c450336` · SHA-256 `207beb75aeb06eae2d19ac7490ccaa86fc37a29d58a2091476bba0822d88e1c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Zeta.Riemann
-- This positive check records that the actual defect does not vanish at zero.
example : GRWTSK.RiemannHypothesis.rhDefect 0 ≠ 0 := by
  norm_num [GRWTSK.RiemannHypothesis.rh_defect_eq_square]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=55f4b982a1960b0423a2f962c469cf33d44fbcc1c31532c9077380abae01da36 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Counterexamples/Checks/Positive/PositivityIsNotVanishing__SourceOccurrence8b13e6e598557ab099bc69f2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
