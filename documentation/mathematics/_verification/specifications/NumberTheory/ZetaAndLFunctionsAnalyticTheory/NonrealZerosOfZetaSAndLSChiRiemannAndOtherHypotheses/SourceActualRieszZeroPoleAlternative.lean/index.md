# Verification target: Source Actual Riesz Zero Pole Alternative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0110ef8939ac44840ac2971e733226a8c74a10b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszZeroPole/Variant831983674e6bfca6614661f46456378657d3d4166a99b37bacc931c7dd8b50a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPoleAlternative.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPoleAlternative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0110ef8939ac44840ac2971e733226a8c74a10b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszZeroPole/Variant831983674e6bfca6614661f46456378657d3d4166a99b37bacc931c7dd8b50a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszZeroPole/Variant831983674e6bfca6614661f46456378657d3d4166a99b37bacc931c7dd8b50a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszCriticalCenter` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Meromorphic.Order` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actual_zero_ne_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPoleAlternative.lean/declarations/actual-zero-ne-one.md) | 18 | `result-track:1c2a790af3ef2854854b06519ec6c5feb7f01145d5f392041e7697ce0c5ae050` |
| 2 | `theorem` | [actual_zero_finite_order](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPoleAlternative.lean/declarations/actual-zero-finite-order.md) | 25 | `result-track:beca9ad64da77419ea2e09fc2cd1b170f80487721f82715bbe5c2d66d689be64` |
| 3 | `theorem` | [actualRiesz_zero_order_and_multiplicity](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPoleAlternative.lean/declarations/actualriesz-zero-order-and-multiplicity.md) | 33 | `result-track:1333fdad155abc8453a157837e830dbf9bf43241f3085c989270eabd02faee6f` |
| 4 | `theorem` | [actual_zeta_logDeriv_order](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPoleAlternative.lean/declarations/actual-zeta-logderiv-order.md) | 41 | `result-track:ff73e9043bee004ffe23fa7e4e58f029f54bcf5f1c55c8988e649f2ff9675218` |
| 5 | `theorem` | [translated_neg_logDeriv_meromorphic](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPoleAlternative.lean/declarations/translated-neg-logderiv-meromorphic.md) | 54 | `result-track:c119fbd42f36c3c678242b25b852ddb369dc4569cac7a67ceb6dd94edeb8c775` |
| 6 | `theorem` | [translated_neg_logDeriv_order](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPoleAlternative.lean/declarations/translated-neg-logderiv-order.md) | 66 | `result-track:6068cb93e91c93f69d0c04a25b9e4afdec56ad5823840e731712ddcce478fd03` |
| 7 | `theorem` | [rational_subtraction_analytic](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPoleAlternative.lean/declarations/rational-subtraction-analytic.md) | 76 | `result-track:cebe1251d97c97e2aa79b9690e739109c2a993322fc99b13da2b6daa02c906d0` |
| 8 | `theorem` | [numerator_meromorphic](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPoleAlternative.lean/declarations/numerator-meromorphic.md) | 86 | `result-track:8738c312d388a15218d4009261245619a00ff3e80d592c890f280d7d781ffdae` |
| 9 | `theorem` | [actualRieszCriticalNumerator_order_at_actual_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPoleAlternative.lean/declarations/actualrieszcriticalnumerator-order-at-actual-zero.md) | 93 | `result-track:5e8c924321003ec7aaa3b19ba194755e93e48ae9132060b6b6227786eb1c305c` |
| 10 | `theorem` | [actualRieszCriticalNumerator_no_extension_at_actual_right_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRieszZeroPoleAlternative.lean/declarations/actualrieszcriticalnumerator-no-extension-at-actual-right-zero.md) | 108 | `result-track:71ce6ff07c7c831ca214c526dc334137f3c93e637affc62db0c30f456688b1c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2a99abbec8b0b3ac56a4237876fdda8ed880a58ca9724a1a7a43a50fe2fe40ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszZeroPole/Variant831983674e6bfca6614661f46456378657d3d4166a99b37bacc931c7dd8b50a8.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszZeroPole/Variant831983674e6bfca6614661f46456378657d3d4166a99b37bacc931c7dd8b50a8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
