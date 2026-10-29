# Congruence Basic

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `789f28392fa47ebdc41b19313473948b871cd6e4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/CongruenceBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [prod](declarations/prod.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [pi](declarations/pi.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [congr](declarations/congr.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [congr_mk](declarations/congr-mk.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [le_comap_conGen](declarations/le-comap-congen.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [comap_conGen_equiv](declarations/comap-congen-equiv.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [comap_conGen_of_bijective](declarations/comap-congen-of-bijective.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [submonoid](declarations/submonoid.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [ofSubmonoid](declarations/ofsubmonoid.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [toSubmonoid](declarations/tosubmonoid.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mem_coe](declarations/mem-coe.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [to_submonoid_inj](declarations/to-submonoid-inj.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [le_iff](declarations/le-iff.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mrange_mk'](declarations/mrange-mk.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `constant` | [on](declarations/on.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [lift_range](declarations/lift-range.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [kerLift_range_eq](declarations/kerlift-range-eq.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [quotientKerEquivRange](declarations/quotientkerequivrange.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [quotientKerEquivOfRightInverse](declarations/quotientkerequivofrightinverse.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [quotientKerEquivOfSurjective](declarations/quotientkerequivofsurjective.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [comapQuotientEquivOfSurj](declarations/comapquotientequivofsurj.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [comapQuotientEquivOfSurj_mk](declarations/comapquotientequivofsurj-mk.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [comapQuotientEquivOfSurj_symm_mk](declarations/comapquotientequivofsurj-symm-mk.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [comapQuotientEquivOfSurj_symm_mk'](declarations/comapquotientequivofsurj-symm-mk-source-edition-2.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [comapQuotientEquiv](declarations/comapquotientequiv.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [quotientQuotientEquivQuotient](declarations/quotientquotientequivquotient.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [smul](declarations/smul.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [instSMul](declarations/instsmul.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [coe_smul](declarations/coe-smul.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [instSMulCommClass](declarations/instsmulcommclass.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [instIsScalarTower](declarations/instisscalartower.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [instIsCentralScalar](declarations/instiscentralscalar.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [mulAction](declarations/mulaction.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [mulDistribMulAction](declarations/muldistribmulaction.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c4c334d686418960fb0f91759d05ed5fb461dffb632bad6a3694e28fac79a4d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant208552c499628165643f079f42e977711cbe0b60a58ffd39d5c58591b211ca48.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
