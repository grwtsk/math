# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.MellinNormalizedGrowingCellPacking

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0004a83f3d4f923751340cc92526896c6adf476",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/MellinNormalizedGrowingCellPacking.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MellinNormalizedGrowingCellPacking.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MellinNormalizedGrowingCellPacking.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0004a83f3d4f923751340cc92526896c6adf476`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/MellinNormalizedGrowingCellPacking.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/MellinNormalizedGrowingCellPacking.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.MellinNormalizedDyadicPacking`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MellinNormalizedDyadicPacking.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [safeActionCumulativeValue](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MellinNormalizedGrowingCellPacking.lean/declarations/safeactioncumulativevalue.md) | 42 | `declaration-track:95c7c005e735abc091fea5c029c42a926f36542c4a365d291eb05e6a14e87075` |
| 2 | `def` | [safeActionCumulativeAxialCoefficient](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MellinNormalizedGrowingCellPacking.lean/declarations/safeactioncumulativeaxialcoefficient.md) | 45 | `declaration-track:53301a7177dae5c4e5362031ea0e8a5bad2d875197e139991c6613d0acfc1bb2` |
| 3 | `def` | [safeActionCumulativeTransverseCoefficient](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MellinNormalizedGrowingCellPacking.lean/declarations/safeactioncumulativetransversecoefficient.md) | 48 | `declaration-track:22b760919b4892d24be72bf4eca5535eb9c6ed6fe28fe520de21beb705bb7d4f` |
| 4 | `theorem` | [safeActionCumulativeValue_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MellinNormalizedGrowingCellPacking.lean/declarations/safeactioncumulativevalue-nonnegative.md) | 51 | `result-track:ac5638a7186a036e58b99de5f251503bfcff14bc63903573fbba332c16d07589` |
| 5 | `theorem` | [safeActionCumulativeAxialCoefficient_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MellinNormalizedGrowingCellPacking.lean/declarations/safeactioncumulativeaxialcoefficient-nonnegative.md) | 58 | `result-track:59e5903f1a208c6e91b3f8ac0002281afb4aaeb088eadc58e41fd58955b55671` |
| 6 | `theorem` | [safeActionCumulativeTransverseCoefficient_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MellinNormalizedGrowingCellPacking.lean/declarations/safeactioncumulativetransversecoefficient-nonnegative.md) | 65 | `result-track:675a8aec0a703e79d25314dfd3575db9aa6dcf7e2dcf46e3e723d301e8434498` |
| 7 | `theorem` | [safeActionCumulativeValue_mono](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MellinNormalizedGrowingCellPacking.lean/declarations/safeactioncumulativevalue-mono.md) | 72 | `result-track:616b49bee89ecc3941c1b5d1645e135fba299f4b249200457b60c83cc2444bef` |
| 8 | `theorem` | [safeActionCumulativeAxialCoefficient_mono](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MellinNormalizedGrowingCellPacking.lean/declarations/safeactioncumulativeaxialcoefficient-mono.md) | 81 | `result-track:bba3beef27582565c0e91a1e107134c9ae59e003e41528b283a729c6a1d7b4ce` |
| 9 | `theorem` | [safeActionCumulativeTransverseCoefficient_mono](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MellinNormalizedGrowingCellPacking.lean/declarations/safeactioncumulativetransversecoefficient-mono.md) | 91 | `result-track:8b17893c034f8f60f8559276954b2962400696b0b9515f7bf3675d992941bc3d` |
| 10 | `theorem` | [safeActionCumulativeValue_factor](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MellinNormalizedGrowingCellPacking.lean/declarations/safeactioncumulativevalue-factor.md) | 102 | `result-track:5daf1f6dc9f755bc063da520fb88670e192cb8ea3ecf091a75a6c70615290625` |
| 11 | `structure` | [MellinNormalizedGrowingCellStage](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MellinNormalizedGrowingCellPacking.lean/declarations/mellinnormalizedgrowingcellstage.md) | 116 | `declaration-track:71ae6605d9de1c2d5faa0e3a533f18a5557bdc31dd1e45b44727b3b6872b156d` |
| 12 | `theorem` | [nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MellinNormalizedGrowingCellPacking.lean/declarations/nonnegative.md) | 123 | `result-track:c2648c0806a65df5facaa8dda65bb2a7c2c59d36e71075a927106273394f3d55` |
| 13 | `structure` | [MellinNormalizedActionLowerDensityAtZero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MellinNormalizedGrowingCellPacking.lean/declarations/mellinnormalizedactionlowerdensityatzero.md) | 135 | `declaration-track:8724e8feda379c713ed601e361604edb9cc1ba8498b0ce335cfb9048f367279d` |
| 14 | `def` | [quarticFactor](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MellinNormalizedGrowingCellPacking.lean/declarations/quarticfactor.md) | 150 | `declaration-track:99694c9020cba9e2794623d777f13b1d52579751ac9f9287faadabe0d8b19d0e` |
| 15 | `theorem` | [quarticFactor_pos](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MellinNormalizedGrowingCellPacking.lean/declarations/quarticfactor-pos.md) | 156 | `result-track:03671d46561838dbd194b437aa750901a0163e0c7c0f97c6f20f48d650a83654` |
| 16 | `theorem` | [quarticFactor_mul_partial_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MellinNormalizedGrowingCellPacking.lean/declarations/quarticfactor-mul-partial-le.md) | 166 | `result-track:8483041adc4471eff8d4f6faa1a09b6060010acd1df7167107bdd8e8c24e246a` |
| 17 | `theorem` | [false_of_uniform_upper_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MellinNormalizedGrowingCellPacking.lean/declarations/false-of-uniform-upper-bound.md) | 201 | `result-track:e4743982d2952cf9fdefaf3f6280e7bceec4ff8e1f5c922868f7585838b8dfaa` |
| 18 | `structure` | [MellinNormalizedActionUpperComparisonAtZero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MellinNormalizedGrowingCellPacking.lean/declarations/mellinnormalizedactionuppercomparisonatzero.md) | 229 | `declaration-track:b3b84196adf0a39cdb61eb349296443c7a46ef0598a301d073f0a5b630e14e64` |
| 19 | `theorem` | [false_of_mellinNormalizedAction_packing](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MellinNormalizedGrowingCellPacking.lean/declarations/false-of-mellinnormalizedaction-packing.md) | 239 | `result-track:8511263549531286ca15abc57ce95d1f4cdfe1cad00274140888b8ae3e9dc446` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=24e49f1c9491b71b9e2d170d0b40c513d1627b85e7e652a2b6a41103990b38fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/MellinNormalizedGrowingCellPacking.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/MellinNormalizedGrowingCellPacking.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
