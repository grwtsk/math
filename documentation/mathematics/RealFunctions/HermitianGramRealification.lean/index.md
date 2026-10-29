# Hermitian Gram Realification

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/ErrorBounds/HermitianGramRealification.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `49cca1f22a48fb43604ea01c60055567057518e5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/HermitianGramRealification.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [realVector](declarations/realvector.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [imaginaryPartner](declarations/imaginarypartner.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [realGain](declarations/realgain.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [realSource](declarations/realsource.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [complexGram](declarations/complexgram.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [complexReadout](declarations/complexreadout.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [pairedFeatures](declarations/pairedfeatures.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [duplicateWeight](declarations/duplicateweight.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [componentMass](declarations/componentmass.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [complexTransport](declarations/complextransport.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Hermitian](declarations/hermitian.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [sum_four_blocks](declarations/sum-four-blocks.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [real_readout](declarations/real-readout.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [hermitian_readout_conjugate](declarations/hermitian-readout-conjugate.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [hermitian_readout_im_zero](declarations/hermitian-readout-im-zero.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [realSource_gram](declarations/realsource-gram.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [complex_gram_readout_nonnegative](declarations/complex-gram-readout-nonnegative.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [complexGram_hermitian](declarations/complexgram-hermitian.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [realSource_add](declarations/realsource-add.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [realSource_sub](declarations/realsource-sub.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [realSource_transport](declarations/realsource-transport.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [realGain_column_mass](declarations/realgain-column-mass.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [realGain_column_bound](declarations/realgain-column-bound.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [realVector_bound](declarations/realvector-bound.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [realSource_mass](declarations/realsource-mass.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [no_fixed_negative_of_complex_growing_gram](declarations/no-fixed-negative-of-complex-growing-gram.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [imaginaryBlock](declarations/imaginaryblock.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [imaginaryTest](declarations/imaginarytest.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [imaginaryBlock_hermitian](declarations/imaginaryblock-hermitian.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [imaginary_mixed_terms_fixture](declarations/imaginary-mixed-terms-fixture.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [imaginary_block_gram_error_floor](declarations/imaginary-block-gram-error-floor.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [two_real_rows_required_fixture](declarations/two-real-rows-required-fixture.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [modulus_does_not_preserve_column_rate](declarations/modulus-does-not-preserve-column-rate.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=77401534ea003bff26c27551b78ceb918d1f8a3aa6921a3f4ce75627fdeef09e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ErrorBounds/HermitianGramRealification.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
