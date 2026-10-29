# Monotone Convergence Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 36 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/MonotoneConvergence/Variantda31d910ba684d517aca5998615e066345f61829a87cb1ac131701f27eae233c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `23356361960172d5acd9104d949af64312da7c71`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/MonotoneConvergencePublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [SupConvergenceClass](declarations/supconvergenceclass.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [InfConvergenceClass](declarations/infconvergenceclass.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [OrderDual.supConvergenceClass](declarations/orderdual-supconvergenceclass.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [OrderDual.infConvergenceClass](declarations/orderdual-infconvergenceclass.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [tendsto_atTop_isLUB](declarations/tendsto-attop-islub.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [tendsto_atBot_isLUB](declarations/tendsto-atbot-islub.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [tendsto_atBot_isGLB](declarations/tendsto-atbot-isglb.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [tendsto_atTop_isGLB](declarations/tendsto-attop-isglb.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [tendsto_atTop_ciSup](declarations/tendsto-attop-cisup.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [tendsto_atBot_ciSup](declarations/tendsto-atbot-cisup.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [tendsto_finsetSup_ciSup](declarations/tendsto-finsetsup-cisup.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [tendsto_atBot_ciInf](declarations/tendsto-atbot-ciinf.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [tendsto_atTop_ciInf](declarations/tendsto-attop-ciinf.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [tendsto_finsetInf_ciInf](declarations/tendsto-finsetinf-ciinf.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [tendsto_atTop_iSup](declarations/tendsto-attop-isup.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [tendsto_finsetSup_iSup](declarations/tendsto-finsetsup-isup.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [tendsto_atBot_iSup](declarations/tendsto-atbot-isup.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [tendsto_atBot_iInf](declarations/tendsto-atbot-iinf.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [tendsto_finsetInf_iInf](declarations/tendsto-finsetinf-iinf.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [tendsto_atTop_iInf](declarations/tendsto-attop-iinf.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [Prod.supConvergenceClass](declarations/prod-supconvergenceclass.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [Pi.supConvergenceClass](declarations/pi-supconvergenceclass-source-edition-2.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [Pi.infConvergenceClass](declarations/pi-infconvergenceclass-source-edition-2.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [Pi.supConvergenceClass'](declarations/pi-supconvergenceclass.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [Pi.infConvergenceClass'](declarations/pi-infconvergenceclass.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [tendsto_atTop_of_monotone](declarations/tendsto-attop-of-monotone.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [tendsto_atTop_of_antitone](declarations/tendsto-attop-of-antitone.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [tendsto_atBot_of_monotone](declarations/tendsto-atbot-of-monotone.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [tendsto_atBot_of_antitone](declarations/tendsto-atbot-of-antitone.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [tendsto_iff_tendsto_subseq_of_monotone](declarations/tendsto-iff-tendsto-subseq-of-monotone.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [tendsto_iff_tendsto_subseq_of_antitone](declarations/tendsto-iff-tendsto-subseq-of-antitone.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Monotone.ge_of_tendsto](declarations/monotone-ge-of-tendsto.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Monotone.le_of_tendsto](declarations/monotone-le-of-tendsto.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Antitone.le_of_tendsto](declarations/antitone-le-of-tendsto.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Antitone.ge_of_tendsto](declarations/antitone-ge-of-tendsto.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [isLUB_of_tendsto_atTop](declarations/islub-of-tendsto-attop.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [isGLB_of_tendsto_atBot](declarations/isglb-of-tendsto-atbot.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [isLUB_of_tendsto_atBot](declarations/islub-of-tendsto-atbot.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [isGLB_of_tendsto_atTop](declarations/isglb-of-tendsto-attop.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [iSup_eq_of_tendsto](declarations/isup-eq-of-tendsto.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [iInf_eq_of_tendsto](declarations/iinf-eq-of-tendsto.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [iSup_eq_iSup_subseq_of_monotone](declarations/isup-eq-isup-subseq-of-monotone.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [iSup_eq_iSup_subseq_of_antitone](declarations/isup-eq-isup-subseq-of-antitone.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [iInf_eq_iInf_subseq_of_monotone](declarations/iinf-eq-iinf-subseq-of-monotone.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [iInf_eq_iInf_subseq_of_antitone](declarations/iinf-eq-iinf-subseq-of-antitone.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a46a6dc852e2cca3f8e8b227d8c93a69e173f9ea2206e27c11b319355f9a5413 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/MonotoneConvergence/Variantda31d910ba684d517aca5998615e066345f61829a87cb1ac131701f27eae233c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
