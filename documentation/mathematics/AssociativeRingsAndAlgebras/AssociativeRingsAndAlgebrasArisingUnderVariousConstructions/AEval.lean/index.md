# AEval

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 12 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `62253978f2166e83ba083d90768a574e9546361d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AEval.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [AEval](declarations/aeval.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [AEval.instAddCommGroup](declarations/aeval-instaddcommgroup.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [instAddCommMonoid](declarations/instaddcommmonoid.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [instModuleOrig](declarations/instmoduleorig.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [instFiniteOrig](declarations/instfiniteorig.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [instModulePolynomial](declarations/instmodulepolynomial.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [of](declarations/of.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [of_aeval_smul](declarations/of-aeval-smul.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [of_symm_smul](declarations/of-symm-smul.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [C_smul](declarations/c-smul.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [X_smul_of](declarations/x-smul-of.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [of_symm_X_smul](declarations/of-symm-x-smul.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [instIsScalarTowerOrigPolynomial](declarations/instisscalartowerorigpolynomial.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [instFinitePolynomial](declarations/instfinitepolynomial.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [_root_.LinearMap.ofAEval](declarations/root-linearmap-ofaeval.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [_root_.LinearEquiv.ofAEval](declarations/root-linearequiv-ofaeval.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [annihilator_eq_ker_aeval](declarations/annihilator-eq-ker-aeval.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [annihilator_top_eq_ker_aeval](declarations/annihilator-top-eq-ker-aeval.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [mapSubmodule](declarations/mapsubmodule.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [mem_mapSubmodule_apply](declarations/mem-mapsubmodule-apply.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [mem_mapSubmodule_symm_apply](declarations/mem-mapsubmodule-symm-apply.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [equiv_mapSubmodule](declarations/equiv-mapsubmodule.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [restrict_equiv_mapSubmodule](declarations/restrict-equiv-mapsubmodule.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `abbrev` | [AEval'](declarations/aeval-source-edition-2.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `abbrev` | [AEval'.of](declarations/aeval-of.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [AEval'_def](declarations/aeval-def.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [AEval'.X_smul_of](declarations/aeval-x-smul-of.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [AEval'.of_symm_X_smul](declarations/aeval-of-symm-x-smul.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5155f848f3b082dd791f385be867286e465b69a22d61a23e445abfa4c297734c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/AEval/Variant7433ea4b87f91bffd139d6916655d2d9ff20852b919dfc9cc770469000003429.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
