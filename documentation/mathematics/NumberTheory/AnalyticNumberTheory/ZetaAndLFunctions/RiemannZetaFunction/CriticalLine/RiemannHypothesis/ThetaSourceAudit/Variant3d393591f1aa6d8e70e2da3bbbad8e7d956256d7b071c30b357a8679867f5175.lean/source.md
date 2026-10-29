# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaSourceAudit.Variant3d393591f1aa6d8e70e2da3bbbad8e7d956256d7b071c30b357a8679867f5175

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f178b219bf019c4fd108fb8d4760e517fd4536c5` · SHA-256 `3d393591f1aa6d8e70e2da3bbbad8e7d956256d7b071c30b357a8679867f5175`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.FiniteDirichletTransport
import FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelTransport
import FormalResearch.RiemannHypothesis.SourceComparison.MobiusSampling

#print axioms FormalResearch.RiemannHypothesis.SourceComparison.FiniteDirichletTransport.divisors_sum_eq_filtered_product
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.FiniteDirichletTransport.weighted_convolution
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelTransport.sourceFiniteWeight
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelTransport.sourceFiniteWeight_zero
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelTransport.sourceFiniteWeight_mul_zero
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelTransport.weightedContribution_eq_finiteWeight
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelTransport.finite_log_sum_eq_sourceSamplingKernel
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelTransport.thetaKernel
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelTransport.theta_indices_iff
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelTransport.thetaKernel_eq_finiteWeight
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelTransport.thetaKernel_eq_sum_sourceSamplingKernel
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelTransport.sum_truncatedMoebius
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelTransport.linear_source_transport
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelTransport.quadratic_source_transport
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelTransport.source_prime_decomposition_theta
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.MobiusSampling.source_moebius_reindex_expanded
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.MobiusSampling.source_moebius_reindex
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.MobiusSampling.smallDivisorContribution
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.MobiusSampling.largeDivisorContribution
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.MobiusSampling.source_moebius_split
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.MobiusSampling.largeDivisorContribution_eq_sub

#check FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelTransport.source_prime_decomposition_theta
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=136eaa0db7940b6abf08eec08dcdeb91dd887e38ad1cf5b08ee9209237a6fb19 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaSourceAudit/Variant3d393591f1aa6d8e70e2da3bbbad8e7d956256d7b071c30b357a8679867f5175.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
