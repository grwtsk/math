# Build Model Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4725b712e93c6b1fdcdfaf4ce595bb56a38dea7c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/BuildModelNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [dependentsClosure](declarations/dependentsclosure.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_dependentsClosure_iff](declarations/mem-dependentsclosure-iff.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [seed_mem_dependentsClosure](declarations/seed-mem-dependentsclosure.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [dependent_mem_dependentsClosure](declarations/dependent-mem-dependentsclosure.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [dependentsClosure_mono](declarations/dependentsclosure-mono.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [dependentsClosure_minimal](declarations/dependentsclosure-minimal.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [ChangeSet](declarations/changeset.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [between](declarations/between.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mem_between_implementation_iff](declarations/mem-between-implementation-iff.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mem_between_public_iff](declarations/mem-between-public-iff.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mem_between_runtime_iff](declarations/mem-between-runtime-iff.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [leanRebuild](declarations/leanrebuild.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [leanRebuild_eq](declarations/leanrebuild-eq.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [implChanged_subset_leanRebuild](declarations/implchanged-subset-leanrebuild.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [publicChanged_dependents_subset_leanRebuild](declarations/publicchanged-dependents-subset-leanrebuild.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [publicChanged_subset_leanRebuild](declarations/publicchanged-subset-leanrebuild.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [leanRebuild_least](declarations/leanrebuild-least.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Affected](declarations/affected.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [tenant_affected_iff_inter_nonempty](declarations/tenant-affected-iff-inter-nonempty.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [tenant_unaffected_iff_disjoint](declarations/tenant-unaffected-iff-disjoint.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [PublicFingerprintsUnchanged](declarations/publicfingerprintsunchanged.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [not_affected_implies_publicFingerprintsUnchanged](declarations/not-affected-implies-publicfingerprintsunchanged.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [Affected](declarations/affected-source-edition-2.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [PublicFingerprintsUnchanged](declarations/publicfingerprintsunchanged-source-edition-2.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [SemanticallyUnchanged](declarations/semanticallyunchanged.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [PublicFingerprintConsistency](declarations/publicfingerprintconsistency.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [tenant_affected_iff_inter_nonempty](declarations/tenant-affected-iff-inter-nonempty-source-edition-2.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [tenant_unaffected_iff_disjoint](declarations/tenant-unaffected-iff-disjoint-source-edition-2.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [not_affected_implies_publicFingerprintsUnchanged](declarations/not-affected-implies-publicfingerprintsunchanged-source-edition-2.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [not_affected_implies_semantically_unchanged](declarations/not-affected-implies-semantically-unchanged.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4826f22df5b1c597debcc94127368958afa53d94e0ed398a307872b35e8a3502 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/BuildModel/Variantb10b7ba56805ee22664b7e214f97a61e5fa51046afa6d4d93210be0b93c74835.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
