# Bit Matrix Cover

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BitMatrixCover/Variant3c220aa6db727f2015f4c34bb193e552f5304bf8fb63c3daac497d8819bcf76c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4efa27058028a2cbaf9ec3f26208c00dfd1dbca`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/BitMatrixCover.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BitMatrix](declarations/bitmatrix.md) | 9 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [BitLocus](declarations/bitlocus.md) | 14 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [index](declarations/index.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [BitInterval](declarations/bitinterval.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [endExclusive](declarations/endexclusive.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Contains](declarations/contains.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [contains_iff](declarations/contains-iff.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [BitIntervalCover](declarations/bitintervalcover.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [BitMask](declarations/bitmask.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [BitMaskCover](declarations/bitmaskcover.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `inductive` | [BitMatrixCover](declarations/bitmatrixcover.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `inductive` | [BitMatrixCoverTier](declarations/bitmatrixcovertier.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [coverTierIndex](declarations/covertierindex.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [interval_basis_precedes_mask_refinement](declarations/interval-basis-precedes-mask-refinement.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mask_refinement_precedes_macro_routing](declarations/mask-refinement-precedes-macro-routing.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [BitMatrixCoverAuthoritySurface](declarations/bitmatrixcoverauthoritysurface.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [defaultBitMatrixCoverAuthoritySurface](declarations/defaultbitmatrixcoverauthoritysurface.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [default_cover_authority_uses_interval_basis](declarations/default-cover-authority-uses-interval-basis.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [default_cover_authority_denies_arbitrary_mask_primitive](declarations/default-cover-authority-denies-arbitrary-mask-primitive.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [default_cover_authority_allows_certified_mask_refinement](declarations/default-cover-authority-allows-certified-mask-refinement.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [default_cover_authority_denies_macro_without_routing](declarations/default-cover-authority-denies-macro-without-routing.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `inductive` | [BitLookupPathAt](declarations/bitlookuppathat.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [canonicalBitLookupPathAt](declarations/canonicalbitlookuppathat.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [bit_lookup_fiber_subsingleton](declarations/bit-lookup-fiber-subsingleton.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [bitLookupPathAtSubsingleton](declarations/bitlookuppathatsubsingleton.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [bit_lookup_fiber_inhabited](declarations/bit-lookup-fiber-inhabited.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [bit_lookup_fiber_unique](declarations/bit-lookup-fiber-unique.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [BitLookupSection](declarations/bitlookupsection.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [canonicalBitLookupSection](declarations/canonicalbitlookupsection.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [bitLookupSection_subsingleton](declarations/bitlookupsection-subsingleton.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [CompatibleBitIntervalFamily](declarations/compatiblebitintervalfamily.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [RestrictsToBitIntervalCover](declarations/restrictstobitintervalcover.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [interval_lookup_sections_glue_unique](declarations/interval-lookup-sections-glue-unique.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [BitMaskLookupSection](declarations/bitmasklookupsection.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [canonicalBitMaskLookupSection](declarations/canonicalbitmasklookupsection.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [bitMaskLookupSection_subsingleton](declarations/bitmasklookupsection-subsingleton.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `structure` | [CompatibleBitMaskFamily](declarations/compatiblebitmaskfamily.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [RestrictsToBitMaskCover](declarations/restrictstobitmaskcover.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [mask_lookup_sections_glue_unique](declarations/mask-lookup-sections-glue-unique.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=beaf0cd6ccac2526a3c64bd030acb9e6a6ec502e1703b5b2f21119195c650295 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BitMatrixCover/Variant3c220aa6db727f2015f4c34bb193e552f5304bf8fb63c3daac497d8819bcf76c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
