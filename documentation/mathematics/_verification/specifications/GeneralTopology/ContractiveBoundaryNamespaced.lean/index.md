# Verification target: Contractive Boundary Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8413c15ae6222c14a390a411d8de296a689aa784",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ContractiveBoundary/Variant51d3d385506ef25cd49a27a5f2043f61c341a4e91e58199794d65665322b2e35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ContractiveBoundaryNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/ContractiveBoundaryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8413c15ae6222c14a390a411d8de296a689aa784`.

Source path: `GRWTSK/Topology/GeneralTopology/ContractiveBoundary/Variant51d3d385506ef25cd49a27a5f2043f61c341a4e91e58199794d65665322b2e35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ContractiveBoundary/Variant51d3d385506ef25cd49a27a5f2043f61c341a4e91e58199794d65665322b2e35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.MobiusOntology.ErrorTransform` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContractiveBoundaryCertificate](../../../../GeneralTopology/ContractiveBoundaryNamespaced.lean/declarations/contractiveboundarycertificate.md) | 32 | `declaration-track:3e1a312890ad520ca8fcc5111342735ebcd53f5994d265381904baedfb757328` |
| 2 | `structure` | [CompleteContractiveBasin](../../../../GeneralTopology/ContractiveBoundaryNamespaced.lean/declarations/completecontractivebasin.md) | 60 | `declaration-track:eb542aba95acd9316fe50f69adb4f6818922630c8363c6673a272f30f5285df2` |
| 3 | `def` | [iterateSchedule](../../../../GeneralTopology/ContractiveBoundaryNamespaced.lean/declarations/iterateschedule.md) | 69 | `declaration-track:d14de6ec08bd6d2e44c0a15774221c7a2ac0624d15e86ba48e7e14b358148deb` |
| 4 | `theorem` | [contraction_nonnegative](../../../../GeneralTopology/ContractiveBoundaryNamespaced.lean/declarations/contraction-nonnegative.md) | 83 | `result-track:73ace462159c5c57e38a3fd8c3e927579d6835cebedcf0829bcec178a708c7c4` |
| 5 | `theorem` | [iterate_mem](../../../../GeneralTopology/ContractiveBoundaryNamespaced.lean/declarations/iterate-mem.md) | 89 | `result-track:a621e8a45670399f516478e2ef7046267c2951c34ed1db6df3a59b3953518738` |
| 6 | `theorem` | [nndist_to_boundary_le_pow](../../../../GeneralTopology/ContractiveBoundaryNamespaced.lean/declarations/nndist-to-boundary-le-pow.md) | 108 | `result-track:ecd2e9e6b0724663b170f1bf011c4781f0612bd14e33b7451340b5559d166e87` |
| 7 | `theorem` | [nndist_to_boundary_le_initial](../../../../GeneralTopology/ContractiveBoundaryNamespaced.lean/declarations/nndist-to-boundary-le-initial.md) | 167 | `result-track:e96b2e823278875c595651e68202acb5698c1c16f4ea859746d4946f30ca6473` |
| 8 | `theorem` | [nndist_tendsto_zero](../../../../GeneralTopology/ContractiveBoundaryNamespaced.lean/declarations/nndist-tendsto-zero.md) | 200 | `result-track:22dfc4fa9a0b8fdd4fbf6371a54d5f812530140d2663f69868d300ee98466a3a` |
| 9 | `theorem` | [traversal_tendsto_boundary](../../../../GeneralTopology/ContractiveBoundaryNamespaced.lean/declarations/traversal-tendsto-boundary.md) | 239 | `result-track:1ec8744fbde9641489f0596504afa197b22d7579afa679a8eb12382414462260` |
| 10 | `theorem` | [cross_schedule_nndist_le](../../../../GeneralTopology/ContractiveBoundaryNamespaced.lean/declarations/cross-schedule-nndist-le.md) | 263 | `result-track:c10b0d9852af56ff9b72863fbb99b07feee38a7f4471ac5ce863d41d863171a6` |
| 11 | `theorem` | [traversal_limit_deterministic](../../../../GeneralTopology/ContractiveBoundaryNamespaced.lean/declarations/traversal-limit-deterministic.md) | 322 | `result-track:46a0bd8cc4d8df21099c37bd4a3ea06ce1586bb4efa8bc1597a51edb71489dd4` |
| 12 | `def` | [AsymptoticallyEquivalent](../../../../GeneralTopology/ContractiveBoundaryNamespaced.lean/declarations/asymptoticallyequivalent.md) | 364 | `declaration-track:a9d7653cc43549bbfe50b37dd8ec59a8184d306608a2972e9438205d87497e74` |
| 13 | `theorem` | [all_basin_traversals_asymptoticallyEquivalent](../../../../GeneralTopology/ContractiveBoundaryNamespaced.lean/declarations/all-basin-traversals-asymptoticallyequivalent.md) | 379 | `result-track:ccd8f61943ad5126440078c0dc3aebb9f50dd115ad18dcd03bf919445270f066` |
| 14 | `theorem` | [contractive_fixed_point_zero_nndist](../../../../GeneralTopology/ContractiveBoundaryNamespaced.lean/declarations/contractive-fixed-point-zero-nndist.md) | 394 | `result-track:e4ad22f141d0b28a061577d33199d3cd0b5f70b991ff7290e43b2577f4f3b9cb` |
| 15 | `theorem` | [scheduled_cycle_zero_nndist](../../../../GeneralTopology/ContractiveBoundaryNamespaced.lean/declarations/scheduled-cycle-zero-nndist.md) | 423 | `result-track:f7e39893aaf7cf1448a382cc5efc62010f9d7769a102f23942a2f47f09758c34` |
| 16 | `theorem` | [contractive_fixed_point_unique](../../../../GeneralTopology/ContractiveBoundaryNamespaced.lean/declarations/contractive-fixed-point-unique.md) | 464 | `result-track:cfa3c7995c11a0c862e160bca29abfa9334d08a7ae4f98f55aa8a2061656108c` |
| 17 | `theorem` | [scheduled_cycle_eq_boundary](../../../../GeneralTopology/ContractiveBoundaryNamespaced.lean/declarations/scheduled-cycle-eq-boundary.md) | 481 | `result-track:fabfb94bec3c6af5381a653fbc2793ada3c6dc7c29904b997947b21b2dbf188b` |
| 18 | `structure` | [ContractiveBoundaryObservable](../../../../GeneralTopology/ContractiveBoundaryNamespaced.lean/declarations/contractiveboundaryobservable.md) | 500 | `declaration-track:a4da2d934cc26ce856ec22a4ba6b75e5e157740ce9827cd3623520f7163e757b` |
| 19 | `theorem` | [observable_nndist_le](../../../../GeneralTopology/ContractiveBoundaryNamespaced.lean/declarations/observable-nndist-le.md) | 512 | `result-track:b47394c69a5cf1200798f8fc9d820c7fd7418920559d2233e88fb03dfa2455ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=da5cc7ed5978195d9a766c6f163a7733fe2fc3ccaa70263ee91058d1da065267 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ContractiveBoundary/Variant51d3d385506ef25cd49a27a5f2043f61c341a4e91e58199794d65665322b2e35.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ContractiveBoundary/Variant51d3d385506ef25cd49a27a5f2043f61c341a4e91e58199794d65665322b2e35.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
