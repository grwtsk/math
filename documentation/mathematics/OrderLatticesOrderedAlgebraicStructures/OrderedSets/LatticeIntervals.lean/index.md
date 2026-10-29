# Lattice Intervals

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 13 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3ab76b713748dc4481114d6ffba3ddd3ea3f33e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/LatticeIntervals.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [semilatticeInf](declarations/semilatticeinf.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [orderBot](declarations/orderbot.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [semilatticeInf](declarations/semilatticeinf-source-edition-5.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [semilatticeSup](declarations/semilatticesup-source-edition-5.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [orderTop](declarations/ordertop-source-edition-2.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [semilatticeSup](declarations/semilatticesup-source-edition-4.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [semilatticeInf](declarations/semilatticeinf-source-edition-2.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [coe_inf](declarations/coe-inf.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [semilatticeSup](declarations/semilatticesup-source-edition-3.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [coe_sup](declarations/coe-sup.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [orderTop](declarations/ordertop-source-edition-3.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coe_top](declarations/coe-top-source-edition-2.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [eq_top_iff](declarations/eq-top-iff.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [orderBot](declarations/orderbot-source-edition-2.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coe_bot](declarations/coe-bot-source-edition-3.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [disjoint_iff](declarations/disjoint-iff.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [codisjoint_iff](declarations/codisjoint-iff.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [isCompl_iff](declarations/iscompl-iff.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [complementedLattice_iff](declarations/complementedlattice-iff.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [semilatticeInf](declarations/semilatticeinf-source-edition-4.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [semilatticeSup](declarations/semilatticesup-source-edition-2.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [lattice](declarations/lattice-source-edition-2.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [distribLattice](declarations/distriblattice.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [orderBot](declarations/orderbot-source-edition-3.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coe_bot](declarations/coe-bot.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [orderTop](declarations/ordertop.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [coe_top](declarations/coe-top-source-edition-3.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [boundedOrder](declarations/boundedorder.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [semilatticeInf](declarations/semilatticeinf-source-edition-3.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [semilatticeSup](declarations/semilatticesup.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [lattice](declarations/lattice.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [coe_bot](declarations/coe-bot-source-edition-2.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [coe_top](declarations/coe-top.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=294e926303a3d385a37a36528922271e957c505a0fdc8adc4163615bb322192b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeIntervals/Variantcf42f0caf06118be0e0df3d2c7565ab068db98802144d17ed83029eaedc424bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
