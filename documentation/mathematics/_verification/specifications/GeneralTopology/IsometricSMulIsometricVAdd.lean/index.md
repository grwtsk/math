# Verification target: Isometric SMul Isometric VAdd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c911b86698f92e45471bf7743c28f897edb266b9",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/IsometricSMul/Variantcc1c8095f1c6a566c506ecb64857964c72d6a246f196f6fe03fbcbc8821784dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/index.md) · [Full source](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c911b86698f92e45471bf7743c28f897edb266b9`.

Source path: `GRWTSK/Topology/MetricTopology/IsometricSMul/Variantcc1c8095f1c6a566c506ecb64857964c72d6a246f196f6fe03fbcbc8821784dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/IsometricSMul/Variantcc1c8095f1c6a566c506ecb64857964c72d6a246f196f6fe03fbcbc8821784dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Isometry` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsometricVAdd](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/isometricvadd.md) | 40 | `declaration-track:6ff42349773c4dde83ff133cfebeea515b40a71c96ffb63c938e0ee8fd9505aa` |
| 2 | `class` | [IsometricSMul](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/isometricsmul.md) | 46 | `declaration-track:e12a6a4492e44bcccce6c69d3778819bc24e3925232e73e795fb528a78887eb7` |
| 3 | `theorem` | [isometry_smul](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/isometry-smul.md) | 52 | `result-track:cf4cf5dfd4900a9fa4390428b95baae52ea6203e288ab3005572b125b1d9ef44` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/instance-source-edition-2.md) | 57 | `declaration-track:b3757f81032d38f643e1a6c835299916ee5e3c8082964fb85d25f5584c9dd3af` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/instance-source-edition-3.md) | 64 | `declaration-track:e3f3caed2b99056555e6dbd740cc0994c12af2a5c3bb9e1ef32b694b5b240362` |
| 6 | `theorem` | [edist_smul_left](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/edist-smul-left.md) | 77 | `result-track:db9720cfe163ca0b78bc0cca9403c45a988c32b7d1cc77dcdc645f23eaba465f` |
| 7 | `theorem` | [ediam_smul](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/ediam-smul.md) | 84 | `result-track:6c92dec52c9181f547a0ca42742772e3b1c91cf2b8771929ce1732b79f45f774` |
| 8 | `theorem` | [isometry_mul_left](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/isometry-mul-left.md) | 91 | `result-track:7879610c2c59de360f512ca26f297545d3766c9f20175fe6a451f766bec59fdf` |
| 9 | `theorem` | [edist_mul_left](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/edist-mul-left.md) | 98 | `result-track:f90683345cf9b5090b1235b9c90909dead600ad7c648e56297846adc726935f8` |
| 10 | `theorem` | [isometry_mul_right](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/isometry-mul-right.md) | 105 | `result-track:036fe403a9400e40c2b48437387c7339f552b3faed021a361e0dd5dd803eafd2` |
| 11 | `theorem` | [edist_mul_right](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/edist-mul-right.md) | 112 | `result-track:16344b291e6a872a399e812d52a528c0697c1444483574509a472e32dbcd8f65` |
| 12 | `theorem` | [edist_div_right](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/edist-div-right.md) | 119 | `result-track:eb1d4aad32735a6feb628dbb23354de128282834380de6f624ec184752b134d7` |
| 13 | `theorem` | [edist_inv_inv](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/edist-inv-inv.md) | 126 | `result-track:2fdf5316b214d8352a3870c5cdbc354d9e0cc2e99f0d47843499d91e5a47db5b` |
| 14 | `theorem` | [isometry_inv](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/isometry-inv.md) | 134 | `result-track:0aebff5eea40409fb788dc279f1f22be4624f849a9be88fdd9813bcce182cb2c` |
| 15 | `theorem` | [edist_inv](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/edist-inv.md) | 141 | `result-track:52e92932bf0a43319c8b8b45383c66ce772970ef499d3d8c7bab22357a0c95c6` |
| 16 | `theorem` | [edist_div_left](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/edist-div-left.md) | 147 | `result-track:48105767d0b2d8c1ce92092c193878406d1b2abec9e6b362168caefc53db08e7` |
| 17 | `def` | [constSMul](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/constsmul.md) | 160 | `declaration-track:87486c88bdc8190dc271bee8858c266a276b4d85d8d4b06c70635ca808f23f49` |
| 18 | `theorem` | [constSMul_symm](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/constsmul-symm.md) | 171 | `result-track:6a64149f0709bc4b15bd060fec79a31d43fbafeabbf36e01e2da12fff7538889` |
| 19 | `def` | [mulLeft](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/mulleft.md) | 180 | `declaration-track:42c80f6383d88390762d652bd292c1e87bbaa1fa5b364a1aa194fd7610f1cfe3` |
| 20 | `theorem` | [mulLeft_symm](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/mulleft-symm.md) | 191 | `result-track:954940367720913b997471af806529324f1cc6aa32b8d117693b29ea146d843a` |
| 21 | `def` | [mulRight](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/mulright.md) | 199 | `declaration-track:d6284914f219fe1c0dbf13edd3c522307f64df32016d1f88411ee9b037fafaa3` |
| 22 | `theorem` | [mulRight_symm](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/mulright-symm.md) | 210 | `result-track:2eb9bf22826d133fad38a03ad707c988a496f1d2303b1d0114a0c77d6d441e3f` |
| 23 | `def` | [divRight](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/divright.md) | 217 | `declaration-track:7e2f2b15b8ad72b27dbb4936fac431e45a21962d055499853cc68dbc7385436f` |
| 24 | `theorem` | [divRight_symm](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/divright-symm.md) | 228 | `result-track:7414e46d87f9168f8881f2e8e6ec70a2b4bf5bafc30f1f7a248d0a8e6ccb267f` |
| 25 | `def` | [divLeft](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/divleft.md) | 238 | `declaration-track:29cf1a15786f2a7faa3dfc0fe833f72c31fb45ca2f9bb2766f9ce8375da5ef82` |
| 26 | `def` | [inv](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/inv.md) | 254 | `declaration-track:0b185d997f6d94b82937c5284e550769a47cb9e0ca688a829c3022ae6fb3fe0b` |
| 27 | `theorem` | [inv_symm](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/inv-symm.md) | 264 | `result-track:13f7432635644fee0ff1cbf90d52f0b7e7046b5d673c9a30ddd8289620179f24` |
| 28 | `theorem` | [smul_ball](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/smul-ball-source-edition-2.md) | 273 | `result-track:fab6a2ec50e65080e985c3b41151bf26c6602475d270ce784474aad6dadf18fb` |
| 29 | `theorem` | [preimage_smul_ball](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/preimage-smul-ball-source-edition-2.md) | 279 | `result-track:fe6b8b225de0cd3fd1af6789f2a69df6d80a37de6921aed4576572a9101b9fd5` |
| 30 | `theorem` | [smul_closedBall](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/smul-closedball-source-edition-2.md) | 285 | `result-track:c5db526e31db84bef3f022f3aac48983736a2102266fc8dd3d5ff3497836c334` |
| 31 | `theorem` | [preimage_smul_closedBall](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/preimage-smul-closedball.md) | 291 | `result-track:0e2ce462953767664ac6398980945fbb9aa07c5e37153d49a3013a93c086eda3` |
| 32 | `theorem` | [preimage_mul_left_ball](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/preimage-mul-left-ball-source-edition-2.md) | 300 | `result-track:6b3a24c8b608a6dc1192446b79ea2bc0bdbfc2fb8e2b5b85211d3ff570dcb2ea` |
| 33 | `theorem` | [preimage_mul_right_ball](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/preimage-mul-right-ball.md) | 307 | `result-track:7391eff9493374f563aa99983ce0654890249e7f10f3f817490ed0fcddf944bf` |
| 34 | `theorem` | [preimage_mul_left_closedBall](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/preimage-mul-left-closedball-source-edition-2.md) | 315 | `result-track:8c7b5a4be9f2d7158699c99c4c4e77daae957797b432f72936de11f1e61097db` |
| 35 | `theorem` | [preimage_mul_right_closedBall](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/preimage-mul-right-closedball.md) | 322 | `result-track:10c6c5b233b3d58167564fac7277b1be78e2800f4f7391dc0989983ce21ea984` |
| 36 | `theorem` | [dist_smul](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/dist-smul.md) | 334 | `result-track:bcc9d5ece53b3fca353b227f8aa778214a31ab96aa28a3656188eec2cdd48c2a` |
| 37 | `theorem` | [nndist_smul](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/nndist-smul.md) | 341 | `result-track:4a25578dc8a16e3d3fabe9d4759f5eb8a99864ec7f2bcc65d6cb7190f3f2d7ae` |
| 38 | `theorem` | [diam_smul](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/diam-smul.md) | 348 | `result-track:7bfde76e7ab19a7e68690a9977cb2213ec3048c9119873f10692a12563a7ca4b` |
| 39 | `theorem` | [dist_mul_left](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/dist-mul-left.md) | 355 | `result-track:d58c91e61d8af5cea99cd5fca4a596832ad1feefddc570b92cd4dcc4fdf29149` |
| 40 | `theorem` | [nndist_mul_left](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/nndist-mul-left.md) | 362 | `result-track:8fe5329aa40db9a4190d5fc7194288ba9bfeaa7d4a0e3b0f582d0cb3858482cb` |
| 41 | `theorem` | [dist_mul_right](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/dist-mul-right.md) | 369 | `result-track:7f14730bfb90a65730e97fc1e36a43ee414818ced2ce977e562006f295a2ed44` |
| 42 | `theorem` | [nndist_mul_right](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/nndist-mul-right.md) | 376 | `result-track:efd61508ae14fccad0923380c2d1c6ca512b6f3a5f46be7bb6ea134c9189a83f` |
| 43 | `theorem` | [dist_div_right](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/dist-div-right.md) | 383 | `result-track:6926737c8ebfe4dc611533759b0677c52b356048467bfbb627f2fd5b2fb591c6` |
| 44 | `theorem` | [nndist_div_right](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/nndist-div-right.md) | 389 | `result-track:440576e5d0a388d487265ffb813b0457798783433278ea41d4fee009e9cc7b93` |
| 45 | `theorem` | [dist_inv_inv](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/dist-inv-inv.md) | 396 | `result-track:d369e1d59103443d08ca340b4a0e7c5107abb283ea98c8ef599144502adde549` |
| 46 | `theorem` | [nndist_inv_inv](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/nndist-inv-inv.md) | 403 | `result-track:d83393b8f1e41334c1faa574e13035b48f269a37d28681178ec1e178be2f9388` |
| 47 | `theorem` | [dist_div_left](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/dist-div-left.md) | 410 | `result-track:4042761259babad0530da316c3d57eb4e542490147c006f3bf817472f23abdec` |
| 48 | `theorem` | [nndist_div_left](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/nndist-div-left.md) | 417 | `result-track:9b8f1255e0910774fd056025b7fcadf6103b4a36f22598d3091ab2751a7638c7` |
| 49 | `theorem` | [Bounded.smul](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/bounded-smul.md) | 430 | `result-track:4afcf8b148b628e0402b211d91122644c34e3f2753248babf0a9e2887f212b47` |
| 50 | `theorem` | [smul_ball](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/smul-ball.md) | 437 | `result-track:5850a19a73e877c24b1f59078a8f587c24488d113986abc92fcf34d9aebf73a3` |
| 51 | `theorem` | [preimage_smul_ball](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/preimage-smul-ball.md) | 443 | `result-track:ea66d0aea2b3ccb026ebd7c77a4bc22bd3550efefe7e1cb3199841a30e55db62` |
| 52 | `theorem` | [smul_closedBall](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/smul-closedball.md) | 449 | `result-track:413842c8a8e7b2846ece6b096bc77ad1ce95a56c0ecb22416c8d1158a40ccbeb` |
| 53 | `theorem` | [preimage_smul_closedBall](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/preimage-smul-closedball-source-edition-2.md) | 455 | `result-track:3813a58edcf8084c5667b9e1156c72146d12f51274a4fd253eca48598d329271` |
| 54 | `theorem` | [smul_sphere](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/smul-sphere.md) | 461 | `result-track:1315d3939c40ae1b3c90c7068da044c5810fa54b1ac48295e454ff66b6e812b5` |
| 55 | `theorem` | [preimage_smul_sphere](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/preimage-smul-sphere.md) | 467 | `result-track:9a814879f70fbf34074bef115c429eb8adbe5206bab6e433cee8d4a37425db2a` |
| 56 | `theorem` | [preimage_mul_left_ball](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/preimage-mul-left-ball.md) | 475 | `result-track:0ea56b5f59c10b04ab7c2f9164445b891b53b31f02027b3d61d4bf1342f2b8e7` |
| 57 | `theorem` | [preimage_mul_right_ball](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/preimage-mul-right-ball-source-edition-2.md) | 482 | `result-track:ad7b46a6323d1f784c374771ca75c4797005fc8c74627247528c9ed56b30e5fe` |
| 58 | `theorem` | [preimage_mul_left_closedBall](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/preimage-mul-left-closedball.md) | 490 | `result-track:454917ec48eb7d8a712a8d877feb6ff208381ac3af6ea4e6c737cec25c919667` |
| 59 | `theorem` | [preimage_mul_right_closedBall](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/preimage-mul-right-closedball-source-edition-2.md) | 497 | `result-track:200d26bcfd8ad545adf4c373f6166f580ec36e6a2487ae0b1e3c8874b2440b16` |
| 60 | `instance` | [(anonymous)](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/instance.md) | 512 | `declaration-track:84d32ce3c949dacab38163ebe11e2b44446f884cd19791847c06845e04b74c94` |
| 61 | `instance` | [Prod.isometricSMul'](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/prod-isometricsmul-source-edition-2.md) | 516 | `declaration-track:aa4bebd6e5c512e1ec2e57aed903aa0808795d8fb1c0e6268e2f659194d41d9e` |
| 62 | `instance` | [Prod.isometricSMul''](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/prod-isometricsmul.md) | 523 | `declaration-track:099e9da762e68e6b08afb8077a08bcc5b998b35a07dbb8ba36824a404b2cd457` |
| 63 | `instance` | [Units.isometricSMul](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/units-isometricsmul.md) | 531 | `declaration-track:43f4bb0299abd8c40c64bb8d16e3b4014d8ed6272d0b9e565625bfe2ea044564` |
| 64 | `instance` | [(anonymous)](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/instance-source-edition-4.md) | 537 | `declaration-track:ff92ca19f57dee6c1c74a0fe9ce3e43e567afb25dbc22fb8a92b6612e5784308` |
| 65 | `instance` | [ULift.isometricSMul](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/ulift-isometricsmul-source-edition-2.md) | 541 | `declaration-track:588032800bbea4040014b377c966da3625e28171e1e056b7ee93a16b04b212f5` |
| 66 | `instance` | [ULift.isometricSMul'](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/ulift-isometricsmul.md) | 547 | `declaration-track:4906ba97a72024be8e145d4b47492dc0a0747861854a11c046ab658f82fc27ed` |
| 67 | `instance` | [(anonymous)](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/instance-source-edition-5.md) | 553 | `declaration-track:ffc95064381c07248349d395c9243ce5f3a4f1963873263cd2b2955a689cd266` |
| 68 | `instance` | [Pi.isometricSMul'](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/pi-isometricsmul-source-edition-2.md) | 558 | `declaration-track:b131dc3d8cefc630dcb228be1f689b35f7da95ea22f2be2afca07617d2980705` |
| 69 | `instance` | [Pi.isometricSMul''](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/pi-isometricsmul.md) | 566 | `declaration-track:3f161c2f2e3d9e2d3448796d1dfdade439d15947ca15bb29f60d0957acc07235` |
| 70 | `instance` | [Additive.isometricVAdd](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/additive-isometricvadd.md) | 573 | `declaration-track:81f599e0b6b70cf1a9d1eb1e700797202eb848d08aa7ddfdc67680cd3689952c` |
| 71 | `instance` | [Additive.isometricVAdd'](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/additive-isometricvadd-source-edition-3.md) | 577 | `declaration-track:e8161d508a3c5130972ce0b4edb65d45b2756e5fa9483088d653a3931a69e548` |
| 72 | `instance` | [Additive.isometricVAdd''](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/additive-isometricvadd-source-edition-2.md) | 582 | `declaration-track:992b039979a3653873bffd5949d6ce7fa8e0989aab2fbb72318f2cab5ca1b61f` |
| 73 | `instance` | [Multiplicative.isometricSMul](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/multiplicative-isometricsmul-source-edition-2.md) | 587 | `declaration-track:fe4e3056be15a17ffa68a39635ae5392180f0a27c90f50c01c364e0f0f5aff06` |
| 74 | `instance` | [Multiplicative.isometricSMul'](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/multiplicative-isometricsmul.md) | 592 | `declaration-track:59061257dc98653a439af42a587ab7a7f4127ea32ea7704050b39dd46eb25415` |
| 75 | `instance` | [Multiplicative.isometricVAdd''](../../../../GeneralTopology/IsometricSMulIsometricVAdd.lean/declarations/multiplicative-isometricvadd.md) | 597 | `declaration-track:e0e949579fe245e71aba59f940138758cb2a55f95b73791deebde4b824b425e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f4f86b7800ee0d3e7c61f326751919fa0ff3b7be40f124a96f5229d277dd5b0e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/IsometricSMul/Variantcc1c8095f1c6a566c506ecb64857964c72d6a246f196f6fe03fbcbc8821784dd.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/IsometricSMul/Variantcc1c8095f1c6a566c506ecb64857964c72d6a246f196f6fe03fbcbc8821784dd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
