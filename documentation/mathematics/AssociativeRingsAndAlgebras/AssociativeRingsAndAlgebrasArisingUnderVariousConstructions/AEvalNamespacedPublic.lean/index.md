# AEval Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/AEval/Variante8954ca83183c1db216033db404f0c1f30bf0dbe365be4de536152f56c012334.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c704f8f9ebecd3bdc1df9ce28eededa035da060f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AEvalNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [AEval](declarations/aeval-source-edition-2.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [AEval.instAddCommGroup](declarations/aeval-instaddcommgroup.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [instFiniteOrig](declarations/instfiniteorig.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [instModulePolynomial](declarations/instmodulepolynomial.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [of](declarations/of.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [of_aeval_smul](declarations/of-aeval-smul.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [of_symm_smul](declarations/of-symm-smul.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [C_smul](declarations/c-smul.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [X_smul_of](declarations/x-smul-of.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [X_pow_smul_of](declarations/x-pow-smul-of.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [of_symm_X_smul](declarations/of-symm-x-smul.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [instIsScalarTowerOrigPolynomial](declarations/instisscalartowerorigpolynomial.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [instFinitePolynomial](declarations/instfinitepolynomial.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [AEval Namespaced Public](declarations/ofaeval.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [AEval Namespaced Public](declarations/ofaeval-source-line-115-occurrence-2.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [annihilator_eq_ker_aeval](declarations/annihilator-eq-ker-aeval.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [annihilator_top_eq_ker_aeval](declarations/annihilator-top-eq-ker-aeval.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [mapSubmodule](declarations/mapsubmodule.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [mem_mapSubmodule_apply](declarations/mem-mapsubmodule-apply.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [mem_mapSubmodule_symm_apply](declarations/mem-mapsubmodule-symm-apply.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [equiv_mapSubmodule](declarations/equiv-mapsubmodule.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [restrict_equiv_mapSubmodule](declarations/restrict-equiv-mapsubmodule.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `abbrev` | [AEval'](declarations/aeval.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `abbrev` | [AEval'.of](declarations/aeval-of.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [AEval'_def](declarations/aeval-def.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [AEval'.X_smul_of](declarations/aeval-x-smul-of.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [AEval'.X_pow_smul_of](declarations/aeval-x-pow-smul-of.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [AEval'.of_symm_X_smul](declarations/aeval-of-symm-x-smul.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=222bdedacab7f6c24c0c6aad2c120e56850d409e2486359892fea0a1bb1ed671 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/AEval/Variante8954ca83183c1db216033db404f0c1f30bf0dbe365be4de536152f56c012334.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
