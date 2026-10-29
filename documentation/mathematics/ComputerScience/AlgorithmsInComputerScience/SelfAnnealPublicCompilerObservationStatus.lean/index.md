# Self Anneal Public Compiler Observation Status

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**16 observed declarations and anonymous commands**, 5 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variante1be2a0aad17201b5590cdecf67a21eb6b863b8e84cc1b2b22d2db258258f6c9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a668e5afbf27236e3ea35b40273a4802978d746`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/SelfAnnealPublicCompilerObservationStatus.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [CompilerObservationStatus](declarations/compilerobservationstatus.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [SourceAstSnapshot](declarations/sourceastsnapshot.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [SourceAstSnapshot.Valid](declarations/sourceastsnapshot-valid.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [AnnealStepChain](declarations/annealstepchain.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [AnnealTrace](declarations/annealtrace.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [AnnealTrace.Valid](declarations/annealtrace-valid.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [SelfAnnealAuthority](declarations/selfannealauthority.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [SelfAnnealCertificate](declarations/selfannealcertificate.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [selfAnnealCertificate_trace_valid](declarations/selfannealcertificate-trace-valid.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [selfAnnealCertificate_length_le_fuel](declarations/selfannealcertificate-length-le-fuel.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [SelfAnnealCertificate.CreatesTheoremAuthority](declarations/selfannealcertificate-createstheoremauthority.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [selfAnnealCertificate_has_no_theorem_authority](declarations/selfannealcertificate-has-no-theorem-authority.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [SourceCodeInstrument](declarations/sourcecodeinstrument.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [sourceCodeInstrument](declarations/sourcecodeinstrument-source-edition-2.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sourceCodeInstrument_preserves_repository_revision](declarations/sourcecodeinstrument-preserves-repository-revision.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sourceCodeInstrument_preserves_source_snapshot_hash](declarations/sourcecodeinstrument-preserves-source-snapshot-hash.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=078505bce4be9e5ef0ba58c952d12687983b2d148110e9aafbe83b0a0149a954 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variante1be2a0aad17201b5590cdecf67a21eb6b863b8e84cc1b2b22d2db258258f6c9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
