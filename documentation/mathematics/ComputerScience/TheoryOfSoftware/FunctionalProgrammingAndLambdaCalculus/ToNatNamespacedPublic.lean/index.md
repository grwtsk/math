# To Nat Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 43 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b2a521c8e2c87c6b11c4d34b03718f7bc6548dd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ToNatNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [NoRepetition](declarations/norepetition.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [noRepetition_iff](declarations/norepetition-iff.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [NoRepetition.right_of_append](declarations/norepetition-right-of-append.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [NoRepetition.left_of_append](declarations/norepetition-left-of-append.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [not_noRepetition_append_of_right](declarations/not-norepetition-append-of-right.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [not_noRepetition_append_of_left](declarations/not-norepetition-append-of-left.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [not_noRepetition_append_singleton_of_suffix](declarations/not-norepetition-append-singleton-of-suffix.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [NoRepetition.not_isSuffix_of_append_singleton](declarations/norepetition-not-issuffix-of-append-singleton.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [NoRepetition.append_singleton_of_not_suffix](declarations/norepetition-append-singleton-of-not-suffix.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [NoRepetition.append_singleton_of_ne](declarations/norepetition-append-singleton-of-ne.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [noRepetition_singleton](declarations/norepetition-singleton.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [noRepetition_cons_append_append_iff](declarations/norepetition-cons-append-append-iff.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [noRepetition_append_cons_of_noRepetition_append_singleton](declarations/norepetition-append-cons-of-norepetition-append-singleton.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [isNat_iff'](declarations/isnat-iff-source-edition-3.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [isNat_iff](declarations/isnat-iff.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [isNat_of_isDigit](declarations/isnat-of-isdigit-source-edition-2.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isSome_toNat?](declarations/issome-tonat-source-edition-2.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isNat_of_toNat?_eq_some](declarations/isnat-of-tonat-eq-some.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [toNat?_eq_none_iff](declarations/tonat-eq-none-iff.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toNat?_eq_none](declarations/tonat-eq-none-source-edition-2.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toNat?_eq_some_ofDigitChars](declarations/tonat-eq-some-ofdigitchars-source-edition-2.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isNat_congr](declarations/isnat-congr.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toNat?_congr](declarations/tonat-congr.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [isNat_toSlice](declarations/isnat-toslice.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [isNat_comp_toSlice](declarations/isnat-comp-toslice.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [toNat?_toSlice](declarations/tonat-toslice.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toNat?_comp_toSlice](declarations/tonat-comp-toslice.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Slice.isNat_copy](declarations/slice-isnat-copy.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Slice.isNat_comp_copy](declarations/slice-isnat-comp-copy.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Slice.toNat?_copy](declarations/slice-tonat-copy.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Slice.toNat?_comp_copy](declarations/slice-tonat-comp-copy.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [isNat_iff](declarations/isnat-iff-source-edition-2.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [isNat_of_isDigit](declarations/isnat-of-isdigit.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [isSome_toNat?](declarations/issome-tonat.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [isNat_of_toNat?_eq_some](declarations/isnat-of-tonat-eq-some-source-edition-2.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [toNat?_eq_none_iff](declarations/tonat-eq-none-iff-source-edition-2.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [toNat?_eq_none](declarations/tonat-eq-none.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [toNat?_eq_some_ofDigitChars](declarations/tonat-eq-some-ofdigitchars.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [isNat_append_underscore_append](declarations/isnat-append-underscore-append.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [toNat?_append_underscore_append_eq_some](declarations/tonat-append-underscore-append-eq-some.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [isNat_repr](declarations/isnat-repr.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [toNat?_repr](declarations/tonat-repr.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [repr_injective](declarations/repr-injective.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [repr_inj](declarations/repr-inj.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c52ef43526b4c493088c3e8dfc0bc9064de0244e848fd18a2a83b5c7d34c3573 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToNat/Variant32fe3b4d40543c1cdef0a8a1b31a89d53a551f142834c68418f4f4871f0e5c5f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
