# Verification target: Actual Critical Pnt Budget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "543d9cbfbbf71dde0dcaffe893f0a636601abb02",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ActualCriticalPntBudget/Variante61aaef4c49456ffbfc23eb62acc7c0d04b1e446766be1fed252d0caeaeb69c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ActualCriticalPntBudget.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ActualCriticalPntBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `543d9cbfbbf71dde0dcaffe893f0a636601abb02`.

Source path: `GRWTSK/Topology/GeneralTopology/ActualCriticalPntBudget/Variante61aaef4c49456ffbfc23eb62acc7c0d04b1e446766be1fed252d0caeaeb69c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ActualCriticalPntBudget/Variante61aaef4c49456ffbfc23eb62acc7c0d04b1e446766be1fed252d0caeaeb69c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualCriticalAbsoluteGrowth` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualCriticalPntAbsoluteIntegrand](../../../../MeasureAndIntegration/ActualCriticalPntBudget.lean/declarations/actualcriticalpntabsoluteintegrand.md) | 23 | `declaration-track:1448ccdd3db98c2812f278aba2e9a4520ef0a1b34cabca5b50fbe3f479c56381` |
| 2 | `def` | [actualCriticalPntAbsoluteBudget](../../../../MeasureAndIntegration/ActualCriticalPntBudget.lean/declarations/actualcriticalpntabsolutebudget.md) | 26 | `declaration-track:79a8ef505a516cf79d916900d64aa50435ed05131c7f72d2eb95c2f0ea03088d` |
| 3 | `theorem` | [baseline_continuous](../../../../MeasureAndIntegration/ActualCriticalPntBudget.lean/declarations/baseline-continuous.md) | 29 | `result-track:db1ff6e34221471dcae554b511b0720c0cf02f5918ecb1eed89dc7be823fd287` |
| 4 | `theorem` | [pnt_integrand_continuous](../../../../MeasureAndIntegration/ActualCriticalPntBudget.lean/declarations/pnt-integrand-continuous.md) | 36 | `result-track:d8645494c890964c82bff6c8f48e5a0eb4a40c3b92814a9128006637df8058c8` |
| 5 | `theorem` | [actualCriticalPntAbsoluteIntegrand_integrable](../../../../MeasureAndIntegration/ActualCriticalPntBudget.lean/declarations/actualcriticalpntabsoluteintegrand-integrable.md) | 43 | `result-track:9d6a9f7644163a5abd6ab2b42ba773809eeeabf0b4e00178951462dca0856201` |
| 6 | `theorem` | [actualCriticalPntAbsoluteBudget_lower](../../../../MeasureAndIntegration/ActualCriticalPntBudget.lean/declarations/actualcriticalpntabsolutebudget-lower.md) | 55 | `result-track:3290903fab0e8dfdd9e46dfd7ee12a50e45e3687d7ab7669d3f76d46d7ac320a` |
| 7 | `theorem` | [actualCriticalPntAbsoluteBudget_tendsto_atTop](../../../../MeasureAndIntegration/ActualCriticalPntBudget.lean/declarations/actualcriticalpntabsolutebudget-tendsto-attop.md) | 91 | `result-track:5b7cd9ef8442e7d07fac991de09c62f627b044ee599bf26acc5e654fa63616da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eadb2406fd1ea8d1c34ccb45b3b92c5d318af33dcdcdc441a625a8b98ca02729 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ActualCriticalPntBudget/Variante61aaef4c49456ffbfc23eb62acc7c0d04b1e446766be1fed252d0caeaeb69c6.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ActualCriticalPntBudget/Variante61aaef4c49456ffbfc23eb62acc7c0d04b1e446766be1fed252d0caeaeb69c6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
