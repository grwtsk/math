# Verification target: Convolution Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "238acbc272b7a5ea1247280622a8f36271612a9f",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantfd9ec0f07d44ee0b2a3b3b119d5d27e930d668ff556c6294ddcd005e7bfd55b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConvolutionNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConvolutionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `238acbc272b7a5ea1247280622a8f36271612a9f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantfd9ec0f07d44ee0b2a3b3b119d5d27e930d668ff556c6294ddcd005e7bfd55b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantfd9ec0f07d44ee0b2a3b3b119d5d27e930d668ff556c6294ddcd005e7bfd55b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.InfiniteSum` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Convergence` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toArithmeticFunction](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConvolutionNamespaced.lean/declarations/toarithmeticfunction.md) | 44 | `declaration-track:e9bc08ee562b7c865023023090f6f44ed4e164ad26c8a92c007504902aac56fc` |
| 2 | `lemma` | [toArithmeticFunction_congr](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConvolutionNamespaced.lean/declarations/toarithmeticfunction-congr.md) | 48 | `result-track:af288d6e39b0919fdedb30f63be2f9109c4e7a259a93cd9bac1bcdc5c853d0d6` |
| 3 | `lemma` | [ArithmeticFunction.toArithmeticFunction_eq_self](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConvolutionNamespaced.lean/declarations/arithmeticfunction-toarithmeticfunction-eq-self.md) | 57 | `result-track:b42b5326e48eadf84c3919f0aa1f9ab793e41a2dcb9c68a20c8b5895d2585d70` |
| 4 | `def` | [LSeries.convolution](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConvolutionNamespaced.lean/declarations/lseries-convolution.md) | 66 | `declaration-track:1158ce0f24df0dc398f0e5b2fe96fc200445af10c304b84116031298c7f6020f` |
| 5 | `lemma` | [LSeries.convolution_congr](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConvolutionNamespaced.lean/declarations/lseries-convolution-congr.md) | 72 | `result-track:10fdd14e4103445ad0e364b69056dcd33a5de033bef5807e32313c3365232764` |
| 6 | `lemma` | [ArithmeticFunction.coe_mul](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConvolutionNamespaced.lean/declarations/arithmeticfunction-coe-mul.md) | 79 | `result-track:09ae970c297fb453f64b85a05e192fc8e0dc343b754f08cc055607f7ce2dbde4` |
| 7 | `lemma` | [convolution_def](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConvolutionNamespaced.lean/declarations/convolution-def.md) | 85 | `result-track:805b2730dfe192ee540e75b0d9a3dc8fa0c84b29d13684009d5f3d8b2da5bc40` |
| 8 | `lemma` | [convolution_map_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConvolutionNamespaced.lean/declarations/convolution-map-zero.md) | 92 | `result-track:86525f739c55ed0ef3e3d5455d979651d4da14e5e3b6108ef1f5e74f85c50585` |
| 9 | `lemma` | [term_convolution](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConvolutionNamespaced.lean/declarations/term-convolution-source-edition-2.md) | 102 | `result-track:68e916db3428424df1e07f8d600d191f73b33390a30b6874771a1b15c1613b04` |
| 10 | `lemma` | [term_convolution'](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConvolutionNamespaced.lean/declarations/term-convolution.md) | 118 | `result-track:212f21e5cc2132f480155e02f854d33f1580e0045accfd554fe2cc0b157915be` |
| 11 | `lemma` | [LSeriesHasSum.convolution](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConvolutionNamespaced.lean/declarations/lserieshassum-convolution.md) | 143 | `result-track:514be229663fa08484b160f7354d60a4e0c52ac324cde5ca54866a0f81c7e007` |
| 12 | `lemma` | [LSeries_convolution'](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConvolutionNamespaced.lean/declarations/lseries-convolution-source-edition-3.md) | 152 | `result-track:7c5f19cf7a5dbb01337a2c71a7e0db97d8acfa2a0995a0b3434d85593b81703c` |
| 13 | `lemma` | [LSeries_convolution](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConvolutionNamespaced.lean/declarations/lseries-convolution-source-edition-2.md) | 159 | `result-track:238fa1c4d60a5b09b928953e0ed8bd80f01471337439e2d445850fdd1e486240` |
| 14 | `lemma` | [LSeriesSummable.convolution](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConvolutionNamespaced.lean/declarations/lseriessummable-convolution.md) | 167 | `result-track:0b6d19f8441ef4cca8ff62fec48bc4cde4943169b74341aedd8a1ad174a8558f` |
| 15 | `lemma` | [LSeries.abscissaOfAbsConv_convolution_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConvolutionNamespaced.lean/declarations/lseries-abscissaofabsconv-convolution-le.md) | 174 | `result-track:9165676596875aec73f1a945e14d63cf7bcce4e463591b9ec013701c9bdf44bc` |
| 16 | `lemma` | [LSeriesHasSum_mul](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConvolutionNamespaced.lean/declarations/lserieshassum-mul.md) | 186 | `result-track:2da68e09b4c8e22a8ee21875c3b551942024cdae9f716bbb5b44cbe27567fdbd` |
| 17 | `lemma` | [LSeries_mul'](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConvolutionNamespaced.lean/declarations/lseries-mul.md) | 193 | `result-track:34fede729ee79c8b62905dfa93e141302c119faafcff6a15c23fc0cb11793472` |
| 18 | `lemma` | [LSeries_mul](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConvolutionNamespaced.lean/declarations/lseries-mul-source-edition-2.md) | 200 | `result-track:be257b4430183a85e54abfe30923c9f8396d2ce020daeeb1c0eef4501d9679d2` |
| 19 | `lemma` | [LSeriesSummable_mul](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConvolutionNamespaced.lean/declarations/lseriessummable-mul.md) | 207 | `result-track:6074efcede83f08067bfd162f4e88224b6ad1867674559d9731c843bb61f9baf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3667577519d7c3efeb3aff779f9e389dd4d4f1059c82f8eede487e92b121f33c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantfd9ec0f07d44ee0b2a3b3b119d5d27e930d668ff556c6294ddcd005e7bfd55b3.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantfd9ec0f07d44ee0b2a3b3b119d5d27e930d668ff556c6294ddcd005e7bfd55b3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
