# Bit Matrix Cover Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BitMatrixCover/Variantf4084da17d0c3888ba98581b1190bac7e5a30fb0d3aae53610272152ec117538.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65e018c4a7f05003cd671a74cbe28602ad8a92e7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/BitMatrixCoverNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BitMatrix](declarations/bitmatrix.md) | 17 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [BitLocus](declarations/bitlocus.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [index](declarations/index.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [BitInterval](declarations/bitinterval.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [endExclusive](declarations/endexclusive.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Contains](declarations/contains.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [contains_iff](declarations/contains-iff.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [BitIntervalCover](declarations/bitintervalcover.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [BitMask](declarations/bitmask.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [BitMaskCover](declarations/bitmaskcover.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `inductive` | [BitMatrixCover](declarations/bitmatrixcover.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `inductive` | [BitMatrixCoverTier](declarations/bitmatrixcovertier.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [coverTierIndex](declarations/covertierindex.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [interval_basis_precedes_mask_refinement](declarations/interval-basis-precedes-mask-refinement.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mask_refinement_precedes_macro_routing](declarations/mask-refinement-precedes-macro-routing.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [BitMatrixCoverAuthoritySurface](declarations/bitmatrixcoverauthoritysurface.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [defaultBitMatrixCoverAuthoritySurface](declarations/defaultbitmatrixcoverauthoritysurface.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [default_cover_authority_uses_interval_basis](declarations/default-cover-authority-uses-interval-basis.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [default_cover_authority_denies_arbitrary_mask_primitive](declarations/default-cover-authority-denies-arbitrary-mask-primitive.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [default_cover_authority_allows_certified_mask_refinement](declarations/default-cover-authority-allows-certified-mask-refinement.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [default_cover_authority_denies_macro_without_routing](declarations/default-cover-authority-denies-macro-without-routing.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `inductive` | [BitLookupPathAt](declarations/bitlookuppathat.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [canonicalBitLookupPathAt](declarations/canonicalbitlookuppathat.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [bit_lookup_fiber_subsingleton](declarations/bit-lookup-fiber-subsingleton.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [bitLookupPathAtSubsingleton](declarations/bitlookuppathatsubsingleton.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [bit_lookup_fiber_inhabited](declarations/bit-lookup-fiber-inhabited.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [bit_lookup_fiber_unique](declarations/bit-lookup-fiber-unique.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [BitLookupSection](declarations/bitlookupsection.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [canonicalBitLookupSection](declarations/canonicalbitlookupsection.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [bitLookupSection_subsingleton](declarations/bitlookupsection-subsingleton.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [CompatibleBitIntervalFamily](declarations/compatiblebitintervalfamily.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [RestrictsToBitIntervalCover](declarations/restrictstobitintervalcover.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [interval_lookup_sections_glue_unique](declarations/interval-lookup-sections-glue-unique.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [BitMaskLookupSection](declarations/bitmasklookupsection.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [canonicalBitMaskLookupSection](declarations/canonicalbitmasklookupsection.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [bitMaskLookupSection_subsingleton](declarations/bitmasklookupsection-subsingleton.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `structure` | [CompatibleBitMaskFamily](declarations/compatiblebitmaskfamily.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [RestrictsToBitMaskCover](declarations/restrictstobitmaskcover.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [mask_lookup_sections_glue_unique](declarations/mask-lookup-sections-glue-unique.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6feada253e54b823ba81311283378b7427fd734c7dedcc320eebf78b092fe0c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BitMatrixCover/Variantf4084da17d0c3888ba98581b1190bac7e5a30fb0d3aae53610272152ec117538.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
