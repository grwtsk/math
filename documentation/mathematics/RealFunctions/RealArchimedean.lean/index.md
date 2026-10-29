# Real Archimedean

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**55 observed declarations and anonymous commands**, 49 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant64430ef905056869ac26912cf28c9440f0438b65784fdead87eabe40481db2bb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a616440a2a8e121389d392bc85b220a7767c36e2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/RealArchimedean.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [instArchimedean](declarations/instarchimedean.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [isCauSeq_iff_lift](declarations/iscauseq-iff-lift.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [of_near](declarations/of-near.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [exists_floor](declarations/exists-floor.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [exists_isLUB](declarations/exists-islub.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [exists_isGLB](declarations/exists-isglb.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sSup_def](declarations/ssup-def.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isLUB_sSup](declarations/islub-ssup.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [sInf_def](declarations/sinf-def.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [isGLB_sInf](declarations/isglb-sinf.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [lt_sInf_add_pos](declarations/lt-sinf-add-pos.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [add_neg_lt_sSup](declarations/add-neg-lt-ssup.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sInf_le_iff](declarations/sinf-le-iff.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [le_sSup_iff](declarations/le-ssup-iff.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [sSup_empty](declarations/ssup-empty.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [iSup_of_isEmpty](declarations/isup-of-isempty.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [iSup_const_zero](declarations/isup-const-zero.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [sSup_of_not_bddAbove](declarations/ssup-of-not-bddabove.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [iSup_of_not_bddAbove](declarations/isup-of-not-bddabove.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [sSup_univ](declarations/ssup-univ.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [sInf_empty](declarations/sinf-empty.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [iInf_of_isEmpty](declarations/iinf-of-isempty.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [iInf_const_zero](declarations/iinf-const-zero.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [sInf_of_not_bddBelow](declarations/sinf-of-not-bddbelow.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [iInf_of_not_bddBelow](declarations/iinf-of-not-bddbelow.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [sSup_le](declarations/ssup-le.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [iSup_le](declarations/isup-le.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [le_sInf](declarations/le-sinf.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [le_iInf](declarations/le-iinf.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [sSup_nonpos](declarations/ssup-nonpos.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [iSup_nonpos](declarations/isup-nonpos.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [sInf_nonneg](declarations/sinf-nonneg.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [iInf_nonneg](declarations/iinf-nonneg.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [sSup_nonneg'](declarations/ssup-nonneg-source-edition-2.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [iSup_nonneg'](declarations/isup-nonneg.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [sInf_nonpos'](declarations/sinf-nonpos.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [iInf_nonpos'](declarations/iinf-nonpos-source-edition-2.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [sSup_nonneg](declarations/ssup-nonneg.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [iSup_nonneg](declarations/isup-nonneg-source-edition-2.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [sInf_nonpos](declarations/sinf-nonpos-source-edition-2.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [iInf_nonpos](declarations/iinf-nonpos.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [sInf_le_sSup](declarations/sinf-le-ssup.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [cauSeq_converges](declarations/causeq-converges.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [iInf_Ioi_eq_iInf_rat_gt](declarations/iinf-ioi-eq-iinf-rat-gt.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [not_bddAbove_coe](declarations/not-bddabove-coe.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [not_bddBelow_coe](declarations/not-bddbelow-coe.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [iUnion_Iic_rat](declarations/iunion-iic-rat.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [iInter_Iic_rat](declarations/iinter-iic-rat.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [exists_natCast_add_one_lt_pow_of_one_lt](declarations/exists-natcast-add-one-lt-pow-of-one-lt.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [exists_nat_pos_inv_lt](declarations/exists-nat-pos-inv-lt.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d1a1fbb0e04cf2f07b151ef8bc28340e8ab5c5efa905bf93bc4bd69719cfa094 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant64430ef905056869ac26912cf28c9440f0438b65784fdead87eabe40481db2bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
