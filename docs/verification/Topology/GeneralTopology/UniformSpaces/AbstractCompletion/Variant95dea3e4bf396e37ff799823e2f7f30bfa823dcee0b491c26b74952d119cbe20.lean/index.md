# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.AbstractCompletion.Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f08ecff849976ff5638c4890710f448e1ced3c2b",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f08ecff849976ff5638c4890710f448e1ced3c2b`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.UniformEmbedding` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Equiv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AbstractCompletion](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/abstractcompletion--2e267ba12e33d9aaa145dd91.md) | 59 | `declaration-track:2e267ba12e33d9aaa145dd919c4f6fc1c6025e2ef2c74982f317f7f4a7a5ec66` |
| 2 | `def` | [ofComplete](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/ofcomplete--11287973fc0f2b70f6cb0a9f.md) | 88 | `declaration-track:11287973fc0f2b70f6cb0a9fe5460de4a35665945a66288a779e25d7987f7b67` |
| 3 | `theorem` | [closure_range](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/closure-range--4e03c351e897268d1e843052.md) | 92 | `result-track:4e03c351e897268d1e8430529cc8d01981102a778a42201bcf79b1a0389abdaa` |
| 4 | `theorem` | [denseInducing](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/denseinducing--f3b8cfd388e5ba0156b68163.md) | 96 | `result-track:f3b8cfd388e5ba0156b6816394d376f089f8b32c3c8cdaf0131e43a18fb02c05` |
| 5 | `theorem` | [uniformContinuous_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/uniformcontinuous-coe--2f0f2c3008e162ccf437d347.md) | 100 | `result-track:2f0f2c3008e162ccf437d347f534da4d78a6c18378998f784d2b5e24c5c3e3cb` |
| 6 | `theorem` | [continuous_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/continuous-coe--9eace99040d24462a16f5b76.md) | 104 | `result-track:9eace99040d24462a16f5b769d1487ff823462cfc08cb96777812fe2d1e44c16` |
| 7 | `theorem` | [induction_on](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/induction-on--f9711b5352084d61b1981405.md) | 109 | `result-track:f9711b5352084d61b198140524614d703f074ec182de82236e0dfa2bbf5eb383` |
| 8 | `theorem` | [funext](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/funext--be72e6b97672e99018c863d5.md) | 116 | `result-track:be72e6b97672e99018c863d5d115b047bd98f7fa41de902aa661ec3289e49503` |
| 9 | `def` | [extend](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/extend--4f296737f61d7943f25cc229.md) | 126 | `declaration-track:4f296737f61d7943f25cc22957184f7ce125b21a787da929d67da65ef2a672f7` |
| 10 | `theorem` | [extend_def](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/extend-def--80094df83496414b8a66d21a.md) | 132 | `result-track:80094df83496414b8a66d21a8aada33000874f07b75c5f2b813211b7061492e0` |
| 11 | `theorem` | [extend_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/extend-coe--ff9ee2dc982b8007f3140845.md) | 136 | `result-track:ff9ee2dc982b8007f314084520eebf4952ac88a82da408c389a189e5d4693a13` |
| 12 | `theorem` | [uniformContinuous_extend](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/uniformcontinuous-extend--f4035bf8e9d1086b2dd20254.md) | 143 | `result-track:f4035bf8e9d1086b2dd20254368709609d0c1d7879cf9173e59d0d52e68366c4` |
| 13 | `theorem` | [continuous_extend](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/continuous-extend--cb4ac9489631bd8a37357bec.md) | 152 | `result-track:cb4ac9489631bd8a37357becc0eafc0bf5322d61449a74f18dcff47b5ed42d51` |
| 14 | `theorem` | [extend_unique](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/extend-unique--0e60cc7bdf84aebcbe8bdd6d.md) | 158 | `result-track:0e60cc7bdf84aebcbe8bdd6d250b28daf006d1ebfb884bbcc716d5f0090c9f97` |
| 15 | `theorem` | [extend_comp_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/extend-comp-coe--b33a4ac839b10cd6d51d202d.md) | 165 | `result-track:b33a4ac839b10cd6d51d202dcd6f77963e9bf982b430cc1296f30828e5712e89` |
| 16 | `def` | [map](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/map--8fe9dff83473ce611502138d.md) | 182 | `declaration-track:8fe9dff83473ce611502138d583c2a907f383187536b5666d696c6249f1dbe16` |
| 17 | `theorem` | [uniformContinuous_map](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/uniformcontinuous-map--e8b3020a7165a710c7278ec5.md) | 190 | `result-track:e8b3020a7165a710c7278ec5ba793901a420cbf5057dfec5d43e5c9e8b916941` |
| 18 | `theorem` | [continuous_map](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/continuous-map--1a0631a9edc3b94f99efedd8.md) | 195 | `result-track:1a0631a9edc3b94f99efedd8a87354fdd32dc921bbdd17ec50c29f51dfe5dbf8` |
| 19 | `theorem` | [map_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/map-coe--754fb1da310fc911ecd80d70.md) | 202 | `result-track:754fb1da310fc911ecd80d7023922c887967185d145344974be37446f077a63e` |
| 20 | `theorem` | [map_unique](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/map-unique--ed62980f8cd2c78bca66dd9e.md) | 206 | `result-track:ed62980f8cd2c78bca66dd9e14f6e5f1347955bc680a2363854f97b84f47bc5f` |
| 21 | `theorem` | [map_id](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/map-id--331708f2ef1754710cb9c4fa.md) | 216 | `result-track:331708f2ef1754710cb9c4faab5bf6ce05457f1055a60548a8c8e98fe9403fd5` |
| 22 | `theorem` | [extend_map](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/extend-map--83f76b0c7f1a8eb851b61a22.md) | 222 | `result-track:83f76b0c7f1a8eb851b61a2245bee32f1a8660fd664a882a349baec401232e46` |
| 23 | `theorem` | [map_comp](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/map-comp--3467875d6b94d4f691c29544.md) | 233 | `result-track:3467875d6b94d4f691c29544399ca8c02134de8704f57dd50fa375b081284097` |
| 24 | `def` | [compare](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/compare--b66b17dadc760cfcc4f5c53d.md) | 246 | `declaration-track:b66b17dadc760cfcc4f5c53d29227bee34160d510251caad1e867fdc7517b747` |
| 25 | `theorem` | [uniformContinuous_compare](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/uniformcontinuous-compare--87763c75b2d4e2a13932eaed.md) | 250 | `result-track:87763c75b2d4e2a13932eaedeb1d4a90e763c83dea4fc6bf9171f1f1c371ff6b` |
| 26 | `theorem` | [compare_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/compare-coe--d45217bb2209cfe956e648d2.md) | 254 | `result-track:d45217bb2209cfe956e648d20d59e2226389afa36d5fdb80a6daa2bcf65a0dc6` |
| 27 | `theorem` | [inverse_compare](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/inverse-compare--ea833c3ded89692c12dd5e49.md) | 258 | `result-track:ea833c3ded89692c12dd5e4964440e7a74c07288746894e6d2052ff53ff8d795` |
| 28 | `def` | [compareEquiv](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/compareequiv--ee5c2e399dd9dea79bd1448c.md) | 268 | `declaration-track:ee5c2e399dd9dea79bd1448c30139abaefd47fa095d42e5cc2b16f92d1ad7545` |
| 29 | `theorem` | [uniformContinuous_compareEquiv](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/uniformcontinuous-compareequiv--e23e70955b11eba159c3a7ae.md) | 278 | `result-track:e23e70955b11eba159c3a7aef6f2ed53e3caf88411d995fb94fb40727517b1bd` |
| 30 | `theorem` | [uniformContinuous_compareEquiv_symm](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/uniformcontinuous-compareequiv-symm--95262c865056548088007bf6.md) | 282 | `result-track:95262c865056548088007bf60e3f9269df76fbb4926ffc45e257baa021ff2a2d` |
| 31 | `def` | [prod](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/prod--f3ac17df8bd31f45d77e6c01.md) | 297 | `declaration-track:f3ac17df8bd31f45d77e6c01cf8f57683cb5161df6dd972766ba31cd577793e2` |
| 32 | `def` | [extend₂](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/extend--b9713cbe432d26f11fc4a886.md) | 323 | `declaration-track:b9713cbe432d26f11fc4a8866ff390920c51aaf1bbf446d003aecc0e1c726992` |
| 33 | `theorem` | [extension₂_coe_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/extension-coe-coe--9d99b264b7ff48b2125ddd6f.md) | 331 | `result-track:9d99b264b7ff48b2125ddd6f82dd689a2cb325991eaccb34e37c5dfea5b59d2b` |
| 34 | `theorem` | [uniformContinuous_extension₂](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/uniformcontinuous-extension--54dc899fc7a67e31b9d50e91.md) | 343 | `result-track:54dc899fc7a67e31b9d50e912f3ce5aff3c297eaa9ae030ae460aea909dfdd03` |
| 35 | `def` | [map₂](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/map--b06849c83d5e9435e695c6dd.md) | 367 | `declaration-track:b06849c83d5e9435e695c6dd22c8028cc8e4dcb0462d8e3a75a3ce5d4c4809eb` |
| 36 | `theorem` | [uniformContinuous_map₂](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/uniformcontinuous-map--f5481cf8c041a3f7ed072a0e.md) | 371 | `result-track:f5481cf8c041a3f7ed072a0e610647e57b240c74542b730909ce9f9f4e3378b1` |
| 37 | `theorem` | [continuous_map₂](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/continuous-map--740efaa92c59242bdb109938.md) | 375 | `result-track:740efaa92c59242bdb109938ad1e23ffedd899a53585e8354bf4b2bf0d0a4ae0` |
| 38 | `theorem` | [map₂_coe_coe](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant95dea3e4bf396e37ff799823e2f7f30bfa823dcee0b491c26b74952d119cbe20.lean/declarations/map-coe-coe--41971984f23f0f5af15c65c7.md) | 381 | `result-track:41971984f23f0f5af15c65c742166fa290921b2d51a88184166448a8230d3e22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
