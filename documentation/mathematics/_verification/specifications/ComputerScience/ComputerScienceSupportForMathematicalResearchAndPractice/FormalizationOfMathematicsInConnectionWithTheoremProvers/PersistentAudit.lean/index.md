# Verification target: Persistent Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a14722f81a0c7943a83b394c28e728b47c4bbbfa",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variant118f91418ed4d89f5f5c655d18e5842294842e88418a50204ef19a68e0ca0b20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PersistentAudit.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PersistentAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a14722f81a0c7943a83b394c28e728b47c4bbbfa`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variant118f91418ed4d89f5f5c655d18e5842294842e88418a50204ef19a68e0ca0b20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variant118f91418ed4d89f5f5c655d18e5842294842e88418a50204ef19a68e0ca0b20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Authority.AuditEvidence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Mutation.Confluence` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PersistentAuditPayload](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PersistentAudit.lean/declarations/persistentauditpayload.md) | 24 | `declaration-track:9173c239df4899cb1bac35e8b808f71d83d1590f50f847c35eb20f17269207f0` |
| 2 | `structure` | [PersistentAuditEvent](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PersistentAudit.lean/declarations/persistentauditevent.md) | 48 | `declaration-track:59953f4578730d1768f2373f26b3ecbbb30d54b25da19ce960c25c5018e3d18a` |
| 3 | `inductive` | [CommittedAuditReplay](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PersistentAudit.lean/declarations/committedauditreplay.md) | 68 | `declaration-track:f1170208e291934e3ecf504965dbe98b96d5423c6cd070f7efe83f14fb076094` |
| 4 | `theorem` | [head_snapshot_exact](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PersistentAudit.lean/declarations/head-snapshot-exact.md) | 90 | `result-track:d87a885c602eb3cefeccde44ecab5fadfef5cf98e1ff6423e9adc6a3cdfecf92` |
| 5 | `theorem` | [appended_predecessor_exact](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PersistentAudit.lean/declarations/appended-predecessor-exact.md) | 98 | `result-track:e9277e74ecc0344060c7531e013ff6239bad07d2db4a40ddf8e241c7befaa4db` |
| 6 | `structure` | [SnapshotAuditResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PersistentAudit.lean/declarations/snapshotauditresult.md) | 115 | `declaration-track:b2da153395b996e27494abcfe12f9573963ab23aeadd4e6eb110c45850fd7436` |
| 7 | `structure` | [AuditResultRevalidation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PersistentAudit.lean/declarations/auditresultrevalidation.md) | 127 | `declaration-track:5b8d353ccbe8d332067d2c08a3148e4b768c1445d145d13a1a2ba74818a01fb3` |
| 8 | `inductive` | [UsableAuditResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PersistentAudit.lean/declarations/usableauditresult.md) | 141 | `declaration-track:a4c00ee47bc162ef79ce48d5ac047c7637ee0e73c7f3e5b4c5d8356ed317b7ff` |
| 9 | `theorem` | [stale_result_requires_revalidation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PersistentAudit.lean/declarations/stale-result-requires-revalidation.md) | 157 | `result-track:30d5124788df0b43f8a2b5910aed670821cbb79f2067c18b22a1cd1a18ee7572` |
| 10 | `structure` | [PersistentAuditView](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PersistentAudit.lean/declarations/persistentauditview.md) | 170 | `declaration-track:57e13e038104c6b641877ce85bbf55c74c518f6e97677b0923bf3ecd2a1ab5bf` |
| 11 | `def` | [empty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PersistentAudit.lean/declarations/empty.md) | 181 | `declaration-track:45c9119533707636394d6f661f7d22919e1a16cb3b43bc9cc41aee944953f60b` |
| 12 | `def` | [join](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PersistentAudit.lean/declarations/join.md) | 190 | `declaration-track:0c268f0aaf6bcbcdccfc6f1e23121ae69a20604d64027f486cb05a67fa2ac654` |
| 13 | `theorem` | [ext](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PersistentAudit.lean/declarations/ext.md) | 204 | `result-track:b7028f58c02cd1c6dedae75fe26dc899d044ff525ead7e190a7f10fc054003fb` |
| 14 | `theorem` | [join_assoc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PersistentAudit.lean/declarations/join-assoc.md) | 220 | `result-track:0705ab6e04de3da787c0143785c133e05350e84b7138318394ab69f4002a129f` |
| 15 | `theorem` | [join_comm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PersistentAudit.lean/declarations/join-comm.md) | 226 | `result-track:9869e602af5f633d82329fa798e0f509034c3bd47a7f4abffad795da91f5799a` |
| 16 | `def` | [persistentAuditDelta](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PersistentAudit.lean/declarations/persistentauditdelta.md) | 234 | `declaration-track:692f6b347abcde7b86ecec2d2450ae6cb49162593e9fe48230219e125ee163f7` |
| 17 | `def` | [applyPersistentAuditEvent](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PersistentAudit.lean/declarations/applypersistentauditevent.md) | 259 | `declaration-track:5e56d9b5661b782bfe1b2a29258d3b53fa4c7c81ee9e566c56b1c69dad5820a5` |
| 18 | `def` | [persistentAuditCompatibleReduction](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PersistentAudit.lean/declarations/persistentauditcompatiblereduction.md) | 270 | `declaration-track:d5492ba5389ccc72b62723f729b2672415b10411b83410010ee9719679662927` |
| 19 | `theorem` | [compatible_audit_events_order_independent](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PersistentAudit.lean/declarations/compatible-audit-events-order-independent.md) | 286 | `result-track:a20291f0f50cab60ac5e5e232519ed44e453cf26255149c9a6f267ddaa41e09c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd0a37f4757770444f683eb67e737ec6e4a93833a16b589dabde5c1b40a55747 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variant118f91418ed4d89f5f5c655d18e5842294842e88418a50204ef19a68e0ca0b20.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variant118f91418ed4d89f5f5c655d18e5842294842e88418a50204ef19a68e0ca0b20.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
