# Bdd Lat Cat

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 12 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd18e87b4fef302ed06ce2cdf02312a1b59e5336`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCat.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BddLatCat](declarations/bddlatcat.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [of](declarations/of.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coe_of](declarations/coe-of.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [instFunLike](declarations/instfunlike.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [hasForgetToBddOrd](declarations/hasforgettobddord.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [hasForgetToLat](declarations/hasforgettolat.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [hasForgetToSemilatSup](declarations/hasforgettosemilatsup.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [hasForgetToSemilatInf](declarations/hasforgettosemilatinf.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coe_forget_to_bddOrd](declarations/coe-forget-to-bddord.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [coe_forget_to_latCat](declarations/coe-forget-to-latcat.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coe_forget_to_semilatSup](declarations/coe-forget-to-semilatsup.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_forget_to_semilatInf](declarations/coe-forget-to-semilatinf.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [forget_latCat_partOrdCat_eq_forget_bddOrd_partOrdCat](declarations/forget-latcat-partordcat-eq-forget-bddord-partordcat.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [forget_semilatSup_partOrdCat_eq_forget_bddOrd_partOrdCat](declarations/forget-semilatsup-partordcat-eq-forget-bddord-partordcat.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [forget_semilatInf_partOrdCat_eq_forget_bddOrd_partOrdCat](declarations/forget-semilatinf-partordcat-eq-forget-bddord-partordcat.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [Iso.mk](declarations/iso-mk.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [dual](declarations/dual.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [dualEquiv](declarations/dualequiv.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [bddLatCat_dual_comp_forget_to_bddOrdCat](declarations/bddlatcat-dual-comp-forget-to-bddordcat.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [bddLatCat_dual_comp_forget_to_latCat](declarations/bddlatcat-dual-comp-forget-to-latcat.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [bddLatCat_dual_comp_forget_to_semilatSupCat](declarations/bddlatcat-dual-comp-forget-to-semilatsupcat.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [bddLatCat_dual_comp_forget_to_semilatInfCat](declarations/bddlatcat-dual-comp-forget-to-semilatinfcat.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [latToBddLatCat](declarations/lattobddlatcat.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [latToBddLatCatForgetAdjunction](declarations/lattobddlatcatforgetadjunction.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [latToBddLatCatCompDualIsoDualCompLatToBddLatCat](declarations/lattobddlatcatcompdualisodualcomplattobddlatcat.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=459b1c79d64e9b93f8cf5a200978e01cebb411bbc57e88208f900cf4f3c3157a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant76103f56f2f4437db2e45b609147c3e08c4a67f6b29e19bd40aa0e976bac1235.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
