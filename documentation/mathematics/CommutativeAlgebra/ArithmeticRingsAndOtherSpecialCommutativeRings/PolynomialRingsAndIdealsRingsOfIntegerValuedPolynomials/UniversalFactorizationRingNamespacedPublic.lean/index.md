# Universal Factorization Ring Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `56a1041889cc9095ca7ab293316e7658cdf2bfe1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/UniversalFactorizationRingNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [freeMonic](declarations/freemonic.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [coeff_freeMonic](declarations/coeff-freemonic.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [degree_freeMonic](declarations/degree-freemonic.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [natDegree_freeMonic](declarations/natdegree-freemonic.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [monic_freeMonic](declarations/monic-freemonic.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [map_map_freeMonic](declarations/map-map-freemonic.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [MonicDegreeEq.freeMonic](declarations/monicdegreeeq-freemonic.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [mapEquivMonic](declarations/mapequivmonic.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [coe_mapEquivMonic_comp](declarations/coe-mapequivmonic-comp-source-edition-2.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [coe_mapEquivMonic_comp'](declarations/coe-mapequivmonic-comp.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [mapEquivMonic_symm_map](declarations/mapequivmonic-symm-map.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [mapEquivMonic_symm_map_algebraMap](declarations/mapequivmonic-symm-map-algebramap.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [universalFactorizationMap](declarations/universalfactorizationmap.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [universalFactorizationMap_freeMonic](declarations/universalfactorizationmap-freemonic.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [universalFactorizationMap_comp_map](declarations/universalfactorizationmap-comp-map.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [universalFactorizationMapLiftEquiv](declarations/universalfactorizationmapliftequiv.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [ker_eval₂Hom_universalFactorizationMap](declarations/ker-eval-hom-universalfactorizationmap.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [universalFactorizationMapPresentation](declarations/universalfactorizationmappresentation.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [pderiv_inl_universalFactorizationMap_X](declarations/pderiv-inl-universalfactorizationmap-x.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [pderiv_inr_universalFactorizationMap_X](declarations/pderiv-inr-universalfactorizationmap-x.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [universalFactorizationMapPresentation_jacobiMatrix](declarations/universalfactorizationmappresentation-jacobimatrix.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [universalFactorizationMapPresentation_jacobian](declarations/universalfactorizationmappresentation-jacobian.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [finitePresentation_universalFactorizationMap](declarations/finitepresentation-universalfactorizationmap.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [finite_universalFactorizationMap](declarations/finite-universalfactorizationmap.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [UniversalFactorizationRing](declarations/universalfactorizationring.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [UniversalFactorizationRing.fromTensor](declarations/universalfactorizationring-fromtensor.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [UniversalFactorizationRing.monicDegreeEq](declarations/universalfactorizationring-monicdegreeeq.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [UniversalFactorizationRing.fromTensor_comp_universalFactorizationMap](declarations/universalfactorizationring-fromtensor-comp-universalfactorizationmap-source-edition-2.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [UniversalFactorizationRing.fromTensor_comp_universalFactorizationMap'](declarations/universalfactorizationring-fromtensor-comp-universalfactorizationmap.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [UniversalFactorizationRing.factor₁](declarations/universalfactorizationring-factor-source-edition-2.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [UniversalFactorizationRing.factor₂](declarations/universalfactorizationring-factor.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [UniversalFactorizationRing.factor₁_mul_factor₂](declarations/universalfactorizationring-factor-mul-factor.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [UniversalFactorizationRing.homEquiv](declarations/universalfactorizationring-homequiv.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [UniversalFactorizationRing.presentation](declarations/universalfactorizationring-presentation.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [UniversalFactorizationRing.jacobian_resentation](declarations/universalfactorizationring-jacobian-resentation.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `abbrev` | [UniversalCoprimeFactorizationRing](declarations/universalcoprimefactorizationring.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [UniversalCoprimeFactorizationRing.factor₁](declarations/universalcoprimefactorizationring-factor.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [UniversalCoprimeFactorizationRing.factor₂](declarations/universalcoprimefactorizationring-factor-source-edition-2.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [UniversalCoprimeFactorizationRing.factor₁_mul_factor₂](declarations/universalcoprimefactorizationring-factor-mul-factor.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [UniversalCoprimeFactorizationRing.isCoprime_factor₁_factor₂](declarations/universalcoprimefactorizationring-iscoprime-factor-factor.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [UniversalCoprimeFactorizationRing.homEquiv](declarations/universalcoprimefactorizationring-homequiv.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [UniversalCoprimeFactorizationRing.homEquiv_comp_fst](declarations/universalcoprimefactorizationring-homequiv-comp-fst.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [UniversalCoprimeFactorizationRing.homEquiv_comp_snd](declarations/universalcoprimefactorizationring-homequiv-comp-snd.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [UniversalCoprimeFactorizationRing.exists_liesOver_residueFieldMap_bijective](declarations/universalcoprimefactorizationring-exists-liesover-residuefieldmap-biject.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [Universal Factorization Ring Namespaced Public](declarations/source-command-line-696.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18158b0af6e1a0b4b709f679e57beb53c82e630fef4438b9ddddeb450c4da061 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
