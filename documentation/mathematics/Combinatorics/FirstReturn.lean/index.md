# First Return

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `04596ab1e4e02ca27b31942dc2e98f727e55e8af`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/FirstReturn.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [ReturnAt](declarations/returnat.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [ValidState](declarations/validstate.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [exists_return](declarations/exists-return.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [firstReturnTime](declarations/firstreturntime.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [firstReturnTime_pos](declarations/firstreturntime-pos.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [firstReturnTime_returns](declarations/firstreturntime-returns.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [firstReturnTime_minimal](declarations/firstreturntime-minimal.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [firstReturnTime_le_of_return](declarations/firstreturntime-le-of-return.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [firstReturnTime_le_minimalPeriod](declarations/firstreturntime-le-minimalperiod.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [firstReturnTime_le_card](declarations/firstreturntime-le-card.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [firstReturn](declarations/firstreturn.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [firstReturn_val](declarations/firstreturn-val.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [previousReturn](declarations/previousreturn.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [symm_pow_apply_pow_apply_of_le](declarations/symm-pow-apply-pow-apply-of-le.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [symm_pow_apply_pow_apply](declarations/symm-pow-apply-pow-apply.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [previousReturn_firstReturn](declarations/previousreturn-firstreturn.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [firstReturn_previousReturn](declarations/firstreturn-previousreturn.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [firstReturnPerm](declarations/firstreturnperm.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [firstReturnPerm_apply_val](declarations/firstreturnperm-apply-val.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [firstReturnPerm_bijective](declarations/firstreturnperm-bijective.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [firstReturnPerm_symm](declarations/firstreturnperm-symm.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [invariantRestriction](declarations/invariantrestriction.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [firstReturnTime_eq_one_of_invariant](declarations/firstreturntime-eq-one-of-invariant.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [firstReturnPerm_eq_restriction](declarations/firstreturnperm-eq-restriction.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [returnAtDecidable](declarations/returnatdecidable.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [returnTimesWithin](declarations/returntimeswithin.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [firstReturnSearch](declarations/firstreturnsearch.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [firstReturnTime_mem_returnTimesWithin](declarations/firstreturntime-mem-returntimeswithin.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [returnTimesWithin_nonempty](declarations/returntimeswithin-nonempty.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [min_returnTimesWithin_eq](declarations/min-returntimeswithin-eq.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [firstReturnSearch_ne_none](declarations/firstreturnsearch-ne-none.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [firstReturnSearch_eq_firstReturnTime](declarations/firstreturnsearch-eq-firstreturntime.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [firstReturnExec](declarations/firstreturnexec.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [firstReturnExec_refines](declarations/firstreturnexec-refines.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9017b777d52f8985130436d2be5a0e6d6ce3825f50218678c54fd0ef609f7fe8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant1957bfffc2c969e39772325346a527b8bfd8a5a94b854bbea360ff91abc28fb6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
