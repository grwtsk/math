# Verification target: Scalar V1 Prebytes Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f027075d3268663ca1ebaf82db65ed494e5591c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScalarV1Prebytes/Variantb8a1db0fd1cb12950f1030eedf3c671530b9ea17d42a98abe4c06bde4ad3d7af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ScalarV1PrebytesNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ScalarV1PrebytesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f027075d3268663ca1ebaf82db65ed494e5591c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScalarV1Prebytes/Variantb8a1db0fd1cb12950f1030eedf3c671530b9ea17d42a98abe4c06bde4ad3d7af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScalarV1Prebytes/Variantb8a1db0fd1cb12950f1030eedf3c671530b9ea17d42a98abe4c06bde4ad3d7af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceHankelReflection` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [greenKernel](../../../../MeasureAndIntegration/ScalarV1PrebytesNamespaced.lean/declarations/greenkernel.md) | 34 | `declaration-track:3f4bb2e223df09628d944522c0ff0168e63578f8b86647c8dd6e65ac2bd7a128` |
| 2 | `def` | [sourceGreenPairing](../../../../MeasureAndIntegration/ScalarV1PrebytesNamespaced.lean/declarations/sourcegreenpairing.md) | 37 | `declaration-track:47dc829c9db289050dd2d33c00fa2af38f1bfabc74894656628c86e645d9ad1a` |
| 3 | `def` | [sourceGreenConvolution](../../../../MeasureAndIntegration/ScalarV1PrebytesNamespaced.lean/declarations/sourcegreenconvolution.md) | 41 | `declaration-track:e6959ed65ad908becf88cf7033400dda00c66865547e0115b319e2e694cb4ee4` |
| 4 | `theorem` | [greenKernel_continuous](../../../../MeasureAndIntegration/ScalarV1PrebytesNamespaced.lean/declarations/greenkernel-continuous.md) | 45 | `result-track:33b979a59c7545dba0b1c822b1c30a18dbaff9e374c7633c19923a291e59d114` |
| 5 | `theorem` | [greenKernel_even](../../../../MeasureAndIntegration/ScalarV1PrebytesNamespaced.lean/declarations/greenkernel-even.md) | 49 | `result-track:2b1e402b90aa4594442fc32ffd50f7073807a3af5388bdc2511cce81ca0f835a` |
| 6 | `theorem` | [sourceGreenPairing_integrable](../../../../MeasureAndIntegration/ScalarV1PrebytesNamespaced.lean/declarations/sourcegreenpairing-integrable.md) | 53 | `result-track:d407d61f2620b885e241025aa2f2f50af9c8fb816f218cdc019bff7f695d1055` |
| 7 | `theorem` | [sourceGreenConvolution_integrable](../../../../MeasureAndIntegration/ScalarV1PrebytesNamespaced.lean/declarations/sourcegreenconvolution-integrable.md) | 59 | `result-track:5a43762ab2e1d735f36759151898b6610821e0b244c3b328b0fef9cde79ed969` |
| 8 | `theorem` | [sourceGreenPairing_eq_twice_negativeSmoothMoment](../../../../MeasureAndIntegration/ScalarV1PrebytesNamespaced.lean/declarations/sourcegreenpairing-eq-twice-negativesmoothmoment.md) | 66 | `result-track:fe780e6d02d960ee1284d2767a9dddf64d40495c6df33e9cf478532cbe9e07a8` |
| 9 | `theorem` | [sourceGreenPairing_eq_causal_energy](../../../../MeasureAndIntegration/ScalarV1PrebytesNamespaced.lean/declarations/sourcegreenpairing-eq-causal-energy.md) | 104 | `result-track:5cc2285d2a2202e293c49ba95e1fa904e167bbfc8067ac17f7877e96b74f6cba` |
| 10 | `theorem` | [criticalContinuousMoment_eq_neg_half_green](../../../../MeasureAndIntegration/ScalarV1PrebytesNamespaced.lean/declarations/criticalcontinuousmoment-eq-neg-half-green.md) | 111 | `result-track:8c126b7353dc7d0254e36b81b79384c915b8d71ea8ab7e28c29de7783ae14676` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f644054e9734c926b3adc68953d41664588e53fe76dbe0e4ebed25d8b696d43 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScalarV1Prebytes/Variantb8a1db0fd1cb12950f1030eedf3c671530b9ea17d42a98abe4c06bde4ad3d7af.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScalarV1Prebytes/Variantb8a1db0fd1cb12950f1030eedf3c671530b9ea17d42a98abe4c06bde4ad3d7af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
