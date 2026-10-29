# Equiv Option Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1d7fbc015a569f641ae7d972e12c931da1687ae`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/EquivOptionNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [optionCongr](declarations/optioncongr.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [optionCongr_refl](declarations/optioncongr-refl.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [optionCongr_symm](declarations/optioncongr-symm.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [optionCongr_trans](declarations/optioncongr-trans.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [optionCongr_eq_equivFunctor_mapEquiv](declarations/optioncongr-eq-equivfunctor-mapequiv.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [removeNoneAux](declarations/removenoneaux.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [removeNoneAux_some](declarations/removenoneaux-some.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [removeNoneAux_none](declarations/removenoneaux-none.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [removeNoneAux_inv](declarations/removenoneaux-inv.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [removeNone](declarations/removenone.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [removeNone_symm](declarations/removenone-symm.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [removeNone_some](declarations/removenone-some.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [removeNone_none](declarations/removenone-none.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [option_symm_apply_none_iff](declarations/option-symm-apply-none-iff.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [some_removeNone_iff](declarations/some-removenone-iff.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [removeNone_optionCongr](declarations/removenone-optioncongr.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [optionCongr_injective](declarations/optioncongr-injective.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [optionSubtype](declarations/optionsubtype.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [optionSubtype_apply_apply](declarations/optionsubtype-apply-apply.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coe_optionSubtype_apply_apply](declarations/coe-optionsubtype-apply-apply.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [optionSubtype_apply_symm_apply](declarations/optionsubtype-apply-symm-apply.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [optionSubtype_symm_apply_apply_coe](declarations/optionsubtype-symm-apply-apply-coe.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [optionSubtype_symm_apply_apply_some](declarations/optionsubtype-symm-apply-apply-some.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [optionSubtype_symm_apply_apply_none](declarations/optionsubtype-symm-apply-apply-none.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [optionSubtype_symm_apply_symm_apply](declarations/optionsubtype-symm-apply-symm-apply.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [optionSubtypeNe](declarations/optionsubtypene.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [optionSubtypeNe_symm_self](declarations/optionsubtypene-symm-self.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [optionSubtypeNe_symm_of_ne](declarations/optionsubtypene-symm-of-ne.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [optionSubtypeNe_none](declarations/optionsubtypene-none.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [optionSubtypeNe_some](declarations/optionsubtypene-some.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [optionEquivSumPUnit.](declarations/optionequivsumpunit.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [optionEquivSumPUnit_none](declarations/optionequivsumpunit-none.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [optionEquivSumPUnit_some](declarations/optionequivsumpunit-some.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [optionEquivSumPUnit_coe](declarations/optionequivsumpunit-coe.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [optionEquivSumPUnit_symm_inl](declarations/optionequivsumpunit-symm-inl.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [optionEquivSumPUnit_symm_inr](declarations/optionequivsumpunit-symm-inr.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [optionIsSomeEquiv](declarations/optionissomeequiv.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `abbrev` | [subtypeNeSumPUnit](declarations/subtypenesumpunit.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a0c5618143cf0d69799760b706f2bf10c0de3b05c50acfc021c6956bea15492 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantb235a699d6eb789fb95ec0d03b9cb30a1d752840827f28fbcae3f064910a8958.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
