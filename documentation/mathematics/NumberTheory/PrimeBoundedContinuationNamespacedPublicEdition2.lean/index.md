# Prime Bounded Continuation Namespaced Public Edition2

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**83 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variantf4e35aac56227caa920f0dea2a32ced69d71dbcc154e1b3ccfa371080a1b9ded.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b7906c5d411a161f0ae5d1325f10c760c17e6cb`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimeRadix](declarations/primeradix.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [pos](declarations/pos.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [BoundedPrimeDigit](declarations/boundedprimedigit.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [lap](declarations/lap.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [residue](declarations/residue.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [euclidean_lap_residue](declarations/euclidean-lap-residue.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [residue_lt](declarations/residue-lt.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [lap_residue_unique](declarations/lap-residue-unique.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [PrimeCoordinate](declarations/primecoordinate.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [ofExponent](declarations/ofexponent.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [canonical](declarations/canonical.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [absoluteExponent](declarations/absoluteexponent.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [carry_preserves_absolute_exponent](declarations/carry-preserves-absolute-exponent.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [boundary_increment_is_carry](declarations/boundary-increment-is-carry.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `inductive` | [BoundedCell](declarations/boundedcell.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [cellCapacity](declarations/cellcapacity.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [cellCapacity_eq_prod](declarations/cellcapacity-eq-prod.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [splitCellEquiv](declarations/splitcellequiv.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [mixedRadixEquiv](declarations/mixedradixequiv.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [encode](declarations/encode.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [decode](declarations/decode.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [rank](declarations/rank.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rank_nil](declarations/rank-nil.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rank_cons](declarations/rank-cons.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [rank_lt_capacity](declarations/rank-lt-capacity.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [decode_encode](declarations/decode-encode.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [encode_decode](declarations/encode-decode.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [rank_decode](declarations/rank-decode.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [finiteCrtEquiv](declarations/finitecrtequiv.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [finiteCrtEncode](declarations/finitecrtencode.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [finiteCrtDecode](declarations/finitecrtdecode.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [finiteCrt_decode_encode](declarations/finitecrt-decode-encode.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [finiteCrt_encode_decode](declarations/finitecrt-encode-decode.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [finiteCrt_encode_add](declarations/finitecrt-encode-add.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `inductive` | [ExponentKind](declarations/exponentkind.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [RequestExponentMetadata](declarations/requestexponentmetadata.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `structure` | [TorsionPowerMetadata](declarations/torsionpowermetadata.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [RequestExponentMetadata.kind](declarations/requestexponentmetadata-kind.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [TorsionPowerMetadata.kind](declarations/torsionpowermetadata-kind.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [request_exponent_kind_ne_torsion_power](declarations/request-exponent-kind-ne-torsion-power.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `inductive` | [Authority](declarations/authority.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `structure` | [Authorized](declarations/authorized.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [modelProposal](declarations/modelproposal.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [deterministicClassify](declarations/deterministicclassify.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [authorityOf](declarations/authorityof.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [deterministic_classification_preserves_proposal_authority](declarations/deterministic-classification-preserves-proposal-authority.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [deterministic_classification_not_theorem_authority](declarations/deterministic-classification-not-theorem-authority.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `structure` | [LedgerCoordinate](declarations/ledgercoordinate.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `structure` | [LedgerExponentState](declarations/ledgerexponentstate.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [sparseNonzeroCoordinateIdentity](declarations/sparsenonzerocoordinateidentity.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [appendZeroExponent](declarations/appendzeroexponent.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [append_zero_preserves_sparse_identity](declarations/append-zero-preserves-sparse-identity.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [ledgerPrimes](declarations/ledgerprimes.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `structure` | [ExternalPrimeBreach](declarations/externalprimebreach.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [external_breach_names_absent_prime](declarations/external-breach-names-absent-prime.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `inductive` | [HomologyPrecision](declarations/homologyprecision.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `inductive` | [ExactPowerAuthority](declarations/exactpowerauthority.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [field_only_cannot_yield_exact_power_authority](declarations/field-only-cannot-yield-exact-power-authority.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [no_exact_power_from_field_only](declarations/no-exact-power-from-field-only.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `structure` | [CertifiedTorsionFactor](declarations/certifiedtorsionfactor.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `structure` | [CertifiedTorsionPacket](declarations/certifiedtorsionpacket.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `structure` | [CertifiedTorsionFactorReference](declarations/certifiedtorsionfactorreference.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [resolveTorsionFactor](declarations/resolvetorsionfactor.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [every_certified_torsion_reference_resolves](declarations/every-certified-torsion-reference-resolves.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [resolved_torsion_reference_has_packet_degree](declarations/resolved-torsion-reference-has-packet-degree.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [firstFiveRadices](declarations/firstfiveradices.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [firstFive_cell_capacity](declarations/firstfive-cell-capacity.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [twelveBoundedCell](declarations/twelveboundedcell.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [twelve_bounded_cell_ordinal](declarations/twelve-bounded-cell-ordinal.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [primeTwo](declarations/primetwo.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [twelve_two_coordinate_lap_residue](declarations/twelve-two-coordinate-lap-residue.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [twelve_cell_round_trip](declarations/twelve-cell-round-trip.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [p5RadixFamily](declarations/p5radixfamily.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [p5Radices_pairwise_coprime](declarations/p5radices-pairwise-coprime.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [p5_radix_product](declarations/p5-radix-product.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [p5NodeTwelveResidues](declarations/p5nodetwelveresidues.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [p5CrtRepresentative](declarations/p5crtrepresentative.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [p5DecodeRepresentative](declarations/p5decoderepresentative.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [node_twelve_p5_crt_certificate](declarations/node-twelve-p5-crt-certificate.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [node_twelve_p5_crt_decodes](declarations/node-twelve-p5-crt-decodes.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [nodeTwelveP5Ledger](declarations/nodetwelvep5ledger.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [nodeTwelveThirteenBreach](declarations/nodetwelvethirteenbreach.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [node_twelve_extension_by_thirteen_preserves_sparse_identity](declarations/node-twelve-extension-by-thirteen-preserves-sparse-identity.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa5d62d22596acaa4ae1b13b513fb9a5af560e65b9e8f6adb79d1ffde0f9582c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variantf4e35aac56227caa920f0dea2a32ced69d71dbcc154e1b3ccfa371080a1b9ded.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
