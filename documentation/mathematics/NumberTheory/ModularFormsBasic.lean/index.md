# Modular Forms Basic

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**57 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `61a34610df4bf223623f55910e09cfa399689550`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/ModularFormsBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ModularForm](declarations/modularform.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [CuspForm](declarations/cuspform.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [ModularFormClass](declarations/modularformclass.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [CuspFormClass](declarations/cuspformclass.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [ModularForm.toFun_eq_coe](declarations/modularform-tofun-eq-coe.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ModularForm.toSlashInvariantForm_coe](declarations/toslashinvariantform-coe-source-line-100-occurrence-2.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [CuspForm.toFun_eq_coe](declarations/cuspform-tofun-eq-coe.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [CuspForm.toSlashInvariantForm_coe](declarations/toslashinvariantform-coe.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [ModularForm.ext](declarations/modularform-ext.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [CuspForm.ext](declarations/cuspform-ext.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [ModularForm.copy](declarations/modularform-copy.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [CuspForm.copy](declarations/cuspform-copy.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [add](declarations/add.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coe_add](declarations/coe-add.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [add_apply](declarations/add-apply-source-edition-2.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [hasZero](declarations/haszero-source-edition-2.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coe_zero](declarations/coe-zero-source-edition-2.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [zero_apply](declarations/zero-apply-source-edition-2.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [hasSmul](declarations/hassmul.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_smul](declarations/coe-smul.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [smul_apply](declarations/smul-apply.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [hasNeg](declarations/hasneg-source-edition-2.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coe_neg](declarations/coe-neg-source-edition-2.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [neg_apply](declarations/neg-apply.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [hasSub](declarations/hassub-source-edition-2.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coe_sub](declarations/coe-sub-source-edition-2.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [sub_apply](declarations/sub-apply-source-edition-2.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [coeHom](declarations/coehom.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [mul](declarations/mul.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [mul_coe](declarations/mul-coe.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [one_coe_eq_one](declarations/one-coe-eq-one.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [hasAdd](declarations/hasadd.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [coe_add](declarations/coe-add-source-edition-2.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [add_apply](declarations/add-apply.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [hasZero](declarations/haszero.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [coe_zero](declarations/coe-zero.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [zero_apply](declarations/zero-apply.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [hasSmul](declarations/hassmul-source-edition-2.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [coe_smul](declarations/coe-smul-source-edition-2.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [smul_apply](declarations/smul-apply-source-edition-2.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [hasNeg](declarations/hasneg.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [coe_neg](declarations/coe-neg.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [neg_apply](declarations/neg-apply-source-edition-2.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [hasSub](declarations/hassub.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [coe_sub](declarations/coe-sub.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [sub_apply](declarations/sub-apply.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [coeHom](declarations/coehom-source-edition-2.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [(anonymous)](declarations/instance.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=87e24d3bc31c1e7083153398645f9a932c2a8c08d42bd0e05bc362cf6767c78f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variantb1356fd0c68a860cebf71a5f9a297803d47e1713ee171571c2660432734b022b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
