# Conj

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cab4c7d8b1ca521fcbda4aab62aa383a89cefffe`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/Conj.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsConj](declarations/isconj.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [IsConj.refl](declarations/isconj-refl.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [IsConj.symm](declarations/isconj-symm.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [isConj_comm](declarations/isconj-comm.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsConj.trans](declarations/isconj-trans.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsConj.pow](declarations/isconj-pow.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [isConj_iff_eq](declarations/isconj-iff-eq.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [MonoidHom.map_isConj](declarations/monoidhom-map-isconj.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [isConj_one_right](declarations/isconj-one-right.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isConj_one_left](declarations/isconj-one-left.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [isConj_iff](declarations/isconj-iff.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [conj_inv](declarations/conj-inv.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [conj_mul](declarations/conj-mul.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [conj_pow](declarations/conj-pow.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [conj_zpow](declarations/conj-zpow.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [conj_injective](declarations/conj-injective.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [setoid](declarations/setoid.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [ConjClasses](declarations/conjclasses.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [mk](declarations/mk.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mk_eq_mk_iff_isConj](declarations/mk-eq-mk-iff-isconj.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [quotient_mk_eq_mk](declarations/quotient-mk-eq-mk.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [quot_mk_eq_mk](declarations/quot-mk-eq-mk.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [forall_isConj](declarations/forall-isconj.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mk_surjective](declarations/mk-surjective.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [one_eq_mk_one](declarations/one-eq-mk-one.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [exists_rep](declarations/exists-rep.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [map](declarations/map.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [map_surjective](declarations/map-surjective.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mk_injective](declarations/mk-injective.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mk_bijective](declarations/mk-bijective.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [mkEquiv](declarations/mkequiv.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [conjugatesOf](declarations/conjugatesof.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mem_conjugatesOf_self](declarations/mem-conjugatesof-self.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [IsConj.conjugatesOf_eq](declarations/isconj-conjugatesof-eq.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [isConj_iff_conjugatesOf_eq](declarations/isconj-iff-conjugatesof-eq.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [carrier](declarations/carrier.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mem_carrier_mk](declarations/mem-carrier-mk.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [mem_carrier_iff_mk_eq](declarations/mem-carrier-iff-mk-eq.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [carrier_eq_preimage_mk](declarations/carrier-eq-preimage-mk.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=63f87a0cc119fa9968555417432910dcf72a99774955bab712f215664801e16f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Conj/Variant0fdc78d78b5dcdc96c6d7502a14901bd687ecb6095f78156123e8f05fa96c7cb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
