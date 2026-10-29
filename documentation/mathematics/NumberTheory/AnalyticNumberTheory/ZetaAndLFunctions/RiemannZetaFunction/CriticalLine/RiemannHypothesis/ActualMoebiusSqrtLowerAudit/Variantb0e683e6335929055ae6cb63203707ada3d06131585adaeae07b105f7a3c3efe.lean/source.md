# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualMoebiusSqrtLowerAudit.Variantb0e683e6335929055ae6cb63203707ada3d06131585adaeae07b105f7a3c3efe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d35042cb8d46bd4955f88f032e796430d6cfcbdf` · SHA-256 `b0e683e6335929055ae6cb63203707ada3d06131585adaeae07b105f7a3c3efe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualMoebiusSqrtLower

set_option linter.hashCommand false
set_option linter.style.setOption false
set_option linter.style.longLine false
set_option pp.all true
set_option pp.maxSteps 1000000

#check RH16IndependentChallengeNext.actualAbsMoebius_eq_squarefreeIndicator
#print axioms RH16IndependentChallengeNext.actualAbsMoebius_eq_squarefreeIndicator
#check RH16IndependentChallengeNext.actualAbsMoebius_lower_square_sieve
#print axioms RH16IndependentChallengeNext.actualAbsMoebius_lower_square_sieve
#check RH16IndependentChallengeNext.squareDivisorSqrtMass
#print axioms RH16IndependentChallengeNext.squareDivisorSqrtMass
#check RH16IndependentChallengeNext.squareDivisorSqrtMass_eq_quotient
#print axioms RH16IndependentChallengeNext.squareDivisorSqrtMass_eq_quotient
#check RH16IndependentChallengeNext.squareDivisorSqrtMass_eq_scaled
#print axioms RH16IndependentChallengeNext.squareDivisorSqrtMass_eq_scaled
#check RH16IndependentChallengeNext.squareDivisorSqrtMass_le
#print axioms RH16IndependentChallengeNext.squareDivisorSqrtMass_le
#check RH16IndependentChallengeNext.squareDivisorSqrtMass_le_saved
#print axioms RH16IndependentChallengeNext.squareDivisorSqrtMass_le_saved
#check RH16IndependentChallengeNext.actualMoebiusSqrtMass_lower_weighted_sieve
#print axioms RH16IndependentChallengeNext.actualMoebiusSqrtMass_lower_weighted_sieve
#check RH16IndependentChallengeNext.squareDivisorSqrtMass_total_le
#print axioms RH16IndependentChallengeNext.squareDivisorSqrtMass_total_le
#check RH16IndependentChallengeNext.actualMoebiusSqrtMass_lower
#print axioms RH16IndependentChallengeNext.actualMoebiusSqrtMass_lower
set_option pp.proofs true
#print RH16IndependentChallengeNext.actualAbsMoebius_eq_squarefreeIndicator
#print RH16IndependentChallengeNext.actualAbsMoebius_lower_square_sieve
#print RH16IndependentChallengeNext.squareDivisorSqrtMass
#print RH16IndependentChallengeNext.squareDivisorSqrtMass_eq_quotient
#print RH16IndependentChallengeNext.squareDivisorSqrtMass_eq_scaled
#print RH16IndependentChallengeNext.squareDivisorSqrtMass_le
#print RH16IndependentChallengeNext.squareDivisorSqrtMass_le_saved
#print RH16IndependentChallengeNext.actualMoebiusSqrtMass_lower_weighted_sieve
#print RH16IndependentChallengeNext.squareDivisorSqrtMass_total_le
#print RH16IndependentChallengeNext.actualMoebiusSqrtMass_lower
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0105555648a83df7a0b24abd76bbf025d232b50a0449371854530fa26e015a41 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMoebiusSqrtLowerAudit/Variantb0e683e6335929055ae6cb63203707ada3d06131585adaeae07b105f7a3c3efe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
