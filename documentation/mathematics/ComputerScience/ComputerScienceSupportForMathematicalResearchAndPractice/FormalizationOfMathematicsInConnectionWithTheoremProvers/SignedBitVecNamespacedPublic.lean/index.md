# Signed Bit Vec Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c65ae0999b87a94b57ef5171954fc4f7d5197f2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SignedBitVecNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [intMinSealed](declarations/intminsealed.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [intMaxSealed](declarations/intmaxsealed.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [intMinSealed_def](declarations/intminsealed-def.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [intMaxSealed_def](declarations/intmaxsealed-def.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [rotate](declarations/rotate.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [intMaxSealed_eq_intMinSealed_add](declarations/intmaxsealed-eq-intminsealed-add.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [intMinSealed_add_intMinSealed](declarations/intminsealed-add-intminsealed.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [rotate_neg_eq_intMinSealed_sub](declarations/rotate-neg-eq-intminsealed-sub.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [rotate_add](declarations/rotate-add.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [rotate_sub](declarations/rotate-sub.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [rotate_intMinSealed](declarations/rotate-intminsealed.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [rotate_intMaxSealed](declarations/rotate-intmaxsealed.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [rotate_rotate](declarations/rotate-rotate.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [rotate_map_eq_iff](declarations/rotate-map-eq-iff.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [instUpwardEnumerable](declarations/instupwardenumerable.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [succ?_rotate](declarations/succ-rotate.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [succMany?_rotate](declarations/succmany-rotate.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [sle_iff_rotate_le_rotate](declarations/sle-iff-rotate-le-rotate.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [rotate_inj](declarations/rotate-inj.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rotate_eq_iff](declarations/rotate-eq-iff.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toInt_eq_ofNat_toNat_rotate_sub](declarations/toint-eq-ofnat-tonat-rotate-sub.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [ofNat_eq_rotate_ofInt_sub](declarations/ofnat-eq-rotate-ofint-sub.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [instLE](declarations/instle.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [instLT](declarations/instlt.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [instDecidableLE](declarations/instdecidablele.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [instDecidableLT](declarations/instdecidablelt.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [instRxcHasSize](declarations/instrxchassize.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [instRxcLawfulHasSize](declarations/instrxclawfulhassize.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [instRxcIsAlwaysFinite](declarations/instrxcisalwaysfinite.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [instRxoHasSize](declarations/instrxohassize.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [instRxoLawfulHasSize](declarations/instrxolawfulhassize.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [instRxoIsAlwaysFinite](declarations/instrxoisalwaysfinite.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [instRxiHasSize](declarations/instrxihassize.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [instRxiLawfulHasSize](declarations/instrxilawfulhassize.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [instRxiIsAlwaysFinite](declarations/instrxiisalwaysfinite.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2ffdcf8e2aaaa8126a0a2e47e54daf9150fb290fbf1c1647a758b8e26b102502 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
