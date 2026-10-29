# Verification target: Source Hankel Fourier

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11f3fb9d46676b6f0fd716d314d356ed7f772daa",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/22SourceHankelFourier/Variant9ad791b23fbf38e0678c8db5b0a7172125a969b704a7f6e246672449d397f615.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceHankelFourier.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceHankelFourier.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11f3fb9d46676b6f0fd716d314d356ed7f772daa`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/22SourceHankelFourier/Variant9ad791b23fbf38e0678c8db5b0a7172125a969b704a7f6e246672449d397f615.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/22SourceHankelFourier/Variant9ad791b23fbf38e0678c8db5b0a7172125a969b704a7f6e246672449d397f615.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourcePlancherel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.BigOperators` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceHankelReflection` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourceFourierSquare](../../../../MeasureAndIntegration/SourceHankelFourier.lean/declarations/sourcefouriersquare.md) | 31 | `declaration-track:1690f74d1d6b763fd42956321d8e2eb94fbb93b2bad156c5042008fdb9731ccd` |
| 2 | `theorem` | [sourceFourierSquare_integrable](../../../../MeasureAndIntegration/SourceHankelFourier.lean/declarations/sourcefouriersquare-integrable.md) | 35 | `result-track:04a94601c69c9c3a6093eb30686645c18fa1999b01e756a6dc8f2f319621e275` |
| 3 | `theorem` | [sourceFourierSquare_nonneg](../../../../MeasureAndIntegration/SourceHankelFourier.lean/declarations/sourcefouriersquare-nonneg.md) | 39 | `result-track:489df58f361b984fecf45aa9bebbfbc9fe84cecd5c5a40f1ab19d307afede4a2` |
| 4 | `theorem` | [sourceFourierSquare_integral](../../../../MeasureAndIntegration/SourceHankelFourier.lean/declarations/sourcefouriersquare-integral.md) | 43 | `result-track:776682d78793ea1b701381c28d2db52017fbf7c2365a609b9d0a849fc0313425` |
| 5 | `theorem` | [standard_correlation_cosine_integral](../../../../MeasureAndIntegration/SourceHankelFourier.lean/declarations/standard-correlation-cosine-integral.md) | 47 | `result-track:68a111464cf2addaaf63e5f869962a3eb5c03e751d8140317b25349a7a6bef69` |
| 6 | `theorem` | [source_cosine_product_integrable](../../../../MeasureAndIntegration/SourceHankelFourier.lean/declarations/source-cosine-product-integrable.md) | 97 | `result-track:4eabeda7485a7bee209c406e0c8889f5ca918e331cb4d9aa48e7cb924f608968` |
| 7 | `theorem` | [source_correlation_fourier](../../../../MeasureAndIntegration/SourceHankelFourier.lean/declarations/source-correlation-fourier.md) | 105 | `result-track:9a80d5f55dfa39629877348744a9b446fd337bc7099ddf263f05a5ea4fe902ac` |
| 8 | `def` | [arithmeticPolynomial](../../../../MeasureAndIntegration/SourceHankelFourier.lean/declarations/arithmeticpolynomial.md) | 129 | `declaration-track:d169ff29f1fa33945abc14c20af0b5270e20a16b2a357607b18b86778abc9ee0` |
| 9 | `theorem` | [arithmeticPolynomial_real_product](../../../../MeasureAndIntegration/SourceHankelFourier.lean/declarations/arithmeticpolynomial-real-product.md) | 133 | `result-track:7efcd099fdf0af24a8afd38456f047d66c3f4f78c3fce064c26955eac3dd5aab` |
| 10 | `def` | [jointFourierIntegrand](../../../../MeasureAndIntegration/SourceHankelFourier.lean/declarations/jointfourierintegrand.md) | 161 | `declaration-track:da069e4131bfab469b622637627cf210cc71e7703a4e1c2e4f297883960542b4` |
| 11 | `theorem` | [jointFourierIntegrand_eq](../../../../MeasureAndIntegration/SourceHankelFourier.lean/declarations/jointfourierintegrand-eq.md) | 165 | `result-track:634a1dbac159b253ee59fcfd94dd312df90751967b8dee18d573eec451c3a419` |
| 12 | `theorem` | [jointFourierIntegrand_integrable](../../../../MeasureAndIntegration/SourceHankelFourier.lean/declarations/jointfourierintegrand-integrable.md) | 179 | `result-track:81f922f00829060ce594810576ee0cdc0281a1927a2c6b20cbe4e1091cc7d5a4` |
| 13 | `theorem` | [jointFourierIntegrand_integral](../../../../MeasureAndIntegration/SourceHankelFourier.lean/declarations/jointfourierintegrand-integral.md) | 190 | `result-track:e329b346fec8f8a3f92a804327883e300be6a3064e44947db455345400ebd8fa` |
| 14 | `theorem` | [finite_correlation_fourier](../../../../MeasureAndIntegration/SourceHankelFourier.lean/declarations/finite-correlation-fourier.md) | 210 | `result-track:6b91f50a0d75932ea36d51e660c122f711efaa482402fbdf3be6569f56cb845d` |
| 15 | `theorem` | [finite_hankel_fourier](../../../../MeasureAndIntegration/SourceHankelFourier.lean/declarations/finite-hankel-fourier.md) | 226 | `result-track:1cfa9a1b753bf607e21cdb2b455ab5b46e1c708e637dcc5221c82cb85c8d7953` |
| 16 | `theorem` | [joint_phase_is_not_conjugate_phase](../../../../MeasureAndIntegration/SourceHankelFourier.lean/declarations/joint-phase-is-not-conjugate-phase.md) | 247 | `result-track:9aa6f204566f5dd4c3551ea63d34e6a3059b28fbe419105b71323dab46ba5386` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1280951ee1ae1284621e8e39480fe4ef04a66b5ebe518b122cb47ad121ed859 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/22SourceHankelFourier/Variant9ad791b23fbf38e0678c8db5b0a7172125a969b704a7f6e246672449d397f615.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/22SourceHankelFourier/Variant9ad791b23fbf38e0678c8db5b0a7172125a969b704a7f6e246672449d397f615.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
