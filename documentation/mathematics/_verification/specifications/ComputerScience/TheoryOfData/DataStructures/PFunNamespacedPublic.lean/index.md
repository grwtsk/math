# Verification target: PFun Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b32318755458e6a2fab7bce8134c3b5d6cc9e26d",
  "lexical_observation_count": 106,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PFun/Varianta18ca84ca8f411137ea0801483a1bcbf4c6090f74707d9360a39dde6c51c6111.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b32318755458e6a2fab7bce8134c3b5d6cc9e26d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PFun/Varianta18ca84ca8f411137ea0801483a1bcbf4c6090f74707d9360a39dde6c51c6111.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PFun/Varianta18ca84ca8f411137ea0801483a1bcbf4c6090f74707d9360a39dde6c51c6111.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PFun](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/pfun.md) | 69 | `declaration-track:d374ff8ec637012cc8a424bee7a3668b14e4cddabbfb2a362ea04b4495b3d081` |
| 2 | `instance` | [inhabited](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/inhabited.md) | 79 | `declaration-track:07d47fd9a4377c4713c73dc89d51d6b9d2cc372d837643601f3b61f3f0f2c2ba` |
| 3 | `def` | [Dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/dom.md) | 83 | `declaration-track:da19de5218093a80b642205496bdf24281828bd54f96e05aa26623c6c2538aa9` |
| 4 | `theorem` | [mem_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/mem-dom.md) | 87 | `result-track:0d1cc1c95e90543fc76b5a74042a5601e0c95058f1f9c73df6e288582b4a98c5` |
| 5 | `theorem` | [dom_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/dom-mk.md) | 90 | `result-track:db999d563f304b90809cc6327396d401ae68ec2f79b1a96eea3e46286ee6d850` |
| 6 | `theorem` | [dom_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/dom-eq.md) | 93 | `result-track:d32a32e56f80467a4eb9877e984237922c88140076421e8a223e351979797639` |
| 7 | `def` | [fn](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/fn.md) | 97 | `declaration-track:f96ec36f4f4f46252113a75e518a70c407dae7d475420f075ef8af84ce88ee32` |
| 8 | `theorem` | [fn_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/fn-apply.md) | 101 | `result-track:f62440bb685078ce2596f28c025df69a7f50ed400976363ef44c3b575c8212ea` |
| 9 | `def` | [evalOpt](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/evalopt.md) | 105 | `declaration-track:9378e23509b9f2332601a4e97635c4f11d4c05658cb1b1d9e8985cbcdee9222f` |
| 10 | `theorem` | [ext'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/ext.md) | 109 | `result-track:723192836a08e5b16306b6748cb17fd84391d463b40f2f17c96309d575e95129` |
| 11 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/ext-source-edition-2.md) | 114 | `result-track:c292023858a194966a424605feacb772c7b141f108d8077afb8459d7a1222c33` |
| 12 | `def` | [asSubtype](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/assubtype.md) | 118 | `declaration-track:0b88bc2576545ea65a6285c4a4fa4162eff27aa635c5041566f4bfd0262b7c7e` |
| 13 | `def` | [equivSubtype](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/equivsubtype.md) | 123 | `declaration-track:b0088f5bad7f232b907299002c1548e8d3cfc3b20893ec35e568aa7b55bd52d5` |
| 14 | `theorem` | [asSubtype_eq_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/assubtype-eq-of-mem.md) | 127 | `result-track:cd2d8cbf2c2b860be9072d5662e57d29111b749d1058f57782392c1b6ef24c16` |
| 15 | `def` | [lift](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/lift.md) | 133 | `declaration-track:ca857eed05685bfb0d1c70a3a86789a4bdea9fcdc4f9134f10541f71d8b32e78` |
| 16 | `instance` | [coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/coe.md) | 135 | `declaration-track:4d5d127c6b4020d1b6a226da0b111b373dbaacdbea3aa1ecc0658ff29e9a3fef` |
| 17 | `theorem` | [coe_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/coe-val.md) | 139 | `result-track:25c2efc2ecf8d6fe540c2fa18ec21368fc3ae6e8539cd9a8b552c8e590cf6171` |
| 18 | `theorem` | [dom_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/dom-coe.md) | 143 | `result-track:ea29ff893569318a1f4b190b0ae37f08b627a88791ede59a2d16ee9cc364a86c` |
| 19 | `theorem` | [lift_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/lift-injective.md) | 146 | `result-track:1631a0dcfbc3b913827279ca45029174a950ea5e35da4dc78089842cdfd96656` |
| 20 | `def` | [graph](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/graph-source-edition-2.md) | 151 | `declaration-track:f3504e36653c04f0a26f1a366031f2002b0e54f70b5be0c108d02e65c906bdaf` |
| 21 | `def` | [graph'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/graph.md) | 156 | `declaration-track:dfe696ae5266508cdca3d690656e29c034a1685dba9d1f6113f92b6232d94789` |
| 22 | `def` | [ran](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/ran.md) | 160 | `declaration-track:d39e11ed23c0e9166176ff3dcacb3f67136ef376b666b2900daa3b4eda2bdcb8` |
| 23 | `def` | [restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/restrict.md) | 164 | `declaration-track:43ba994a05b0024a7585ed9e469fcd76a9ab4797aa7a3c61ca69da5600b6a961` |
| 24 | `theorem` | [mem_restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/mem-restrict.md) | 169 | `result-track:25431d83bfbad191fd195a12138981b9704ca0d10451c50a77c9ce85c9bc8bf8` |
| 25 | `def` | [res](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/res.md) | 173 | `declaration-track:b80266f824422103ab61604dce954711178a96047e81f070a4b6cd31d9528479` |
| 26 | `theorem` | [mem_res](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/mem-res.md) | 177 | `result-track:6ad851253e33ea86db20218fcd7261060b1c1f0ec82f01265dca9f6cd2ea8942` |
| 27 | `theorem` | [res_univ](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/res-univ.md) | 180 | `result-track:58ecd3974095216c30097a393ca997806c81c3e46c1a1905a2a4a708e0d3947d` |
| 28 | `theorem` | [dom_iff_graph](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/dom-iff-graph.md) | 183 | `result-track:9253fb760d06aeeef197ed7d675822710dfbe73f54b64e28f0c548615c52c016` |
| 29 | `theorem` | [lift_graph](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/lift-graph.md) | 186 | `result-track:5e2605eaa3b1a3effb730d74178c87da1537ccf5d614f15e56a89e95742c93b1` |
| 30 | `def` | [pure](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/pure.md) | 190 | `declaration-track:85142cc7a04aa73b51e55b85124c968e2c98959f37cc5941b525c1bd14fe3950` |
| 31 | `def` | [bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/bind.md) | 193 | `declaration-track:97fa8a87dd6c393e0a9fb02d6d620f57361ea1f4e6d53dda5f22a29ba8d2f06a` |
| 32 | `theorem` | [bind_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/bind-apply.md) | 196 | `result-track:09dd4daaba4f1e7cc4354e9427e1f57557f9c109739dcc1139acf70d27334901` |
| 33 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/map.md) | 200 | `declaration-track:49dca6e03bdc19644e0446ec93e975aa73af7cee82b0818bbbcb1765de88eca0` |
| 34 | `instance` | [monad](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/monad.md) | 202 | `declaration-track:c02dc1d3de7e522421a219ce434663b81646fe639477996f72e952bb577dc457` |
| 35 | `instance` | [lawfulMonad](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/lawfulmonad.md) | 207 | `declaration-track:20084f6fc24476542e1135d15e2014b9ebce65e42b5863d2f7ba5c48ad85c0f1` |
| 36 | `theorem` | [pure_defined](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/pure-defined.md) | 213 | `result-track:6d597c9dccb072f124838cdf6a82acdca98b15b649d076b182b9d96d735d3412` |
| 37 | `theorem` | [bind_defined](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/bind-defined.md) | 216 | `result-track:560dc6ab700c6a14bcae263ea636c0bf17246bf94b62fc4b0005a411dcf12f8d` |
| 38 | `def` | [fix](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/fix.md) | 226 | `declaration-track:5413a7bf44dc23bc29c3c5008a055f1b35197a68f5b0254d37d44c68eea39c93` |
| 39 | `theorem` | [dom_of_mem_fix](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/dom-of-mem-fix.md) | 236 | `result-track:593740bc20800401d30a00cef55f97fc4b7e5169126421e83a8caabc09bac53e` |
| 40 | `theorem` | [mem_fix_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/mem-fix-iff.md) | 240 | `result-track:daca903a84cdc402ae9a11120ec838b16b423bab304e929112fd3c96f4fb5dd4` |
| 41 | `theorem` | [fix_stop](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/fix-stop.md) | 272 | `result-track:2ea4c4b4cbe0b8e305cff52cb8f19a2db0f1fdea6af63d391c0c963942e85d87` |
| 42 | `theorem` | [fix_fwd_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/fix-fwd-eq.md) | 277 | `result-track:446b8062f0013bd2fd6c28b1cbf208e240c774b44c5c76e3a6649cfebe3e85ad` |
| 43 | `theorem` | [fix_fwd](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/fix-fwd.md) | 286 | `result-track:971f5beea0bca69662a7628086415d9dc0c8d427f2991e1dd36978ee79f7e524` |
| 44 | `def` | [fixInduction](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/fixinduction-source-edition-2.md) | 291 | `declaration-track:ab3d2e085851f6b539d48c1cbe80fb9ae9dc2dda0042fa27815fabf6832ed6a5` |
| 45 | `theorem` | [fixInduction_spec](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/fixinduction-spec.md) | 300 | `result-track:20764b17514a320795066c6c9ba299e25e63bb806fed8ece1fe7e530a2ea927a` |
| 46 | `def` | [fixInduction'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/fixinduction.md) | 312 | `declaration-track:0d44046f073584431952f30a68181374fc83e8887f0649ebcce0fee087acc157` |
| 47 | `theorem` | [fixInduction'_stop](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/fixinduction-stop.md) | 322 | `result-track:11d1d048fcc62cdd3dc3d6558b3e64aefaa9c9bd56710f2b928005a3ca2f2630` |
| 48 | `theorem` | [fixInduction'_fwd](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/fixinduction-fwd.md) | 334 | `result-track:52ceed013cefabef659f5f9b911241b1fff8e1b53b6ef6a29d8995dd4d7bc22b` |
| 49 | `def` | [image](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/image.md) | 351 | `declaration-track:f02fbbacec26a42a10c9ad32a846a07d9ea4c7568e87195047cc410a4c30586f` |
| 50 | `theorem` | [image_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/image-def.md) | 354 | `result-track:fd7dfe4ebb6218ba8ef7a8eadaa9fdcdccd4af22c8d015829fac63a5e775f7ef` |
| 51 | `theorem` | [mem_image](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/mem-image.md) | 357 | `result-track:d9e12890036aad1f4c6d482bd7e1224fcb239f790ad684deca46216518384f76` |
| 52 | `theorem` | [image_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/image-mono.md) | 360 | `result-track:b481fbae77bef1e9699d961e7d19d6260669123e098d5d27e3a0cbeb8465cefe` |
| 53 | `theorem` | [image_inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/image-inter.md) | 363 | `result-track:14225b332d8339bbb64098faefa432fdbfaba40f39653712f440694a88e80de1` |
| 54 | `theorem` | [image_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/image-union.md) | 366 | `result-track:157ccc5ebb45888301b2e5f3209448c1155feecd612d709cb504cdbedb612f27` |
| 55 | `def` | [preimage](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/preimage.md) | 370 | `declaration-track:ce1878c60f8cac2a0fba494ca975820e10f8b3c1db942aefc4882cbca23f69c2` |
| 56 | `theorem` | [Preimage_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/preimage-def.md) | 372 | `result-track:0c2f3d6e5620002490a5f88ef588d13916c117ca8050d981f950eecd28bbcc07` |
| 57 | `theorem` | [mem_preimage](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/mem-preimage.md) | 376 | `result-track:92e8cc0b262e120c76fb5c4585bd105315ba2c7dbedd878341a53ed3fbad0107` |
| 58 | `theorem` | [preimage_subset_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/preimage-subset-dom.md) | 379 | `result-track:68bf101b2f8e56e0cba86f8d0ab5e0139a725d38c03adf6ba0fbf046334e2700` |
| 59 | `theorem` | [preimage_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/preimage-mono.md) | 382 | `result-track:5c5b9285f5b32eaa2f22cd0106be52299cf0504fcdc791ca393bdfc6addf8198` |
| 60 | `theorem` | [preimage_inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/preimage-inter.md) | 385 | `result-track:db84016246a77348087c41f844fe3f1a45b0d6b757b211d3cce7dfe728507491` |
| 61 | `theorem` | [preimage_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/preimage-union.md) | 388 | `result-track:28bf16b396bf36c73efcbe9fe61696df6481ead53613f41d9edde26ec545ef8d` |
| 62 | `theorem` | [preimage_univ](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/preimage-univ.md) | 391 | `result-track:ea2fb77d30d4e1420115b19cfa63dea1192e79327f5c1d0bace906dd169fb63b` |
| 63 | `theorem` | [coe_preimage](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/coe-preimage.md) | 393 | `result-track:34cae0c6e7bbb20bd062d8f285070a25ef8f239866bfa84db0a7ca8e608c61bf` |
| 64 | `def` | [core](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/core.md) | 397 | `declaration-track:94e7468e1180ae6c083322d30c35af7f5abf6606230f882aa5a3ae5dd686dee5` |
| 65 | `theorem` | [core_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/core-def.md) | 400 | `result-track:390a90d8a292724fcc6d7e29e23d097016f7d61780e34106172741114e3a6df7` |
| 66 | `theorem` | [mem_core](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/mem-core.md) | 404 | `result-track:c3346300f5171bc92bf02b3fd83ac40b6ad269681206e91f4bd96082bee176b0` |
| 67 | `theorem` | [compl_dom_subset_core](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/compl-dom-subset-core.md) | 407 | `result-track:f79e6bb50454a3e174a2e5fb85ad5f92eab9447467131e5aa5b6e4d5285f8155` |
| 68 | `theorem` | [core_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/core-mono.md) | 410 | `result-track:af607aa847bd688a466fb6c4caa4fa05e2f5336074826971b6a1c321e44800f2` |
| 69 | `theorem` | [core_inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/core-inter.md) | 413 | `result-track:9ef3a5364e7b4fbe3e6806259bc7ddf2fc510747b969f91fda754f9dd1ce1016` |
| 70 | `theorem` | [mem_core_res](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/mem-core-res.md) | 416 | `result-track:a1095252d324fab2bb98738440eb814681373d6c56085a7ca4f90d35fe4543f9` |
| 71 | `theorem` | [core_res](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/core-res.md) | 419 | `result-track:e790e8f3d1a46f39de30487fb2fc11265e24198a4b331e34a4fa1cab464bfb46` |
| 72 | `theorem` | [core_restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/core-restrict.md) | 424 | `result-track:eac2ae7db0295354d4e2f3ed38e86b84997c4d9fec8d76d1b163a3486d5fe764` |
| 73 | `theorem` | [preimage_subset_core](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/preimage-subset-core.md) | 427 | `result-track:18e63f8f63cf2b553c0e3b271cb6c1992bde7caf8dd24d8c47a8a108fea85d90` |
| 74 | `theorem` | [preimage_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/preimage-eq.md) | 432 | `result-track:54f3e7ebfa05533cd6e80aba90355f16d4fe419b4aea258cf017afc425b07687` |
| 75 | `theorem` | [core_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/core-eq.md) | 439 | `result-track:c82e845a29d5cd388f557754764a7a74e75020b13a5494013f65a62eb5d2f660` |
| 76 | `theorem` | [preimage_asSubtype](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/preimage-assubtype.md) | 443 | `result-track:07e692b07499daa15dede071446dfdf9a493e19aec4205f6a6cb25b125888fd0` |
| 77 | `def` | [toSubtype](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/tosubtype.md) | 454 | `declaration-track:ab067ffa1de8c2356e934f96e521a6a7f958e17686f33de3ad994113033784b9` |
| 78 | `theorem` | [dom_toSubtype](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/dom-tosubtype.md) | 457 | `result-track:d5e44a65e4a3f56d97c3ee91a564fa641fc7ed920dd650d8ac11939614333d35` |
| 79 | `theorem` | [toSubtype_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/tosubtype-apply.md) | 461 | `result-track:02f31bea1901ce010761a40e18ea516bdfa542ef57ae4e27fc7ba87bedfe8085` |
| 80 | `theorem` | [dom_toSubtype_apply_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/dom-tosubtype-apply-iff.md) | 465 | `result-track:3404336f6ce3a848938981449c115f8d7cd2f045470f7b0661a526bdbb3a2671` |
| 81 | `theorem` | [mem_toSubtype_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/mem-tosubtype-iff.md) | 469 | `result-track:cc223e21ef22e5c833ca21f5f7f66b7ac89061b93104e7c93a12cd95a3f8c539` |
| 82 | `def` | [id](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/id.md) | 474 | `declaration-track:24337b9efd83f73b64a8dbf9f1ec0b9e76032243ff62e4f5c07e943d64010d1b` |
| 83 | `theorem` | [coe_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/coe-id.md) | 478 | `result-track:7f0ec39d8e5246757a82cf480282aa41d667cbdf227866a92c6dd0edfe860f48` |
| 84 | `theorem` | [id_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/id-apply.md) | 482 | `result-track:edf5479558215fbea1cb1dd61e7249e064cf6042ed9d3ca9f0f64518f62cbf80` |
| 85 | `def` | [comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/comp.md) | 486 | `declaration-track:dace817b47685d2646785a4bb1c9441b7a9658de16f07a2b3d791595674c3db4` |
| 86 | `theorem` | [comp_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/comp-apply.md) | 489 | `result-track:2b491868dcb14376505a79dd0940e737c0415f30045717d9b136912acb316f40` |
| 87 | `theorem` | [id_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/id-comp.md) | 494 | `result-track:a21b4e921d47f4afc341e5661eea9ccc04c3bd5e718be06a54f959c6bdd450fb` |
| 88 | `theorem` | [comp_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/comp-id.md) | 499 | `result-track:1b977920b31b40b8a7edc7392a4e9492547be38cb1fc487f51512f649a4ac9cf` |
| 89 | `theorem` | [dom_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/dom-comp.md) | 504 | `result-track:e6755b1194819351e34da3c08820d65b2d11b3bdca88cb3de3b9375ef4bc1722` |
| 90 | `theorem` | [preimage_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/preimage-comp.md) | 510 | `result-track:1e357e2472fa455607aa6dae0d563b3431a58c41dff1853690585eefe8d92ee0` |
| 91 | `theorem` | [Part.bind_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/part-bind-comp.md) | 515 | `result-track:de63170a93a967002cecd96cc615997087074529aceebf7f14fdbb96a276a24b` |
| 92 | `theorem` | [comp_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/comp-assoc.md) | 521 | `result-track:e47e600b83b12999a4508303f59d4e3a9df16e4b62faced88e2d975994abfa04` |
| 93 | `theorem` | [coe_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/coe-comp.md) | 526 | `result-track:80b5b4d0a7225829e43fc44d48a9a866ba3e394d2a0dd4bd6777dd78b70ca552` |
| 94 | `def` | [prodLift](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/prodlift.md) | 530 | `declaration-track:39e55eb30b525fc1f1dd3d7f1f8a453c15a4a8c60286c518cf6a1db843c002ad` |
| 95 | `theorem` | [dom_prodLift](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/dom-prodlift.md) | 534 | `result-track:89c31627a2c7ae4b964e6bb143d04dd5650720ea5efac4cd3f5c31de335b188b` |
| 96 | `theorem` | [get_prodLift](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/get-prodlift.md) | 538 | `result-track:14a5ddfea4063ce86961e6f0a7cce420574a571ac3f8a738e6e5213f54abc4c9` |
| 97 | `theorem` | [prodLift_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/prodlift-apply.md) | 543 | `result-track:79766fbfbc4544cb14f612e6e00d61dd5fba0e7faf8412960c9c883429772f8d` |
| 98 | `theorem` | [mem_prodLift](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/mem-prodlift.md) | 547 | `result-track:ff327487dcfb8c07f1703f4fb14e66d2efa25ebd70fde8487cc66348fc4243dc` |
| 99 | `def` | [prodMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/prodmap.md) | 554 | `declaration-track:dc2b83344d8096460250039be8f36c36d1d6baaedbaab6b8dc0c35e6e7ac46d1` |
| 100 | `theorem` | [dom_prodMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/dom-prodmap.md) | 558 | `result-track:9ada4a016b0ab27ad70bfbdd126423d9ce4bff55b34e3153821d0affd396a58c` |
| 101 | `theorem` | [get_prodMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/get-prodmap.md) | 562 | `result-track:3acd0e7e7a7b2e8fc4597c84e526746d3424369851f987ae2f2bf7a82e7185de` |
| 102 | `theorem` | [prodMap_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/prodmap-apply.md) | 567 | `result-track:b211a4be65c3e0b069e507ffe214bd89b9235b1283a96c389f05be89b69ea6c5` |
| 103 | `theorem` | [mem_prodMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/mem-prodmap.md) | 571 | `result-track:75ec58eca4aa07b4b2ddaadc56585df6f30135e5d166556524799c7ddae32657` |
| 104 | `theorem` | [prodLift_fst_comp_snd_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/prodlift-fst-comp-snd-comp.md) | 579 | `result-track:e02f688ca16c5661f8a0fa3c1c2f11bc836ebb2cf0772f6b6751766f167e2a7a` |
| 105 | `theorem` | [prodMap_id_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/prodmap-id-id.md) | 586 | `result-track:9ffcea649d353354da1ddaf4d481f2bb4c859469a5a2b143836693e61a3c8637` |
| 106 | `theorem` | [prodMap_comp_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/PFunNamespacedPublic.lean/declarations/prodmap-comp-comp.md) | 590 | `result-track:46ee1f8b822f0eecb01ccdd4554ec148b9b8cff421d3284bcba11c02865ff439` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c842acd79660b937fa4dc245dbda63044479e5d56ccf2872fc9b2b7a4d681f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PFun/Varianta18ca84ca8f411137ea0801483a1bcbf4c6090f74707d9360a39dde6c51c6111.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PFun/Varianta18ca84ca8f411137ea0801483a1bcbf4c6090f74707d9360a39dde6c51c6111.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
