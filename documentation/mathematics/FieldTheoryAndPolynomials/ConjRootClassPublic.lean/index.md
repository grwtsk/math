# Conj Root Class Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/FieldTheory/ConjRootClass/Variant2e655a53c153cecde12de75ee9dfe9183b17b5fd2a440a2af1c96b50fc361050.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9690014c5c89f5701bf1e7df6f9fa9c4ec898539`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FieldTheoryAndPolynomials/ConjRootClassPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [ConjRootClass](declarations/conjrootclass.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [mk](declarations/mk.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mk_def](declarations/mk-def.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [ind](declarations/ind.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mk_eq_mk](declarations/mk-eq-mk.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mk_zero](declarations/mk-zero.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mk_eq_zero_iff](declarations/mk-eq-zero-iff.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [carrier](declarations/carrier.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mem_carrier](declarations/mem-carrier.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [carrier_zero](declarations/carrier-zero.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [carrier_inj](declarations/carrier-inj.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mk_neg](declarations/mk-neg.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [carrier_neg](declarations/carrier-neg.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [exists_mem_carrier_add_eq_zero](declarations/exists-mem-carrier-add-eq-zero.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [minpoly](declarations/minpoly.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [minpoly_mk](declarations/minpoly-mk.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [minpoly_inj](declarations/minpoly-inj.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [minpoly_injective](declarations/minpoly-injective.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [splits_minpoly](declarations/splits-minpoly.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [monic_minpoly](declarations/monic-minpoly.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [minpoly_ne_zero](declarations/minpoly-ne-zero.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [irreducible_minpoly](declarations/irreducible-minpoly.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [aeval_minpoly_iff](declarations/aeval-minpoly-iff.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [rootSet_minpoly_eq_carrier](declarations/rootset-minpoly-eq-carrier.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [separable_minpoly](declarations/separable-minpoly.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [nodup_aroots_minpoly](declarations/nodup-aroots-minpoly.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [aroots_minpoly_eq_carrier_val](declarations/aroots-minpoly-eq-carrier-val.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [carrier_eq_mk_aroots_minpoly](declarations/carrier-eq-mk-aroots-minpoly.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [minpoly.map_eq_prod](declarations/minpoly-map-eq-prod.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cf4109c58210ced553a0ca38b5e0dbc555385cb24b4a6bdd3251154ce2b594ff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/FieldTheory/ConjRootClass/Variant2e655a53c153cecde12de75ee9dfe9183b17b5fd2a440a2af1c96b50fc361050.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
