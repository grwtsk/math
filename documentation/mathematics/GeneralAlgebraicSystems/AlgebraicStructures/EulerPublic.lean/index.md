# Euler Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Euler/Variant0d10a9183aa51aaa83677fd40fdf5ae5ed014649960be231ec4604cc035df92d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74c89a57fd68dc6e45f6e3dc5e910ed5daddc010`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/EulerPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsEuler](declarations/iseuler.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [euler](declarations/euler.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [toEuler](declarations/toeuler.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [terminatedAt_euler](declarations/terminatedat-euler.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [exists_euler_s_of_not_terminatedAt_zero](declarations/exists-euler-s-of-not-terminatedat-zero.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [exists_euler_s_of_not_terminatedAt_succ](declarations/exists-euler-s-of-not-terminatedat-succ.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [isEuler_euler](declarations/iseuler-euler.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IsEuler.exists_euler](declarations/iseuler-exists-euler.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [isEuler_iff_exists_euler](declarations/iseuler-iff-exists-euler.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isEuler_toEuler](declarations/iseuler-toeuler.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [terminatedAt_toEuler](declarations/terminatedat-toeuler.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [euler_s_zero](declarations/euler-s-zero.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [euler_s_succ](declarations/euler-s-succ.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toEuler_s_zero](declarations/toeuler-s-zero.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [toEuler_s_succ](declarations/toeuler-s-succ.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [euler_h](declarations/euler-h.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [toEuler_h](declarations/toeuler-h.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [partNum_euler_zero](declarations/partnum-euler-zero.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [partDen_euler_zero](declarations/partden-euler-zero.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [partNum_euler_succ](declarations/partnum-euler-succ.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [partDen_euler_succ](declarations/partden-euler-succ.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [dens_euler_one](declarations/dens-euler-one.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [IsEuler.dens_eq_one](declarations/iseuler-dens-eq-one.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [nums_euler_aux](declarations/nums-euler-aux.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [nums_euler](declarations/nums-euler.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [convs_euler](declarations/convs-euler.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [IsEuler.toEuler](declarations/iseuler-toeuler-source-edition-2.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [convs_toEuler_of_forall_le](declarations/convs-toeuler-of-forall-le.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [convs_toEuler](declarations/convs-toeuler.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [convs_eq_sum_of_forall_le](declarations/convs-eq-sum-of-forall-le.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [_root_.SimpContFract.convs_eq_sum_of_forall_le](declarations/root-simpcontfract-convs-eq-sum-of-forall-le.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7036483a967bfc397f3224d05e4f19455446e4abe3837ce224f6eff424fc5511 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Euler/Variant0d10a9183aa51aaa83677fd40fdf5ae5ed014649960be231ec4604cc035df92d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
