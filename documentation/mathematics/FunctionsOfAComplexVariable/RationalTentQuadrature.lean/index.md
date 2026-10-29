# Rational Tent Quadrature

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Complex/RationalTentQuadrature.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e4fa3ab4ab41fee3eb210a4e33b318fa6709b73`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionsOfAComplexVariable/RationalTentQuadrature.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Trace](declarations/trace.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [node](declarations/node.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [mass](declarations/mass.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [samples](declarations/samples.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [sampleValue](declarations/samplevalue.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [sampleError](declarations/sampleerror.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [terms](declarations/terms.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [meshError](declarations/mesherror.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [nodeBudget](declarations/nodebudget.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [error](declarations/error.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [output](declarations/output.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Valid](declarations/valid.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [instDecidableValid](declarations/instdecidablevalid.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [check](declarations/check.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [checkWithin](declarations/checkwithin.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [check_iff_valid](declarations/check-iff-valid.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [cast_node](declarations/cast-node.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [cast_mass](declarations/cast-mass.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mass_nonneg](declarations/mass-nonneg.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [total_mass](declarations/total-mass.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [length_terms](declarations/length-terms.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [termAt_left](declarations/termat-left.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [termAt_right](declarations/termat-right.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [terms_interpretation](declarations/terms-interpretation.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [samples_error](declarations/samples-error.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [check_sound](declarations/check-sound.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [checkWithin_sound](declarations/checkwithin-sound.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [checked_lengths](declarations/checked-lengths.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [referenceSamples](declarations/referencesamples.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [referenceTrace](declarations/referencetrace.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [reference_sample](declarations/reference-sample.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [reference_checked](declarations/reference-checked.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e6e172fa45b4f405c95f4e8b4ae504a87d9aee043f627f853dc353761fb1313f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/RationalTentQuadrature.lean","GRWTSK/Analysis/ComplexAnalysis/RationalTentQuadrature.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
