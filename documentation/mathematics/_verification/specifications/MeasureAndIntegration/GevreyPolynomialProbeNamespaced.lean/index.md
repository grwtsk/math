# Verification target: Gevrey Polynomial Probe Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fd70d2b0216049f83e279f224d47d95452642c2",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/GevreyPolynomialProbe/Variant7a8f3bbaa7a697607d8db487a78d9f3ebdd14d272ff55bf1fe2900eedcb73916.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/GevreyPolynomialProbeNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/GevreyPolynomialProbeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fd70d2b0216049f83e279f224d47d95452642c2`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/GevreyPolynomialProbe/Variant7a8f3bbaa7a697607d8db487a78d9f3ebdd14d272ff55bf1fe2900eedcb73916.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/GevreyPolynomialProbe/Variant7a8f3bbaa7a697607d8db487a78d9f3ebdd14d272ff55bf1fe2900eedcb73916.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.GevreyNormalization` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [firstDerivative](../../../../MeasureAndIntegration/GevreyPolynomialProbeNamespaced.lean/declarations/firstderivative.md) | 23 | `declaration-track:bf07da9cec652a2119c825925b6e9003287835b4aca3092772703685722048d0` |
| 2 | `theorem` | [bumpInterior_frontier](../../../../MeasureAndIntegration/GevreyPolynomialProbeNamespaced.lean/declarations/bumpinterior-frontier.md) | 26 | `result-track:e399d955bd83a9c88b35742a321ddb64cfbdf8ddb11282385e84c53f52655544` |
| 3 | `theorem` | [firstInterior_frontier](../../../../MeasureAndIntegration/GevreyPolynomialProbeNamespaced.lean/declarations/firstinterior-frontier.md) | 34 | `result-track:348dae388ababb62cdd10dbd74c5adbc36107c795c35d853bff16faebe83617d` |
| 4 | `theorem` | [scaledBump_hasDerivAt](../../../../MeasureAndIntegration/GevreyPolynomialProbeNamespaced.lean/declarations/scaledbump-hasderivat.md) | 42 | `result-track:46eacb713694cd249ce740381d1d7058c57813e856b5754cf98a3a177f19e11b` |
| 5 | `theorem` | [firstDerivative_hasDerivAt](../../../../MeasureAndIntegration/GevreyPolynomialProbeNamespaced.lean/declarations/firstderivative-hasderivat.md) | 47 | `result-track:df8fcb55ca9f8739c3471fd9af0b8dccec7e15fb91135efc1fe00cdab4d1bf9e` |
| 6 | `theorem` | [deriv_scaledBump](../../../../MeasureAndIntegration/GevreyPolynomialProbeNamespaced.lean/declarations/deriv-scaledbump.md) | 51 | `result-track:d37b0078fcc6a36ee4b2faaf27c315c90cce87d4dbdbb164747b26e3eaaf8c0f` |
| 7 | `theorem` | [second_scaledBump](../../../../MeasureAndIntegration/GevreyPolynomialProbeNamespaced.lean/declarations/second-scaledbump.md) | 55 | `result-track:d26c0056d34d876f69c418318e2652c295d36c96aeba98aa90831a564d8d58f7` |
| 8 | `theorem` | [scaledBump_contDiff](../../../../MeasureAndIntegration/GevreyPolynomialProbeNamespaced.lean/declarations/scaledbump-contdiff.md) | 60 | `result-track:9051aac9442cb5858a485afc4e61dc124b58812a12a2d3b400a89d2028117503` |
| 9 | `theorem` | [sourceBump_eq_scaled_unit](../../../../MeasureAndIntegration/GevreyPolynomialProbeNamespaced.lean/declarations/sourcebump-eq-scaled-unit.md) | 72 | `result-track:dd2f3c857729611b975a2efa9b5e4bb3c2a248c8675c2d071659b3ffd48eec37` |
| 10 | `theorem` | [sourceBump_contDiff](../../../../MeasureAndIntegration/GevreyPolynomialProbeNamespaced.lean/declarations/sourcebump-contdiff.md) | 76 | `result-track:ef896fdf41a821ef4cb59eebafb025268539db51a00f9b3bf2c88672bde2457e` |
| 11 | `theorem` | [sourceBump_hasCompactSupport](../../../../MeasureAndIntegration/GevreyPolynomialProbeNamespaced.lean/declarations/sourcebump-hascompactsupport.md) | 80 | `result-track:2d8f464702e2b8f630d85ddc25d462edc3ea486960c16af9bd16920f7b4f3b99` |
| 12 | `theorem` | [sourceBump_nonzero](../../../../MeasureAndIntegration/GevreyPolynomialProbeNamespaced.lean/declarations/sourcebump-nonzero.md) | 86 | `result-track:33f11e76c66c70fa40cc45e873ece22fe05d67645d1c97a09c17de78216325ae` |
| 13 | `theorem` | [sourceBump_eq_indicator](../../../../MeasureAndIntegration/GevreyPolynomialProbeNamespaced.lean/declarations/sourcebump-eq-indicator.md) | 90 | `result-track:0bd311f482796f2aac8bf41903d0ed2b82037100fb04727507922fd7b4f6f807` |
| 14 | `theorem` | [sourceBump_second_eq_indicator](../../../../MeasureAndIntegration/GevreyPolynomialProbeNamespaced.lean/declarations/sourcebump-second-eq-indicator.md) | 94 | `result-track:86e35bcf90e1f240707ee3008b86da6b969ae04e93acacb40ad188a1424ee334` |
| 15 | `theorem` | [sourceBump_square_integral](../../../../MeasureAndIntegration/GevreyPolynomialProbeNamespaced.lean/declarations/sourcebump-square-integral.md) | 100 | `result-track:89b505e04344ecda8877c4383a0e4ac0bb3590b7988065f35231dde288b5e2ac` |
| 16 | `theorem` | [sourceBump_second_square_integral](../../../../MeasureAndIntegration/GevreyPolynomialProbeNamespaced.lean/declarations/sourcebump-second-square-integral.md) | 111 | `result-track:a3f63209f623a8fef27d93a1ea1b0e2699a97a670ab8aa4fb1a2f9d4fc9e50ea` |
| 17 | `theorem` | [sourceBump_second_mul_integral](../../../../MeasureAndIntegration/GevreyPolynomialProbeNamespaced.lean/declarations/sourcebump-second-mul-integral.md) | 122 | `result-track:5ee4162a4819ec014a0fb0374b3fa2aceafcd08e069305d80e08ad005c67aa30` |
| 18 | `theorem` | [sourceBump_deriv_square_integral](../../../../MeasureAndIntegration/GevreyPolynomialProbeNamespaced.lean/declarations/sourcebump-deriv-square-integral.md) | 134 | `result-track:f2d58edce62b22f56092b1e2278277774454ef332be29bb779f4b302b74c5ca2` |
| 19 | `theorem` | [normalization_sourceBump_eq](../../../../MeasureAndIntegration/GevreyPolynomialProbeNamespaced.lean/declarations/normalization-sourcebump-eq.md) | 141 | `result-track:1ec7724220489ae3feb7c53ef9a26cd37ef1ab08b10ec05ee6840c6377c78fc3` |
| 20 | `theorem` | [dilationOperator_sourceBump_eq](../../../../MeasureAndIntegration/GevreyPolynomialProbeNamespaced.lean/declarations/dilationoperator-sourcebump-eq.md) | 149 | `result-track:e7848e154e812ec488fc5a22c4ad841813cbe81c640b9fce66b2128d598f70d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=551ba96016bce86cba6f4eca94ff338cbc9f9b0f366cb6f79586ac96940da81b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/GevreyPolynomialProbe/Variant7a8f3bbaa7a697607d8db487a78d9f3ebdd14d272ff55bf1fe2900eedcb73916.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/GevreyPolynomialProbe/Variant7a8f3bbaa7a697607d8db487a78d9f3ebdd14d272ff55bf1fe2900eedcb73916.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
