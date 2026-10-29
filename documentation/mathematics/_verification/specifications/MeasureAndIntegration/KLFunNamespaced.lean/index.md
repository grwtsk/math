# Verification target: KLFun Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9d61b8ab2d4ae9687c889a702a218e945834a71",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Varianta3d7cdd6187b57ce8146dd7576240ff7e8a5494e159618883bdc63ccf29ea09f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/KLFunNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/KLFunNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9d61b8ab2d4ae9687c889a702a218e945834a71`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Varianta3d7cdd6187b57ce8146dd7576240ff7e8a5494e159618883bdc63ccf29ea09f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Varianta3d7cdd6187b57ce8146dd7576240ff7e8a5494e159618883bdc63ccf29ea09f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.NegMulLog` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Decomposition.IntegralRNDeriv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.LogLikelihoodRatio` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [klFun](../../../../MeasureAndIntegration/KLFunNamespaced.lean/declarations/klfun.md) | 57 | `declaration-track:73338702f52353efc360b08b5fa4ddcbd957a7f412f8a2bd0b1186e2a3e984c9` |
| 2 | `lemma` | [klFun_apply](../../../../MeasureAndIntegration/KLFunNamespaced.lean/declarations/klfun-apply.md) | 59 | `result-track:5eced8568480d41c0f38ef490722d31e31037af387c579a98ba5bee3e604a9e6` |
| 3 | `lemma` | [klFun_zero](../../../../MeasureAndIntegration/KLFunNamespaced.lean/declarations/klfun-zero.md) | 61 | `result-track:fca7aa4056544942216ff5c12a652b15ee04cabd15253e39e087874813b1eeb3` |
| 4 | `lemma` | [klFun_one](../../../../MeasureAndIntegration/KLFunNamespaced.lean/declarations/klfun-one.md) | 63 | `result-track:7126fc00e4dcca569f02b54cced130b6356800d1bf71105daa0beac17c2d9c00` |
| 5 | `lemma` | [strictConvexOn_klFun](../../../../MeasureAndIntegration/KLFunNamespaced.lean/declarations/strictconvexon-klfun.md) | 66 | `result-track:5b7b6bc46be52d101373aeffbed7a366904d39cd6061632855121ca2eae50c2a` |
| 6 | `lemma` | [convexOn_klFun](../../../../MeasureAndIntegration/KLFunNamespaced.lean/declarations/convexon-klfun.md) | 71 | `result-track:0c06c28747a0c7ea3abfd9e8a031603cb0aa6bde1200aa3b92519de449e42e71` |
| 7 | `lemma` | [convexOn_Ioi_klFun](../../../../MeasureAndIntegration/KLFunNamespaced.lean/declarations/convexon-ioi-klfun.md) | 75 | `result-track:a2eec2d25e44dc3dd06f38503a801f437ead78d9edb8a2570e594f164589d41c` |
| 8 | `lemma` | [continuous_klFun](../../../../MeasureAndIntegration/KLFunNamespaced.lean/declarations/continuous-klfun.md) | 80 | `result-track:fcccc4ecf6612c107b46ff83d81f7b0b526f5c2e8b7fca53e754b35d679b0e4f` |
| 9 | `lemma` | [measurable_klFun](../../../../MeasureAndIntegration/KLFunNamespaced.lean/declarations/measurable-klfun.md) | 84 | `result-track:4fc23cd3f8ad42fb7b3323e38a07473b140d7247d9d09eed7ed20767119cefb9` |
| 10 | `lemma` | [stronglyMeasurable_klFun](../../../../MeasureAndIntegration/KLFunNamespaced.lean/declarations/stronglymeasurable-klfun.md) | 88 | `result-track:b010a4be27ae2f594210e85fc768384af97e6bc9a6b3bf29ab0fc123bcfd2c93` |
| 11 | `lemma` | [hasDerivAt_klFun](../../../../MeasureAndIntegration/KLFunNamespaced.lean/declarations/hasderivat-klfun.md) | 93 | `result-track:84949e27b3785c0632e54f8164b37aa9b801e8f763f874083412fda1acedfebd` |
| 12 | `lemma` | [not_differentiableAt_klFun_zero](../../../../MeasureAndIntegration/KLFunNamespaced.lean/declarations/not-differentiableat-klfun-zero.md) | 97 | `result-track:539c474a757dbe8ada97008353148543f118587464b2029f23cb7cf662c69f39` |
| 13 | `lemma` | [deriv_klFun](../../../../MeasureAndIntegration/KLFunNamespaced.lean/declarations/deriv-klfun.md) | 103 | `result-track:2ed53bf2424092a71353e6c7adff263f8d9be8607d6b0bb0c8f2100adda4f349` |
| 14 | `lemma` | [not_differentiableWithinAt_klFun_Ioi_zero](../../../../MeasureAndIntegration/KLFunNamespaced.lean/declarations/not-differentiablewithinat-klfun-ioi-zero.md) | 110 | `result-track:74d5d51d139eed192824686426a0599fe64dce38da49a0ac9ee155122b0cfb5c` |
| 15 | `lemma` | [not_differentiableWithinAt_klFun_Iio_zero](../../../../MeasureAndIntegration/KLFunNamespaced.lean/declarations/not-differentiablewithinat-klfun-iio-zero.md) | 115 | `result-track:0eed74fabcc30c56f0e29d6ef1ae813fb0602f97dec81c876000bb9a0d29211f` |
| 16 | `lemma` | [rightDeriv_klFun](../../../../MeasureAndIntegration/KLFunNamespaced.lean/declarations/rightderiv-klfun.md) | 123 | `result-track:b37174fa1ab29258714f498e159a062bd94d4b48e3d89c960b05614859365d65` |
| 17 | `lemma` | [leftDeriv_klFun](../../../../MeasureAndIntegration/KLFunNamespaced.lean/declarations/leftderiv-klfun.md) | 132 | `result-track:4f401893a178767db2576d28ee30c269550e4e17bd9d6592277933ac1f882519` |
| 18 | `lemma` | [rightDeriv_klFun_one](../../../../MeasureAndIntegration/KLFunNamespaced.lean/declarations/rightderiv-klfun-one.md) | 138 | `result-track:6323cec15bcd8682958a79668b2cd2c62002adadf6e61b7c2842c0a2af1e3eef` |
| 19 | `lemma` | [leftDeriv_klFun_one](../../../../MeasureAndIntegration/KLFunNamespaced.lean/declarations/leftderiv-klfun-one.md) | 140 | `result-track:8e21818ee00b8f64683fdf5b278a7810ca9722e7c4b18807ca612067f403a5f8` |
| 20 | `lemma` | [tendsto_rightDeriv_klFun_atTop](../../../../MeasureAndIntegration/KLFunNamespaced.lean/declarations/tendsto-rightderiv-klfun-attop.md) | 142 | `result-track:ede1b698aeb8777454b0f631008213331ef9f7e45532ac4e8b2c2aa662fa9079` |
| 21 | `lemma` | [isMinOn_klFun](../../../../MeasureAndIntegration/KLFunNamespaced.lean/declarations/isminon-klfun.md) | 149 | `result-track:02a3d4bedb5f201f0ee744316c68ddbe9c4b41173a19b68dac81fdfe4b598337` |
| 22 | `lemma` | [klFun_nonneg](../../../../MeasureAndIntegration/KLFunNamespaced.lean/declarations/klfun-nonneg.md) | 153 | `result-track:7c3ebe316bc6ec04a2ae48e8ef43d09dbe4726b64330dc8e81ad6f272069402f` |
| 23 | `lemma` | [klFun_eq_zero_iff](../../../../MeasureAndIntegration/KLFunNamespaced.lean/declarations/klfun-eq-zero-iff.md) | 155 | `result-track:44978f59cb810d567dd72057d6e1e4470260bc71820107c566130e32e55903c0` |
| 24 | `lemma` | [tendsto_klFun_atTop](../../../../MeasureAndIntegration/KLFunNamespaced.lean/declarations/tendsto-klfun-attop.md) | 160 | `result-track:fb4ec38d01e5dd2a76ebf2d6ae9426a58046227b12951e9705c4081f0373171a` |
| 25 | `lemma` | [integrable_klFun_rnDeriv_iff](../../../../MeasureAndIntegration/KLFunNamespaced.lean/declarations/integrable-klfun-rnderiv-iff.md) | 173 | `result-track:3b86c2a65390079814d3f4b52b92ae661682e3d569eeafd8b9ece94e1e5dca44` |
| 26 | `lemma` | [integral_klFun_rnDeriv](../../../../MeasureAndIntegration/KLFunNamespaced.lean/declarations/integral-klfun-rnderiv.md) | 182 | `result-track:6ee25c22a0bb9ef5cf29baed1f55ca3404601471fecf10117a13a5d6105fe5e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=723a52fed6fa3393e46c8a7493962c623e76153d62df5b636723ab06f737f038 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Varianta3d7cdd6187b57ce8146dd7576240ff7e8a5494e159618883bdc63ccf29ea09f.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/KLFun/Varianta3d7cdd6187b57ce8146dd7576240ff7e8a5494e159618883bdc63ccf29ea09f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
