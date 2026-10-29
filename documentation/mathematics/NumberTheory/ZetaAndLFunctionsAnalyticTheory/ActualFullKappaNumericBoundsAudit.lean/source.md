# Actual Full Kappa Numeric Bounds Audit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b605130f62c9b03599e5b5f31d14b0282e1d2a80` · SHA-256 `0386dbef93be13d239cf0e7ab5d2706622ea012cc2c6f2f9d7af826636151877`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualFullKappaNumericBounds

set_option linter.hashCommand false
set_option linter.style.setOption false
set_option linter.style.longLine false
set_option pp.all true
set_option pp.maxSteps 1000000

#check RH16IndependentChallengeNext.actualUpperCoefficientMoment_abs_le
#print axioms RH16IndependentChallengeNext.actualUpperCoefficientMoment_abs_le
#check RH16IndependentChallengeNext.actualUpperKappa_succ_abs_le
#print axioms RH16IndependentChallengeNext.actualUpperKappa_succ_abs_le
#check RH16IndependentChallengeNext.actualFullPositiveKappa_succ_abs_le
#print axioms RH16IndependentChallengeNext.actualFullPositiveKappa_succ_abs_le
#check RH16IndependentChallengeNext.actualFullPositiveKappa_one_bounds
#print axioms RH16IndependentChallengeNext.actualFullPositiveKappa_one_bounds
#check RH16IndependentChallengeNext.actualFullPositiveKappa_one_pos
#print axioms RH16IndependentChallengeNext.actualFullPositiveKappa_one_pos
#check RH16IndependentChallengeNext.actualFullPositiveKappa_four_abs_bounds
#print axioms RH16IndependentChallengeNext.actualFullPositiveKappa_four_abs_bounds
set_option pp.proofs true
#print RH16IndependentChallengeNext.actualUpperCoefficientMoment_abs_le
#print RH16IndependentChallengeNext.actualUpperKappa_succ_abs_le
#print RH16IndependentChallengeNext.actualFullPositiveKappa_succ_abs_le
#print RH16IndependentChallengeNext.actualFullPositiveKappa_one_bounds
#print RH16IndependentChallengeNext.actualFullPositiveKappa_one_pos
#print RH16IndependentChallengeNext.actualFullPositiveKappa_four_abs_bounds
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=35b7b815690c9cf943082a269b66d265f35d9eace3a48553c69c946152b7e391 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualFullKappaNumericBoundsAudit/Variant0386dbef93be13d239cf0e7ab5d2706622ea012cc2c6f2f9d7af826636151877.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
