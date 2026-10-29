# Farey Residue Channel Decomposition

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Farey/FareyResidueChannelDecomposition.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4df2cbea5643fb95614ac2ed9b19ed9daaac428`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/FareyResidueChannelDecomposition.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [additiveResidueSelector](declarations/additiveresidueselector.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [additiveResidueSelector_eq_indicator](declarations/additiveresidueselector-eq-indicator.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [residueGCD](declarations/residuegcd.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [residueGCD_dvd_modulus](declarations/residuegcd-dvd-modulus.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [residueGCD_pos](declarations/residuegcd-pos.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [residueGCD_eq_one_iff_isUnit](declarations/residuegcd-eq-one-iff-isunit.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [gcdStratumPart](declarations/gcdstratumpart.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [residueGCD_mem_divisors](declarations/residuegcd-mem-divisors.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sum_gcdStratumPart_apply](declarations/sum-gcdstratumpart-apply.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [sum_gcdStratumPart](declarations/sum-gcdstratumpart.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [reducedResidueRepresentative](declarations/reducedresiduerepresentative.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [reducedResidueRepresentative_coprime](declarations/reducedresiduerepresentative-coprime.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [reducedResidueUnit](declarations/reducedresidueunit.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [residueGCD_mul_reducedResidueRepresentative](declarations/residuegcd-mul-reducedresiduerepresentative.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [cast_residueGCD_mul_reducedResidueRepresentative](declarations/cast-residuegcd-mul-reducedresiduerepresentative.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [unitCharacterSum](declarations/unitcharactersum.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [unitCharacterSum_eq_totient_mul_selector](declarations/unitcharactersum-eq-totient-mul-selector.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [unitCharacterCarrier](declarations/unitcharactercarrier.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [nonunitAdditiveResidual](declarations/nonunitadditiveresidual.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [scaled_selector_channels](declarations/scaled-selector-channels.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [nonunit_residual_on_diagonal](declarations/nonunit-residual-on-diagonal.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [dirichlet_sum_zero_of_nonunit](declarations/dirichlet-sum-zero-of-nonunit.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [no_pure_dirichlet_expansion_of_nonunit](declarations/no-pure-dirichlet-expansion-of-nonunit.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [farey_right_coordinate_channels](declarations/farey-right-coordinate-channels.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [nonunitFareyRightResidue](declarations/nonunitfareyrightresidue.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [nonunitFareyRightResidue_nonunit](declarations/nonunitfareyrightresidue-nonunit.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [farey_nonunit_channel_certificate](declarations/farey-nonunit-channel-certificate.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e435cecc341ca214947f835b80e931d62ecd454ebf56afa3345b3a965865ead9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Farey/FareyResidueChannelDecomposition.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
