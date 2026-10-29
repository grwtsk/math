# Verification target: Damped Divisor Schedule Audit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bafbeea2b78457e2dff83c2823e8914c81cbe09c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DampedDivisorScheduleAudit/Variante85e66d0b4741645ceca0222cd6a87e8104f98a2cdcf3b600aa2c10278c3c3dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/DampedDivisorScheduleAuditNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/DampedDivisorScheduleAuditNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bafbeea2b78457e2dff83c2823e8914c81cbe09c`.

Source path: `GRWTSK/Topology/GeneralTopology/DampedDivisorScheduleAudit/Variante85e66d0b4741645ceca0222cd6a87e8104f98a2cdcf3b600aa2c10278c3c3dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DampedDivisorScheduleAudit/Variante85e66d0b4741645ceca0222cd6a87e8104f98a2cdcf3b600aa2c10278c3c3dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourceTailSchedule` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidualTail` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fastEpsilon](../../../../GeneralTopology/DampedDivisorScheduleAuditNamespaced.lean/declarations/fastepsilon.md) | 24 | `declaration-track:9ab1b997654d1e9308d164c1588841ad6906da7b2c089d3fe9eeab1922898962` |
| 2 | `theorem` | [scale_facts](../../../../GeneralTopology/DampedDivisorScheduleAuditNamespaced.lean/declarations/scale-facts.md) | 26 | `result-track:cc3a39e7f27ee3075e0f65015decd7d7c7d0d546bbe731e9f475c78d16ffff12` |
| 3 | `theorem` | [cutoff_sqrt](../../../../GeneralTopology/DampedDivisorScheduleAuditNamespaced.lean/declarations/cutoff-sqrt.md) | 34 | `result-track:aed2291096e9453ef710752f721d9ba199b028107ecae6aa890cc7c291251d47` |
| 4 | `theorem` | [fast_schedule_admissible](../../../../GeneralTopology/DampedDivisorScheduleAuditNamespaced.lean/declarations/fast-schedule-admissible.md) | 43 | `result-track:7858d060555fd48475efd4b6d3a2b2b8d2fc06bd606af76f7e74c8044b002c53` |
| 5 | `theorem` | [fast_endpoint_bounds](../../../../GeneralTopology/DampedDivisorScheduleAuditNamespaced.lean/declarations/fast-endpoint-bounds.md) | 51 | `result-track:890368aef264f2e74ca87e88231035935f1308959f3ac2c0ce60c8772bdf9b6c` |
| 6 | `theorem` | [fast_taylor_bound](../../../../GeneralTopology/DampedDivisorScheduleAuditNamespaced.lean/declarations/fast-taylor-bound.md) | 71 | `result-track:1b1daa51251fcafeefba82b95f5bc04c7bc8312d736322782f5d1ba2c72d7cda` |
| 7 | `theorem` | [logScale_power_div_rpow_tendsto](../../../../GeneralTopology/DampedDivisorScheduleAuditNamespaced.lean/declarations/logscale-power-div-rpow-tendsto.md) | 101 | `result-track:130ccc542cf22c5c019b3b8f600b783aa7e248a7aad3cba94367f794a6a0ba48` |
| 8 | `theorem` | [fast_explicit_budgets_tendsto](../../../../GeneralTopology/DampedDivisorScheduleAuditNamespaced.lean/declarations/fast-explicit-budgets-tendsto.md) | 121 | `result-track:efb9c187e812414a8c19c979423c40f9cd9f911797d1aff24f133e084b322dba` |
| 9 | `theorem` | [fast_actual_budgets_tendsto](../../../../GeneralTopology/DampedDivisorScheduleAuditNamespaced.lean/declarations/fast-actual-budgets-tendsto.md) | 137 | `result-track:ed0f4b7a55c38038b923c38cda606db45158af1e282aba20e44b8654b3a32e6e` |
| 10 | `theorem` | [fast_actual_tail_norm_bounds](../../../../GeneralTopology/DampedDivisorScheduleAuditNamespaced.lean/declarations/fast-actual-tail-norm-bounds.md) | 157 | `result-track:35a0f22e86a25c8710cbc2b1f0af9122cb7cd8bb579b59329a3a4cc368097401` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e36671baff111b09bf18e057a8030c347196a0699c4bb2ce461403cbaf978b08 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/DampedDivisorScheduleAudit/Variante85e66d0b4741645ceca0222cd6a87e8104f98a2cdcf3b600aa2c10278c3c3dc.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/DampedDivisorScheduleAudit/Variante85e66d0b4741645ceca0222cd6a87e8104f98a2cdcf3b600aa2c10278c3c3dc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
