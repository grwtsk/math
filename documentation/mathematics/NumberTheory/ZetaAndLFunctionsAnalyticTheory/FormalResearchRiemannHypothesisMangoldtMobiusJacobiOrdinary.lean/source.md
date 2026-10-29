# Formal Research Riemann Hypothesis Mangoldt Mobius Jacobi Ordinary — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5533f15b06255dd6e9322f1ecf1effd44fbf78f0` · SHA-256 `d5a93d868d5c533f058ccdb52488272cd344d4ca24a504f3269f0cc33a3cd5c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi
set_option linter.hashCommand false
set_option linter.style.setOption false
set_option linter.style.longLine false
set_option maxHeartbeats 10000000
set_option maxRecDepth 100000
set_option pp.maxSteps 100000000
set_option pp.proofs true
set_option pp.all true
set_option pp.fullNames false
#print FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi.signedDilation
#print FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi.jointVector
#print FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi.signedDilation_symmetric
#print FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi.signedDilation_quadratic
#print FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi.signedDilation_quadratic_sum
#print FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi.pairKernel
#print FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi.pairKernel_covariance
#print FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi.finiteMangoldtMobius_covariance
#print FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi.SourceAtom
#print FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi.sourceAtomFintype
#print FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi.sourceAtomDecidableEq
#print FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi.sourceMobiusRow
#print FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi.sourceLogRow
#print FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi.sourceAtomWeight
#print FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi.sourceSignedOperator
#print FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi.sourceJointVector
#print FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi.sourceOperatorValue
#print FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi.sourceOperatorValue_eq_twice_mobius
#print FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi.sourceOperatorValue_eq_twice_residual
#print FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi.SignedOperatorTailUpperBound
#print FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi.signedOperatorTail_iff_mertensResidualTail
#print FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi.estimate_of_signedOperatorTail
#print FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi.cancellation_fixture
#print FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi.absolute_fixture
#print FormalResearch.RiemannHypothesis.MangoldtMobiusJacobi.unbounded_representation_fixture
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=38e8d6e1390c0c05aac4c92f3016afa28d6369d24278c5ad2835360e8ad240cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisMangoldtMobiusJacobiOrdinary/Variantd5a93d868d5c533f058ccdb52488272cd344d4ca24a504f3269f0cc33a3cd5c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
