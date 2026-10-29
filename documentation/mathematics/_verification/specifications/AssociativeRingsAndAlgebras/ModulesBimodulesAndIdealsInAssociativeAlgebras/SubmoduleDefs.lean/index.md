# Verification target: Submodule Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fced5507b5bf2d98b47bb92d688f7c52484edac0",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fced5507b5bf2d98b47bb92d688f7c52484edac0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.SubMulAction` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Submodule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/submodule.md) | 37 | `declaration-track:633bb071fe9193eb104c862b13a09893137daeb423c4f0a9301c48e8e0d3b5c7` |
| 2 | `instance` | [setLike](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/setlike.md) | 50 | `declaration-track:acfa18ba5db05d2817372ed66de02f223efe04a419e92966b73ae52aa562ee15` |
| 3 | `lemma` | [carrier_eq_coe](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/carrier-eq-coe.md) | 56 | `result-track:3aa49d136ab27d523c6501563befaa81a14fda6d2c61c18616e9abe94a21da8a` |
| 4 | `def` | [ofClass](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/ofclass.md) | 60 | `declaration-track:a338c792c2c01e82d8aa46e16745f6368c201057b4777c4f38a6d3b863f1cc8a` |
| 5 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/instance.md) | 67 | `declaration-track:425a62e94cea0d7599e87eb8db4e7bdd140e2a342b53a342176204f658705c8d` |
| 6 | `instance` | [addSubmonoidClass](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/addsubmonoidclass.md) | 76 | `declaration-track:e49bb7d3a2348987896a1eb2e4fe3f951b0694312880d55bf0f7afbbfe233f95` |
| 7 | `instance` | [smulMemClass](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/smulmemclass.md) | 80 | `declaration-track:4d8067404a986062fb98b0ab6b96b4d1b164bed7039a6808078e130844788957` |
| 8 | `theorem` | [mem_toAddSubmonoid](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/mem-toaddsubmonoid.md) | 84 | `result-track:292e108be7a0e9526b046700a23147de1340a7cfa5d7f736925577e0d5559d8a` |
| 9 | `theorem` | [mem_mk](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/mem-mk.md) | 90 | `result-track:b0deffe398bce53108c379ae9569e19211e808ca4366155a5882020dbfbacfba` |
| 10 | `theorem` | [coe_set_mk](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/coe-set-mk.md) | 94 | `result-track:dcd8248e9c67460a65f501a3a6d0ed1e920340580ff9ad7c379941cf1e24fc7a` |
| 11 | `theorem` | [eta](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/eta.md) | 97 | `result-track:498b52bc7f9590e2a759d047f3413fc068b18815514d92a35d2aaa72954c693e` |
| 12 | `theorem` | [mk_le_mk](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/mk-le-mk.md) | 101 | `result-track:d645f85e25c7ed460baa63285e349df1a5f5b0a39fc3aeecd3a4b7a1d594811a` |
| 13 | `theorem` | [ext](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/ext.md) | 106 | `result-track:d98aa40b4e7817064e6b58394cc1a5c19974ca677713974b28b26b4eb1c56dc2` |
| 14 | `theorem` | [carrier_inj](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/carrier-inj.md) | 110 | `result-track:57acbff8b3ce56d8ed2e92efcea3093ff1d0971003fd95ef10780c683228d832` |
| 15 | `def` | [copy](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/copy.md) | 116 | `declaration-track:ff1d3ef5b71c2cfc1f7bc7a1e437fce2e69daeeac257c6672253251818eaae89` |
| 16 | `theorem` | [copy_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/copy-eq.md) | 122 | `result-track:0c8037b7462728f243a86fe97eba262c12bdaa4a192931e5605a387e1e3d865d` |
| 17 | `theorem` | [toAddSubmonoid_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/toaddsubmonoid-injective.md) | 125 | `result-track:068b5bfc287774de399d260ea18e881f709fb515d57bb090241e1da1ab912d66` |
| 18 | `theorem` | [toAddSubmonoid_inj](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/toaddsubmonoid-inj.md) | 129 | `result-track:dd1828984ebc7b86d422eb06f756509bdec2b48805f73c89be62c9f4addb3636` |
| 19 | `theorem` | [coe_toAddSubmonoid](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/coe-toaddsubmonoid.md) | 135 | `result-track:4437d25c79d323ab6f7a9802a94fb009952176631f8da1434d204aa79e4afd49` |
| 20 | `theorem` | [toSubMulAction_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/tosubmulaction-injective.md) | 138 | `result-track:62bc367cf2d5191c2058b13b9c561a21447508c6330efe28d378d3391950bf6b` |
| 21 | `theorem` | [toSubMulAction_inj](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/tosubmulaction-inj.md) | 141 | `result-track:54b92874ec1437a41a0ec72d2a8bb29674e392abf84ce47c0c56a7b9be4a829c` |
| 22 | `theorem` | [coe_toSubMulAction](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/coe-tosubmulaction.md) | 147 | `result-track:95a2bdd82d867da24de6ea8638353cc06289d994e828d6e2f3c76d052d3ebd47` |
| 23 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/instance-source-edition-4.md) | 159 | `declaration-track:daadf5a894f4928e5af1f1468bc9c2840c6d2016a4ef2d2d7c7d96ae45f1f75a` |
| 24 | `def` | [toModule'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/tomodule.md) | 164 | `declaration-track:3337067f3ee9400d1cd04c82ad556de05dff9cc185824d7a251d1b8b0fd7d688` |
| 25 | `theorem` | [mem_carrier](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/mem-carrier.md) | 186 | `result-track:b60a7be49d02d32d782edaf8d20434744fcbdd8f29f1d5b4af8366ff872ce908` |
| 26 | `theorem` | [zero_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/zero-mem.md) | 190 | `result-track:8c78e1483408b8057e5ce8fa7e732642f30711ddfc3cd48373ca750ab8874869` |
| 27 | `theorem` | [add_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/add-mem.md) | 193 | `result-track:55896544d098e5cf5af4af386a142489ccb61382e573bb8b37a4ea921168782e` |
| 28 | `theorem` | [smul_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/smul-mem.md) | 196 | `result-track:71019930275b7c94306b66dada8f97d152984b6cec851f0288966426a17156b8` |
| 29 | `theorem` | [smul_of_tower_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/smul-of-tower-mem.md) | 199 | `result-track:56e295be07c752a722991f119ac45b1369c3d29f5b017dd86986b17c0d717fdb` |
| 30 | `theorem` | [smul_mem_iff'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/smul-mem-iff.md) | 204 | `result-track:8e1df5ce72d870b0ae0919a1ceed801363472c7f9addeab9404e91e353f10206` |
| 31 | `lemma` | [smul_mem_iff''](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/smul-mem-iff-source-edition-2.md) | 209 | `result-track:c42b728b85df1a4aa87b5617603ffa083fcf9a88240ce766d4e4a36643e165b9` |
| 32 | `lemma` | [smul_mem_iff_of_isUnit](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/smul-mem-iff-of-isunit.md) | 215 | `result-track:b1ad0d751bc3b08511fdff3857e3656455e864ee1bf71cf06c88ec65eb0cc896` |
| 33 | `instance` | [add](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/add.md) | 220 | `declaration-track:cd3a5279fe4fdd8df6d70e9c6b67e3fc6b5a5e4dd52a199d998c51256df6336a` |
| 34 | `instance` | [zero](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/zero.md) | 223 | `declaration-track:f9e8342d4eafce77f1eed6a2314301e891267b5d306094c0077a8f600e6aac9a` |
| 35 | `instance` | [inhabited](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/inhabited.md) | 226 | `declaration-track:ed6fe9f56c2cd9cae278319194a099a456c3ad57242cb2bc6abdade0e0de600e` |
| 36 | `instance` | [smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/smul.md) | 229 | `declaration-track:04e4c5dfb2f68d9e6b1805ccf82cace3b1047e6594f172b182ed1ebeff2d3865` |
| 37 | `instance` | [isScalarTower](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/isscalartower.md) | 232 | `declaration-track:617f4710eb85c085894570cff977421306f8638dbb84e4d22e9d4b872e17f510` |
| 38 | `instance` | [isScalarTower'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/isscalartower-source-edition-2.md) | 235 | `declaration-track:633119ff8c15528a084f9dc5e2624f71c60b777b8717b8e622eece00889c8cd2` |
| 39 | `theorem` | [nonempty](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/nonempty.md) | 239 | `result-track:f84fc99facfb8e203d08abb286ecdcf55ac6615f81f518e603c0ebdcb0b95ed0` |
| 40 | `theorem` | [mk_eq_zero](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/mk-eq-zero.md) | 243 | `result-track:32ba79f8a47cd8b56551e1dc2d56f143a7e13ffd78514b13db877bd53adeea40` |
| 41 | `theorem` | [coe_eq_zero](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/coe-eq-zero.md) | 249 | `result-track:b529832cb66ac1c46937146f1ace6534e5b2d4edccbf727463b29a1c03629013` |
| 42 | `theorem` | [coe_add](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/coe-add.md) | 253 | `result-track:3c96eed4c7817e710dedcefa9cab2a78a4d025d47a306c522ba2e8053ad38bd8` |
| 43 | `theorem` | [coe_zero](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/coe-zero.md) | 257 | `result-track:e563d3d7aa4b3bdb9e547c0aa70d35f2690f0d53f50d2db27edb57079af00de5` |
| 44 | `theorem` | [coe_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/coe-smul.md) | 261 | `result-track:3ae1a0451f4a289d3584996bdb4c9013aee5a3f99d24f9931c6430cd0e33a205` |
| 45 | `theorem` | [coe_smul_of_tower](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/coe-smul-of-tower.md) | 265 | `result-track:151d0d5d488ec9a5f74fe89c97bf652cb21510b16ff494fb0d0e9171f655beef` |
| 46 | `theorem` | [coe_mk](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/coe-mk.md) | 270 | `result-track:97fc196d7fcee2f155baa79466af194f6a692f01fb76a0390a3717f83cef462d` |
| 47 | `theorem` | [coe_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/coe-mem.md) | 273 | `result-track:6caa80adc7cdfa8f7d768316c9442c150488d8a044e80489ba1e70d0e60190fc` |
| 48 | `instance` | [addCommMonoid](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/addcommmonoid.md) | 278 | `declaration-track:b2cbd29755b1f4814c4d1fce425de242c8b5510085425a9c45045e855a82658e` |
| 49 | `instance` | [module'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/module-source-edition-2.md) | 281 | `declaration-track:fe7586e5ccd2b5d02351a3c1ce9ba9f5a452888c23640f4f654fadc0e25425f6` |
| 50 | `instance` | [module](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/module.md) | 289 | `declaration-track:3ff02768ced6911b3eddc01914e2b950046a23a1f81d423beb56bac4008ff92d` |
| 51 | `instance` | [addSubgroupClass](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/addsubgroupclass.md) | 301 | `declaration-track:31ef369db7e501ddf2213f2b4755bbaf5a357dc7d1c3306e51915fec031aea76` |
| 52 | `theorem` | [neg_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/neg-mem.md) | 304 | `result-track:a5b534de522a8b7e4979e92fee9ffa37e8c3a5ed8132999dacbf2b9f9fbbd9e2` |
| 53 | `def` | [toAddSubgroup](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/toaddsubgroup.md) | 308 | `declaration-track:9e576b55ef341ef53b0e44593d30524cb008f46573286e82832a7bff0e26bbbb` |
| 54 | `theorem` | [coe_toAddSubgroup](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/coe-toaddsubgroup.md) | 312 | `result-track:b4b4be1f1965d75b8437079a3e8718992237d8af21b1e9f1b88ebdf9f7b54116` |
| 55 | `theorem` | [mem_toAddSubgroup](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/mem-toaddsubgroup.md) | 316 | `result-track:816c87c0fb30792d56846f128efabdee9d926896ba5b72391b376a0a25793317` |
| 56 | `theorem` | [toAddSubgroup_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/toaddsubgroup-injective.md) | 319 | `result-track:bbd2f9c56b9e625736ce6b6992d7d06647efbc4c519c16dfdc333f9fcbcda43d` |
| 57 | `theorem` | [toAddSubgroup_inj](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/toaddsubgroup-inj.md) | 323 | `result-track:31e0d48ea63da82ecf6e39e8d79e04f1b6aa7214ffa84aaa674eb5b14e4db709` |
| 58 | `theorem` | [sub_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/sub-mem.md) | 328 | `result-track:adfb204597b2dce6fe29aaabe62071df28897f40df6deb6a8ff39e2af5fbed93` |
| 59 | `theorem` | [neg_mem_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/neg-mem-iff.md) | 331 | `result-track:789859e7205493f47c9e19d1cec3c03e7a6354007bd81eb3a56cd0e495052a53` |
| 60 | `theorem` | [add_mem_iff_left](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/add-mem-iff-left.md) | 334 | `result-track:ec667b24265c5c0f9eba4bfa368293eccd9e0e8ea2fcc8a6a0e87aad328048e4` |
| 61 | `theorem` | [add_mem_iff_right](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/add-mem-iff-right.md) | 337 | `result-track:26f9e8421d6d6ff2a16709b39fa5d6963f04a42ad74c5c0abd079a5732e5a2ac` |
| 62 | `theorem` | [coe_neg](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/coe-neg.md) | 340 | `result-track:18176f62147b693c27d75c2436b15fad3c54f6e1e0ca0eddaae42d935966f4fd` |
| 63 | `theorem` | [coe_sub](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/coe-sub.md) | 343 | `result-track:a1cea85f83daa849df3aec433fea0ef0e47867a12bc371f884deb840ab2988e1` |
| 64 | `theorem` | [sub_mem_iff_left](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/sub-mem-iff-left.md) | 346 | `result-track:9b2c77685781d3d31add70f87f22e1339e1f0b3c41c22f455f35b9acf902cbaf` |
| 65 | `theorem` | [sub_mem_iff_right](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/sub-mem-iff-right.md) | 349 | `result-track:6b0b1dbe5c1b47a6f8f4af083f4baa958d0d8be30053d4b41f5bbea7860f2731` |
| 66 | `instance` | [addCommGroup](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/addcommgroup.md) | 352 | `declaration-track:cce3670dfa618330ce2740c5e06f237663a5eb4a62ffa6ed20d551fb758f7b98` |
| 67 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/instance-source-edition-2.md) | 361 | `declaration-track:6a9f77b15b51453b206e712e7c44349aa8700d5a99c375f5a1695cc11279cfb8` |
| 68 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefs.lean/declarations/instance-source-edition-3.md) | 371 | `declaration-track:a46ebc7ba8015452334d09f492b418337d9fcbda5b943eb4cddea2afdc15d3cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f4718a62d442d8dd8577e2afaceafd2a2151c329c40e49deb441c8a5c9847e11 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
