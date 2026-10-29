# Bdd Ord Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `327378ffda223234e87b5281144a2d776df8bdb5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BddOrd](declarations/bddord.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [of](declarations/of.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [Hom](declarations/hom.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [Hom.hom](declarations/hom-hom.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [ofHom](declarations/ofhom.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Hom.Simps.hom](declarations/hom-simps-hom.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [coe_id](declarations/coe-id.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [coe_comp](declarations/coe-comp.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [forget_map](declarations/forget-map.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [ext](declarations/ext.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coe_of](declarations/coe-of.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [hom_id](declarations/hom-id.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [id_apply](declarations/id-apply.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [hom_comp](declarations/hom-comp.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [comp_apply](declarations/comp-apply.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [hom_ext](declarations/hom-ext.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [hom_ofHom](declarations/hom-ofhom.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [ofHom_hom](declarations/ofhom-hom.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [ofHom_id](declarations/ofhom-id.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [ofHom_comp](declarations/ofhom-comp.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [ofHom_apply](declarations/ofhom-apply.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [inv_hom_apply](declarations/inv-hom-apply.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [hom_inv_apply](declarations/hom-inv-apply.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [hasForgetToPartOrd](declarations/hasforgettopartord.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [hasForgetToBipointed](declarations/hasforgettobipointed.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [dual](declarations/dual.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [Iso.mk](declarations/iso-mk.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [dualEquiv](declarations/dualequiv.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [bddOrd_dual_comp_forget_to_partOrd](declarations/bddord-dual-comp-forget-to-partord.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [bddOrd_dual_comp_forget_to_bipointed](declarations/bddord-dual-comp-forget-to-bipointed.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=31b0a586850f0ca9befa60bf9c43260e9059b181cbaaa36a33f54e8266004a68 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddOrd/Variant6f273aeba41efc8e185bf4a2d4d177ac56a884a100a3afda90a16f1366d6f348.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
