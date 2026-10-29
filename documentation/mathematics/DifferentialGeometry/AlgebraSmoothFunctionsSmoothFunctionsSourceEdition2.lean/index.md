# Algebra Smooth Functions Smooth Functions Source Edition2

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 9 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ace864e66f99f33cf6676f77febc2ca7dedf8434`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/DifferentialGeometry/AlgebraSmoothFunctionsSmoothFunctionsSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [instMul](declarations/instmul.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [coe_mul](declarations/coe-mul.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mul_comp](declarations/mul-comp.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [instOne](declarations/instone.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coe_one](declarations/coe-one.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [instNSMul](declarations/instnsmul.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [instPow](declarations/instpow.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coe_pow](declarations/coe-pow.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [semigroup](declarations/semigroup.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [monoid](declarations/monoid.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [coeFnMonoidHom](declarations/coefnmonoidhom.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [compLeftMonoidHom](declarations/compleftmonoidhom.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [restrictMonoidHom](declarations/restrictmonoidhom.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [commMonoid](declarations/commmonoid.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [group](declarations/group.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coe_inv](declarations/coe-inv.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_div](declarations/coe-div.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [commGroup](declarations/commgroup.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [semiring](declarations/semiring.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [ring](declarations/ring.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [commRing](declarations/commring.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [compLeftRingHom](declarations/compleftringhom.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [restrictRingHom](declarations/restrictringhom.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [coeFnRingHom](declarations/coefnringhom.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [evalRingHom](declarations/evalringhom.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [instSMul](declarations/instsmul.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coe_smul](declarations/coe-smul.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [smul_comp](declarations/smul-comp.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [module](declarations/module-source-edition-2.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [coeFnLinearMap](declarations/coefnlinearmap.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [C](declarations/c.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [algebra](declarations/algebra.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [coeFnAlgHom](declarations/coefnalghom.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [instSMul'](declarations/instsmul-source-edition-2.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [smul_comp'](declarations/smul-comp-source-edition-2.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [module'](declarations/module.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1cab90dabb4be479c35b7ceef1b30efd57dcab58ba6d1621e5842b8dbf538672 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
