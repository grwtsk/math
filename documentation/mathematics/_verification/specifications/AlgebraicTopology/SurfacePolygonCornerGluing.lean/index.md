# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecf3035394ca12b16ba2f8622643608ac1c62789",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCornerGluing.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/index.md) · [Full source](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecf3035394ca12b16ba2f8622643608ac1c62789`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCornerGluing.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonCornerGluing.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCellularBoundary`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SurfacePolygonCellularBoundary.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Logic.Relation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Handle](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/handle.md) | 60 | `declaration-track:f4a8e60e7b16b6bc1d8ea185382c3488804b48f8638ff8ae0a99dcd5477b6b6e` |
| 2 | `abbrev` | [PolygonCorner](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/polygoncorner.md) | 65 | `declaration-track:6dd3b920a8e957b62f4ab5da02048700e304eed1e3b206ce07b360783e57f0d0` |
| 3 | `def` | [firstHandle](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/firsthandle.md) | 69 | `declaration-track:52209c1f9291389306144c5db9ed90a10d9d41ada43d8a9d585378caf78a4ea8` |
| 4 | `def` | [secondHandle](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/secondhandle.md) | 73 | `declaration-track:f0661b0b0d7389e1f1d4c88099f1da13f4a2ce42f4f682d74da2ce0ea85ea462` |
| 5 | `def` | [handleA](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/handlea.md) | 77 | `declaration-track:e16f99f66924a370774b7725b523ff156ab233686e06f8d230e9722b221d1971` |
| 6 | `def` | [handleB](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/handleb.md) | 83 | `declaration-track:fd23130f6a6a99421b24fd13ff5056e576ea28f09030c7ceeb089d084dbc80da` |
| 7 | `def` | [handleEdges](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/handleedges.md) | 89 | `declaration-track:7a21744d137b8b770db966af15efcaa5cfa03f73dc24a4ba8eadbf27d5d5bc62` |
| 8 | `theorem` | [firstHandleEdges](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/firsthandleedges.md) | 93 | `result-track:784d9fd93e7b2d85518f9476945ae63d2f1e43a2dd0b6c443b94fb20fc84c128` |
| 9 | `theorem` | [secondHandleEdges](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/secondhandleedges.md) | 98 | `result-track:ca42532f5b102b4dcf87b43180578b648768ceaa2e95b5879cde0a9a08244c5f` |
| 10 | `theorem` | [extraHandleEdges](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/extrahandleedges.md) | 103 | `result-track:43c4a26349a89ac0a100ac840d362331d7370f87c035de3e0504717cd3af1330` |
| 11 | `def` | [orderedHandleBlocks](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/orderedhandleblocks.md) | 110 | `declaration-track:031592b4e4ace5755825c04a9b0679403ec7bf10c634d8378051b7f15d3b0cb8` |
| 12 | `theorem` | [orderedHandleBlocks_flatten_eq_polygonBoundaryWord](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/orderedhandleblocks-flatten-eq-polygonboundaryword.md) | 119 | `result-track:6083e30583d518da32852c14cd80f27162438b7492c2d90044057af836f79043` |
| 13 | `theorem` | [handleEdges_length](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/handleedges-length.md) | 127 | `result-track:f5ac7dd1a36822225cdf1f52af749d5456505db32106e975d269666685ad4e70` |
| 14 | `def` | [sideAt](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/sideat.md) | 133 | `declaration-track:b95c8281a6af2f00afeff9b2b30fbc18319df4451f903494845fe91ba1bcfab8` |
| 15 | `theorem` | [sideAt_zero](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/sideat-zero.md) | 139 | `result-track:6bd8c0a3f747baf61f0ca8c22c2feb18e27db9834d3ecd09bde47205f2b737f8` |
| 16 | `theorem` | [sideAt_one](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/sideat-one.md) | 143 | `result-track:4be877c5898e3abad05f2653cd6b8c8898a63647d5c9fe8c1304a39c4cb7026b` |
| 17 | `theorem` | [sideAt_two](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/sideat-two.md) | 147 | `result-track:97b5279a42dd45449d4a3313782e59c4a373d6f511c205584998ea9957c70c10` |
| 18 | `theorem` | [sideAt_three](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/sideat-three.md) | 151 | `result-track:25fd7cf96eec32cfb2519b3723adc6fcb17a91b23c1d9aac860ddfd71d817ef0` |
| 19 | `theorem` | [sideAt_list_eq_handleEdges](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/sideat-list-eq-handleedges.md) | 158 | `result-track:1aef5e1d3aa2b589494d4be5c9d64bde293c0f0a9faf2106e4c4842f0619892c` |
| 20 | `theorem` | [orderedHandleBlocks_length](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/orderedhandleblocks-length.md) | 165 | `result-track:79b0247ca77f24dce0c0fa142499051d929c6bbbab007acce28e4b362853bbae` |
| 21 | `def` | [oppositeSide](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/oppositeside.md) | 170 | `declaration-track:cbbc5910715f6d908bd0e9986d4d2db646f0812097b6e531b0278d74aca7a56a` |
| 22 | `theorem` | [a_sides_opposite](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/a-sides-opposite.md) | 175 | `result-track:992febe57757f8e08ccd46d99480689d3af39dc5e5ad1dbc92ac5f466b25bf3e` |
| 23 | `theorem` | [b_sides_opposite](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/b-sides-opposite.md) | 179 | `result-track:f1ff688e4754a47bdf7b55c5a386b98a815dee1bbced1976a9a9befd13d91608` |
| 24 | `theorem` | [oppositeSide_involutive](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/oppositeside-involutive.md) | 185 | `result-track:d62bbfe3125e769abf92a9876341034061bf2909773b6d26792de12019142a3d` |
| 25 | `theorem` | [oppositeSide_ne_self](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/oppositeside-ne-self.md) | 193 | `result-track:df3e9f5f5cfcb07ed2e15d0be703342de6276acee919678009ed69f0c714c069` |
| 26 | `def` | [nextHandle](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/nexthandle.md) | 202 | `declaration-track:dda2fc66d75fde9dd7046c8fae1df70ccd197830a90942779c5b24a5e41eeb88` |
| 27 | `theorem` | [nextHandle_first](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/nexthandle-first.md) | 210 | `result-track:b613bb0f7af513dda181173f71db42648632fefe1a21679ca5edbe062ea32f25` |
| 28 | `theorem` | [nextHandle_second_noExtras](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/nexthandle-second-noextras.md) | 214 | `result-track:89ebe3acdbcdc2635e777269bf8b9b24c96ffda56ebe7db14020ada1167b7e38` |
| 29 | `theorem` | [nextHandle_second_withExtras](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/nexthandle-second-withextras.md) | 220 | `result-track:16a3db9ae23f189ae23a59cdbd8204dd40cd58c289ba1f7713c021cb5a4c01d7` |
| 30 | `theorem` | [nextHandle_extra_step](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/nexthandle-extra-step.md) | 227 | `result-track:1d7d648e880eafa82c771c2f2a2c48e98ccae0ed6621a6140712a67b27e91ab2` |
| 31 | `theorem` | [nextHandle_extra_last](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/nexthandle-extra-last.md) | 235 | `result-track:062af7f30b86a8ea22c5e2040abe8df70cef2f1dfb16aa41d264ba8c4d9644f7` |
| 32 | `inductive` | [DirectCornerGluing](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/directcornergluing.md) | 249 | `declaration-track:c2ab8a00ba8549ba433bcd905f713fcf0e1802c3bff22c57f05d58b65d2917d3` |
| 33 | `def` | [CornerConnected](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/cornerconnected.md) | 262 | `declaration-track:40b7e2114ea0fb566386ea3474a6afb519e279f638fcc6b672914e4a0daa9261` |
| 34 | `theorem` | [local_three_to_zero](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/local-three-to-zero.md) | 267 | `result-track:82033d86952ec015b970e3a0d87e55098cbb91bf478ee4b7d31c4d065843ade1` |
| 35 | `theorem` | [local_two_to_zero](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/local-two-to-zero.md) | 272 | `result-track:5fa56b591d1495828b97052bf72cebb8d468c366053eb67877959f02dda9be0f` |
| 36 | `theorem` | [local_one_to_zero](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/local-one-to-zero.md) | 279 | `result-track:de004a5d39c95e2000e404442b21ef3098353aadb07ebc063a4756cfddbf0b90` |
| 37 | `theorem` | [local_corner_to_zero](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/local-corner-to-zero.md) | 287 | `result-track:6cd5d2b0b9216030b13f215ab93f431ba41bfb5d25cba89553e196b5c81fd9e5` |
| 38 | `theorem` | [handle_zero_to_next_zero](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/handle-zero-to-next-zero.md) | 298 | `result-track:f7e8df18f67412f4509f5f52b0d16ce00b73dc8de8f2d72fe447ce3679d4b4df` |
| 39 | `theorem` | [first_to_second_zero](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/first-to-second-zero.md) | 305 | `result-track:14c59de56beff312c642d0897f8af2cbd87d6beeb0ec71ecedda10283336c6ff` |
| 40 | `theorem` | [second_to_extra_zero](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/second-to-extra-zero.md) | 311 | `result-track:dd6763c104caa8ee3f8e6df5e8e7a059c6d6b4065cde07844ea8864229bb7ff1` |
| 41 | `theorem` | [first_to_extra_zero](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/first-to-extra-zero.md) | 320 | `result-track:ecfb812ab98844d264af01214b176d27bcdf64ea397f897cb86ad14cf822d9f1` |
| 42 | `theorem` | [first_to_handle_zero](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/first-to-handle-zero.md) | 345 | `result-track:e445e224aa4aeb2d5d91a76f66f7c99fce9b743881a34faf95c2ad2ce45d94c6` |
| 43 | `theorem` | [first_to_every_corner](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/first-to-every-corner.md) | 358 | `result-track:1c465922e278f45c7fe92e76a136e939d2872b31bc8ad5838c05fa10ce66d4f4` |
| 44 | `theorem` | [all_corners_connected](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/all-corners-connected.md) | 366 | `result-track:6935345b4fdd6efca4b9e9b2e57e524bfb6fda1e6524af28b713ffefdf2f0cee` |
| 45 | `def` | [cornerSetoid](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/cornersetoid.md) | 374 | `declaration-track:df01dad7ab06a18717a2a485d0cfdc29de4c121ea5210bbd1a761a05c57e1d2b` |
| 46 | `def` | [GluedPolygonCorners](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/gluedpolygoncorners.md) | 381 | `declaration-track:1e61601ec252b0cdf61ec80b3306f382c853cc8fcb71549659031a3a8e52a992` |
| 47 | `theorem` | [gluedPolygonCorners_subsingleton](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/gluedpolygoncorners-subsingleton.md) | 385 | `result-track:2a4d25df8ab07d48d541a455c09f05caa804a0bed546c6978bbca773a0b55d81` |
| 48 | `theorem` | [gluedPolygonCorners_nonempty](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/gluedpolygoncorners-nonempty.md) | 395 | `result-track:5d7eabee4b1892e92499d0b604f81cd22a84ad142dd97465c694378b8e03c4f3` |
| 49 | `def` | [gluedPolygonCorners_unique](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/gluedpolygoncorners-unique.md) | 401 | `declaration-track:d4877a88c84cda66750d788136b2edea0e8f7334cc96f7860d2dfdd3baf67f45` |
| 50 | `theorem` | [first_second_handles_distinct](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/first-second-handles-distinct.md) | 411 | `result-track:bec1ba58274de7585d3161a716a50b46260b475942e4e013810f0c0fdaad355c` |
| 51 | `theorem` | [essential_b_seam_connects_distinct_handles](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/essential-b-seam-connects-distinct-handles.md) | 419 | `result-track:b449a13f283976758984a52e9f08c766d8eae08bfd34dd592aadba5c6d7c80ff` |
| 52 | `theorem` | [genusTwo_distinct_handles_glued](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/genustwo-distinct-handles-glued.md) | 427 | `result-track:0af432c812557d45ca3c0267b069e4746dec8fffdc6f95ab7d2cd973081393a6` |
| 53 | `theorem` | [genusThree_extra_handle_glued](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/genusthree-extra-handle-glued.md) | 433 | `result-track:c6de9875cd2c1abeb6a5e621fa43618e7d124b3c730df4cfc6e0b37e3e2eb111` |
| 54 | `theorem` | [one_cell_source_count_unchanged](../../../../AlgebraicTopology/SurfacePolygonCornerGluing.lean/declarations/one-cell-source-count-unchanged.md) | 440 | `result-track:927a81d81f5f27978a4858630aec613ffb0ec01fd86091fd9a9adb864a963591` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6b8ee7c79d53af590f65249d66352ceb148c84fa155085604ffd8e2dc3b15218 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCornerGluing.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/SurfacePolygonCornerGluing.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
