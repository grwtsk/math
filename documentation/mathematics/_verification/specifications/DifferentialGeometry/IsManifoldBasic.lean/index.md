# Verification target: Is Manifold Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee3c2d7d5a330683c58061f8093012ae5079e619",
  "lexical_observation_count": 106,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant839ef69546a0af23685c4223a2f7ec84a4376e1750e0f2c2ebe6d221a729d14d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/IsManifoldBasic.lean/index.md) · [Full source](../../../../DifferentialGeometry/IsManifoldBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee3c2d7d5a330683c58061f8093012ae5079e619`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Basic/Variant839ef69546a0af23685c4223a2f7ec84a4376e1750e0f2c2ebe6d221a729d14d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Basic/Variant839ef69546a0af23685c4223a2f7ec84a4376e1750e0f2c2ebe6d221a729d14d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Convex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Bundle` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.ChartedSpace` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ModelWithCorners](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/modelwithcorners.md) | 151 | `declaration-track:efee5de3baa04715206c5735a74beacdfc3bc1847d5bb5726792d77bd6389ca6` |
| 2 | `def` | [modelWithCornersSelf](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/modelwithcornersself.md) | 163 | `declaration-track:92441116c39bdb7f77e8da41ee441316aec093d731203e69942774b6d557fb92` |
| 3 | `def` | [toFun'](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/tofun.md) | 187 | `declaration-track:32cc0273251fe617a2aa26ede65fdec77d8a4c90016fc7cba8de636dd9dc8695` |
| 4 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/instance-source-edition-16.md) | 189 | `declaration-track:d1579089b3c1251f7868c682da554e5082334c9324dda9b04f8416fa4897149e` |
| 5 | `def` | [symm](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/symm.md) | 192 | `declaration-track:4840e4dde6ba388acbcc7d09229c06e0f96f9e395dc22548a7abbb97b230cd69` |
| 6 | `def` | [Simps.apply](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/simps-apply.md) | 197 | `declaration-track:17c54bd11ae175ee8de56320cdf598754eaa15127adc790c43f41ba17fc32bc9` |
| 7 | `def` | [Simps.symm_apply](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/simps-symm-apply.md) | 202 | `declaration-track:37b8ec045bb42970a728b9b78d549165019d021ded4609b1a3b786df0e6b3cb9` |
| 8 | `theorem` | [toPartialEquiv_coe](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/topartialequiv-coe.md) | 210 | `result-track:0b4dc225f42ca080dff1568ff4b0cec43102d7d21f7adf926f34c0696edc8e3f` |
| 9 | `theorem` | [mk_coe](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/mk-coe.md) | 214 | `result-track:0d82855d86d94aa76a7e093c880693fcaa0fc0d4445b4e0546b9eeb86ca2f507` |
| 10 | `theorem` | [toPartialEquiv_coe_symm](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/topartialequiv-coe-symm.md) | 219 | `result-track:b43facf585c19a0188e80b9e2b645329d6a3927631d99a658faa3a042107b011` |
| 11 | `theorem` | [mk_symm](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/mk-symm.md) | 223 | `result-track:e076638eec320cbc2317a02406a4dcf37fb6c76136e13a204202326c6b9c8184` |
| 12 | `theorem` | [continuous](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/continuous.md) | 228 | `result-track:fbcc5357e6803f7aa01a71d3fa263bb7e43c256830e83ca6cdbe403e3e15b55c` |
| 13 | `theorem` | [continuousAt](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/continuousat.md) | 231 | `result-track:1e0cb202bbcfe19480af725cf873efee2776bb66d1b73d353d9f0ca99be46dfd` |
| 14 | `theorem` | [continuousWithinAt](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/continuouswithinat.md) | 234 | `result-track:3cd97a5a8e0535771c9fb8470dccd567e6d9a4b3afebfd42e4b91049c83af22a` |
| 15 | `theorem` | [continuous_symm](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/continuous-symm.md) | 238 | `result-track:521e9d5f45e3153a27b5b8c4ac56d77865446c8f11a70ff4d3e3a002c5a61f3d` |
| 16 | `theorem` | [continuousAt_symm](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/continuousat-symm.md) | 241 | `result-track:e2c7c1438ebac1f10e120f92e0c7c89aaf0087a809243381a035c84e857bb404` |
| 17 | `theorem` | [continuousWithinAt_symm](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/continuouswithinat-symm.md) | 244 | `result-track:aac2e4da2433364367eaf2b1fa3f8de4e1ebe4a06124d574619e2bf61859a147` |
| 18 | `theorem` | [continuousOn_symm](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/continuouson-symm.md) | 247 | `result-track:e4d469f92ff7ccd67ad2af7b5be39f0e8c0e222b664ee711cddaaa629a38bc8b` |
| 19 | `theorem` | [target_eq](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/target-eq.md) | 251 | `result-track:537db13de867374941d0de37233e0f12ffd25c0d4c89ae893120b25f649c82e3` |
| 20 | `theorem` | [uniqueDiffOn](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/uniquediffon.md) | 255 | `result-track:b6526a6a15e554dbd22f9e563dd1073c61163229850a3eb6f5e7e9c3e9e1853c` |
| 21 | `theorem` | [range_subset_closure_interior](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/range-subset-closure-interior.md) | 258 | `result-track:e779407567827759d32f759e006df76d72b8236859a4221296611f9478f79099` |
| 22 | `theorem` | [left_inv](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/left-inv.md) | 263 | `result-track:a5cfb5a8a0c46774a01028618cd48ed87624779d8306553e51c09cac2646c612` |
| 23 | `theorem` | [leftInverse](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/leftinverse.md) | 265 | `result-track:7c8971743ca84a8623a68d3b19ed407cbf99205b31491620f1e0215dbc554c4d` |
| 24 | `theorem` | [injective](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/injective.md) | 268 | `result-track:93f0cbf6f2136bc95aa82029062b49cd609a404cf7b8d08cd890db09fd23b2fb` |
| 25 | `theorem` | [symm_comp_self](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/symm-comp-self.md) | 272 | `result-track:d0f9db98adaea6c800cd0380b4bf7dfad460e3cfbd8f4660575eb70f98d2afb4` |
| 26 | `theorem` | [rightInvOn](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/rightinvon.md) | 275 | `result-track:fdb04e7f9c12c6d105cdb55d6bb0b87b1a9181fb1b901f035cc7c1fa0c057f83` |
| 27 | `theorem` | [right_inv](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/right-inv.md) | 279 | `result-track:ddd6b922045c74ef72b82046e3727529cfa34f4d1f2b44fd6ec26476a3f38079` |
| 28 | `theorem` | [preimage_image](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/preimage-image.md) | 282 | `result-track:0e7de4fd7141f68ebadc29bed5ae3c491d0c29f6a0bf59348e96a2344c375ed5` |
| 29 | `theorem` | [image_eq](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/image-eq.md) | 285 | `result-track:cb0f67e114e81f799c947651da00a952696a7a79249445c5ac96cf0270bd6f83` |
| 30 | `theorem` | [isClosedEmbedding](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/isclosedembedding.md) | 290 | `result-track:f4af5534eb26597cff52d71169d86ed7f3d309c11c212290ad967b6dd249dcf1` |
| 31 | `theorem` | [isClosed_range](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/isclosed-range.md) | 293 | `result-track:c16f926077ec5f6107fa937115b4434da5f9565449c22db20d7b72e0ff4e28da` |
| 32 | `theorem` | [range_eq_closure_interior](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/range-eq-closure-interior.md) | 297 | `result-track:c4f9fca17fd7c9628799598102a29c85e279680e5ba812095b7803f7e42bd84c` |
| 33 | `theorem` | [map_nhds_eq](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/map-nhds-eq.md) | 300 | `result-track:e30659273166f3e99d84b6ecf34b215c58217dc443dfd20c0797808dbddbac5f` |
| 34 | `theorem` | [map_nhdsWithin_eq](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/map-nhdswithin-eq.md) | 303 | `result-track:f4744661702a97e92239fa4f7f064e131ab2b6daeede7aa68b9637fbe25de368` |
| 35 | `theorem` | [image_mem_nhdsWithin](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/image-mem-nhdswithin.md) | 306 | `result-track:fc2e25f65a98c06310363bc841544a042c89912e5b37082f4da52acf9761f702` |
| 36 | `theorem` | [symm_map_nhdsWithin_image](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/symm-map-nhdswithin-image.md) | 309 | `result-track:a82a03abd1f31228fd41bcba25623ec61fe75aa14629f4ee772812a135ee4fb7` |
| 37 | `theorem` | [symm_map_nhdsWithin_range](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/symm-map-nhdswithin-range.md) | 312 | `result-track:aa36bb63a4a6a5d44de003daa84ff9754d4ead02cb94e6fd3683e1f4ed51a3df` |
| 38 | `theorem` | [uniqueDiffOn_preimage](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/uniquediffon-preimage.md) | 315 | `result-track:07ec35e2de9e0d70d8e8b9e04f82e60e2188384c07e6c1548411d828738f5920` |
| 39 | `theorem` | [uniqueDiffOn_preimage_source](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/uniquediffon-preimage-source.md) | 320 | `result-track:60ca37114d537ed77a6359536ae49acdd5f51fd097d68ba8ccd9fa97962cf204` |
| 40 | `theorem` | [uniqueDiffWithinAt_image](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/uniquediffwithinat-image.md) | 324 | `result-track:ba5aba1747f8ba9ecc10a0eef033fdb7b6e93b695d639afc4553467dc1ff8763` |
| 41 | `theorem` | [symm_continuousWithinAt_comp_right_iff](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/symm-continuouswithinat-comp-right-iff.md) | 327 | `result-track:9b4093a74ebb16f99f64947d540f9411dc512c012bc2786f5946126ba2585d1e` |
| 42 | `theorem` | [locallyCompactSpace](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/locallycompactspace.md) | 337 | `result-track:af5cf852d7bac02adfb6f1fe4cc4cee7f429ed0f9009f09e6d4f9e62a5b8f8ae` |
| 43 | `theorem` | [secondCountableTopology](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/secondcountabletopology.md) | 349 | `result-track:16715ad54bded8559deb3ad9dff2bb02059cfe21b59d37338d2b3569a6ee32a7` |
| 44 | `theorem` | [t1Space](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/t1space.md) | 356 | `result-track:716a2bec8fb13e4f9801d2c641a501abc29deb71826a089c30c87bc60f8f43c4` |
| 45 | `theorem` | [modelWithCornersSelf_partialEquiv](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/modelwithcornersself-partialequiv.md) | 368 | `result-track:fe13fc98c03d7949a541976b84d81378ec6d6c31cd764dc812206ac7975e38ed` |
| 46 | `theorem` | [modelWithCornersSelf_coe](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/modelwithcornersself-coe.md) | 372 | `result-track:afa5eaaa496d19dcefd73664916a5b6d9983d8c9df0ba7932c2d47f87c517e03` |
| 47 | `theorem` | [modelWithCornersSelf_coe_symm](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/modelwithcornersself-coe-symm.md) | 376 | `result-track:21abfa7608749e8f1be68f8853a6c87f4b5bfab5897eef9c1be2f1e453578272` |
| 48 | `def` | [ModelWithCorners.prod](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/modelwithcorners-prod.md) | 391 | `declaration-track:3ad0947563deef3566b2cd65f6ce62a5226c29a14ad253d813016e21f64061a5` |
| 49 | `def` | [ModelWithCorners.pi](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/modelwithcorners-pi.md) | 411 | `declaration-track:240aa5732c8e3b23b98ac5a367e5fc1aefb185bc826a48efa985d93449cd39ba` |
| 50 | `abbrev` | [ModelWithCorners.tangent](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/modelwithcorners-tangent.md) | 426 | `declaration-track:c53365ae9778320886f948827953b7f1d3a1346536c36c18b98b170393712e89` |
| 51 | `theorem` | [modelWithCorners_prod_toPartialEquiv](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/modelwithcorners-prod-topartialequiv.md) | 439 | `result-track:58eaa8963544919447b56d85067ee37e69115acb6d443ff7e1a21a7c4bcfe4c5` |
| 52 | `theorem` | [modelWithCorners_prod_coe](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/modelwithcorners-prod-coe.md) | 444 | `result-track:aa00c14d4c4a02c09b4833b748121acbd3ddee74ed210300a36414912a22d392` |
| 53 | `theorem` | [modelWithCorners_prod_coe_symm](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/modelwithcorners-prod-coe-symm.md) | 449 | `result-track:e84360c807780fc1e757519378f13f487b2625694a42c81a55794661b56f719a` |
| 54 | `theorem` | [modelWithCornersSelf_prod](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/modelwithcornersself-prod.md) | 457 | `result-track:3294f10a64c84413644162e3f3541eb4acffd4429872ef3f265f49c14a847ae1` |
| 55 | `theorem` | [ModelWithCorners.range_prod](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/modelwithcorners-range-prod.md) | 459 | `result-track:e9ad414bdf2907d2f7506cf2b6658ef078efcbfea51b6c9c396d36ecf0ebf64c` |
| 56 | `class` | [ModelWithCorners.Boundaryless](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/modelwithcorners-boundaryless.md) | 469 | `declaration-track:016ce0a20d5e1ccae512b95d2cad5fe41f2b5af92015385b94891430851121fa` |
| 57 | `theorem` | [ModelWithCorners.range_eq_univ](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/modelwithcorners-range-eq-univ.md) | 474 | `result-track:6e47a3b4eba026ad239bcac99a0a4f1f0b8e7a833e9ff0c048df0cf719e2c2ce` |
| 58 | `def` | [ModelWithCorners.toHomeomorph](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/modelwithcorners-tohomeomorph.md) | 481 | `declaration-track:ddc3c748203798a92396a3110e7938f4e21940e8f052f90b8d01c7eb7f2b8a8b` |
| 59 | `instance` | [modelWithCornersSelf_boundaryless](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/modelwithcornersself-boundaryless.md) | 489 | `declaration-track:03500a3bf244ca2c129fc535203eaa53a4cc18402bc415a0c08f3fa6cc26869a` |
| 60 | `instance` | [ModelWithCorners.range_eq_univ_prod](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/modelwithcorners-range-eq-univ-prod.md) | 494 | `declaration-track:ab4be06a32e62b1c7d79eda817297a825a2bc34ec979edb3ea436fc55b69e448` |
| 61 | `def` | [contDiffPregroupoid](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/contdiffpregroupoid.md) | 518 | `declaration-track:0b2b56fd82897cc13bf9025ea101d749b3474c1fd5e14a33bca54ad4abc5982e` |
| 62 | `def` | [contDiffGroupoid](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/contdiffgroupoid.md) | 557 | `declaration-track:d994bd39fb78e8c8aeb618e95269c1a10d624b697562118e8b8369b3404a74e2` |
| 63 | `theorem` | [contDiffGroupoid_le](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/contdiffgroupoid-le.md) | 562 | `result-track:9db51c8521e6e4be6d570625bfc411f2153409755af8d3ddc11781aaac9d7cad` |
| 64 | `theorem` | [contDiffGroupoid_zero_eq](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/contdiffgroupoid-zero-eq.md) | 570 | `result-track:54146eb4b127fa9649db67a994ef71a80fb958938ab99b78f0c8da5f6adf30be` |
| 65 | `lemma` | [ContDiffGroupoid.mem_of_source_eq_empty](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/contdiffgroupoid-mem-of-source-eq-empty.md) | 587 | `result-track:b1102be153bd7cc9698b948a62d1c07deb0015f1b3b05547b42a3851e0ab7e36` |
| 66 | `lemma` | [ContinuousGroupoid.mem_of_source_eq_empty](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/continuousgroupoid-mem-of-source-eq-empty.md) | 599 | `result-track:64183aa85a3c9eea06d5e65e34662027fc860915a8abae35549d461fb9492c5a` |
| 67 | `theorem` | [ofSet_mem_contDiffGroupoid](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/ofset-mem-contdiffgroupoid.md) | 605 | `result-track:5d1463335439d43d2506fd32390329c84cddbba735fdcee49e87c3701ea27f38` |
| 68 | `theorem` | [symm_trans_mem_contDiffGroupoid](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/symm-trans-mem-contdiffgroupoid.md) | 615 | `result-track:b4e60a82629e5b5978d7ab4ba78ec22c68af14dec8cfa88ece589c30557a7b52` |
| 69 | `theorem` | [contDiffGroupoid_prod](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/contdiffgroupoid-prod.md) | 624 | `result-track:05349f5ffd100b32370d2c6e4fec0f3988acee776f2e690bd721da2e87688fb0` |
| 70 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/instance-source-edition-8.md) | 641 | `declaration-track:808a741a58cd989d0d5023d2fb0ad09addf5cff917f84a554113b9ce994a5f38` |
| 71 | `class` | [IsManifold](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/ismanifold.md) | 660 | `declaration-track:106bc397e44fc4464a8543b1af914a9087da94cfd5199af19f4dbcebcd898b7b` |
| 72 | `theorem` | [IsManifold.mk'](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/ismanifold-mk.md) | 669 | `result-track:9a1bc480b1ba70462fc4b0b2ab00078a83f4a724d781986f1be5f03c673c44c3` |
| 73 | `theorem` | [isManifold_of_contDiffOn](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/ismanifold-of-contdiffon.md) | 678 | `result-track:00c7f83a86133b412ddcefc9f03b501475f68224a7244271ad9738a4bfa082cd` |
| 74 | `instance` | [instIsManifoldModelSpace](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/instismanifoldmodelspace.md) | 693 | `declaration-track:59853629aab9cde00dc2d108457f52c97adace4500f9773e3d94f29d74672e5b` |
| 75 | `theorem` | [of_le](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/of-le.md) | 712 | `result-track:51bb36758e8428b38fb1b1c79eac8c4247ffcb33812fec4ede48ae787cba1ba1` |
| 76 | `class` | [_root_.ENat.LEInfty](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/root-enat-leinfty.md) | 721 | `declaration-track:d2ed70afa8288eee074b7360ff551178bc133709109c7332e858814b8fba468f` |
| 77 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/instance-source-edition-4.md) | 726 | `declaration-track:35f2a42a8ca3004ca7811f2e551306c28dc1348c953ead19eaa0dce0f6857d97` |
| 78 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/instance-source-edition-7.md) | 727 | `declaration-track:7540d2d7e810e01bd9f36a840eacb80cd5a57f5627f60da8890f452f9fe8ac77` |
| 79 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/instance-source-edition-17.md) | 729 | `declaration-track:de3144fb43c64bc1183d066cb39e3862c433479897d55f0ebca1b7a5d18d4294` |
| 80 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/instance-source-edition-2.md) | 730 | `declaration-track:03f8cda5942a4b30c9b8aa08cffa4050f9f48d82640eaf278ff202bed3dfcc2c` |
| 81 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/instance-source-edition-10.md) | 732 | `declaration-track:97a8a9f517ff5495aacf02721e964de008a1df52411b263aba443ca17c067487` |
| 82 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/instance-source-edition-12.md) | 736 | `declaration-track:a5035337ae521c7947ff88a3162fb96f09df8b713b1c64b311ad1fddc9a8538f` |
| 83 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/instance-source-edition-14.md) | 740 | `declaration-track:c4e7c29812eb0510e9fd0f1b4de39bade4a9bbec8187835ff1a86a4c40f88a74` |
| 84 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/instance-source-edition-5.md) | 747 | `declaration-track:553fe207a4294385eb2641fa09e71ab78d14863c9d320e9afca540d05aaff0b6` |
| 85 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/instance-source-edition-9.md) | 751 | `declaration-track:85224718ab55a54edaaa18573ae029eb2888a70ce9f369f7b496a263c9d67483` |
| 86 | `def` | [maximalAtlas](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/maximalatlas.md) | 756 | `declaration-track:17937f4dc629ed72d6a93aadae2b7aff3f2317b12f7132342c567ba3546e1613` |
| 87 | `theorem` | [subset_maximalAtlas](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/subset-maximalatlas.md) | 759 | `result-track:8d1b6f9bfeeb4bf045aeb1f8424c935cbd9359fc2ed15d1e6c0385e551a87cb5` |
| 88 | `theorem` | [chart_mem_maximalAtlas](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/chart-mem-maximalatlas.md) | 762 | `result-track:4672798512651b7da7eef221c0e15a6952b0353e262367277a42771114805614` |
| 89 | `theorem` | [compatible_of_mem_maximalAtlas](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/compatible-of-mem-maximalatlas.md) | 766 | `result-track:a3ff6f3a49f1515b7d5c950f37e2187f8fa5590b54f1e17c3160ea0078f8abb6` |
| 90 | `lemma` | [maximalAtlas_subset_of_le](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/maximalatlas-subset-of-le.md) | 770 | `result-track:4b25c7b9576b939f00690815217a3035ed4c351f58be68be074443fd17164fd5` |
| 91 | `instance` | [empty](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/empty.md) | 776 | `declaration-track:6e6f45ff20c3bfd95f9b99911377d09d0d7bf2076ebad2b96ac58720aa16d2b7` |
| 92 | `theorem` | [of_discreteTopology](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/of-discretetopology.md) | 796 | `result-track:c3b0c9a242ce9e8f45aeb403c1694781963dc555b0ed9e4da03e52ebb757bf67` |
| 93 | `example` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/example.md) | 801 | `declaration-track:540dc9d6fe834b7290d9cedb3c5f291effa5d2512b6844c3a63f730078eb0772` |
| 94 | `instance` | [prod](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/prod.md) | 804 | `declaration-track:0d600a9982ddcb5810891e863f30660e67c7e69ac8fe083cb2e2fb20793d928e` |
| 95 | `instance` | [disjointUnion](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/disjointunion.md) | 825 | `declaration-track:1e38d16709e3b9cc76d0813c91233e900f596aa69dbb434a708c3170e0fe19f7` |
| 96 | `theorem` | [PartialHomeomorph.isManifold_singleton](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/partialhomeomorph-ismanifold-singleton.md) | 850 | `result-track:30af69751b2ce9d1377ca1188949ec69d45dddcd9f783caf776047dd5c18978a` |
| 97 | `theorem` | [Topology.IsOpenEmbedding.isManifold_singleton](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/topology-isopenembedding-ismanifold-singleton.md) | 862 | `result-track:eed873fe67ce261a1ea61035e1d53255fbe7cdcca204c315396538873a07b38c` |
| 98 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/instance-source-edition-6.md) | 882 | `declaration-track:63d8ea68ec9f1516e1fb58123a9e9571ecffe590b2fd1c599e4dcd5f598f811f` |
| 99 | `def` | [TangentSpace](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/tangentspace.md) | 901 | `declaration-track:fe1605d46fff3c167d65a85fe72f48b9811c844d6d9ec890b2f274fb1237bdbe` |
| 100 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/instance-source-edition-18.md) | 917 | `declaration-track:ed13124e7de96ee5e5d6bc854fb64db8889726c2f539f479c599221a74de6aef` |
| 101 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/instance-source-edition-15.md) | 918 | `declaration-track:c5e53244db198f9ac1e2f176632e5f86aab97ac4085c5a10e546c581c92c33ee` |
| 102 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/instance-source-edition-3.md) | 919 | `declaration-track:16c42d01f55b5dbe10b993cf42ff22baec840ffe1eed49d3935063356b123144` |
| 103 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/instance-source-edition-11.md) | 920 | `declaration-track:a4e1c4c4cf8dd3064b7d7d59381b52a9596244de28674b5d827967eed25d45fc` |
| 104 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/instance.md) | 921 | `declaration-track:02015b9762cebe7bf71badc5f8d115ebfc1597e66ea3a609b07737d988498766` |
| 105 | `abbrev` | [TangentBundle](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/tangentbundle.md) | 927 | `declaration-track:46c510bc825a39255185911e2fd459c3ad37c2b6f1a094046b5bcd66f592c721` |
| 106 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasic.lean/declarations/instance-source-edition-13.md) | 936 | `declaration-track:b25550bb7e8b7f183de5b6c039d75896575b8a0ccc97599c3267ace4ca80f670` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=22bec20f1aad5251c68c2c4d540c6fcf7f4bd09a83e5cb52e9e1a4ca73275a7d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/Basic/Variant839ef69546a0af23685c4223a2f7ec84a4376e1750e0f2c2ebe6d221a729d14d.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/Basic/Variant839ef69546a0af23685c4223a2f7ec84a4376e1750e0f2c2ebe6d221a729d14d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
