# Verification target: GRWTSK.NumberTheory.Zeta.DyadicGreenSpecifications

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52c632b11e1e8b05a90e5b78084135b2c7ff66e4",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/DyadicGreenSpecifications.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicGreenSpecifications.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicGreenSpecifications.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52c632b11e1e8b05a90e5b78084135b2c7ff66e4`.

Source path: `GRWTSK/NumberTheory/Zeta/DyadicGreenSpecifications.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/DyadicGreenSpecifications.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 9; external provider; requires a separately pinned dependency.
- [`GRWTSK.NumberTheory.VonMangoldt.GreenEnergyFormula`](../../../../../../MeasureAndIntegration/GreenEnergyFormula.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.DyadicBounds`](../../../../../../IntegralTransformsOperationalCalculus/DyadicBounds.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sineReading](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicGreenSpecifications.lean/declarations/sinereading.md) | 30 | `declaration-track:0155e5ad7d1722a53de07885e61bcbf8da731dd397c9576a4bcee0c62111b2dd` |
| 2 | `def` | [SineExpansionGoal](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicGreenSpecifications.lean/declarations/sineexpansiongoal.md) | 35 | `declaration-track:099a42f6329c7639bcf7595987a9379019aff235e7ea3dff5a32c4d8a399fa86` |
| 3 | `def` | [MellinBlockIdentityGoal](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicGreenSpecifications.lean/declarations/mellinblockidentitygoal.md) | 42 | `declaration-track:0c76654cf537078c203aa9bc21e87288a92eb73fe041031a01c918082c94b7d6` |
| 4 | `def` | [blockSeries](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicGreenSpecifications.lean/declarations/blockseries.md) | 47 | `declaration-track:8f6d628a3ae3238e15ecb678056733e40440a2775c445a8dd1764b3c87636fdc` |
| 5 | `def` | [NormalConvergenceGoal](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicGreenSpecifications.lean/declarations/normalconvergencegoal.md) | 50 | `declaration-track:b2f5f9e5d22d593c52bdb18cf800e27fc6e6d30dcb15c9747c785c8b661fd98f` |
| 6 | `def` | [EulerIdentificationGoal](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicGreenSpecifications.lean/declarations/euleridentificationgoal.md) | 55 | `declaration-track:ef8320b625b05af7d82763f6e5170fffc57eacf3e482ec4b26e393ffb4d5d72b` |
| 7 | `def` | [DyadicGreenReturnGoal](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicGreenSpecifications.lean/declarations/dyadicgreenreturngoal.md) | 60 | `declaration-track:29690ac0507864bc07f3068200edaeec7239cc4688e86eec64ae445eadefe5b9` |
| 8 | `def` | [ArithmeticEnergySupplierGoal](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicGreenSpecifications.lean/declarations/arithmeticenergysuppliergoal.md) | 63 | `declaration-track:9c7e6a09a4eb465525a9829263af8829e47f4e10075802da008331e7f38e6366` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9779f89d179ad04b655f8bde4bf060619df92667de8765ba58f03924c18aa44f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/DyadicGreenSpecifications.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/DyadicGreenSpecifications.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
