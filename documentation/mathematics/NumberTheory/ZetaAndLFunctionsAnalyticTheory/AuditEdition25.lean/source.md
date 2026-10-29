# Audit Edition25 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `acc99178d35f56351ce8652888bdb98ac0e170f0` · SHA-256 `3b3af27bc0f33b57363ae9ad6a8a2aef5dcd724648bb520ac2fc68757f2899ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Prototype

set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourcePairedSquareMainTerm

#check pairedSquareMainCorrection
#print axioms pairedSquareMainCorrection
#check pairedSquareReadout_eq
#print axioms pairedSquareReadout_eq
#check pairedSquareReadout_eq_main_correction
#print axioms pairedSquareReadout_eq_main_correction
#check pairedSquareMainCorrection_uniformly_bounded
#print axioms pairedSquareMainCorrection_uniformly_bounded
#check squareRemovedPairedWork_eq_first_main_correction
#print axioms squareRemovedPairedWork_eq_first_main_correction
#check sourceNormalization_le_forty_one
#print axioms sourceNormalization_le_forty_one
#check diagonalMainCoefficient_ge_one_div_four_thousand
#print axioms diagonalMainCoefficient_ge_one_div_four_thousand
#check pairedSquareReadout_eventually_le_any_bound
#print axioms pairedSquareReadout_eventually_le_any_bound
#check pairedSquareReadout_not_eventually_lower_bounded
#print axioms pairedSquareReadout_not_eventually_lower_bounded
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d5681fb85428d2984b0b237a622e59935166753d1891c0f61824ac8e8cfea37b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variant3b3af27bc0f33b57363ae9ad6a8a2aef5dcd724648bb520ac2fc68757f2899ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
