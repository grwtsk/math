# Inner Product Space Linear PMap Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/LinearPMap/Variant4b7d3b3cd9118740bf6495a48ef0386c05d93a7996cfdf035420f71c3a11b80e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d23a4b7eb98846403de0228106bbaeb022b85a21`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/InnerProductSpaceLinearPMapPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsFormalAdjoint](declarations/isformaladjoint.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [IsFormalAdjoint.symm](declarations/isformaladjoint-symm.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [adjointDomain](declarations/adjointdomain.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [adjointDomainMkCLM](declarations/adjointdomainmkclm.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [adjointDomainMkCLM_apply](declarations/adjointdomainmkclm-apply.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [adjointDomainMkCLMExtend](declarations/adjointdomainmkclmextend.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [adjointDomainMkCLMExtend_apply](declarations/adjointdomainmkclmextend-apply.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [adjointAux](declarations/adjointaux.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [adjointAux_inner](declarations/adjointaux-inner.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [adjointAux_unique](declarations/adjointaux-unique.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [adjoint](declarations/adjoint.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mem_adjoint_domain_iff](declarations/mem-adjoint-domain-iff.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mem_adjoint_domain_of_exists](declarations/mem-adjoint-domain-of-exists.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [adjoint_apply_of_not_dense](declarations/adjoint-apply-of-not-dense.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [adjoint_apply_of_dense](declarations/adjoint-apply-of-dense.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [adjoint_apply_eq](declarations/adjoint-apply-eq.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [adjoint_isFormalAdjoint](declarations/adjoint-isformaladjoint.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [IsFormalAdjoint.le_adjoint](declarations/isformaladjoint-le-adjoint.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [toPMap_adjoint_eq_adjoint_toPMap_of_dense](declarations/topmap-adjoint-eq-adjoint-topmap-of-dense.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [instStar](declarations/inststar.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [isSelfAdjoint_def](declarations/isselfadjoint-def.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [_root_.IsSelfAdjoint.dense_domain](declarations/root-isselfadjoint-dense-domain.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [adjoint](declarations/adjoint-source-edition-2.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mem_adjoint_iff](declarations/mem-adjoint-iff.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [_root_.LinearPMap.adjoint_graph_eq_graph_adjoint](declarations/root-linearpmap-adjoint-graph-eq-graph-adjoint.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [_root_.LinearPMap.graph_adjoint_toLinearPMap_eq_adjoint](declarations/root-linearpmap-graph-adjoint-tolinearpmap-eq-adjoint.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [adjoint_isClosed](declarations/adjoint-isclosed.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [_root_.IsSelfAdjoint.isClosed](declarations/root-isselfadjoint-isclosed.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=004d4e360cca5fd43dac51b34a03345a618dded5e7d57643caba93e467215413 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LinearPMap/Variant4b7d3b3cd9118740bf6495a48ef0386c05d93a7996cfdf035420f71c3a11b80e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
