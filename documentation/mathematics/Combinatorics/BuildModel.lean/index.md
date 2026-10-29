# Build Model

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/BuildModel/Variant780d1b2bd382956b194bf855c3487de0023036ec6473b51c65ad17c818aebe30.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca2310a94c2269178bd39834fe8e9dde1e0deada`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/BuildModel.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [dependentsClosure](declarations/dependentsclosure.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_dependentsClosure_iff](declarations/mem-dependentsclosure-iff.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [seed_mem_dependentsClosure](declarations/seed-mem-dependentsclosure.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [dependent_mem_dependentsClosure](declarations/dependent-mem-dependentsclosure.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [dependentsClosure_mono](declarations/dependentsclosure-mono.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [dependentsClosure_minimal](declarations/dependentsclosure-minimal.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [ChangeSet](declarations/changeset.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [between](declarations/between.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mem_between_implementation_iff](declarations/mem-between-implementation-iff.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mem_between_public_iff](declarations/mem-between-public-iff.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mem_between_runtime_iff](declarations/mem-between-runtime-iff.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [leanRebuild](declarations/leanrebuild.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [leanRebuild_eq](declarations/leanrebuild-eq.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [implChanged_subset_leanRebuild](declarations/implchanged-subset-leanrebuild.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [publicChanged_dependents_subset_leanRebuild](declarations/publicchanged-dependents-subset-leanrebuild.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [publicChanged_subset_leanRebuild](declarations/publicchanged-subset-leanrebuild.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [leanRebuild_least](declarations/leanrebuild-least.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Affected](declarations/affected.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [tenant_affected_iff_inter_nonempty](declarations/tenant-affected-iff-inter-nonempty.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [tenant_unaffected_iff_disjoint](declarations/tenant-unaffected-iff-disjoint-source-edition-2.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [PublicFingerprintsUnchanged](declarations/publicfingerprintsunchanged-source-edition-2.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [not_affected_implies_publicFingerprintsUnchanged](declarations/not-affected-implies-publicfingerprintsunchanged-source-edition-2.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [Affected](declarations/affected-source-edition-2.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [PublicFingerprintsUnchanged](declarations/publicfingerprintsunchanged.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [SemanticallyUnchanged](declarations/semanticallyunchanged.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [PublicFingerprintConsistency](declarations/publicfingerprintconsistency.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [tenant_affected_iff_inter_nonempty](declarations/tenant-affected-iff-inter-nonempty-source-edition-2.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [tenant_unaffected_iff_disjoint](declarations/tenant-unaffected-iff-disjoint.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [not_affected_implies_publicFingerprintsUnchanged](declarations/not-affected-implies-publicfingerprintsunchanged.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [not_affected_implies_semantically_unchanged](declarations/not-affected-implies-semantically-unchanged.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f280e255c7ae9dbf718a3e9bd1cce6c3ad39101c715f37e65868d62b34d61457 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/BuildModel/Variant780d1b2bd382956b194bf855c3487de0023036ec6473b51c65ad17c818aebe30.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
