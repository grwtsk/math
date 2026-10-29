# Character Module Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/CharacterModule/Variantf106cf28d07df302cdf5472a5d8577550471840f7a52ebdc83f1e5e0c2939b23.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b08fcba2bdfb8e14773c9a46b62479c50b4187d2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModulePublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [CharacterModule](declarations/charactermodule.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [ext](declarations/ext.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [smul_apply](declarations/smul-apply.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [dual](declarations/dual.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [dual_zero](declarations/dual-zero.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [dual_comp](declarations/dual-comp.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [dual_injective_of_surjective](declarations/dual-injective-of-surjective.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [dual_surjective_of_injective](declarations/dual-surjective-of-injective.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [congr](declarations/congr.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [uncurry](declarations/uncurry.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [curry](declarations/curry.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [homEquiv](declarations/homequiv.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [dual_rTensor_conj_homEquiv](declarations/dual-rtensor-conj-homequiv.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [int](declarations/int.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `abbrev` | [int.divByNat](declarations/int-divbynat.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [int.divByNat_self](declarations/int-divbynat-self.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [intSpanEquivQuotAddOrderOf](declarations/intspanequivquotaddorderof.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [intSpanEquivQuotAddOrderOf_apply_self](declarations/intspanequivquotaddorderof-apply-self.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [ofSpanSingleton](declarations/ofspansingleton.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [eq_zero_of_ofSpanSingleton_apply_self](declarations/eq-zero-of-ofspansingleton-apply-self.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [exists_character_apply_ne_zero_of_ne_zero](declarations/exists-character-apply-ne-zero-of-ne-zero.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [eq_zero_of_character_apply](declarations/eq-zero-of-character-apply.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [dual_surjective_iff_injective](declarations/dual-surjective-iff-injective.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [_root_.rTensor_injective_iff_lcomp_surjective](declarations/root-rtensor-injective-iff-lcomp-surjective.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [surjective_of_dual_injective](declarations/surjective-of-dual-injective.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [dual_injective_iff_surjective](declarations/dual-injective-iff-surjective.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [dual_bijective_iff_bijective](declarations/dual-bijective-iff-bijective.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5bf0847abdd213b01172abcfd7e36b6c7d567902e47acf3e388fbd988fe876cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CharacterModule/Variantf106cf28d07df302cdf5472a5d8577550471840f7a52ebdc83f1e5e0c2939b23.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
