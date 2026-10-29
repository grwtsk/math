# Prime Bounded Continuation Public Edition1

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**83 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Varianta922c67e3e4ba26127aeeea81af189f49af8f7ce8494d24ec37abd9689e34b3f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `928984746240acd6f1ed0536abf2316d553344ee`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimeRadix](declarations/primeradix.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [pos](declarations/pos.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [BoundedPrimeDigit](declarations/boundedprimedigit.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [lap](declarations/lap.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [residue](declarations/residue.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [euclidean_lap_residue](declarations/euclidean-lap-residue.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [residue_lt](declarations/residue-lt.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [lap_residue_unique](declarations/lap-residue-unique.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [PrimeCoordinate](declarations/primecoordinate.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [ofExponent](declarations/ofexponent.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [canonical](declarations/canonical.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [absoluteExponent](declarations/absoluteexponent.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [carry_preserves_absolute_exponent](declarations/carry-preserves-absolute-exponent.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [boundary_increment_is_carry](declarations/boundary-increment-is-carry.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `inductive` | [BoundedCell](declarations/boundedcell.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [cellCapacity](declarations/cellcapacity.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [cellCapacity_eq_prod](declarations/cellcapacity-eq-prod.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [splitCellEquiv](declarations/splitcellequiv.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [mixedRadixEquiv](declarations/mixedradixequiv.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [encode](declarations/encode.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [decode](declarations/decode.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [rank](declarations/rank.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rank_nil](declarations/rank-nil.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rank_cons](declarations/rank-cons.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [rank_lt_capacity](declarations/rank-lt-capacity.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [decode_encode](declarations/decode-encode.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [encode_decode](declarations/encode-decode.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [rank_decode](declarations/rank-decode.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [finiteCrtEquiv](declarations/finitecrtequiv.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [finiteCrtEncode](declarations/finitecrtencode.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [finiteCrtDecode](declarations/finitecrtdecode.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [finiteCrt_decode_encode](declarations/finitecrt-decode-encode.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [finiteCrt_encode_decode](declarations/finitecrt-encode-decode.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [finiteCrt_encode_add](declarations/finitecrt-encode-add.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `inductive` | [ExponentKind](declarations/exponentkind.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [RequestExponentMetadata](declarations/requestexponentmetadata.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `structure` | [TorsionPowerMetadata](declarations/torsionpowermetadata.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [RequestExponentMetadata.kind](declarations/requestexponentmetadata-kind.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [TorsionPowerMetadata.kind](declarations/torsionpowermetadata-kind.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [request_exponent_kind_ne_torsion_power](declarations/request-exponent-kind-ne-torsion-power.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `inductive` | [Authority](declarations/authority.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `structure` | [Authorized](declarations/authorized.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [modelProposal](declarations/modelproposal.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [deterministicClassify](declarations/deterministicclassify.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [authorityOf](declarations/authorityof.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [deterministic_classification_preserves_proposal_authority](declarations/deterministic-classification-preserves-proposal-authority.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [deterministic_classification_not_theorem_authority](declarations/deterministic-classification-not-theorem-authority.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `structure` | [LedgerCoordinate](declarations/ledgercoordinate.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `structure` | [LedgerExponentState](declarations/ledgerexponentstate.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [sparseNonzeroCoordinateIdentity](declarations/sparsenonzerocoordinateidentity.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [appendZeroExponent](declarations/appendzeroexponent.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [append_zero_preserves_sparse_identity](declarations/append-zero-preserves-sparse-identity.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [ledgerPrimes](declarations/ledgerprimes.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `structure` | [ExternalPrimeBreach](declarations/externalprimebreach.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [external_breach_names_absent_prime](declarations/external-breach-names-absent-prime.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `inductive` | [HomologyPrecision](declarations/homologyprecision.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `inductive` | [ExactPowerAuthority](declarations/exactpowerauthority.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [field_only_cannot_yield_exact_power_authority](declarations/field-only-cannot-yield-exact-power-authority.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [no_exact_power_from_field_only](declarations/no-exact-power-from-field-only.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `structure` | [CertifiedTorsionFactor](declarations/certifiedtorsionfactor.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `structure` | [CertifiedTorsionPacket](declarations/certifiedtorsionpacket.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `structure` | [CertifiedTorsionFactorReference](declarations/certifiedtorsionfactorreference.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [resolveTorsionFactor](declarations/resolvetorsionfactor.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [every_certified_torsion_reference_resolves](declarations/every-certified-torsion-reference-resolves.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [resolved_torsion_reference_has_packet_degree](declarations/resolved-torsion-reference-has-packet-degree.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [firstFiveRadices](declarations/firstfiveradices.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [firstFive_cell_capacity](declarations/firstfive-cell-capacity.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [twelveBoundedCell](declarations/twelveboundedcell.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [twelve_bounded_cell_ordinal](declarations/twelve-bounded-cell-ordinal.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [primeTwo](declarations/primetwo.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [twelve_two_coordinate_lap_residue](declarations/twelve-two-coordinate-lap-residue.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [twelve_cell_round_trip](declarations/twelve-cell-round-trip.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [p5RadixFamily](declarations/p5radixfamily.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [p5Radices_pairwise_coprime](declarations/p5radices-pairwise-coprime.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [p5_radix_product](declarations/p5-radix-product.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [p5NodeTwelveResidues](declarations/p5nodetwelveresidues.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [p5CrtRepresentative](declarations/p5crtrepresentative.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [p5DecodeRepresentative](declarations/p5decoderepresentative.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [node_twelve_p5_crt_certificate](declarations/node-twelve-p5-crt-certificate.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [node_twelve_p5_crt_decodes](declarations/node-twelve-p5-crt-decodes.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [nodeTwelveP5Ledger](declarations/nodetwelvep5ledger.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [nodeTwelveThirteenBreach](declarations/nodetwelvethirteenbreach.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [node_twelve_extension_by_thirteen_preserves_sparse_identity](declarations/node-twelve-extension-by-thirteen-preserves-sparse-identity.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2bac2c98ede207c775fc0726711cc50b5268cbb7cf17719f82ad2c23a0840176 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Varianta922c67e3e4ba26127aeeea81af189f49af8f7ce8494d24ec37abd9689e34b3f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
