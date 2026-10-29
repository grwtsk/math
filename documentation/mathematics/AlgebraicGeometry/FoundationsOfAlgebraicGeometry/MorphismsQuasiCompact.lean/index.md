# Morphisms Quasi Compact

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `204fbbc4c45b97912d69fc5fe5ceaa0b3b166663`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AlgebraicGeometry/FoundationsOfAlgebraicGeometry/MorphismsQuasiCompact.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [QuasiCompact](declarations/quasicompact.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [quasiCompact_iff_spectral](declarations/quasicompact-iff-spectral.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [quasiCompact_comp](declarations/quasicompact-comp.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [isCompactOpen_iff_eq_finset_affine_union](declarations/iscompactopen-iff-eq-finset-affine-union.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [isCompactOpen_iff_eq_basicOpen_union](declarations/iscompactopen-iff-eq-basicopen-union.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [quasiCompact_iff_forall_affine](declarations/quasicompact-iff-forall-affine.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [isCompact_basicOpen](declarations/iscompact-basicopen.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [quasiCompact_over_affine_iff](declarations/quasicompact-over-affine-iff.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [compactSpace_iff_quasiCompact](declarations/compactspace-iff-quasicompact.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [QuasiCompact.compactSpace_of_compactSpace](declarations/quasicompact-compactspace-of-compactspace.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [quasiCompact_isStableUnderComposition](declarations/quasicompact-isstableundercomposition.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [quasiCompact_isStableUnderBaseChange](declarations/quasicompact-isstableunderbasechange.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [compactSpace_iff_exists](declarations/compactspace-iff-exists.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [isCompact_iff_exists](declarations/iscompact-iff-exists.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [isClosedMap_iff_specializingMap](declarations/isclosedmap-iff-specializingmap.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [compact_open_induction_on](declarations/compact-open-induction-on.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [exists_pow_mul_eq_zero_of_res_basicOpen_eq_zero_of_isAffineOpen](declarations/exists-pow-mul-eq-zero-of-res-basicopen-eq-zero-of-isaffineopen.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [exists_pow_mul_eq_zero_of_res_basicOpen_eq_zero_of_isCompact](declarations/exists-pow-mul-eq-zero-of-res-basicopen-eq-zero-of-iscompact.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [Scheme.isNilpotent_iff_basicOpen_eq_bot_of_isCompact](declarations/scheme-isnilpotent-iff-basicopen-eq-bot-of-iscompact.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [Scheme.isNilpotent_iff_basicOpen_eq_bot](declarations/scheme-isnilpotent-iff-basicopen-eq-bot.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [Scheme.zeroLocus_eq_univ_iff_subset_nilradical_of_isCompact](declarations/scheme-zerolocus-eq-univ-iff-subset-nilradical-of-iscompact.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [Scheme.zeroLocus_eq_univ_iff_subset_nilradical](declarations/scheme-zerolocus-eq-univ-iff-subset-nilradical.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3203a78e7930a48271d2869f36cfdc6a6fcdd9ca6b5c27fb05eaa5a8adb379a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variantbfafdd4866947cc2e28123236b07a8f7e0af73722b3778b3df9faa9b1da0d9fb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
