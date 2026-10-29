# Function Namespaced Public Curry

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f632fef87156c1f655515728e3a9cc86438cd7d1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/FunctionNamespacedPublicCurry.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [curry](declarations/curry.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [uncurry](declarations/uncurry.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [curry_uncurry](declarations/curry-uncurry.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [uncurry_curry](declarations/uncurry-curry.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [uncurry_apply_pair](declarations/uncurry-apply-pair.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [curry_apply](declarations/curry-apply.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Injective](declarations/injective.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Injective.comp](declarations/injective-comp.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Surjective](declarations/surjective.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Surjective.comp](declarations/surjective-comp.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [LeftInverse](declarations/leftinverse.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [HasLeftInverse](declarations/hasleftinverse.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [RightInverse](declarations/rightinverse.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [HasRightInverse](declarations/hasrightinverse.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [LeftInverse.injective](declarations/leftinverse-injective.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [HasLeftInverse.injective](declarations/hasleftinverse-injective.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [rightInverse_of_injective_of_leftInverse](declarations/rightinverse-of-injective-of-leftinverse.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [RightInverse.surjective](declarations/rightinverse-surjective.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [HasRightInverse.surjective](declarations/hasrightinverse-surjective.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [leftInverse_of_surjective_of_rightInverse](declarations/leftinverse-of-surjective-of-rightinverse.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [injective_id](declarations/injective-id.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [surjective_id](declarations/surjective-id.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Injective.eq_iff](declarations/injective-eq-iff.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Injective.eq_iff'](declarations/injective-eq-iff-source-edition-2.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Injective.ne](declarations/injective-ne.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Injective.ne_iff](declarations/injective-ne-iff.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Injective.ne_iff'](declarations/injective-ne-iff-source-edition-2.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [LeftInverse.id](declarations/leftinverse-id.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [RightInverse.id](declarations/rightinverse-id.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Injective.exists_leftInverse](declarations/injective-exists-leftinverse.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Injective.leftInverse](declarations/injective-leftinverse.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=57f6962bf8599f3a8fe10ca712278f99265a629219ae09ebb1fc8dc4712c98ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Function/Variantca4835eebab14bf0dac79d80d010d86d60677ac3e73401e02e91d16577dfd616.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
