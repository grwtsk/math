# Actual Double Mixed Strict Window Challenge Audit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `28501dfba2a9b566a70d4e28ff268c6a2dadfa07` · SHA-256 `edbf5d45ba758abd44d2ac0e5950a5d78a020b5faae316d8d48d4bb8772d8f64`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualDoubleMixedStrictWindowChallenge

set_option linter.hashCommand false
set_option linter.style.setOption false
set_option linter.style.longLine false
set_option pp.all true
set_option pp.maxSteps 1000000

#check RH16IndependentChallengeNext.actualMixed_rectangle_correlation_lower
#print axioms RH16IndependentChallengeNext.actualMixed_rectangle_correlation_lower
#check RH16IndependentChallengeNext.actualDoubleMixed_firstColumn_kernel_lower
#print axioms RH16IndependentChallengeNext.actualDoubleMixed_firstColumn_kernel_lower
#check RH16IndependentChallengeNext.actualMixed_rectangle_exp_prefactor_lower
#print axioms RH16IndependentChallengeNext.actualMixed_rectangle_exp_prefactor_lower
#check RH16IndependentChallengeNext.actualDoubleMixed_rectangle_density_lower
#print axioms RH16IndependentChallengeNext.actualDoubleMixed_rectangle_density_lower
#check RH16IndependentChallengeNext.actualDoubleMixed_rectangle_strict_support
#print axioms RH16IndependentChallengeNext.actualDoubleMixed_rectangle_strict_support
#check RH16IndependentChallengeNext.actualMixed_firstColumn_not_curvature_only
#print axioms RH16IndependentChallengeNext.actualMixed_firstColumn_not_curvature_only
set_option pp.proofs true
#print RH16IndependentChallengeNext.actualMixed_rectangle_correlation_lower
#print RH16IndependentChallengeNext.actualDoubleMixed_firstColumn_kernel_lower
#print RH16IndependentChallengeNext.actualMixed_rectangle_exp_prefactor_lower
#print RH16IndependentChallengeNext.actualDoubleMixed_rectangle_density_lower
#print RH16IndependentChallengeNext.actualDoubleMixed_rectangle_strict_support
#print RH16IndependentChallengeNext.actualMixed_firstColumn_not_curvature_only
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=530be16e9a2924a4e048ffc8f097f3598c7c1c27795e3f5b8ee74103f0452efe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualDoubleMixedStrictWindowChallengeAudit/Variantedbf5d45ba758abd44d2ac0e5950a5d78a020b5faae316d8d48d4bb8772d8f64.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
