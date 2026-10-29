# Verification target: GRWTSK.Analysis.Asymptotics.DyadicLogAbsorption

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdca1cc41a5beee97dcaa0bba635b597ab6f3f26",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Asymptotics/DyadicLogAbsorption.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/DyadicLogAbsorption.lean/index.md) · [Full source](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/DyadicLogAbsorption.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdca1cc41a5beee97dcaa0bba635b597ab6f3f26`.

Source path: `GRWTSK/Analysis/Asymptotics/DyadicLogAbsorption.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Asymptotics/DyadicLogAbsorption.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.MertensLogThresholdFiniteBudget`](../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensLogThresholdFiniteBudget.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dyadicSlackRate](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/DyadicLogAbsorption.lean/declarations/dyadicslackrate.md) | 20 | `declaration-track:285585e531258ce73d9bb4cb47f785ac8d9d8c1330a9f89e3e54a499f4930722` |
| 2 | `def` | [dyadicLogAbsorptionConstant](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/DyadicLogAbsorption.lean/declarations/dyadiclogabsorptionconstant.md) | 24 | `declaration-track:d7462de2c240c27aa457bc0eaca378579c9353c85e6f9c81a1bb3073f18e9d45` |
| 3 | `theorem` | [dyadicSlackRate_pos](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/DyadicLogAbsorption.lean/declarations/dyadicslackrate-pos.md) | 28 | `result-track:2552f7fa58d456b1673457dc68f1e9000794ce21304b80e704aa4836be22483e` |
| 4 | `theorem` | [dyadicLogAbsorptionConstant_nonneg](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/DyadicLogAbsorption.lean/declarations/dyadiclogabsorptionconstant-nonneg.md) | 34 | `result-track:73860d8e10ebbfa40081fa0df688ec728edecfa036ff000c4b5219dc5aa24a51` |
| 5 | `theorem` | [nat_add_two_le_absorptionConstant_mul_exp](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/DyadicLogAbsorption.lean/declarations/nat-add-two-le-absorptionconstant-mul-exp.md) | 40 | `result-track:1cedc74421cb2e20a46955aaeb78462ad8785adf984fb589c4e06dc135c1dd84` |
| 6 | `theorem` | [dyadic_rpow_eq_exp_slack](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/DyadicLogAbsorption.lean/declarations/dyadic-rpow-eq-exp-slack.md) | 82 | `result-track:b55dd314f799cb63d6ce43ed4ccba66352c383db45758135f611c29e808f863d` |
| 7 | `theorem` | [nat_add_two_le_const_mul_dyadic_rpow](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/DyadicLogAbsorption.lean/declarations/nat-add-two-le-const-mul-dyadic-rpow.md) | 96 | `result-track:7fcc6a566f2852fc91f8fbb529d605f80cb25bbb616af64a34257025e4a10279` |
| 8 | `def` | [SubpolynomialLogThresholdShortPacketBudget](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/DyadicLogAbsorption.lean/declarations/subpolynomiallogthresholdshortpacketbudget-source-edition-2.md) | 109 | `declaration-track:548496cd7fd00e1a51afe96ef398f671c7e76c36abeb9aab29f812a20b05bba0` |
| 9 | `theorem` | [subpolynomialLogThresholdShortPacketBudget](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/DyadicLogAbsorption.lean/declarations/subpolynomiallogthresholdshortpacketbudget.md) | 117 | `result-track:47fa2830dc5ad9c9bdc002d5fd1b3058ae470f2a62c2256b5f4907481162ce38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3431e6429c026a36d30200b5b2a1f7fcf5e2f68b4dcd1efbfd599bacd2ff8d51 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Asymptotics/DyadicLogAbsorption.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/DyadicLogAbsorption.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
