# Affine Space Dimension Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d97aa2403c7a6cf5c7187a3ae668fe1cba3e93a5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceDimensionPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [dim](declarations/dim.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [finDim](declarations/findim.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [dim_bot](declarations/dim-bot.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [finDim_bot](declarations/findim-bot.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [dim_singleton](declarations/dim-singleton.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [finDim_singleton](declarations/findim-singleton.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [dim_eq_bot_iff](declarations/dim-eq-bot-iff.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [finDim_eq_bot_iff](declarations/findim-eq-bot-iff.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [dim_ne_bot_iff](declarations/dim-ne-bot-iff.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [finDim_ne_bot_iff](declarations/findim-ne-bot-iff.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [dim_eq_rank](declarations/dim-eq-rank.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [finDim_eq_finrank](declarations/findim-eq-finrank.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [finDim_eq_finrank_of_not_finite](declarations/findim-eq-finrank-of-not-finite.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [dim_lt_aleph0](declarations/dim-lt-aleph0.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [finite_iff_dim_lt_aleph0](declarations/finite-iff-dim-lt-aleph0.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [finite_of_finDim_ne_zero](declarations/finite-of-findim-ne-zero.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [finDim_eq_map_dim_toNat](declarations/findim-eq-map-dim-tonat.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [dim_eq_finDim_unbot](declarations/dim-eq-findim-unbot.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [dim_mono](declarations/dim-mono.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [finDim_mono](declarations/findim-mono.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [lift_dim_map_le](declarations/lift-dim-map-le.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [dim_map_le](declarations/dim-map-le.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [finDim_map_le_finDim](declarations/findim-map-le-findim.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [lift_dim_map_of_injective](declarations/lift-dim-map-of-injective.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [dim_map_of_injective](declarations/dim-map-of-injective.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [finDim_map_of_injective](declarations/findim-map-of-injective.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [dim_le_zero_iff_subsingleton](declarations/dim-le-zero-iff-subsingleton.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [finDim_le_zero_iff_subsingleton](declarations/findim-le-zero-iff-subsingleton.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [finDim_strictMono](declarations/findim-strictmono.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=14b29962da25277626da8fde80106c14bdef2f456ab2dcf33a8195cb13b9ddd0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
