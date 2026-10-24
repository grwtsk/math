# Verification target: GRWTSK.Topology.Multilinear.Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35baa053296e6cf3aea9a582d8852fcb1cd52995",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/index.md) · [Full source](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35baa053296e6cf3aea9a582d8852fcb1cd52995`.

Source path: `GRWTSK/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Multilinear.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousMultilinearMap](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/continuousmultilinearmap--c93d3d729179fd102e3da60c.md) | 50 | `declaration-track:c93d3d729179fd102e3da60c6b5796534f80efd17117e7845737febce0b9de6d` |
| 2 | `theorem` | [toMultilinearMap_injective](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/tomultilinearmap-injective--e782547c049a39f264ffe95f.md) | 72 | `result-track:e782547c049a39f264ffe95fc228e6dd01bd469855dc167e2233e71bc62a1cd5` |
| 3 | `instance` | [continuousMapClass](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/continuousmapclass--b56f5c7afbb2600b3a54b024.md) | 79 | `declaration-track:b56f5c7afbb2600b3a54b0245261c6b606637a395d79bb844a13e67748385fef` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/instance--6457d611e085b67710d0e0d7.md) | 86 | `declaration-track:6457d611e085b67710d0e0d7b0642c70f18cfa33f371644ba89e2c5c8563b85f` |
| 5 | `def` | [Simps.apply](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/simps-apply--209bbb779b2d97cf3b584f34.md) | 91 | `declaration-track:209bbb779b2d97cf3b584f34c1ade3ca1c6a3fc45f1c4bd7a222eb9773ad6bbf` |
| 6 | `theorem` | [coe_continuous](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/coe-continuous--4ff895a9c593f2c4372c6fb3.md) | 99 | `result-track:4ff895a9c593f2c4372c6fb30cd6789c8e79136ef8422f6c4c8f8e88b9ca1490` |
| 7 | `theorem` | [coe_coe](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/coe-coe--5b26220d19d65d8ed6b52eae.md) | 104 | `result-track:5b26220d19d65d8ed6b52eaead11395a91ba16ecd9b701b4ab6024dcd2dfd304` |
| 8 | `theorem` | [ext](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/ext--cc1d5d1515a8ba2cf76f2ac0.md) | 109 | `result-track:cc1d5d1515a8ba2cf76f2ac093a29176209663f4823bc2595156909445547bfe` |
| 9 | `theorem` | [ext_iff](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/ext-iff--f69c7705383b703901fd7ced.md) | 113 | `result-track:f69c7705383b703901fd7ced3c88e88dfe56d7ceffa00ea8752102f1aa6c3a19` |
| 10 | `theorem` | [map_add](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/map-add--4e1a45bdbabc5e3c152d7ed9.md) | 118 | `result-track:4e1a45bdbabc5e3c152d7ed9da3916d3232e7118b7d332fb7f277597180018c4` |
| 11 | `theorem` | [map_smul](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/map-smul--5874a4194369b0c691eab2f0.md) | 124 | `result-track:5874a4194369b0c691eab2f00f23990e0ecdb14f700d6837246cea11dd614d94` |
| 12 | `theorem` | [map_coord_zero](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/map-coord-zero--a6a2ca4b181771580d5b83dd.md) | 129 | `result-track:a6a2ca4b181771580d5b83dd48cd43fac2b8b14183ed9decd061a65911581b75` |
| 13 | `theorem` | [map_zero](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/map-zero--615fb1fd4fbd4cd1c1e40e9b.md) | 134 | `result-track:615fb1fd4fbd4cd1c1e40e9bd1028c20f57a20f43d560ba3ff0a04377790babf` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/instance--b3bdd31e3d09b027d65be3bd.md) | 138 | `declaration-track:b3bdd31e3d09b027d65be3bdb3a1406246c1187a60aaec7bb1e36533dcddf9c0` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/instance--c427cab104c64cf17d5df637.md) | 141 | `declaration-track:c427cab104c64cf17d5df6372068efab6681ff1c74d86556fa1398d055b34bb4` |
| 16 | `theorem` | [zero_apply](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/zero-apply--74649f91a1887354e17580a9.md) | 145 | `result-track:74649f91a1887354e17580a96bac74a0dd6dca6b4f4156462eb1b5b68e51a714` |
| 17 | `theorem` | [toMultilinearMap_zero](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/tomultilinearmap-zero--654614ba2259a0f61155c3e3.md) | 150 | `result-track:654614ba2259a0f61155c3e386c170ca36143efc51c26e0d76e5f5dea582a178` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/instance--2efd7b97a40e0de0f3f8ca05.md) | 160 | `declaration-track:2efd7b97a40e0de0f3f8ca053791712e5d9eabb4219877f3c8be8c7b06d54dfd` |
| 19 | `theorem` | [smul_apply](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/smul-apply--e7c16e45d4d2dcf43df3e950.md) | 164 | `result-track:e7c16e45d4d2dcf43df3e95090adb2d25486574f4c8c47e2e8e3e18b7265ae12` |
| 20 | `theorem` | [toMultilinearMap_smul](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/tomultilinearmap-smul--8248cc47e7590950cdcfb17a.md) | 170 | `result-track:8248cc47e7590950cdcfb17a1617cd031bec6573960bb1b855f10d6d2d406352` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/instance--c7d649b77c0232c16f414495.md) | 175 | `declaration-track:c7d649b77c0232c16f41449502a4d617f124dac4653175848958210e51b8f474` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/instance--b9086ee434d161d19a2326c6.md) | 178 | `declaration-track:b9086ee434d161d19a2326c6da06892d26ce9879c8744f1817d6b32c20928cb3` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/instance--6b3fe5227b3c9a4b2cc484ec.md) | 182 | `declaration-track:6b3fe5227b3c9a4b2cc484ecb4893b27dcdd3aef0560a38c959e571159de580d` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/instance--b022ef1c07b85ea9ea3f16fd.md) | 186 | `declaration-track:b022ef1c07b85ea9ea3f16fd1069b6452cc02c1939e1261ad2e6255a998e074c` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/instance--fe33f6e1eebb07ff26cf9d0a.md) | 195 | `declaration-track:fe33f6e1eebb07ff26cf9d0ad3643d08cc7754024546e7c2c32b60ba6502cf3e` |
| 26 | `theorem` | [add_apply](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/add-apply--caefc343995e6343d256efb5.md) | 199 | `result-track:caefc343995e6343d256efb500199e72e40c50a647d68888435da1dc592d045c` |
| 27 | `theorem` | [toMultilinearMap_add](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/tomultilinearmap-add--e0218562ab994ad3cbf67aae.md) | 204 | `result-track:e0218562ab994ad3cbf67aae1889fadb8a0e3ddef5f872f4073c18bb93207687` |
| 28 | `instance` | [addCommMonoid](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/addcommmonoid--e0da4f3f23a2a9693caf8043.md) | 209 | `declaration-track:e0da4f3f23a2a9693caf8043954cc8a970405af4bcce7fe65a55c97ad77a5920` |
| 29 | `def` | [applyAddHom](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/applyaddhom--e5273c6e56fe10957e8cc3fa.md) | 214 | `declaration-track:e5273c6e56fe10957e8cc3fa78ceaf4c7c0ccbea3f8871df1c92b0eb1a59722c` |
| 30 | `theorem` | [sum_apply](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/sum-apply--7ac7db1e753aa95b56575e31.md) | 221 | `result-track:7ac7db1e753aa95b56575e31d9cb53e3cf39808be541546570fc7ad637731a4b` |
| 31 | `def` | [toContinuousLinearMap](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/tocontinuouslinearmap--d76b80255b6e06a5ebe0377f.md) | 231 | `declaration-track:d76b80255b6e06a5ebe0377f7f36ee5010fc674af1656442bc4a301a87372662` |
| 32 | `def` | [prod](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/prod--6f227f464255b1d481fac736.md) | 237 | `declaration-track:6f227f464255b1d481fac736f9f43e8aa1edd08b5b3c193d8925049e7e13d37b` |
| 33 | `theorem` | [prod_apply](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/prod-apply--2cdb811bf40a38bf7c7a096d.md) | 243 | `result-track:2cdb811bf40a38bf7c7a096d666e0bb1820c60c1d79cebb2ab41df73a3bd9935` |
| 34 | `def` | [pi](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/pi--7b88730cb20b6fb3c5878447.md) | 250 | `declaration-track:7b88730cb20b6fb3c58784474b330bccc651977da4d35b5103be0589e3893371` |
| 35 | `theorem` | [coe_pi](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/coe-pi--1f627cfc919eb79ad1ad22b0.md) | 258 | `result-track:1f627cfc919eb79ad1ad22b04af6586f4d91bd82bb07f108b30af25dca392881` |
| 36 | `theorem` | [pi_apply](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/pi-apply--b4dbac462ea6b5ed212d53d9.md) | 264 | `result-track:b4dbac462ea6b5ed212d53d9f62bac0e113fbeede5182d65a6de2272190b8383` |
| 37 | `def` | [codRestrict](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/codrestrict--ba705c954c34fde4e362d901.md) | 272 | `declaration-track:ba705c954c34fde4e362d90155f1d350d1cf3fc6245c9af3345c07376d8c0edc` |
| 38 | `def` | [ofSubsingleton](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/ofsubsingleton--049f2a7faeeee815d6901ccd.md) | 286 | `declaration-track:049f2a7faeeee815d6901ccde154cf9265d34953700e4f545d07cc6476b23b13` |
| 39 | `def` | [constOfIsEmpty](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/constofisempty--eff9a1bece50bbf29fb92d1b.md) | 295 | `declaration-track:eff9a1bece50bbf29fb92d1b891628bf11fe9b59608156fc9d4dc2e3c717cc1c` |
| 40 | `def` | [compContinuousLinearMap](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/compcontinuouslinearmap--c4d54a4e81268d727ff58ca2.md) | 305 | `declaration-track:c4d54a4e81268d727ff58ca24fa2a98af12d6e40ea48344319baf884314035d3` |
| 41 | `theorem` | [compContinuousLinearMap_apply](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/compcontinuouslinearmap-apply--9f9b1c169d85f0ec6939efb7.md) | 312 | `result-track:9f9b1c169d85f0ec6939efb78de7012d82591ccb89084ef34468eeac9cfcdc91` |
| 42 | `def` | [_root_.ContinuousLinearMap.compContinuousMultilinearMap](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/root-continuouslinearmap-compcontinuousmultilinearmap--ae41df8f12d314795c106cfe.md) | 320 | `declaration-track:ae41df8f12d314795c106cfef2bcebd295a535867c44ac290a038e1c20461f4d` |
| 43 | `theorem` | [_root_.ContinuousLinearMap.compContinuousMultilinearMap_coe](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/root-continuouslinearmap-compcontinuousmultilinearmap-coe--da4ce774efb1111516fda350.md) | 326 | `result-track:da4ce774efb1111516fda350a039464daae30a0263d41df32096838482ad4dd4` |
| 44 | `def` | [piEquiv](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/piequiv--46d7633374e19ad23473e298.md) | 336 | `declaration-track:46d7633374e19ad23473e2989a934fec0a74800aa2fbc5457d4d3e827efa04b0` |
| 45 | `def` | [domDomCongr](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/domdomcongr--72bf81014c03fcc89cc01167.md) | 352 | `declaration-track:72bf81014c03fcc89cc01167afd2feb2cb7753369e3c92f9c249c2c4a392a651` |
| 46 | `def` | [domDomCongrEquiv](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/domdomcongrequiv--f8dd9b4d514daa5854fe89f7.md) | 365 | `declaration-track:f8dd9b4d514daa5854fe89f784bcd9bcb4ab0f4d63727316d10e166c2c6a8628` |
| 47 | `theorem` | [cons_add](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/cons-add--2f6d7bfa799635be691a1e39.md) | 379 | `result-track:2f6d7bfa799635be691a1e39f3f7f44aeb93029364fa48b8f42b45c917dd8705` |
| 48 | `theorem` | [cons_smul](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/cons-smul--1244c4b9d7effc4d6c43008d.md) | 387 | `result-track:1244c4b9d7effc4d6c43008db4fa379a8d05c5d294cfdaaa0508eff8967fad50` |
| 49 | `theorem` | [map_piecewise_add](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/map-piecewise-add--10dccfd88a4186cacdf50cb2.md) | 392 | `result-track:10dccfd88a4186cacdf50cb2810af5e9cbc2a575376124218b9e296c74e5b618` |
| 50 | `theorem` | [map_add_univ](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/map-add-univ--7a9375a7c9a0e90ffdef094e.md) | 399 | `result-track:7a9375a7c9a0e90ffdef094ebd7fcce447db9872c5d9ef9c71b92c691959b63f` |
| 51 | `theorem` | [map_sum_finset](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/map-sum-finset--188ed5d7f3a03f1e14bb3031.md) | 414 | `result-track:188ed5d7f3a03f1e14bb3031e1de61adebbb9df944d4848793dd42d4dab864bf` |
| 52 | `theorem` | [map_sum](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/map-sum--f9513e5f8d8f0169b49320bd.md) | 422 | `result-track:f9513e5f8d8f0169b49320bd65ac3cb7d8a9959beb7917fdeb45d5ebea959a43` |
| 53 | `def` | [restrictScalars](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/restrictscalars--d9aa8b98ec961cda568a2fd6.md) | 437 | `declaration-track:d9aa8b98ec961cda568a2fd60f93bdd2c978ebcc24e961e0a7dbff6a520d09d7` |
| 54 | `theorem` | [coe_restrictScalars](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/coe-restrictscalars--d057d8cf24e4bd66708497d4.md) | 443 | `result-track:d057d8cf24e4bd66708497d4f0a64f47eb810427961d8a5efa33e5d159d54947` |
| 55 | `theorem` | [map_sub](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/map-sub--09b3ffb8e9bd46ab3d1aa6f4.md) | 457 | `result-track:09b3ffb8e9bd46ab3d1aa6f4cf5bb3e2ece7497ed137a92e00bb774a94f6e0f2` |
| 56 | `instance` | [(anonymous)](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/instance--2af706c98fe55f8c40b25ae7.md) | 466 | `declaration-track:2af706c98fe55f8c40b25ae7a05898998ec0511e63a994fe14593079d2fa2656` |
| 57 | `theorem` | [neg_apply](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/neg-apply--568c1902e5fdfb78083c98cb.md) | 470 | `result-track:568c1902e5fdfb78083c98cbd31b0d998c33b14a6c54eaa0bed95e202d647666` |
| 58 | `instance` | [(anonymous)](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/instance--e80663e48620af822bde3d75.md) | 474 | `declaration-track:e80663e48620af822bde3d7585c14067928c4f2d3f9bbd799f028f500601814d` |
| 59 | `theorem` | [sub_apply](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/sub-apply--8bec60343e5a6369cc2c823f.md) | 478 | `result-track:8bec60343e5a6369cc2c823fcd5bc7e666d119c4352b013ab5d7a1ac7fae6699` |
| 60 | `instance` | [(anonymous)](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/instance--9807ea732b8241bfeb523fbb.md) | 482 | `declaration-track:9807ea732b8241bfeb523fbbe1c53713bc6110184ae50dc8e287d3604f5595a5` |
| 61 | `theorem` | [map_piecewise_smul](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/map-piecewise-smul--5ff8e4d727ad5ad8bf784a91.md) | 496 | `result-track:5ff8e4d727ad5ad8bf784a9133e11d9917a9be40a20445d3bd789e08f4933ea7` |
| 62 | `theorem` | [map_smul_univ](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/map-smul-univ--3b782daaf110c9b1b85a2ded.md) | 503 | `result-track:3b782daaf110c9b1b85a2ded0342242f7b70820c54c241bbcdb5c2e3f6462342` |
| 63 | `instance` | [(anonymous)](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/instance--0af73c28296698740447e623.md) | 517 | `declaration-track:0af73c28296698740447e623e31ae84022bd81a61a5ce7ed65bdc90f07e2963b` |
| 64 | `instance` | [(anonymous)](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/instance--41c482a40a1833419aa69bdf.md) | 535 | `declaration-track:41c482a40a1833419aa69bdf59ca6409f59d7a63547ee4a1bfe1b8841583e4a2` |
| 65 | `def` | [toMultilinearMapLinear](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/tomultilinearmaplinear--5aee569517a4b3a77a8ccee1.md) | 545 | `declaration-track:5aee569517a4b3a77a8ccee110817ce8fe25163147c96b02b745d104c99e6f9e` |
| 66 | `def` | [piLinearEquiv](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/pilinearequiv--5c6e037ddb4a37abb98e1763.md) | 553 | `declaration-track:5c6e037ddb4a37abb98e17630a6d1b609e2a3e1e9a3b02072e8f89e5a4f73fef` |
| 67 | `def` | [mkPiAlgebra](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/mkpialgebra--22d90fcd29ee1756ee1bb31c.md) | 573 | `declaration-track:22d90fcd29ee1756ee1bb31cc92f004b1690bcf34308fde8d2aa91d9a16f4427` |
| 68 | `theorem` | [mkPiAlgebra_apply](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/mkpialgebra-apply--f65130c5bc2cb5f4424a6f9b.md) | 579 | `result-track:f65130c5bc2cb5f4424a6f9b77864e0a011a2fc95e6c0d6ebf9c64d4395ec23f` |
| 69 | `def` | [mkPiAlgebraFin](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/mkpialgebrafin--90101be674aa6e9f7749ae0e.md) | 594 | `declaration-track:90101be674aa6e9f7749ae0ec0e45e08906463101f88f959d2dd1934c78a1802` |
| 70 | `theorem` | [mkPiAlgebraFin_apply](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/mkpialgebrafin-apply--165d3bb97834c46869e6cfe8.md) | 605 | `result-track:165d3bb97834c46869e6cfe808e94098dbeda855225492624d8bd1fb7d933456` |
| 71 | `def` | [smulRight](../../../../mathematics/Topology/Multilinear/Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.lean/declarations/smulright--52b6c2e46b8a74827cae97f3.md) | 621 | `declaration-track:52b6c2e46b8a74827cae97f3f18d7ba2c24a9d0ea869ef0206e7d57dcab4da52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
