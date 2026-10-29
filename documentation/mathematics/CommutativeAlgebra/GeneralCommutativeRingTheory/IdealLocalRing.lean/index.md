# Ideal Local Ring

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**64 observed declarations and anonymous commands**, 44 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `edc761e544ff194a9598b8528f634f2dcea429bc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/GeneralCommutativeRingTheory/IdealLocalRing.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [LocalRing](declarations/localring-source-edition-2.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [of_isUnit_or_isUnit_of_isUnit_add](declarations/of-isunit-or-isunit-of-isunit-add.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [of_nonunits_add](declarations/of-nonunits-add.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [of_unique_max_ideal](declarations/of-unique-max-ideal.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [of_unique_nonzero_prime](declarations/of-unique-nonzero-prime.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [isUnit_or_isUnit_of_isUnit_add](declarations/isunit-or-isunit-of-isunit-add.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [nonunits_add](declarations/nonunits-add.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [maximalIdeal](declarations/maximalideal.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [maximalIdeal.isMaximal](declarations/maximalideal-ismaximal.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [maximal_ideal_unique](declarations/maximal-ideal-unique.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [eq_maximalIdeal](declarations/eq-maximalideal.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [le_maximalIdeal](declarations/le-maximalideal.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mem_maximalIdeal](declarations/mem-maximalideal.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [isField_iff_maximalIdeal_eq](declarations/isfield-iff-maximalideal-eq.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [of_isUnit_or_isUnit_one_sub_self](declarations/of-isunit-or-isunit-one-sub-self.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [isUnit_or_isUnit_one_sub_self](declarations/isunit-or-isunit-one-sub-self.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isUnit_of_mem_nonunits_one_sub_self](declarations/isunit-of-mem-nonunits-one-sub-self.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isUnit_one_sub_self_of_mem_nonunits](declarations/isunit-one-sub-self-of-mem-nonunits.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [of_surjective'](declarations/of-surjective.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [jacobson_eq_maximalIdeal](declarations/jacobson-eq-maximalideal.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `class` | [IsLocalRingHom](declarations/islocalringhom.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [isLocalRingHom_id](declarations/islocalringhom-id.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [isUnit_map_iff](declarations/isunit-map-iff.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [map_mem_nonunits_iff](declarations/map-mem-nonunits-iff.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [isLocalRingHom_comp](declarations/islocalringhom-comp.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [isLocalRingHom_equiv](declarations/islocalringhom-equiv.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [isUnit_of_map_unit](declarations/isunit-of-map-unit.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [of_irreducible_map](declarations/of-irreducible-map.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [isLocalRingHom_of_comp](declarations/islocalringhom-of-comp.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [RingHom.domain_localRing](declarations/ringhom-domain-localring.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [map_nonunit](declarations/map-nonunit.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [local_hom_TFAE](declarations/local-hom-tfae.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [of_surjective](declarations/of-surjective-source-edition-2.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [surjective_units_map_of_local_ringHom](declarations/surjective-units-map-of-local-ringhom.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [ResidueField](declarations/residuefield.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [ResidueFieldCommRing](declarations/residuefieldcommring.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [ResidueFieldInhabited](declarations/residuefieldinhabited.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [ResidueField.field](declarations/residuefield-field.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [residue](declarations/residue.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [ResidueField.algebra](declarations/residuefield-algebra.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [ResidueField.algebraMap_eq](declarations/residuefield-algebramap-eq.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [lift](declarations/lift.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [lift_comp_residue](declarations/lift-comp-residue.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [lift_residue_apply](declarations/lift-residue-apply.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [map](declarations/map.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [map_id](declarations/map-id.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [map_comp](declarations/map-comp.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [map_comp_residue](declarations/map-comp-residue.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [map_residue](declarations/map-residue.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [map_id_apply](declarations/map-id-apply.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [map_map](declarations/map-map.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [mapEquiv](declarations/mapequiv.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [mapEquiv.symm](declarations/mapequiv-symm.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [mapEquiv_trans](declarations/mapequiv-trans.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [mapEquiv_refl](declarations/mapequiv-refl.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [mapAut](declarations/mapaut.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [residue_smul](declarations/residue-smul.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [ker_eq_maximalIdeal](declarations/ker-eq-maximalideal.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [isLocalRingHom_residue](declarations/islocalringhom-residue.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [LocalRing.maximalIdeal_eq_bot](declarations/localring-maximalideal-eq-bot.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [localRing](declarations/localring.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f0d85ff7230f975f2dab899621dc9213a26303d0d7fb3822e7b4a5d5fd249b3f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LocalRing/Variant1aa76b6011b56949fbd24f6db23ae1e10a9ea2c71b30a493c4c054b91d875982.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
