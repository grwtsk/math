# Two Point Conjecture Junction

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 10 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/TwoPointConjectureJunction.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c2a421b62915ddf0151fc3dd744570dd7b0eaa7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/TwoPointConjectureJunction.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [twoPointSequence](declarations/twopointsequence.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [twoPointPrefix](declarations/twopointprefix.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [dyadicTwoPointCutoff](declarations/dyadictwopointcutoff.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [paddedTwoPointSequence](declarations/paddedtwopointsequence.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [twoPointTreeEnergy](declarations/twopointtreeenergy.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [twoPointTreeEnergySum](declarations/twopointtreeenergysum.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [twoPointDyadicPrefixMaximum](declarations/twopointdyadicprefixmaximum.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [FixedShiftTerminalCancellation](declarations/fixedshiftterminalcancellation.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [GrowingShiftDyadicTerminalCancellation](declarations/growingshiftdyadicterminalcancellation.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [SubpolynomialDyadicTwoPointTreeEnergyWithDepthCost](declarations/subpolynomialdyadictwopointtreeenergywithdepthcost.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [SubpolynomialDyadicMertensTwoPointTreeEnergyWithDepthCost](declarations/subpolynomialdyadicmertenstwopointtreeenergywithdepthcost.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [ToMertensTreeEnergyAdapter](declarations/tomertenstreeenergyadapter.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `abbrev` | [HigherOrderChowlaAdapter](declarations/higherorderchowlaadapter.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `abbrev` | [CorrectedElliottAdapter](declarations/correctedelliottadapter.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `abbrev` | [SarnakDisjointnessAdapter](declarations/sarnakdisjointnessadapter.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `abbrev` | [WeakMertensAdapter](declarations/weakmertensadapter.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `abbrev` | [GonekHejhalAdapter](declarations/gonekhejhaladapter.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [twoPointPrefix_moebius](declarations/twopointprefix-moebius.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [finitePrefixSum_padded_eq_twoPointPrefix](declarations/finiteprefixsum-padded-eq-twopointprefix.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [finitePrefixSum_padded_moebius_eq_mertens](declarations/finiteprefixsum-padded-moebius-eq-mertens.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [twoPointDyadicPrefixMaximum_nonneg](declarations/twopointdyadicprefixmaximum-nonneg.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mertensTwoPointPrefixMax_le_twoPointDyadicPrefixMaximum](declarations/mertenstwopointprefixmax-le-twopointdyadicprefixmaximum.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mertensTwoPointPrefixMax_sq_le_twoPointTreeEnergy](declarations/mertenstwopointprefixmax-sq-le-twopointtreeenergy.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mertensTwoPointMaximalQuadraticEnergy_le_treeEnergySum](declarations/mertenstwopointmaximalquadraticenergy-le-treeenergysum.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [subpolynomialDyadicMaximalMertensTwoPointEnergy_of_treeEnergy](declarations/subpolynomialdyadicmaximalmertenstwopointenergy-of-treeenergy.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [riemannHypothesis_of_mertensTwoPointTreeEnergy](declarations/riemannhypothesis-of-mertenstwopointtreeenergy.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [riemannHypothesis_of_adapter](declarations/riemannhypothesis-of-adapter.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=66943370b8e33dea7087a48ae3030a889dfd9c8a4541aa7c4094ada876f78e6b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/TwoPointConjectureJunction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
