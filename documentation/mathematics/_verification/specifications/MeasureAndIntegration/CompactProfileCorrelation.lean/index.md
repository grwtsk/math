# Verification target: GRWTSK.Analysis.Convolution.CompactProfileCorrelation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b22a87177a8f6ef0ca63a159330480af9f1d8e1b",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Convolution/CompactProfileCorrelation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b22a87177a8f6ef0ca63a159330480af9f1d8e1b`.

Source path: `GRWTSK/Analysis/Convolution/CompactProfileCorrelation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Convolution/CompactProfileCorrelation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.InnerProductSpace.DilationGram`](../../../../MeasureAndIntegration/DilationGram.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Calculus.ContDiff.Convolution` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Deriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bump_third_continuous](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/bump-third-continuous.md) | 27 | `result-track:4c02bc72def0083981b0ae99bb8c52c1034d684a9f5460740725a0fc873b5073` |
| 2 | `def` | [sourceThird](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/sourcethird.md) | 39 | `declaration-track:399171569fc26d7a5be7c1dd90ecb10189fd588802f06ac056530c313dc26305` |
| 3 | `theorem` | [sourceSecond_hasDerivAt](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/sourcesecond-hasderivat.md) | 42 | `result-track:bd40c75c904a0fe3bad6235fba1577b4ed00b8f58f834777278765885ca6d17f` |
| 4 | `def` | [residualFirst](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/residualfirst.md) | 51 | `declaration-track:3ee7f9cd8d2518dc321d46fce2309b4c2cec8a7fbcad872071a1315cf1581658` |
| 5 | `theorem` | [residual_hasDerivAt](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/residual-hasderivat.md) | 53 | `result-track:b7d9a596d436c3ed27c8b7901a632796969cdf48ec1f729f5a66ab95d82737ba` |
| 6 | `theorem` | [residual_first_continuous](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/residual-first-continuous.md) | 60 | `result-track:9a9a4272e2e5b6db630721ec0b218e6ceb435cf897291abd904e37e6a7b8ebc6` |
| 7 | `theorem` | [residual_contDiff_one](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/residual-contdiff-one.md) | 71 | `result-track:736274ab97e97f54b265e62d0f28a86e1678cd3b99d4d44e35c9420a5c3fda7f` |
| 8 | `theorem` | [normalized_source_contDiff_one](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/normalized-source-contdiff-one.md) | 78 | `result-track:c05f443aeffe80bbe8d626f1e37f649ca654c47d75efea39737c2f3141c89081` |
| 9 | `theorem` | [normalized_source_zero_outside](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/normalized-source-zero-outside.md) | 81 | `result-track:137a2679c83909802feb60cef13479b94b98e206378bfba1674df866abb0abf9` |
| 10 | `theorem` | [normalized_source_hasCompactSupport](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/normalized-source-hascompactsupport.md) | 85 | `result-track:c8a4c899e079fa59ba18c5dfe4bb735cb07d035724c7491fefdd3de25b40d0aa` |
| 11 | `theorem` | [normalized_source_integrable](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/normalized-source-integrable.md) | 89 | `result-track:0b1aea3191a39d822480a3389fc608e738c544799e1dc8f16a294204166955b2` |
| 12 | `def` | [reflectedSource](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/reflectedsource.md) | 94 | `declaration-track:e7117dadaf7cc1cf5cbf76a8b3d7657027e56de35c48b92d419218a50e9885c0` |
| 13 | `theorem` | [reflected_source_contDiff_one](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/reflected-source-contdiff-one.md) | 96 | `result-track:46e6a169db8e53975fbee9ae8135ed28b1949a05f3f3c44859b6efce54bfce40` |
| 14 | `theorem` | [reflected_source_hasCompactSupport](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/reflected-source-hascompactsupport.md) | 99 | `result-track:46f42e065d0c50c7b0d2e1ade8795bde24798875ecf24b5b4fd528d07d05f2db` |
| 15 | `theorem` | [correlation_eq_convolution](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/correlation-eq-convolution.md) | 109 | `result-track:6e0dd182083815ad2fbad4f12beded2e58c7ae48942847599a2c30218024e62f` |
| 16 | `theorem` | [correlation_contDiff_one](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/correlation-contdiff-one.md) | 118 | `result-track:dad0d4c872f5319236596ea244a13180dfe647104d291b13bec934f2740dbbd3` |
| 17 | `theorem` | [correlation_deriv_eq_convolution](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/correlation-deriv-eq-convolution.md) | 124 | `result-track:e64f25f9ab4394f4f256fa4ee7f55edda88eae4762cc47f7de36899c99a2a641` |
| 18 | `theorem` | [correlation_deriv_contDiff_one](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/correlation-deriv-contdiff-one.md) | 133 | `result-track:182820e788080088e8800df773b099ffb89378d7c584af735da0bcc1725294b5` |
| 19 | `theorem` | [correlation_contDiff_two](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/correlation-contdiff-two.md) | 141 | `result-track:cbcc8cd97b2009db0a66e10510965822762e60ca0c8e31a26843fc832431ade6` |
| 20 | `theorem` | [reflected_source_deriv](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/reflected-source-deriv.md) | 147 | `result-track:06b1ef3ee07ead486063f892e2ebd90dde9a2ce0a5b669f8958cd228ec736efb` |
| 21 | `theorem` | [correlation_second_deriv_eq_integral](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/correlation-second-deriv-eq-integral.md) | 155 | `result-track:6ffe257ae343c6bdbfc87e0603f788dc3f0c518928378a8c64b8b11369c105cb` |
| 22 | `theorem` | [polarity_kernel_continuous](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/polarity-kernel-continuous.md) | 169 | `result-track:718a72146fdcdbea39de189cf4992de6ce4222c3ced90510e8d712b93e7b0423` |
| 23 | `theorem` | [correlation_zero_of_two_mul_lt](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/correlation-zero-of-two-mul-lt.md) | 178 | `result-track:beb07c1507a41e204936e582777d05c54f15b9c0256c83aed5b0c4552a6da9d9` |
| 24 | `theorem` | [correlation_eventually_zero](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/correlation-eventually-zero.md) | 191 | `result-track:22d9ace967cc9f3f7e15e7dacccb9b0000b132ddcf1b7a6154a65eb2e5baa4a1` |
| 25 | `theorem` | [correlation_derivatives_zero_of_two_mul_lt](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/correlation-derivatives-zero-of-two-mul-lt.md) | 196 | `result-track:84e2aa77641851b1db7d8a82013e3a2d1ef00cb28677d312f0e7625b454b09ab` |
| 26 | `theorem` | [polarity_kernel_zero_of_upper_tail](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/polarity-kernel-zero-of-upper-tail.md) | 208 | `result-track:a860b7bd332fde8e75ec0b71af16636db2d37741dd7c0f7ec234b1d88f2ca0ff` |
| 27 | `theorem` | [correlation_hasCompactSupport](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/correlation-hascompactsupport.md) | 224 | `result-track:180e057c859d9ddc80b0d5569e4364d7788016ca321250ee1f88579cab7023d5` |
| 28 | `theorem` | [correlation_deriv_integrable](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/correlation-deriv-integrable.md) | 230 | `result-track:a6701936261804e82e293d395a1a8b8499a6edb77692edfa02af53b0b39d45c2` |
| 29 | `theorem` | [correlation_second_deriv_integrable](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/correlation-second-deriv-integrable.md) | 235 | `result-track:672e7016f757dbec3b29b766b2b2eb26171871a992e1e5066a9d545e35b43dbe` |
| 30 | `theorem` | [polarity_kernel_integrable](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/polarity-kernel-integrable.md) | 240 | `result-track:3b66bc77744443c7a7fa62d076a0952c94021defa26251e505a7dcce22ca610c` |
| 31 | `theorem` | [polarity_kernel_zero_of_empty_inventory](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/polarity-kernel-zero-of-empty-inventory.md) | 252 | `result-track:a5eb56c655a70860c37889c15f7a66085adf2c0d9cc0608d244812126b174c10` |
| 32 | `theorem` | [strict_sector_empty_of_small_scale](../../../../MeasureAndIntegration/CompactProfileCorrelation.lean/declarations/strict-sector-empty-of-small-scale.md) | 261 | `result-track:d4ec0d44c5514455ba0c1dc30181ad64ebf32c519ccb9ed8b2d64a6d425fd63e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=96e611daa6e3fad0400fe30625a09f595c5e9d0ad61fcff9423f66e8ee2ad64b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Convolution/CompactProfileCorrelation.lean","GRWTSK/_verification/specifications/Analysis/Convolution/CompactProfileCorrelation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
