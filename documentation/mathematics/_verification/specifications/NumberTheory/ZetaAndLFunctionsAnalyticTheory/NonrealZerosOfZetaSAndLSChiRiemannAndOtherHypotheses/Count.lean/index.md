# Verification target: Count

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3ad9933799b1a26238f961ca666316f6a89cced",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Count/Variant329656e156ca05e6aba3812fa86251a93d7b3b8f9f1a02b032735a0f8a997f5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Count.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Count.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3ad9933799b1a26238f961ca666316f6a89cced`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Count/Variant329656e156ca05e6aba3812fa86251a93d7b3b8f9f1a02b032735a0f8a997f5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Count/Variant329656e156ca05e6aba3812fa86251a93d7b3b8f9f1a02b032735a0f8a997f5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSummability` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.JensenFormula` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [poleCleared](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Count.lean/declarations/polecleared.md) | 11 | `declaration-track:7f0e472ddd3a6381916a8c3f67d2f8e56b418a063f709ce9b9df249f96e8e0f8` |
| 2 | `theorem` | [poleCleared_entire](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Count.lean/declarations/polecleared-entire.md) | 13 | `result-track:0fbab30f22d9dc0ed3257338bf87641397b24380f8890f1c6ff37ce1466a2998` |
| 3 | `theorem` | [poleCleared_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Count.lean/declarations/polecleared-zero.md) | 18 | `result-track:e1d150b1ce2742d9c7ff81f1902e88c75474023769d9777baeabc2efeb2e8767` |
| 4 | `theorem` | [poleCleared_eq_completed](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Count.lean/declarations/polecleared-eq-completed.md) | 20 | `result-track:42e1c7f15564deb41f46dbb87989bf2c9c7ef7048cd26adff2806a4008c0b429` |
| 5 | `theorem` | [poleCleared_order](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Count.lean/declarations/polecleared-order.md) | 28 | `result-track:1de43b38c562fafdccf5f685e79327f31b66bd5e51127dd3749abe65ecbcd5aa` |
| 6 | `theorem` | [poleCleared_order_nat](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Count.lean/declarations/polecleared-order-nat.md) | 43 | `result-track:e71c2120bee620db9bc9c8e93ddf969b65d2120a4a7cd58ef5ea71a77680cb45` |
| 7 | `theorem` | [shell_norm_lt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Count.lean/declarations/shell-norm-lt.md) | 47 | `result-track:ea9ed0820fb370a02d89c71d189b50229a32ae8f8f9529e584d1e33b39d4c210` |
| 8 | `theorem` | [shell_mem_closedBall](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Count.lean/declarations/shell-mem-closedball.md) | 61 | `result-track:f9367e25d93672af0c04f10b3f01a6e14207076495fb6545048da7d5ee307c72` |
| 9 | `theorem` | [poleCleared_divisor_at_point](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Count.lean/declarations/polecleared-divisor-at-point.md) | 65 | `result-track:fa7457d56cdfcf2f64477793115d9c92a3ca22999f31f2e85557660caf3508d6` |
| 10 | `theorem` | [shell_card_le_divisor](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Count.lean/declarations/shell-card-le-divisor.md) | 75 | `result-track:936fa834e36fd9d36c60f49c84e36b3d231f1239edd7b8ddf0a3f67b31f7f86a` |
| 11 | `theorem` | [shell_card_le_divisor_real](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Count.lean/declarations/shell-card-le-divisor-real.md) | 117 | `result-track:9ba9e9cafa4779240939f71369539dc3db981a2b64e61e3c27f5a717a56d29da` |
| 12 | `def` | [GlobalGrowthObligation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Count.lean/declarations/globalgrowthobligation.md) | 124 | `declaration-track:2108dc9d9444686a2762fb47c2b5a018951926a18344e4cdabb3033b3b110132` |
| 13 | `def` | [PoleClearingObligation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Count.lean/declarations/poleclearingobligation.md) | 129 | `declaration-track:93b168fa75e4b1d10c5e7d122441c263c8e3705aec23889fe2ec744836a022ab` |
| 14 | `theorem` | [pole_clearing](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Count.lean/declarations/pole-clearing.md) | 133 | `result-track:61a57a979858d9f52d5d263fdaa6c9e876bd28e06d328ccbb409c3a62b5e81f9` |
| 15 | `def` | [ShellTransportObligation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Count.lean/declarations/shelltransportobligation.md) | 137 | `declaration-track:373f51adcaf135b4d17f51b882b5025be62d7b7ece33bcd1a5f25e8475255e03` |
| 16 | `theorem` | [shell_transport](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Count.lean/declarations/shell-transport.md) | 141 | `result-track:ab5a8b234e04961d48ff36faa95d544d01cb941ebe764a0376f8d15978c0f47f` |
| 17 | `def` | [QuarticCountObligation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Count.lean/declarations/quarticcountobligation.md) | 144 | `declaration-track:0e22e78ff1e1547fa50add06d24ffc1389755d69ea26a4a8daee18842145c4ae` |
| 18 | `def` | [ZeroSummabilityReplayObligation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Count.lean/declarations/zerosummabilityreplayobligation.md) | 147 | `declaration-track:d4d38e233f5f81d02092e4ab57f5715821d8376c21d94ffee89c884a1a758bf7` |
| 19 | `theorem` | [jensen_count_bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Count.lean/declarations/jensen-count-bound.md) | 149 | `result-track:c0f093f11b1cc5b6068aa6cd1b64542589e13110e35eaf6c1d1815eef0ecfd18` |
| 20 | `theorem` | [quartic_count_of_global_growth](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Count.lean/declarations/quartic-count-of-global-growth.md) | 165 | `result-track:60f8327689f626627cbb7b156bc7aabe495ca98b29c0ad8ceb9b0b48f41bed77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=36c6158e36980b9f24d8c2b3d755a792360a48f75d61529ab89926f50af064c0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Count/Variant329656e156ca05e6aba3812fa86251a93d7b3b8f9f1a02b032735a0f8a997f5e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Count/Variant329656e156ca05e6aba3812fa86251a93d7b3b8f9f1a02b032735a0f8a997f5e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
