# Wire

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/InformationTheory/ReedSolomon/Wire.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6909eabfef71ec98640030d785e0fcf36f555c55`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/Wire.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [packNatLE](declarations/packnatle.md) | 13 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [unpackNatLE](declarations/unpacknatle.md) | 17 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [unpackNatLE_packNatLE](declarations/unpacknatle-packnatle.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [packNatLE_bound](declarations/packnatle-bound.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [packNatLE_append_zero](declarations/packnatle-append-zero.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [pad](declarations/pad.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [pad_length](declarations/pad-length.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [take_pad](declarations/take-pad.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [pad_nil](declarations/pad-nil.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [pad_cons](declarations/pad-cons.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [pad_add](declarations/pad-add.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [packWord](declarations/packword.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [unpackWord](declarations/unpackword.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [unpackWord_packWord](declarations/unpackword-packword.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [unpackWord_packWord_take](declarations/unpackword-packword-take.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [packStripe](declarations/packstripe.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [unpackStripe](declarations/unpackstripe.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [packStripe_length](declarations/packstripe-length.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [unpackStripe_packStripe](declarations/unpackstripe-packstripe.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [unpackStripe_packStripe_take](declarations/unpackstripe-packstripe-take.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [packStripes](declarations/packstripes.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [unpackStripes](declarations/unpackstripes.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [packStripes_length](declarations/packstripes-length.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [packStripes_shape](declarations/packstripes-shape.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [unpackStripes_packStripes](declarations/unpackstripes-packstripes.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [stripeCount](declarations/stripecount.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [packPayload](declarations/packpayload.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [unpackPayload](declarations/unpackpayload.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [stripeCount_capacity](declarations/stripecount-capacity.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [unpackPayload_packPayload](declarations/unpackpayload-packpayload.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f1a2ee7abeadfe1a453d643a42c9bb8088d5eb42244c1c278b7c13b530a0de37 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean","GRWTSK/InformationTheory/ReedSolomon/Wire.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
