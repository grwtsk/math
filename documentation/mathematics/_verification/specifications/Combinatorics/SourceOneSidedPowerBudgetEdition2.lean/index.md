# Verification target: Source One Sided Power Budget Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df3b2532d83309f9cd9cc7ca443ad4a48677d724",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOneSidedPowerBudget/Variant97ca406314dfceac08402130487ce087863a27f812a429d2428fb1357953a9ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/SourceOneSidedPowerBudgetEdition2.lean/index.md) · [Full source](../../../../Combinatorics/SourceOneSidedPowerBudgetEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df3b2532d83309f9cd9cc7ca443ad4a48677d724`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOneSidedPowerBudget/Variant97ca406314dfceac08402130487ce087863a27f812a429d2428fb1357953a9ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SourceOneSidedPowerBudget/Variant97ca406314dfceac08402130487ce087863a27f812a429d2428fb1357953a9ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceOneSidedPowerDiagonal` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squareNegativeTailCost](../../../../Combinatorics/SourceOneSidedPowerBudgetEdition2.lean/declarations/squarenegativetailcost.md) | 12 | `declaration-track:d803946255a956a7f6294888ebfa065691a737c8ddde443d2fa5f401f2e752db` |
| 2 | `def` | [cubicPowerTailCost](../../../../Combinatorics/SourceOneSidedPowerBudgetEdition2.lean/declarations/cubicpowertailcost.md) | 15 | `declaration-track:c8655d1428cbcbd5cc6ceadc48384aa8dd97953b9ad6ec04e3769cc75de4492a` |
| 3 | `def` | [oneSidedPowerRadiusBudget](../../../../Combinatorics/SourceOneSidedPowerBudgetEdition2.lean/declarations/onesidedpowerradiusbudget.md) | 18 | `declaration-track:ed53a168bbd98cdcee9d60a4239e612f0974ef733b97b0ad7fa321a82810fc22` |
| 4 | `theorem` | [exp_radius_square_threshold](../../../../Combinatorics/SourceOneSidedPowerBudgetEdition2.lean/declarations/exp-radius-square-threshold.md) | 23 | `result-track:7c85a15d415d088a979bd1b10d8761420b9c9de9a91e7c4f47baae4dc03ab6b2` |
| 5 | `theorem` | [log_radius_vaughan_upper](../../../../Combinatorics/SourceOneSidedPowerBudgetEdition2.lean/declarations/log-radius-vaughan-upper.md) | 30 | `result-track:00f9342a16b63672b97a8f52c648371d0af8299c5d83321f5a22095323c670a5` |
| 6 | `theorem` | [oneSidedPowerRadiusBudget_ninety_one](../../../../Combinatorics/SourceOneSidedPowerBudgetEdition2.lean/declarations/onesidedpowerradiusbudget-ninety-one.md) | 36 | `result-track:37267067dcc07978b21130a17aaa6c52a9bb223cdf89c0574a9f91293d21db48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b7b909eb64e0e0814740bd5d5c152327d538e5f95600d7f87dca4573ada749e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOneSidedPowerBudget/Variant97ca406314dfceac08402130487ce087863a27f812a429d2428fb1357953a9ff.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/SourceOneSidedPowerBudget/Variant97ca406314dfceac08402130487ce087863a27f812a429d2428fb1357953a9ff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
