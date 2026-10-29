# Matrix Namespaced Nnnorm Col

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**70 observed declarations and anonymous commands**, 49 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Matrix/Variantb648dba4bba64059d7f9afc4cc42694d331008e8e23613b48d2e6d9db0a4e7e1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e939eb3225c937facc98479120e46462a3e90d0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/MatrixNamespacedNnnormCol.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](declarations/macro-rules.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [seminormedAddCommGroup](declarations/seminormedaddcommgroup.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [norm_def](declarations/norm-def.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [nnnorm_def](declarations/nnnorm-def.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [norm_le_iff](declarations/norm-le-iff.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [nnnorm_le_iff](declarations/nnnorm-le-iff.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [norm_lt_iff](declarations/norm-lt-iff.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [nnnorm_lt_iff](declarations/nnnorm-lt-iff.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [norm_entry_le_entrywise_sup_norm](declarations/norm-entry-le-entrywise-sup-norm.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [nnnorm_entry_le_entrywise_sup_nnnorm](declarations/nnnorm-entry-le-entrywise-sup-nnnorm.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [nnnorm_map_eq](declarations/nnnorm-map-eq.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [norm_map_eq](declarations/norm-map-eq.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [nnnorm_transpose](declarations/nnnorm-transpose.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [norm_transpose](declarations/norm-transpose.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [nnnorm_conjTranspose](declarations/nnnorm-conjtranspose.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [norm_conjTranspose](declarations/norm-conjtranspose.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [nnnorm_col](declarations/nnnorm-col.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [norm_col](declarations/norm-col.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [nnnorm_row](declarations/nnnorm-row.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [norm_row](declarations/norm-row.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [nnnorm_diagonal](declarations/nnnorm-diagonal.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [norm_diagonal](declarations/norm-diagonal.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [normedAddCommGroup](declarations/normedaddcommgroup.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [normedSpace](declarations/normedspace.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [linftyOpSeminormedAddCommGroup](declarations/linftyopseminormedaddcommgroup.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [linftyOpNormedAddCommGroup](declarations/linftyopnormedaddcommgroup.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [linftyOpNormedSpace](declarations/linftyopnormedspace.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [linfty_op_norm_def](declarations/linfty-op-norm-def.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [linfty_op_nnnorm_def](declarations/linfty-op-nnnorm-def.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [linfty_op_nnnorm_col](declarations/linfty-op-nnnorm-col.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [linfty_op_norm_col](declarations/linfty-op-norm-col.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [linfty_op_nnnorm_row](declarations/linfty-op-nnnorm-row.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [linfty_op_norm_row](declarations/linfty-op-norm-row.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [linfty_op_nnnorm_diagonal](declarations/linfty-op-nnnorm-diagonal.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [linfty_op_norm_diagonal](declarations/linfty-op-norm-diagonal.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [linfty_op_nnnorm_mul](declarations/linfty-op-nnnorm-mul.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [linfty_op_norm_mul](declarations/linfty-op-norm-mul.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [linfty_op_nnnorm_mulVec](declarations/linfty-op-nnnorm-mulvec.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [linfty_op_norm_mulVec](declarations/linfty-op-norm-mulvec.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [linftyOpNonUnitalSemiNormedRing](declarations/linftyopnonunitalseminormedring.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [linfty_op_normOneClass](declarations/linfty-op-normoneclass.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [linftyOpSemiNormedRing](declarations/linftyopseminormedring.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [linftyOpNonUnitalNormedRing](declarations/linftyopnonunitalnormedring.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [linftyOpNormedRing](declarations/linftyopnormedring.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [linftyOpNormedAlgebra](declarations/linftyopnormedalgebra.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [frobeniusSeminormedAddCommGroup](declarations/frobeniusseminormedaddcommgroup.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [frobeniusNormedAddCommGroup](declarations/frobeniusnormedaddcommgroup.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [frobeniusNormedSpace](declarations/frobeniusnormedspace.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [frobenius_nnnorm_def](declarations/frobenius-nnnorm-def.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [frobenius_norm_def](declarations/frobenius-norm-def.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [frobenius_nnnorm_map_eq](declarations/frobenius-nnnorm-map-eq.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [frobenius_norm_map_eq](declarations/frobenius-norm-map-eq.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [frobenius_nnnorm_transpose](declarations/frobenius-nnnorm-transpose.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [frobenius_norm_transpose](declarations/frobenius-norm-transpose.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [frobenius_nnnorm_conjTranspose](declarations/frobenius-nnnorm-conjtranspose.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [frobenius_norm_conjTranspose](declarations/frobenius-norm-conjtranspose.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [frobenius_normedStarGroup](declarations/frobenius-normedstargroup.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [frobenius_norm_row](declarations/frobenius-norm-row.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [frobenius_nnnorm_row](declarations/frobenius-nnnorm-row.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [frobenius_norm_col](declarations/frobenius-norm-col.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [frobenius_nnnorm_col](declarations/frobenius-nnnorm-col.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [frobenius_nnnorm_diagonal](declarations/frobenius-nnnorm-diagonal.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [frobenius_norm_diagonal](declarations/frobenius-norm-diagonal.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [frobenius_nnnorm_one](declarations/frobenius-nnnorm-one.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [frobenius_nnnorm_mul](declarations/frobenius-nnnorm-mul.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [frobenius_norm_mul](declarations/frobenius-norm-mul.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [frobeniusNormedRing](declarations/frobeniusnormedring.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [frobeniusNormedAlgebra](declarations/frobeniusnormedalgebra.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b01014d060dce82e3883104971fc0d8648bf1e46f6c6dcd004a6a63736cdbc60 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Matrix/Variantb648dba4bba64059d7f9afc4cc42694d331008e8e23613b48d2e6d9db0a4e7e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
