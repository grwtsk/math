# Fredholm Basic Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 48 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f8abc5c8ad7e3a26fd394d750df66c48b4079e4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [IsFredholm](declarations/isfredholm.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [IsFredholm.closedComplemented_range](declarations/isfredholm-closedcomplemented-range.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [_root_.FredholmDecomposition](declarations/root-fredholmdecomposition.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [_root_.FredholmDecomposition.proj](declarations/root-fredholmdecomposition-proj.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [_root_.FredholmDecomposition.cofg_X₁](declarations/root-fredholmdecomposition-cofg-x.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [FredholmPackage](declarations/fredholmpackage.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [FredholmPackage.ker_eq](declarations/fredholmpackage-ker-eq.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [FredholmPackage.range_eq](declarations/fredholmpackage-range-eq.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [FredholmPackage.mapsTo](declarations/fredholmpackage-mapsto.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [FredholmPackage.equiv_eq_restrict](declarations/fredholmpackage-equiv-eq-restrict.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [FredholmPackage.isInvertible_restrict](declarations/fredholmpackage-isinvertible-restrict.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [FredholmPackage.quasiInverse](declarations/fredholmpackage-quasiinverse.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [FredholmPackage.isQuasiInverse](declarations/fredholmpackage-isquasiinverse.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [exists_restrict_isInvertible_of_isQuasiInverse](declarations/exists-restrict-isinvertible-of-isquasiinverse.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [IsFredholm.of_isInvertible_restrict](declarations/isfredholm-of-isinvertible-restrict.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [IsFredholm.fredholmPackage](declarations/isfredholm-fredholmpackage.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [IsFredholm.nonempty_fredholmPackage](declarations/isfredholm-nonempty-fredholmpackage.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isFredholm_tfae](declarations/isfredholm-tfae.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [FredholmPackage.isFredholm](declarations/fredholmpackage-isfredholm.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [isFredholm_iff_exists_isQuasiInverse](declarations/isfredholm-iff-exists-isquasiinverse.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [IsFredholm.of_isQuasiInverse](declarations/isfredholm-of-isquasiinverse.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [_root_.Topology.IsClosedEmbedding.isFredholm](declarations/root-topology-isclosedembedding-isfredholm.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [_root_.Function.Injective.isFredholm_iff](declarations/root-function-injective-isfredholm-iff.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [_root_.Submodule.isFredholm_subtypeL_iff](declarations/root-submodule-isfredholm-subtypel-iff.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [_root_.Submodule.isFredholm_subtypeL](declarations/root-submodule-isfredholm-subtypel.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [_root_.ContinuousLinearEquiv.isFredholm](declarations/root-continuouslinearequiv-isfredholm.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [IsFredholm.id](declarations/isfredholm-id.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [IsInvertible.isFredholm](declarations/isinvertible-isfredholm.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [_root_.Function.Bijective.isFredholm_iff](declarations/root-function-bijective-isfredholm-iff.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [isInvertible_iff_isFredholm_and_bijective](declarations/isinvertible-iff-isfredholm-and-bijective.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [_root_.Topology.IsQuotientMap.isFredholm](declarations/root-topology-isquotientmap-isfredholm.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [_root_.Function.Surjective.isFredholm_iff](declarations/root-function-surjective-isfredholm-iff.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [_root_.Submodule.isFredholm_mkQL_iff](declarations/root-submodule-isfredholm-mkql-iff.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [_root_.Submodule.isFredholm_mkQL](declarations/root-submodule-isfredholm-mkql.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [_root_.Submodule.isFredholm_projectionOntoL_iff](declarations/root-submodule-isfredholm-projectionontol-iff.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [_root_.Submodule.isFredholm_projectionOntoL](declarations/root-submodule-isfredholm-projectionontol.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [_root_.FredholmDecomposition.isFredholm_proj](declarations/root-fredholmdecomposition-isfredholm-proj.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [_root_.Submodule.isFredholm_projectionL](declarations/root-submodule-isfredholm-projectionl.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [_root_.Submodule.isFredholm_projectionL_iff](declarations/root-submodule-isfredholm-projectionl-iff.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [IsIdempotentElem.isFredholm_iff](declarations/isidempotentelem-isfredholm-iff.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [IsIdempotentElem.isFredholm](declarations/isidempotentelem-isfredholm.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [isFredholm_congr](declarations/isfredholm-congr-source-edition-2.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [IsFredholm.congr](declarations/isfredholm-congr.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [IsFredholm.add_hasFiniteRange](declarations/isfredholm-add-hasfiniterange.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [IsFredholm.hasFiniteRange_add](declarations/isfredholm-hasfiniterange-add.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [IsFredholm.comp](declarations/isfredholm-comp.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [IsFredholm.comp_iff_left](declarations/isfredholm-comp-iff-left.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [IsFredholm.comp_iff_right](declarations/isfredholm-comp-iff-right.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [isFredholm_comp_equiv](declarations/isfredholm-comp-equiv.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [isFredholm_equiv_comp](declarations/isfredholm-equiv-comp.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [isFredholm_restrict_iff](declarations/isfredholm-restrict-iff.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [isFredholm_domRestrict_iff](declarations/isfredholm-domrestrict-iff.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [isFredholm_codRestrict_iff](declarations/isfredholm-codrestrict-iff.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [IsFredholm.index_comp](declarations/isfredholm-index-comp.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a802b80421c3510d3b5048c64326619279599afd179fded066fbe175b84a2f8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
