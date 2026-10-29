# Verification target: Positive Dilation Attempt07 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82f3cfe08117fb4ab091bbf72d8aff3743758efb",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variantadcc21912ea711f0ddb3f1dc01470b132e9bb54e7b8fac4c301cd6655227c510.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PositiveDilationAttempt07Namespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PositiveDilationAttempt07Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82f3cfe08117fb4ab091bbf72d8aff3743758efb`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variantadcc21912ea711f0ddb3f1dc01470b132e9bb54e7b8fac4c301cd6655227c510.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variantadcc21912ea711f0ddb3f1dc01470b132e9bb54e7b8fac4c301cd6655227c510.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMuntzBound` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveMeasure](../../../../MeasureAndIntegration/PositiveDilationAttempt07Namespaced.lean/declarations/positivemeasure.md) | 22 | `declaration-track:48e859964658196a0faa6941836ee07c59eaed1748152d9a951801dbaaae5e42` |
| 2 | `abbrev` | [PositiveL2](../../../../MeasureAndIntegration/PositiveDilationAttempt07Namespaced.lean/declarations/positivel2.md) | 23 | `declaration-track:60a0ce84296e9b1f26e7c42e44b2d0f6d94bb4dc7d8c20710d830153e8bbbf12` |
| 3 | `def` | [dilateFunc](../../../../MeasureAndIntegration/PositiveDilationAttempt07Namespaced.lean/declarations/dilatefunc.md) | 25 | `declaration-track:40209a4d2d6cde76470f4793df4b46d80ac69f8e7d38cc947b5cbdb10d225d9a` |
| 4 | `theorem` | [positiveMeasure_map_mul](../../../../MeasureAndIntegration/PositiveDilationAttempt07Namespaced.lean/declarations/positivemeasure-map-mul.md) | 27 | `result-track:44d2f87d7cb76bf2703e41688eeb74273279d20641c7c9ae100dce2baf163d80` |
| 5 | `theorem` | [positive_mul_quasi](../../../../MeasureAndIntegration/PositiveDilationAttempt07Namespaced.lean/declarations/positive-mul-quasi.md) | 36 | `result-track:f1b214498787e6ac3af87d952cc96d95d28a4e476b9062818d4011bc3ff84218` |
| 6 | `theorem` | [dilateFunc_memLp](../../../../MeasureAndIntegration/PositiveDilationAttempt07Namespaced.lean/declarations/dilatefunc-memlp.md) | 42 | `result-track:33d34f94323d052b0c088100c4c2b6605e35e17d0acb75db6241c6c50ed32fff` |
| 7 | `def` | [dilate](../../../../MeasureAndIntegration/PositiveDilationAttempt07Namespaced.lean/declarations/dilate.md) | 49 | `declaration-track:c5d9a7ab6f0f1fc2ed36265ff707281a6a80300cd93003540a41fdcf7e32bb99` |
| 8 | `theorem` | [dilate_ae](../../../../MeasureAndIntegration/PositiveDilationAttempt07Namespaced.lean/declarations/dilate-ae.md) | 52 | `result-track:a0eb802e28f46e2848ad76ea12e3c9620b029153cf0273d61291bcdcc76ca36a` |
| 9 | `theorem` | [norm_sq_integral](../../../../MeasureAndIntegration/PositiveDilationAttempt07Namespaced.lean/declarations/norm-sq-integral.md) | 56 | `result-track:3eced2961638b0ceb4de987d0c3eae9db523ecc780155b4ace7d1ddc21366c7f` |
| 10 | `theorem` | [dilate_norm_sq](../../../../MeasureAndIntegration/PositiveDilationAttempt07Namespaced.lean/declarations/dilate-norm-sq.md) | 71 | `result-track:918e765ea31c49689382df8e80c1993c7ac125f739d7e0fb3005c8799713b8d6` |
| 11 | `theorem` | [dilate_norm](../../../../MeasureAndIntegration/PositiveDilationAttempt07Namespaced.lean/declarations/dilate-norm.md) | 85 | `result-track:077a5f9919e67283664af09f1fb3c9a7c5a63387a2735e01fcf812f97a02bdb7` |
| 12 | `theorem` | [dilate_one](../../../../MeasureAndIntegration/PositiveDilationAttempt07Namespaced.lean/declarations/dilate-one.md) | 88 | `result-track:d65a4154dee9a7f2c34956237dd8dfd9f82dc690f9c84063c22f54b211cfd80b` |
| 13 | `theorem` | [dilate_comp](../../../../MeasureAndIntegration/PositiveDilationAttempt07Namespaced.lean/declarations/dilate-comp.md) | 93 | `result-track:55e4e9f9f41a4e467e9ead43feb4a7ceea23b6dfd0e8bd898a2598910b8c8533` |
| 14 | `theorem` | [dilate_inverse](../../../../MeasureAndIntegration/PositiveDilationAttempt07Namespaced.lean/declarations/dilate-inverse.md) | 105 | `result-track:194abe8c7f1394873c8778f9af7028102323c02f6b0aab9ea0ab1a940bc97d8f` |
| 15 | `theorem` | [dilate_add](../../../../MeasureAndIntegration/PositiveDilationAttempt07Namespaced.lean/declarations/dilate-add.md) | 110 | `result-track:b9c7a19cba30d9c9519305643dcba9599632f47eb5b62809ed0fc66155abf44d` |
| 16 | `theorem` | [dilate_smul](../../../../MeasureAndIntegration/PositiveDilationAttempt07Namespaced.lean/declarations/dilate-smul.md) | 120 | `result-track:32e2a42cc813b410e2e757915c203158717bf144ac9a3a780ba9d531332c03ac` |
| 17 | `def` | [dilationIsometry](../../../../MeasureAndIntegration/PositiveDilationAttempt07Namespaced.lean/declarations/dilationisometry.md) | 131 | `declaration-track:0815b156f3300063f16fe8a26d4f9c4cb32e88725608c6b7b6bb35eb96e3d006` |
| 18 | `def` | [dilationEquiv](../../../../MeasureAndIntegration/PositiveDilationAttempt07Namespaced.lean/declarations/dilationequiv.md) | 137 | `declaration-track:0468abcd6b398a7f0854321b5e3a3a1d78144b3cdaef560d1604e25632d8c13b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=84d4446dd0482086353e32b79a16fff2e87de30667149b497eba4a3733247861 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variantadcc21912ea711f0ddb3f1dc01470b132e9bb54e7b8fac4c301cd6655227c510.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variantadcc21912ea711f0ddb3f1dc01470b132e9bb54e7b8fac4c301cd6655227c510.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
