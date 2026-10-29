# Verification target: Homotopy Path Path

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31c358d6c2b2c0dd75cff6a5c8d912cf56088bb3",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Path/Varianta18baef21657f4ec9c05895f7f1d36f296541477d5a9c8621a9586b3a6d09daa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/HomotopyPathPath.lean/index.md) · [Full source](../../../../GeneralTopology/HomotopyPathPath.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31c358d6c2b2c0dd75cff6a5c8d912cf56088bb3`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Path/Varianta18baef21657f4ec9c05895f7f1d36f296541477d5a9c8621a9586b3a6d09daa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Path/Varianta18baef21657f4ec9c05895f7f1d36f296541477d5a9c8621a9586b3a6d09daa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homotopy.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.PathConnected` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Homotopy](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/homotopy.md) | 49 | `declaration-track:2ca85efd32c064075df4e4b41afc83666948a4a4dc8b89eeb9c61153fbecd471` |
| 2 | `theorem` | [coeFn_injective](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/coefn-injective.md) | 59 | `result-track:539d737e2daa98e4e653583eae29c1d8872ac7524c4e1ca682c96f6b0d46fdcd` |
| 3 | `theorem` | [source](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/source.md) | 64 | `result-track:7b93c573db8cb73d6ff901cace5013cfc24b7afa59c5a96d758cf6fb6eca2a42` |
| 4 | `theorem` | [target](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/target.md) | 70 | `result-track:82e11683e9a9b0c25560c81c2db8e11605da81e7d0b67be4d5302ba4df711648` |
| 5 | `def` | [eval](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/eval.md) | 77 | `declaration-track:917dffe2b3745473f8239bbb42c3201cd47e02327cc98435ef2d74cab4d29aac` |
| 6 | `theorem` | [eval_zero](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/eval-zero.md) | 84 | `result-track:f4b40fdbc23e6382dad3a184707b6a855efc4b5d671146f84bea5b3c912f5449` |
| 7 | `theorem` | [eval_one](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/eval-one.md) | 90 | `result-track:61044c6702277ed9a7c8f2042648eafc2dc00e7aef7f7b530314143d6fc351ec` |
| 8 | `def` | [refl](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/refl-source-edition-2.md) | 104 | `declaration-track:f13fdc8ed3bf1f2c873d68ae55b8079116b1e73bc2f8f6539af99d07fcd16251` |
| 9 | `def` | [symm](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/symm.md) | 111 | `declaration-track:57811cca22229d0c5af5da484b7904e7ed029c06528bbdd86173f18e5147912d` |
| 10 | `theorem` | [symm_symm](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/symm-symm.md) | 116 | `result-track:1f93977aa8703ddb77be5d50f582b73ba889d39b5471f3ea1a78b3a2e8464808` |
| 11 | `def` | [trans](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/trans-source-edition-2.md) | 124 | `declaration-track:ec11cff520ba4327f432e8ef48cb2e3d4d74dbde39ace1809b987de23dd4226c` |
| 12 | `theorem` | [trans_apply](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/trans-apply.md) | 128 | `result-track:e15719a90d7b637d3864ccceb01af7f2cad95ec3f5f6d3a49f9581caa54439bc` |
| 13 | `theorem` | [symm_trans](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/symm-trans.md) | 137 | `result-track:85b022f014e862ae86c7c4c4a0c645a4379537d35d5bc9403b0b24852dbb60d6` |
| 14 | `def` | [cast](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/cast.md) | 144 | `declaration-track:2f5a0820629dd3c46f490902a88844dd56ad28c8e29dbf2fea1917aee44c471a` |
| 15 | `def` | [hcomp](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/hcomp.md) | 159 | `declaration-track:3570782dc1d1ae4b2f2faa153613cf2702deaeb8c0dcbb02b7b691da319d0015` |
| 16 | `theorem` | [hcomp_apply](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/hcomp-apply.md) | 174 | `result-track:16bdd0841cc69700589cc865794f22ec723908baf155d131c896ce11ec01c0a9` |
| 17 | `theorem` | [hcomp_half](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/hcomp-half.md) | 184 | `result-track:29b1a4252f50e2bad5538cd734a524c9a6f80c67bd3ee05dd91728aa11418641` |
| 18 | `def` | [reparam](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/reparam.md) | 194 | `declaration-track:7f7511e2499de8b2e5baa28875ade2ca4b72aab0b2239bc73ad5207072619cfe` |
| 19 | `def` | [symm₂](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/symm-source-edition-3.md) | 223 | `declaration-track:f0db02c88686f3b2318c623c9175c88835ebc545c5b05d3d16d89b3c33c685fe` |
| 20 | `def` | [map](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/map-source-edition-2.md) | 241 | `declaration-track:9d2b81199e4a9b840cccd693793cad11d4f505676bd0492383abb956f04988e9` |
| 21 | `def` | [Homotopic](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/homotopic.md) | 257 | `declaration-track:e7481a02989c97cc82b8bb33d7a62022608bb775e1d51a2afd299548053aaf26` |
| 22 | `theorem` | [refl](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/refl.md) | 264 | `result-track:d013eb8dcb1c917a34f23b388f42eabc1ddb78772e0a9710f04fe6ce54505dd0` |
| 23 | `theorem` | [symm](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/symm-source-edition-2.md) | 269 | `result-track:ce9e2bc6d0f241ac3e87c121ee4cdef727318e8fc9f350cf272521c0e9722db0` |
| 24 | `theorem` | [trans](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/trans.md) | 274 | `result-track:b1ceabf7feae242af41b43f59ce32c0bd6ebe777c39566b13f60ebebf81c33a5` |
| 25 | `theorem` | [equivalence](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/equivalence.md) | 279 | `result-track:20cc1fca06ac7dbdd23cfa5caa1e2356bb366af41a7658b0b4ac305b865c1dbe` |
| 26 | `theorem` | [map](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/map.md) | 283 | `result-track:4e7b2ef52d96d3e5c44623442e4b60ccd0c6df2f075e4e3b6f33d97f1df48612` |
| 27 | `theorem` | [hcomp](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/hcomp-source-edition-2.md) | 288 | `result-track:d267c4f4b6aaa02744a92a4631989bac71c8945a77965b3f17e8762db0a68fc4` |
| 28 | `def` | [setoid](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/setoid.md) | 297 | `declaration-track:e61a687846159f0fcbb0ea8500b7603e6521c1066d21248ae7c2523ccfbaaae7` |
| 29 | `def` | [Quotient](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/quotient.md) | 303 | `declaration-track:9fd6ffa31c33e0a76563b3e3bce9847c13c1455d749ac4f9c83db87c1ea9f6bd` |
| 30 | `instance` | [(anonymous)](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/instance.md) | 309 | `declaration-track:fd8c11232079fd7450329aeb0f9070144f429aaf6f74f8127b6a74c9edafc9aa` |
| 31 | `def` | [Quotient.comp](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/quotient-comp.md) | 313 | `declaration-track:0e34a97b820e6a8033a4256942b635eea1126e1f444a4db7adb673463158109c` |
| 32 | `theorem` | [comp_lift](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/comp-lift.md) | 318 | `result-track:2c4b772f38315b6d210b188fc16b59f2e7b5bae85d5638ae5ae9f9ab911c6d01` |
| 33 | `def` | [Quotient.mapFn](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/quotient-mapfn.md) | 324 | `declaration-track:08e8732d1086304a888ccf091d8b87ab1c23bd7379ac0a43e3e761c40d257231` |
| 34 | `theorem` | [map_lift](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/map-lift.md) | 329 | `result-track:630643e210e083bbf00bc19b1d8da7a649df508918957897ae2d6c23c8108458` |
| 35 | `theorem` | [hpath_hext](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/hpath-hext.md) | 334 | `result-track:d85223d049f4e49e9ddb4eb8c82448a865abc9f89a2b7e797c641d1896c6f023` |
| 36 | `def` | [toHomotopyConst](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/tohomotopyconst.md) | 346 | `declaration-track:45df93f4aebe45184404511e556516868bcb55b41ead4ec534e664c6c32fc042` |
| 37 | `theorem` | [ContinuousMap.homotopic_const_iff](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/continuousmap-homotopic-const-iff.md) | 357 | `result-track:82c947474e3b040c186fa314fbfbb410790418f12c0dea37b4353a334c6c1029` |
| 38 | `def` | [evalAt](../../../../GeneralTopology/HomotopyPathPath.lean/declarations/evalat.md) | 368 | `declaration-track:eae094b0a8978f212dc7a3f9094eab49f2ee035c32d93b4eab6358386df68a9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=71e000812697d4c7483dd1ae55334d2af7b73f84ecc0a0ae4b92da8e968d43e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/Path/Varianta18baef21657f4ec9c05895f7f1d36f296541477d5a9c8621a9586b3a6d09daa.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/Path/Varianta18baef21657f4ec9c05895f7f1d36f296541477d5a9c8621a9586b3a6d09daa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
