# Verification target: Ring Theory Tensor Product

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec57b0a0b2341c84532324e3f23cdb5a18a123d5",
  "lexical_observation_count": 101,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant129d68fc87f91b5e6979350f9512bfdc56249b147ff29cac87ef6360a427d4db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec57b0a0b2341c84532324e3f23cdb5a18a123d5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant129d68fc87f91b5e6979350f9512bfdc56249b147ff29cac87ef6360a427d4db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variant129d68fc87f91b5e6979350f9512bfdc56249b147ff29cac87ef6360a427d4db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FiniteDimensional` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DirectSum.Finsupp` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [baseChange](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/basechange.md) | 64 | `declaration-track:932a394500b0bfe8fbbd8701791600bc678564840a81881d9531ed8463c4f990` |
| 2 | `theorem` | [baseChange_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/basechange-tmul.md) | 71 | `result-track:d7ce18f00bb5207e98329928bae80c8a6b71a6fea570b41740fafb131cd1febb` |
| 3 | `theorem` | [baseChange_eq_ltensor](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/basechange-eq-ltensor.md) | 75 | `result-track:f767659c31b1b2e0105402cb88fbfe6e6acde2f3db83813bcb21ba569e420c32` |
| 4 | `theorem` | [baseChange_add](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/basechange-add.md) | 80 | `result-track:750d29ca3bdb197e994242d1de1cb0680c303c7ed03e8f016db5ed3a16f8a70a` |
| 5 | `theorem` | [baseChange_zero](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/basechange-zero.md) | 87 | `result-track:0b403ab6431ceecfc8d78c6f2f146a229f3d400f11a48d7dbeee8190e2c8eb86` |
| 6 | `theorem` | [baseChange_smul](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/basechange-smul.md) | 93 | `result-track:1a6b987850fb9ce81ae80f7b54b1e9dc164652b368871f39e033dd978ce07d19` |
| 7 | `def` | [baseChangeHom](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/basechangehom.md) | 102 | `declaration-track:103f634784881eab1c7e4e58b2bd2dc99c7e34b18b78421e02f40a706fd77b43` |
| 8 | `theorem` | [baseChange_sub](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/basechange-sub.md) | 121 | `result-track:a9154df787f60d29ad6e3f8aed46ac9599a12ed538c6db2d3b381ed009d4072b` |
| 9 | `theorem` | [baseChange_neg](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/basechange-neg.md) | 129 | `result-track:ceee632401cfa5aa0c809813b5cf7e83e8a4e12bbe4c30b5ee24bb661f4dab4d` |
| 10 | `def` | [mulAux](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/mulaux.md) | 161 | `declaration-track:58e0220d5fe6aab4fd6bc7651925fc3c4b74c4d2b7e2488865dce48b46a40274` |
| 11 | `theorem` | [mulAux_apply](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/mulaux-apply.md) | 166 | `result-track:b0094279c5f68b2466927afb9bd0361d4143c45b31fed88e3e61f462e55dd975` |
| 12 | `def` | [mul](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/mul.md) | 175 | `declaration-track:855d840649588706b6a20369fafc9c4e26c6769a7dd05739212fcb45f66e7df1` |
| 13 | `theorem` | [mul_apply](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/mul-apply.md) | 193 | `result-track:c76c9e2aedcab5bc15a25ec27716bee676a0e3c6516379d17cacea8bd75704fe` |
| 14 | `theorem` | [mul_assoc](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/mul-assoc.md) | 200 | `result-track:5dbcfc16a077120c84bcc2b2709eba81eebe48e510fbf53e0af8999670beb903` |
| 15 | `theorem` | [one_mul](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/one-mul.md) | 209 | `result-track:e08dc6deddd31aa0e6b8a43717d546a8dfa76b150da9042449a9e8445b25b04f` |
| 16 | `theorem` | [mul_one](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/mul-one.md) | 213 | `result-track:f081ce3cf05bbb0c169740697bcfa36cfb08425bf0070948dd5d5f2f277e6bf9` |
| 17 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/instance-source-edition-3.md) | 217 | `declaration-track:624af4ba574d41330dcad748d9745042cec29d307b13dd810c4c2f6feab1134d` |
| 18 | `theorem` | [one_def](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/one-def.md) | 219 | `result-track:c7141b9cbaf7b801471071c36808b1e6797c1c68f52977622c9da4a56eebe18f` |
| 19 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/instance-source-edition-5.md) | 223 | `declaration-track:ec54162eb9426ccb63488b477c17b6397fe9924a8d824832475553e68a25c33a` |
| 20 | `theorem` | [natCast_def](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/natcast-def.md) | 228 | `result-track:8172c59ee6f3c8632b406a34260c3771b306e1078dd14d3ff41e624acae2fcc0` |
| 21 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/instance.md) | 230 | `declaration-track:360b3473d9310e793b40e9968b74f98c6ece438e9af1191ab5d0a2a24559fed2` |
| 22 | `instance` | [instMul](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/instmul.md) | 233 | `declaration-track:f47c5dc745fedc33ec6fc7778e88615863700f7c718a45bc02fb9485ecd6a03c` |
| 23 | `theorem` | [tmul_mul_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/tmul-mul-tmul.md) | 237 | `result-track:85bc40ac2592d3c78a2f61d234b7f1a54932d50737d3f87a7a6be3c07baf27a3` |
| 24 | `instance` | [instSemiring](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/instsemiring.md) | 244 | `declaration-track:f3d24fb2452d92d3fd2f26137e82f32442d000d2d4c62f77a88d8f6cda59417d` |
| 25 | `theorem` | [tmul_pow](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/tmul-pow.md) | 256 | `result-track:db7dc5796b3af66935901b6b55816b02e7798d20066e73d8a8c053e64fdc905d` |
| 26 | `def` | [includeLeftRingHom](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/includeleftringhom.md) | 264 | `declaration-track:c99ea7b4f9765d255a60d1999847db76d47403b51ac5394ba6cfe3d0002ecae0` |
| 27 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/instance-source-edition-2.md) | 275 | `declaration-track:585c18dc88e6927d987e1fb11b720ccc9e80bdb93b6481ed3c0aa72ca2d924b4` |
| 28 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/instance-source-edition-4.md) | 291 | `declaration-track:9ff6aaa9fbaf37dffbfaf339bbce31f31caf00ce056ff84de1cfeda7d20713c3` |
| 29 | `instance` | [leftAlgebra](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/leftalgebra.md) | 308 | `declaration-track:219ff9d89b3fa76395563e71bada9070fadf4531155607740bfd3683882740ad` |
| 30 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/example-source-edition-2.md) | 319 | `declaration-track:154898a4cda16531c968a15fb6879e312f04a7e9ab5aab9c895f664c5e8cf858` |
| 31 | `instance` | [instAlgebra](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/instalgebra.md) | 323 | `declaration-track:eb2790ba7a160a210d6f9afe840912ce02e718423e09f82107ea494a3c02a531` |
| 32 | `theorem` | [algebraMap_apply](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/algebramap-apply.md) | 327 | `result-track:aeca318c7ee2f418ad3aa7c79715e56a29753cbda0c91d8349dfa50f521aa6dc` |
| 33 | `def` | [includeLeft](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/includeleft.md) | 335 | `declaration-track:80b5f9628b0d5bace76936c09d1a1265e9caadfacd60e97be9eb4ad3bc96dced` |
| 34 | `theorem` | [includeLeft_apply](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/includeleft-apply.md) | 340 | `result-track:76a317e9e4758d4ef3badae961366b83a7f60b31bae7a5bc8bd522f955cd5668` |
| 35 | `def` | [includeRight](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/includeright.md) | 346 | `declaration-track:a4dbc996f9a0d1deba108b496e009d13d0065817486a9dd371c167826666fcfe` |
| 36 | `theorem` | [includeRight_apply](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/includeright-apply.md) | 361 | `result-track:3a2f8208822f19ebd55620d07c7c0b6d4c19c32d0baff3d3e58e42773d785c93` |
| 37 | `theorem` | [includeLeftRingHom_comp_algebraMap](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/includeleftringhom-comp-algebramap.md) | 365 | `result-track:b80e19cee61fcd3b110d61415d7b759fa53fe89469698690fad2d9a2c58d87d6` |
| 38 | `theorem` | [ext](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/ext-source-edition-2.md) | 384 | `result-track:9aaf34e0742efc77ed16d8ad7a84ca39337fdaf2e95177094e84c37711dc9679` |
| 39 | `theorem` | [ext'](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/ext.md) | 394 | `result-track:600b672be8813b0559a32955a3682024aea0b436709851b4768741764c999a57` |
| 40 | `instance` | [instRing](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/instring.md) | 410 | `declaration-track:1109a672a3b570dad5b56ce20594753a679e08a2d21656fe0f3fd736ddc70bed` |
| 41 | `theorem` | [intCast_def](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/intcast-def.md) | 420 | `result-track:1b4611477bdcb83351a6dfb3a0b23bbd27ddd8c102b2c793842df16d596d4c92` |
| 42 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/example.md) | 423 | `declaration-track:00b1b96efae3a6e5120524eebe86d12b6a09d5f8b663a0502d64ff4dcf8b1ae2` |
| 43 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/example-source-edition-3.md) | 424 | `declaration-track:2338834a74948cbc2cacd66e5347b9e55e44f63700cb7d7c32350b8602e6c796` |
| 44 | `instance` | [instCommRing](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/instcommring.md) | 436 | `declaration-track:79a3b634f4a7a44ef9c373d550bfa291e8c88b3af3f5e9b6b0d6f9bbe20e498f` |
| 45 | `def` | [rightAlgebra](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/rightalgebra.md) | 458 | `declaration-track:52f53e1132ba2f0737e3a7fe905f3e917c2285d1a55efd873a590b7a6f790dbf` |
| 46 | `instance` | [right_isScalarTower](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/right-isscalartower.md) | 464 | `declaration-track:db13706241ba7c9d7fdc48042da51704141a6822de151a8205340c082975a762` |
| 47 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/example-source-edition-5.md) | 475 | `declaration-track:eda646e8e49528881b1a74972f6b482ad1e5e41a10d10491eb0789e404adb869` |
| 48 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/example-source-edition-4.md) | 480 | `declaration-track:b69f4cb1d849e54a5397aa472fde2aa82852c3b15445431ef1df0b7fd7d9d979` |
| 49 | `def` | [algHomOfLinearMapTensorProduct](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/alghomoflinearmaptensorproduct.md) | 505 | `declaration-track:00b9c8032df6570d148d9b8b834ec382d460973d79439986a52122c2f315dee7` |
| 50 | `theorem` | [algHomOfLinearMapTensorProduct_apply](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/alghomoflinearmaptensorproduct-apply.md) | 529 | `result-track:56cfc63025683f080737d7a73a9586659b2bd1ae34afcc7b3db212a6c440eb83` |
| 51 | `def` | [algEquivOfLinearEquivTensorProduct](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/algequivoflinearequivtensorproduct.md) | 537 | `declaration-track:39cb3107ba48edccdf2942721b01cdcf967ec3346456019053a26c6b87982189` |
| 52 | `theorem` | [algEquivOfLinearEquivTensorProduct_apply](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/algequivoflinearequivtensorproduct-apply.md) | 544 | `result-track:1f5ae01d37ab0e2f9049d50ebc6b7ce650e93b93cd05f04b586adb7718a7d870` |
| 53 | `def` | [algEquivOfLinearEquivTripleTensorProduct](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/algequivoflinearequivtripletensorproduct.md) | 552 | `declaration-track:0f83317b470b62598d9500d89f0fc8097b32753ea7e7c797cf26117d7cd2be11` |
| 54 | `theorem` | [algEquivOfLinearEquivTripleTensorProduct_apply](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/algequivoflinearequivtripletensorproduct-apply.md) | 578 | `result-track:2dfc5dd1c2768ad754e387d21f98b326129e0a9f2e885ca7cda35ba2a9a010d2` |
| 55 | `def` | [lid](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/lid.md) | 601 | `declaration-track:af2bcec241805ae3972d04cfd591965e4cbbad571cbe33516c5510514030bf86` |
| 56 | `theorem` | [lid_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/lid-tmul.md) | 610 | `result-track:38acae1435edb31f7445a5fef8fad2f5184464d9f9d4bd9e72c182fd65043ccb` |
| 57 | `def` | [rid](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/rid.md) | 620 | `declaration-track:4f3e3587861c5c3448680d3a296155f26a01c43cb537168ee163a1c7ba6b6455` |
| 58 | `theorem` | [rid_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/rid-tmul.md) | 628 | `result-track:1e3cdad5a77274c8c9ac9bc712cbf284c884fbe185deaf0a6025a04e326544b3` |
| 59 | `def` | [comm](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/comm.md) | 638 | `declaration-track:3bf295731caf36b1625d47e6ea833be3d9a24efaaad7049adec1e8dc392fffa8` |
| 60 | `theorem` | [comm_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/comm-tmul.md) | 648 | `result-track:2f02afa596befbf8e4d4f63d7417ca7d7116fa9484b8202c45723ff6165c70ef` |
| 61 | `theorem` | [adjoin_tmul_eq_top](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/adjoin-tmul-eq-top.md) | 653 | `result-track:9142e4abc47f0e4a9852290cb5267d6a84522b2a06211e63f0bb9280146382ea` |
| 62 | `theorem` | [assoc_aux_1](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/assoc-aux-1.md) | 663 | `result-track:c49f2c75215867b675542949843d0424a9b95e5dfcc42eda4999ede37497afcd` |
| 63 | `theorem` | [assoc_aux_2](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/assoc-aux-2.md) | 670 | `result-track:0e46443a5be71f8cd71ff68d3ec3d36957c4b58dfaa2c80c2b12bec24749c9aa` |
| 64 | `def` | [assoc](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/assoc.md) | 680 | `declaration-track:2cefc8963e8cfb59eaf0f4d1e5cf3cf2f3f15778080aae06193eacfe27969166` |
| 65 | `theorem` | [assoc_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/assoc-tmul.md) | 690 | `result-track:75beefb1ab7b24edb94a5b25dd3342b89964ea94bac4a644324cc3fbca67d656` |
| 66 | `def` | [map](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/map.md) | 701 | `declaration-track:7f5875b36dc6b0fd95bf556ee60b8477515f3120b5b7ce3a78feaabade503d39` |
| 67 | `theorem` | [map_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/map-tmul.md) | 707 | `result-track:126619a366f2d066b82cd5ec39f24bd2dac4a9c919301a532fbda07102e91db7` |
| 68 | `theorem` | [map_comp_includeLeft](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/map-comp-includeleft.md) | 712 | `result-track:980b6547f0944662f5d54d6fbad826b1d41a6080a0a405e1efae7ddad19b3c24` |
| 69 | `theorem` | [map_restrictScalars_comp_includeRight](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/map-restrictscalars-comp-includeright.md) | 718 | `result-track:6f89c335bcaba8d0220e3ac1f4e77e95fd3d41eafb35dbe053a3f0e868769ed1` |
| 70 | `theorem` | [map_comp_includeRight](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/map-comp-includeright.md) | 723 | `result-track:bc5a0831002ff89e15fa8defc1274ec303a1b2a88f89f4e19453d7749fe2414c` |
| 71 | `theorem` | [map_range](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/map-range.md) | 729 | `result-track:e9950c06a1895620db3e47ab7106cdfdaf44bef625404ede12543e5c51307518` |
| 72 | `def` | [congr](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/congr.md) | 743 | `declaration-track:cb3b2ffedbe60333e0be8e5136e2f1368224fb0c9a0b2b0c3c0d54635a98da47` |
| 73 | `theorem` | [congr_apply](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/congr-apply.md) | 749 | `result-track:b046ad92664c756b533507d2bc90f37dbe9d67e8a3ade55de5c56e66b6107225` |
| 74 | `theorem` | [congr_symm_apply](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/congr-symm-apply.md) | 755 | `result-track:04478e0e7684b1e06fea035963571a3dcec330f6c935bb2f6bc4e14a9dc4d634` |
| 75 | `def` | [lmul'](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/lmul.md) | 775 | `declaration-track:74a09636bb396e0d5abfbfa826d9558f57ec46148a75e05b8bc3fd80c450bd49` |
| 76 | `theorem` | [lmul'_toLinearMap](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/lmul-tolinearmap.md) | 783 | `result-track:51ed106f0db0f1241915b530f4a065e7c77939131fa6ce85dd41950eda699d72` |
| 77 | `theorem` | [lmul'_apply_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/lmul-apply-tmul.md) | 788 | `result-track:4d96f3bf87d88fd27ab27322c024ea7d533d0a64a6dc5a44c8e5389ac1a7ccc8` |
| 78 | `theorem` | [lmul'_comp_includeLeft](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/lmul-comp-includeleft.md) | 793 | `result-track:0973fba59482b9d4ff34b4161f5ec2d60a55121a6b91ffda94b998ac26de81b6` |
| 79 | `theorem` | [lmul'_comp_includeRight](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/lmul-comp-includeright.md) | 798 | `result-track:2836618357c39551e74eb3adff034bb3fe5dc1e6a9b41f51f8e60117d43d78e6` |
| 80 | `def` | [productMap](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/productmap.md) | 805 | `declaration-track:b9ed265caf6d043c4602adb185e47828b5b438416cb0adfa3e5f188c29edd522` |
| 81 | `theorem` | [productMap_apply_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/productmap-apply-tmul.md) | 810 | `result-track:bf824b0a9d06162471ee87c458e23ef79e12f4f7879222336a0708ec0d58f61c` |
| 82 | `theorem` | [productMap_left_apply](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/productmap-left-apply.md) | 814 | `result-track:a8a322566afc120e2fa7c4a55a0ce408f74b0fa7f9612acecebd3b901b4a35c0` |
| 83 | `theorem` | [productMap_left](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/productmap-left.md) | 819 | `result-track:2bfd754b1698c70a280894489cce6b0017b7a5d0a0454662a1e7bf58f0b3df07` |
| 84 | `theorem` | [productMap_right_apply](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/productmap-right-apply.md) | 823 | `result-track:112e0a4e56ebc33968ef5b7442d2efb5ffb4cc08f6f689c6af9b1e6d05b9df99` |
| 85 | `theorem` | [productMap_right](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/productmap-right.md) | 828 | `result-track:b38a2eb39df3e0f93534c642193d907179ca350870a4e4deee20f93b679e8272` |
| 86 | `theorem` | [productMap_range](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/productmap-range.md) | 832 | `result-track:4896d22d7531517bd50b73dac16a510c9e1963191e613ad4bd1456845ec589cf` |
| 87 | `def` | [productLeftAlgHom](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/productleftalghom.md) | 853 | `declaration-track:053f5c779292ff875451f7421c53195ad4599242937a0150485407e8741b6322` |
| 88 | `def` | [basisAux](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/basisaux.md) | 872 | `declaration-track:d2d9c7940c3615f2551c7efb0c62af64d8531103da942c2e8f029b4dc26de610` |
| 89 | `theorem` | [basisAux_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/basisaux-tmul.md) | 880 | `result-track:f8db84cda3049a4e48ef8b234b674ed4917fe6df235acc997b7a1a4dadfcf1ef` |
| 90 | `theorem` | [basisAux_map_smul](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/basisaux-map-smul.md) | 886 | `result-track:dcc768cf42bb0d265c9593fd6c08e2f9242a89e4701470c5fc938ead190b3259` |
| 91 | `def` | [basis](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/basis.md) | 895 | `declaration-track:afc5217ec8c21a1b579204f69e3802b5c2c615bc5c93c1859d179f0649072ff3` |
| 92 | `theorem` | [basis_repr_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/basis-repr-tmul.md) | 902 | `result-track:33bacbbd9e8eb0d11503c8e8cec8b740b1b7140d6079fca8848557f8b960f097` |
| 93 | `theorem` | [basis_repr_symm_apply](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/basis-repr-symm-apply-source-edition-2.md) | 907 | `result-track:bab831162694b3d7d9e8a4eefa10b4c5912a079d002eb8c6af1866999081893a` |
| 94 | `theorem` | [basis_repr_symm_apply'](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/basis-repr-symm-apply.md) | 914 | `result-track:0a4638a6a479dd8af35e61823dbfeafd8b8b05055a992275d9fed9ccba24d4f6` |
| 95 | `def` | [endTensorEndAlgHom](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/endtensorendalghom.md) | 939 | `declaration-track:d60ac5e3f85aed816484e48c074218b52eac815d00ad0b1601fa932bcb0cd325` |
| 96 | `theorem` | [endTensorEndAlgHom_apply](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/endtensorendalghom-apply.md) | 946 | `result-track:d1844023b2bf0d27833380e729d0fa6ef19e876a01298cb07d545b0b2c91c0c8` |
| 97 | `theorem` | [Subalgebra.finiteDimensional_sup](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/subalgebra-finitedimensional-sup.md) | 954 | `result-track:fdb0dc7be64971643d0362616bc9e4fd234649bd2d795a49f266223f171a16b3` |
| 98 | `def` | [moduleAux](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/moduleaux.md) | 975 | `declaration-track:e6c678d7f99fdbc795106aa1133c203b12a1ef3343e76c743e728fdc7c3532dd` |
| 99 | `theorem` | [moduleAux_apply](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/moduleaux-apply.md) | 986 | `result-track:4c646d7686606935aee7507397817c0de8d2dd1cbf8d57a2a15172614ebcf77f` |
| 100 | `def` | [module](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/module.md) | 1006 | `declaration-track:fa6f8698eb4c00b546852c90db780530c784f38d4890cf68122cf019be1a704b` |
| 101 | `theorem` | [smul_def](../../../../CommutativeAlgebra/RingTheoryTensorProduct.lean/declarations/smul-def.md) | 1052 | `result-track:a3304608b027f9ca01f448344dbbda623567f7bfc35d0d570c85f7a836b7244c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a7338eeb3d246a2269a47a8282fb189e29446f23affbb2f9f88d9bdbddd92f42 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant129d68fc87f91b5e6979350f9512bfdc56249b147ff29cac87ef6360a427d4db.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/TensorProduct/Variant129d68fc87f91b5e6979350f9512bfdc56249b147ff29cac87ef6360a427d4db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
