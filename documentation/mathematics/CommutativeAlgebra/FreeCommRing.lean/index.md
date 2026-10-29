# Free Comm Ring

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**49 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `340451f07ed2935f168109878a4749b3fbc104ad`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/FreeCommRing.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [FreeCommRing](declarations/freecommring.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [FreeCommRing.instCommRing](declarations/freecommring-instcommring.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [FreeCommRing.instInhabited](declarations/freecommring-instinhabited.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [of](declarations/of.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [of_injective](declarations/of-injective.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [of_cons](declarations/of-cons.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [induction_on](declarations/induction-on.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [liftToMultiset](declarations/lifttomultiset.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [lift](declarations/lift.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [lift_of](declarations/lift-of.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [lift_comp_of](declarations/lift-comp-of.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [hom_ext](declarations/hom-ext.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [map](declarations/map.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [map_of](declarations/map-of.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [IsSupported](declarations/issupported.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [isSupported_upwards](declarations/issupported-upwards.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isSupported_add](declarations/issupported-add.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isSupported_neg](declarations/issupported-neg.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [isSupported_sub](declarations/issupported-sub.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [isSupported_mul](declarations/issupported-mul.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [isSupported_zero](declarations/issupported-zero.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isSupported_one](declarations/issupported-one.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [isSupported_int](declarations/issupported-int.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [restriction](declarations/restriction.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [restriction_of](declarations/restriction-of.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [isSupported_of](declarations/issupported-of.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [map_subtype_val_restriction](declarations/map-subtype-val-restriction.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [exists_finite_support](declarations/exists-finite-support.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [exists_finset_support](declarations/exists-finset-support.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [toFreeCommRing](declarations/tofreecommring.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [castFreeCommRing](declarations/castfreecommring.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [FreeCommRing.instCoe](declarations/freecommring-instcoe.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [coeRingHom](declarations/coeringhom.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coe_zero](declarations/coe-zero.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [coe_one](declarations/coe-one.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [coe_of](declarations/coe-of.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [coe_neg](declarations/coe-neg.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [coe_add](declarations/coe-add.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [coe_sub](declarations/coe-sub.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [coe_mul](declarations/coe-mul.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [coe_surjective](declarations/coe-surjective.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [coe_eq](declarations/coe-eq.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [subsingletonEquivFreeCommRing](declarations/subsingletonequivfreecommring.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [instCommRing](declarations/instcommring.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [freeCommRingEquivMvPolynomialInt](declarations/freecommringequivmvpolynomialint.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [freeCommRingPemptyEquivInt](declarations/freecommringpemptyequivint.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [freeCommRingPunitEquivPolynomialInt](declarations/freecommringpunitequivpolynomialint.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [freeRingPemptyEquivInt](declarations/freeringpemptyequivint.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [freeRingPunitEquivPolynomialInt](declarations/freeringpunitequivpolynomialint.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=274f2402a4f1c21a8308f6cd80050c86dd3c6b67eed3cab9a89732da88238e85 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RingTheory/FreeCommRing/Varianta16b895cc3cd70ec90a3a44b133b724e53f1fd53b9ce533549789d922f6e9109.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
