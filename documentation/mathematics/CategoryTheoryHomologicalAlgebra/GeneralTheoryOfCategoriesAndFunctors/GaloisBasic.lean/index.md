# Galois Basic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**50 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b22783391f6497c23885f75ab00c582d6ca0d898`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GaloisBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [PreGaloisCategory](declarations/pregaloiscategory.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [FiberFunctor](declarations/fiberfunctor.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [IsConnected](declarations/isconnected.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [PreservesIsConnected](declarations/preservesisconnected.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [comp_right](declarations/comp-right.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [mulAction_def](declarations/mulaction-def.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [mulAction_naturality](declarations/mulaction-naturality.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [has_non_trivial_subobject_of_not_isConnected_of_not_initial](declarations/has-non-trivial-subobject-of-not-isconnected-of-not-initial.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [card_fiber_eq_of_iso](declarations/card-fiber-eq-of-iso.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [initial_iff_fiber_empty](declarations/initial-iff-fiber-empty.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [not_initial_iff_fiber_nonempty](declarations/not-initial-iff-fiber-nonempty.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [not_initial_of_inhabited](declarations/not-initial-of-inhabited.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [nonempty_fiber_of_isConnected](declarations/nonempty-fiber-of-isconnected.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [fiberEqualizerEquiv](declarations/fiberequalizerequiv.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [fiberEqualizerEquiv_symm_ι_apply](declarations/fiberequalizerequiv-symm-apply.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [fiberPullbackEquiv](declarations/fiberpullbackequiv.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [fiberPullbackEquiv_symm_fst_apply](declarations/fiberpullbackequiv-symm-fst-apply.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [fiberPullbackEquiv_symm_snd_apply](declarations/fiberpullbackequiv-symm-snd-apply.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [fiberBinaryProductEquiv](declarations/fiberbinaryproductequiv.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [fiberBinaryProductEquiv_symm_fst_apply](declarations/fiberbinaryproductequiv-symm-fst-apply.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [fiberBinaryProductEquiv_symm_snd_apply](declarations/fiberbinaryproductequiv-symm-snd-apply.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [evaluation_injective_of_isConnected](declarations/evaluation-injective-of-isconnected.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [evaluation_aut_injective_of_isConnected](declarations/evaluation-aut-injective-of-isconnected.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [epi_of_nonempty_of_isConnected](declarations/epi-of-nonempty-of-isconnected.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [surjective_on_fiber_of_epi](declarations/surjective-on-fiber-of-epi.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [surjective_of_nonempty_fiber_of_isConnected](declarations/surjective-of-nonempty-fiber-of-isconnected.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [nonempty_fiber_pi_of_nonempty_of_finite](declarations/nonempty-fiber-pi-of-nonempty-of-finite.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [isIso_of_mono_of_eq_card_fiber](declarations/isiso-of-mono-of-eq-card-fiber.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [lt_card_fiber_of_mono_of_notIso](declarations/lt-card-fiber-of-mono-of-notiso.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [non_zero_card_fiber_of_not_initial](declarations/non-zero-card-fiber-of-not-initial.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [card_fiber_coprod_eq_sum](declarations/card-fiber-coprod-eq-sum.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [card_hom_le_card_fiber_of_connected](declarations/card-hom-le-card-fiber-of-connected.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [card_aut_le_card_fiber_of_connected](declarations/card-aut-le-card-fiber-of-connected.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `class` | [GaloisCategory](declarations/galoiscategory.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [GaloisCategory.getFiberFunctor](declarations/galoiscategory-getfiberfunctor.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=911b7dc2431aee244845552758e87c8001eba94239d19d28030b963ea710a890 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant92d11e7ccc7c3fc21045804393f07ed3dea490a9915c647bea7620565f3a1f82.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
