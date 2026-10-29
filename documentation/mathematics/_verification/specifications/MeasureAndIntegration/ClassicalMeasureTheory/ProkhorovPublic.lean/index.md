# Verification target: Prokhorov Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a83535342af0ca8700ecacf175bec691206f6ef",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Prokhorov/Variant3483d287bc201a96423e84b1dd90a1db828c4b3ae18cdcdb89c1d21107b6f25f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProkhorovPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProkhorovPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a83535342af0ca8700ecacf175bec691206f6ef`.

Source path: `GRWTSK/Topology/GeneralTopology/Prokhorov/Variant3483d287bc201a96423e84b1dd90a1db828c4b3ae18cdcdb89c1d21107b6f25f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Prokhorov/Variant3483d287bc201a96423e84b1dd90a1db828c4b3ae18cdcdb89c1d21107b6f25f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Regular` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.RieszMarkovKakutani.Real` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.LevyProkhorovMetric` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isCompact_setOfPred_finiteMeasure_le_of_compactSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProkhorovPublic.lean/declarations/iscompact-setofpred-finitemeasure-le-of-compactspace.md) | 70 | `result-track:d5552f08ab577e2eaec54f623af19eff8a931f6ff8b4a3c6b47f787202dbcc6c` |
| 2 | `lemma` | [isCompact_setOfPred_finiteMeasure_eq_of_compactSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProkhorovPublic.lean/declarations/iscompact-setofpred-finitemeasure-eq-of-compactspace.md) | 164 | `result-track:da367071ac37bf5cfb2b25f23a469763cafab09a108d53311579709f900cb917` |
| 3 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProkhorovPublic.lean/declarations/instance.md) | 176 | `declaration-track:760e13cb87d28e9df15b56d9f501e748e82f62d149cb5bb260fb071bb5cc3afb` |
| 4 | `lemma` | [isCompact_setOfPred_finiteMeasure_le_of_isCompact](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProkhorovPublic.lean/declarations/iscompact-setofpred-finitemeasure-le-of-iscompact.md) | 183 | `result-track:e21be4928c5d71bed26ef93bd4c738eb116590db946d8d32fe47669d41afaa13` |
| 5 | `lemma` | [isCompact_setOfPred_finiteMeasure_mass_le_compl_isCompact_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProkhorovPublic.lean/declarations/iscompact-setofpred-finitemeasure-mass-le-compl-iscompact-le.md) | 224 | `result-track:e93df28e14ba7136e65e4cae592b2658b655fa81bf5f6c0b63c422e6cb471844` |
| 6 | `lemma` | [isCompact_setOfPred_finiteMeasure_mass_eq_compl_isCompact_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProkhorovPublic.lean/declarations/iscompact-setofpred-finitemeasure-mass-eq-compl-iscompact-le.md) | 487 | `result-track:d90880d6cf4897f85bd164759bf0c0735114962512ab965ad36c5d322c0be554` |
| 7 | `lemma` | [isCompact_setOfPred_probabilityMeasure_mass_eq_compl_isCompact_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProkhorovPublic.lean/declarations/iscompact-setofpred-probabilitymeasure-mass-eq-compl-iscompact-le.md) | 505 | `result-track:488becf308efb2f39f3ab90698354df4ac87571ad0d7aec4bb538c42da092298` |
| 8 | `lemma` | [isCompact_closure_of_isTightMeasureSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProkhorovPublic.lean/declarations/iscompact-closure-of-istightmeasureset.md) | 530 | `result-track:9dba462557ba640e49ea088d45e767b5bcc06ef3e4366c6b18fdd10574a17e8c` |
| 9 | `lemma` | [exists_measure_iUnion_gt_of_isCompact_closure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProkhorovPublic.lean/declarations/exists-measure-iunion-gt-of-iscompact-closure.md) | 573 | `result-track:c05971af72e93ae714c81dce5eefccef3ec591c4aee025522621ab5222f79fdb` |
| 10 | `theorem` | [isTightMeasureSet_of_isCompact_closure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProkhorovPublic.lean/declarations/istightmeasureset-of-iscompact-closure.md) | 634 | `result-track:60803b1a3351060dc93aab0041daecbe549239a06150e675d147e0680b682aaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a6fafc4cc8315ab88ecd6f1f59b9ccc2eff4cff133103a0a394bb6ed654ec6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Prokhorov/Variant3483d287bc201a96423e84b1dd90a1db828c4b3ae18cdcdb89c1d21107b6f25f.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Prokhorov/Variant3483d287bc201a96423e84b1dd90a1db828c4b3ae18cdcdb89c1d21107b6f25f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
