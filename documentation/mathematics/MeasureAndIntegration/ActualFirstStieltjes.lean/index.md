# Actual First Stieltjes

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `24ce213f9bbdbda90995cf76826da03e51ac5341`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/ActualFirstStieltjes.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [logQuotient](declarations/logquotient.md) | 17 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [stieltjesSequence](declarations/stieltjessequence.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [lowerSequence](declarations/lowersequence.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [firstStieltjesConstant](declarations/firststieltjesconstant.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [logQuotient_nonneg](declarations/logquotient-nonneg.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [logQuotient_antitone](declarations/logquotient-antitone.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [logQuotient_continuousOn](declarations/logquotient-continuouson.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [logQuotient_intervalIntegrable](declarations/logquotient-intervalintegrable.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [logQuotient_integral](declarations/logquotient-integral.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [stieltjesSequence_succ](declarations/stieltjessequence-succ.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [logQuotient_cell_lower](declarations/logquotient-cell-lower.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [logQuotient_cell_upper](declarations/logquotient-cell-upper.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [stieltjesSequence_succ_le](declarations/stieltjessequence-succ-le.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [lowerSequence_le_succ](declarations/lowersequence-le-succ.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [stieltjes_tail_antitone](declarations/stieltjes-tail-antitone.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [lower_tail_monotone](declarations/lower-tail-monotone.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [lowerSequence_four](declarations/lowersequence-four.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [lower_four_le_stieltjes_tail](declarations/lower-four-le-stieltjes-tail.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [stieltjes_tail_bddBelow](declarations/stieltjes-tail-bddbelow.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [tendsto_stieltjes_tail](declarations/tendsto-stieltjes-tail.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [tendsto_stieltjesSequence](declarations/tendsto-stieltjessequence.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [lower_four_le_firstStieltjesConstant](declarations/lower-four-le-firststieltjesconstant.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [firstStieltjesConstant_le_stieltjesSequence](declarations/firststieltjesconstant-le-stieltjessequence.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [logQuotient_tendsto_zero](declarations/logquotient-tendsto-zero.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [lowerSequence_tendsto](declarations/lowersequence-tendsto.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [lowerSequence_le_firstStieltjesConstant](declarations/lowersequence-le-firststieltjesconstant.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [firstStieltjesConstant_enclosure](declarations/firststieltjesconstant-enclosure.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [firstStieltjesConstant_gt_neg_249](declarations/firststieltjesconstant-gt-neg-249.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [intercept_gt_one_five_hundred](declarations/intercept-gt-one-five-hundred.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [stieltjesSequence_limit_unique](declarations/stieltjessequence-limit-unique.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e7c18bec428f1d144c36df6c0d5382772b203450e9912366ef8bdac12c566933 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ActualFirstStieltjes/Variant627177045f07a2651b4742d6d2cf92d074bfab1d1f1df0e6a100f839b99e2b6f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
