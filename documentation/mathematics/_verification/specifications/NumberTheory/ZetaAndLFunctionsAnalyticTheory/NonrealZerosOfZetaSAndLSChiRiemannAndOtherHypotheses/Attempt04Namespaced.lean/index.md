# Verification target: Attempt04 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e67ca7ec286cdf042576ff152ab4e04b4aac410",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Attempt04/Variantf8d77398f3f494ee73286f19934a5f9d8fa7f6fa8085000043f1e811dabbb38f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04Namespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e67ca7ec286cdf042576ff152ab4e04b4aac410`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Attempt04/Variantf8d77398f3f494ee73286f19934a5f9d8fa7f6fa8085000043f1e811dabbb38f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Attempt04/Variantf8d77398f3f494ee73286f19934a5f9d8fa7f6fa8085000043f1e811dabbb38f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualXiLaplaceMellin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualZetaPoleCleared](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04Namespaced.lean/declarations/actualzetapolecleared.md) | 28 | `declaration-track:2dfa75efc2611b6889e29c0862f9faa441a3ff243c5212c0129beeb8054bcc41` |
| 2 | `def` | [actualContinuousSevenPoleNumerator](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04Namespaced.lean/declarations/actualcontinuoussevenpolenumerator.md) | 32 | `declaration-track:d1c52a81a66217dd99fe60b81ebd6ba63f0d8d60b357d874bf4dd85e004d74d4` |
| 3 | `def` | [actualContinuousSevenPoleRegularization](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04Namespaced.lean/declarations/actualcontinuoussevenpoleregularization.md) | 35 | `declaration-track:466c96c88c3b4119d772881aadac01512286c5dc0fc3ad47134c2577cf42066b` |
| 4 | `def` | [actualXiSevenReturn](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04Namespaced.lean/declarations/actualxisevenreturn.md) | 39 | `declaration-track:6c98fab59be7a54c98d5a166fd8dd86bcec918cbd526bb9602dd8615c18d30a9` |
| 5 | `def` | [actualXiSevenReturnRegularization](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04Namespaced.lean/declarations/actualxisevenreturnregularization.md) | 45 | `declaration-track:25d3b003ec91be4f5a84025a440b3b02d98697e44f1df66b3c0d6aaa1b4118ff` |
| 6 | `theorem` | [actualZetaPoleCleared_at_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04Namespaced.lean/declarations/actualzetapolecleared-at-one.md) | 52 | `result-track:09343b64a3040d69c48cf0b405c63c57f67e38a8258d760481a3e83459382d40` |
| 7 | `theorem` | [actualZetaPoleCleared_eq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04Namespaced.lean/declarations/actualzetapolecleared-eq.md) | 56 | `result-track:c1215812de637235d5ce1ca6c1b3057da12ce224ec8710ad099e13f960be0192` |
| 8 | `theorem` | [actualZetaPoleCleared_analyticAt_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04Namespaced.lean/declarations/actualzetapolecleared-analyticat-one.md) | 69 | `result-track:4ba400386402d751cfb165e7e6e72cfec7c4c7a7dc282c034d8d0411ab2213d5` |
| 9 | `theorem` | [numerator_differentiable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04Namespaced.lean/declarations/numerator-differentiable.md) | 77 | `result-track:5548c86d0cd92e9bdee6cef37f363994eae79bcc78d0cbd5a68aa00566d5f062` |
| 10 | `theorem` | [actualContinuousSevenPoleNumerator_at_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04Namespaced.lean/declarations/actualcontinuoussevenpolenumerator-at-one.md) | 83 | `result-track:d5742f46cd84cf9556fe0302f4a28a317223b8ed49681578320ee154ed83505b` |
| 11 | `theorem` | [actualContinuousSevenPoleRegularization_analyticAt_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04Namespaced.lean/declarations/actualcontinuoussevenpoleregularization-analyticat-one.md) | 87 | `result-track:407502556c5b1ecf0d2087de3f5d2063ebc8d5feec583689769bbb3ca141fa0a` |
| 12 | `theorem` | [seven_power_hasDerivAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04Namespaced.lean/declarations/seven-power-hasderivat.md) | 93 | `result-track:fbfd117725d9c0d065031928d1f855cbff4c6cf808d3e2fe9a612cebb4f0c15f` |
| 13 | `theorem` | [actualContinuousSevenPoleRegularization_at_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04Namespaced.lean/declarations/actualcontinuoussevenpoleregularization-at-one.md) | 101 | `result-track:b425b48bf3c16559215246dbdf694d0da95259a7ffb52fd190b0632649cd9dda` |
| 14 | `theorem` | [poleCleared_deriv](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04Namespaced.lean/declarations/polecleared-deriv.md) | 110 | `result-track:09ace0024f06108d5d66ed40b6f87f2c71d24f3ba16380d086e18c9945650083` |
| 15 | `theorem` | [actualZeta_logDerivative_pole_identity](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04Namespaced.lean/declarations/actualzeta-logderivative-pole-identity.md) | 121 | `result-track:6156bc724ec6071ef29efa57630997476445adcfdfb74502b45e9f97c3f291cb` |
| 16 | `theorem` | [closedHead_analyticAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04Namespaced.lean/declarations/closedhead-analyticat.md) | 129 | `result-track:0aa063e9be7b83d6a22e0e91ca00bf6ec8e21644dc864c243f2542a3a8602918` |
| 17 | `theorem` | [actualXiSevenReturnRegularization_analyticAt_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04Namespaced.lean/declarations/actualxisevenreturnregularization-analyticat-one.md) | 141 | `result-track:fd9b316013fc49b8c0eab75844bc6a1d4446a77fcd9ff211c2844fd76004a8ca` |
| 18 | `theorem` | [actualXiSevenReturn_eq_regularization](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04Namespaced.lean/declarations/actualxisevenreturn-eq-regularization.md) | 152 | `result-track:4600a785619c8671df0582caca3f2f8946d8633ad09e10542eeec1a2311089c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d6015f6ece692c6a39dd9b072f8522fa57adc9afc31679445b0bbef3fff69c64 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/Attempt04/Variantf8d77398f3f494ee73286f19934a5f9d8fa7f6fa8085000043f1e811dabbb38f.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/Attempt04/Variantf8d77398f3f494ee73286f19934a5f9d8fa7f6fa8085000043f1e811dabbb38f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
