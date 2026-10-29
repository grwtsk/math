# Limits Preorder Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 6 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a3df3fb3c4c4231f3eca9f80c6a878a1c2ec8de`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsPreorderPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [coneOfLowerBound](declarations/coneoflowerbound.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [conePt_mem_lowerBounds](declarations/conept-mem-lowerbounds.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [isGLB_of_isLimit](declarations/isglb-of-islimit.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [isLimitOfIsGLB](declarations/islimitofisglb.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [limitConeOfIsGLB](declarations/limitconeofisglb.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [hasLimit_iff_hasGLB](declarations/haslimit-iff-hasglb.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [coconeOfUpperBound](declarations/coconeofupperbound.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [coconePt_mem_upperBounds](declarations/coconept-mem-upperbounds.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [isLUB_of_isColimit](declarations/islub-of-iscolimit.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [isColimitOfIsLUB](declarations/iscolimitofislub.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [colimitCoconeOfIsLUB](declarations/colimitcoconeofislub.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [hasColimit_iff_hasLUB](declarations/hascolimit-iff-haslub.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [_root_.CategoryTheory.Limits.IsTerminal.orderTop](declarations/root-categorytheory-limits-isterminal-ordertop.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [orderTopOfHasTerminal](declarations/ordertopofhasterminal.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [isTerminalTop](declarations/isterminaltop.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [_root_.CategoryTheory.Limits.IsInitial.orderBot](declarations/root-categorytheory-limits-isinitial-orderbot.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [orderBotOfHasInitial](declarations/orderbotofhasinitial.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [isInitialBot](declarations/isinitialbot.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [semilatticeInfOfIsLimitBinaryFan](declarations/semilatticeinfofislimitbinaryfan.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [semilatticeInfOfHasBinaryProducts](declarations/semilatticeinfofhasbinaryproducts.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [semilatticeSupOfIsColimitBinaryCofan](declarations/semilatticesupofiscolimitbinarycofan.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [semilatticeSupOfHasBinaryCoproducts](declarations/semilatticesupofhasbinarycoproducts.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [isLimitBinaryFan](declarations/islimitbinaryfan.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [isColimitBinaryCofan](declarations/iscolimitbinarycofan.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [isLimitIInf](declarations/islimitiinf.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [isColimitISup](declarations/iscolimitisup.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=66937da4fa3aef74eb15c58d68a218e1d0c67a6334dbba6b7ac1a7f8c3f5d7f5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
