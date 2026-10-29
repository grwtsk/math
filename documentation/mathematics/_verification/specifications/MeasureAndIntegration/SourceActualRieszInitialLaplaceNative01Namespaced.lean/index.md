# Verification target: Source Actual Riesz Initial Laplace Native01 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3336fd760a31dc6dd62bf80730421c93fbd263a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative01/Variantd7f3682412f228aa6628ddb3480f97f29c86150ffa1c8883df77f3bff75e399b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceActualRieszInitialLaplaceNative01Namespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceActualRieszInitialLaplaceNative01Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3336fd760a31dc6dd62bf80730421c93fbd263a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative01/Variantd7f3682412f228aa6628ddb3480f97f29c86150ffa1c8883df77f3bff75e399b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative01/Variantd7f3682412f228aa6628ddb3480f97f29c86150ffa1c8883df77f3bff75e399b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszCenteredReconstruction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realRampAntiderivative](../../../../MeasureAndIntegration/SourceActualRieszInitialLaplaceNative01Namespaced.lean/declarations/realrampantiderivative.md) | 28 | `declaration-track:6d10f1b5cd733d98bf0c12dc5c315285a2b68a69265bb7fab3cce5c67b895767` |
| 2 | `theorem` | [realRampAntiderivative_hasDerivAt](../../../../MeasureAndIntegration/SourceActualRieszInitialLaplaceNative01Namespaced.lean/declarations/realrampantiderivative-hasderivat.md) | 31 | `result-track:2c5719b57ea5d531da6491a02f945612b9eebc26b24c914c1f874c7f5f4c0ef8` |
| 3 | `theorem` | [realRampAntiderivative_tendsto](../../../../MeasureAndIntegration/SourceActualRieszInitialLaplaceNative01Namespaced.lean/declarations/realrampantiderivative-tendsto.md) | 41 | `result-track:bbc7f561ed5c406883cb1ee86acc5be807c9c5bca3889e809468efa4ffefa69e` |
| 4 | `theorem` | [realRamp_tail_integrable](../../../../MeasureAndIntegration/SourceActualRieszInitialLaplaceNative01Namespaced.lean/declarations/realramp-tail-integrable.md) | 54 | `result-track:cfae19ec43588ce54a896998638b22c3a47d7813c0dd66953bb29d221b0c3cf5` |
| 5 | `theorem` | [realRamp_tail_integral](../../../../MeasureAndIntegration/SourceActualRieszInitialLaplaceNative01Namespaced.lean/declarations/realramp-tail-integral.md) | 62 | `result-track:341fcace9959da51e72ddab8dee631a94aa1a0fe30dd278184ebcbf786f8b033` |
| 6 | `theorem` | [zeroOn_lower_integrable](../../../../MeasureAndIntegration/SourceActualRieszInitialLaplaceNative01Namespaced.lean/declarations/zeroon-lower-integrable.md) | 69 | `result-track:4a9d554590d30fd32b8c71d4c7096fb341e08a3344c8aa23964a3733d5fb2f22` |
| 7 | `theorem` | [realRamp_integrable](../../../../MeasureAndIntegration/SourceActualRieszInitialLaplaceNative01Namespaced.lean/declarations/realramp-integrable.md) | 75 | `result-track:0cfdb893d4d3ba4261526c7452b2da00b8639f64d188d0ce1309b8c8b14a70c3` |
| 8 | `theorem` | [realRamp_integral](../../../../MeasureAndIntegration/SourceActualRieszInitialLaplaceNative01Namespaced.lean/declarations/realramp-integral.md) | 84 | `result-track:74047408607e3b193c618ff4336f82d6988dd7391b121d7f983aa19913a27c5f` |
| 9 | `theorem` | [complexRamp_norm](../../../../MeasureAndIntegration/SourceActualRieszInitialLaplaceNative01Namespaced.lean/declarations/complexramp-norm.md) | 101 | `result-track:27c1ec88a35a60b1cc97a49d39a2a7e16c41413a802c9950a8635444ff1de6c7` |
| 10 | `theorem` | [actualSingleRieszRamp_integrable](../../../../MeasureAndIntegration/SourceActualRieszInitialLaplaceNative01Namespaced.lean/declarations/actualsinglerieszramp-integrable.md) | 110 | `result-track:63aef322c90807989bc24eafe203785ad9390fbb8bf1385ca0a0a24cb2ac47e8` |
| 11 | `theorem` | [actualSingleRieszRamp_integral_norm](../../../../MeasureAndIntegration/SourceActualRieszInitialLaplaceNative01Namespaced.lean/declarations/actualsinglerieszramp-integral-norm.md) | 120 | `result-track:8c31ebd7e7c152b880d1707880ea9ccc1e95d8bb2c368a37fd6476a999f72bca` |
| 12 | `def` | [complexRampAntiderivative](../../../../MeasureAndIntegration/SourceActualRieszInitialLaplaceNative01Namespaced.lean/declarations/complexrampantiderivative.md) | 126 | `declaration-track:5f2ba7fb3527dcb4c59092e68499d34b8bdc0e2522120ac075f091a9d4ae05e9` |
| 13 | `theorem` | [complexRampAntiderivative_hasDerivAt](../../../../MeasureAndIntegration/SourceActualRieszInitialLaplaceNative01Namespaced.lean/declarations/complexrampantiderivative-hasderivat.md) | 129 | `result-track:dfa957791d2d54d77e3df24ab5c04f4e5138632fa06e3553c8e56ec0dd256fb2` |
| 14 | `theorem` | [complex_exp_monomial_zero](../../../../MeasureAndIntegration/SourceActualRieszInitialLaplaceNative01Namespaced.lean/declarations/complex-exp-monomial-zero.md) | 141 | `result-track:1ac2df31e25bdd3e32e4568bf0eec7a7d7e4a3664086ae06b51b967340fbffb5` |
| 15 | `theorem` | [complexRampAntiderivative_tendsto](../../../../MeasureAndIntegration/SourceActualRieszInitialLaplaceNative01Namespaced.lean/declarations/complexrampantiderivative-tendsto.md) | 155 | `result-track:d70039183efc544312011ed7f89bedfa77cfbbd59f893b240f13328fab2f3a1a` |
| 16 | `theorem` | [actualSingleRieszRamp_integral](../../../../MeasureAndIntegration/SourceActualRieszInitialLaplaceNative01Namespaced.lean/declarations/actualsinglerieszramp-integral.md) | 169 | `result-track:f467638bc0a8552ec0f7030bc63750329e3793e167078f75084dd53a71a220ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f76d4926fe031a7d3435eac47acdbefe97dccdced93187ff657ebc81f1708a1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative01/Variantd7f3682412f228aa6628ddb3480f97f29c86150ffa1c8883df77f3bff75e399b.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative01/Variantd7f3682412f228aa6628ddb3480f97f29c86150ffa1c8883df77f3bff75e399b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
