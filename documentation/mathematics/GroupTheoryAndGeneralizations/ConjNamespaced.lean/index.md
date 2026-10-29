# Conj Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9dc8b2e9e1f4e871ad02d373ddc8c35be63e5554`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/ConjNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsConj](declarations/isconj.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [IsConj.refl](declarations/isconj-refl.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [IsConj.symm](declarations/isconj-symm.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [isConj_comm](declarations/isconj-comm.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsConj.trans](declarations/isconj-trans.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsConj.pow](declarations/isconj-pow.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [isConj_iff_eq](declarations/isconj-iff-eq.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [MonoidHom.map_isConj](declarations/monoidhom-map-isconj.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [isConj_one_right](declarations/isconj-one-right.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isConj_one_left](declarations/isconj-one-left.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [isConj_iff](declarations/isconj-iff.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [conj_inv](declarations/conj-inv.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [conj_mul](declarations/conj-mul.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [conj_pow](declarations/conj-pow.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [conj_zpow](declarations/conj-zpow.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [conj_injective](declarations/conj-injective.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [setoid](declarations/setoid.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [ConjClasses](declarations/conjclasses.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [mk](declarations/mk.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mk_eq_mk_iff_isConj](declarations/mk-eq-mk-iff-isconj.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [quotient_mk_eq_mk](declarations/quotient-mk-eq-mk.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [quot_mk_eq_mk](declarations/quot-mk-eq-mk.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [forall_isConj](declarations/forall-isconj.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mk_surjective](declarations/mk-surjective.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [one_eq_mk_one](declarations/one-eq-mk-one.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [exists_rep](declarations/exists-rep.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [map](declarations/map.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [map_surjective](declarations/map-surjective.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mk_injective](declarations/mk-injective.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mk_bijective](declarations/mk-bijective.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [mkEquiv](declarations/mkequiv.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [conjugatesOf](declarations/conjugatesof.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mem_conjugatesOf_self](declarations/mem-conjugatesof-self.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [IsConj.conjugatesOf_eq](declarations/isconj-conjugatesof-eq.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [isConj_iff_conjugatesOf_eq](declarations/isconj-iff-conjugatesof-eq.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [carrier](declarations/carrier.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mem_carrier_mk](declarations/mem-carrier-mk.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [mem_carrier_iff_mk_eq](declarations/mem-carrier-iff-mk-eq.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [carrier_eq_preimage_mk](declarations/carrier-eq-preimage-mk.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=79b3e801af839189d6cf12bcb8a94ed0ad052b004c206c984b46e15c39f2cb8b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Conj/Variant1f9a05411df2c107c62175dc2a0421f378cc57717f862caa1616baeb7bde2e0c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
