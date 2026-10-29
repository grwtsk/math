# Audit Edition50 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `68066244b661778319cd276f0b2a9432964f705b` · SHA-256 `8dc86be1a4e63d7edcbb91284cf0e5394b6e0d050009d556a4699de1581d6e68`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Prototype

set_option linter.hashCommand false

open FormalResearch.RiemannHypothesis.SourcePhaseSignGeometry

#check @pairedTailTest_eq_balanced_phase_prefix
#print axioms pairedTailTest_eq_balanced_phase_prefix

#check @exists_pairedTailTest_pos
#print axioms exists_pairedTailTest_pos

#check @pairedTailTest_early_point_neg
#print axioms pairedTailTest_early_point_neg

#check @exists_pairedTailTest_neg
#print axioms exists_pairedTailTest_neg

#check @pairedTailTest_has_both_signs
#print axioms pairedTailTest_has_both_signs

#check @pairedTailTest_not_nonneg_on
#print axioms pairedTailTest_not_nonneg_on

#check @pairedTailTest_not_nonpos_on
#print axioms pairedTailTest_not_nonpos_on

```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d92f197401f420bd03c1755b01aa46fc8936ce2da7c3b13646c5d01af390f9d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variant8dc86be1a4e63d7edcbb91284cf0e5394b6e0d050009d556a4699de1581d6e68.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
