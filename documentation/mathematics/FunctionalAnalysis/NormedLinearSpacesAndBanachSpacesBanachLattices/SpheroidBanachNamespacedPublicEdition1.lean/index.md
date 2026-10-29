# Spheroid Banach Namespaced Public Edition1

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4974d23a26c4924f77d0b2687862a631cf2e31b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/SpheroidBanachNamespacedPublicEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteSpheroidChart](declarations/finitespheroidchart.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [coordinates](declarations/coordinates.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ofCoordinates](declarations/ofcoordinates.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [ext](declarations/ext.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [chartEquiv](declarations/chartequiv.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [chartEquiv_apply](declarations/chartequiv-apply.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [chartEquiv_symm_apply](declarations/chartequiv-symm-apply.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coordinates_ofCoordinates](declarations/coordinates-ofcoordinates.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ofCoordinates_coordinates](declarations/ofcoordinates-coordinates.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [instAddCommGroupFiniteSpheroidChart](declarations/instaddcommgroupfinitespheroidchart.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [instModuleFiniteSpheroidChart](declarations/instmodulefinitespheroidchart.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [instNormedAddCommGroupFiniteSpheroidChart](declarations/instnormedaddcommgroupfinitespheroidchart.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [instNormedSpaceFiniteSpheroidChart](declarations/instnormedspacefinitespheroidchart.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [chartLinearIsometryEquiv](declarations/chartlinearisometryequiv.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [chartLinearIsometryEquiv_apply](declarations/chartlinearisometryequiv-apply.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [chartLinearIsometryEquiv_symm_apply](declarations/chartlinearisometryequiv-symm-apply.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [instCompleteSpaceFiniteSpheroidChart](declarations/instcompletespacefinitespheroidchart.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [completeSpace](declarations/completespace.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [finiteSpheroidChart_isComplete_univ](declarations/finitespheroidchart-iscomplete-univ.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coordinates_zero](declarations/coordinates-zero.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coordinates_add](declarations/coordinates-add.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coordinates_neg](declarations/coordinates-neg.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coordinates_sub](declarations/coordinates-sub.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [coordinates_smul](declarations/coordinates-smul.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [zero_eq_ofCoordinates](declarations/zero-eq-ofcoordinates.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [zero_ambient_eq_south](declarations/zero-ambient-eq-south.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [add_eq_ofCoordinates](declarations/add-eq-ofcoordinates.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [neg_eq_ofCoordinates](declarations/neg-eq-ofcoordinates.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [sub_eq_ofCoordinates](declarations/sub-eq-ofcoordinates.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [smul_eq_ofCoordinates](declarations/smul-eq-ofcoordinates.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [norm_eq_coordinates](declarations/norm-eq-coordinates.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [norm_eq_polar_formula](declarations/norm-eq-polar-formula.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [dist_eq_coordinates](declarations/dist-eq-coordinates.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [polar_eq_norm_formula](declarations/polar-eq-norm-formula.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [northGap_eq_norm_formula](declarations/northgap-eq-norm-formula.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d4f6bee38407dd19d3329221c32ccc36df6e9145e90c568d767bd8af3b0e193b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/SpheroidBanach/Variant19af5ef0bb532a6232d12099904b58c885e2d9a43508140e3f114ac7819e9ee1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
