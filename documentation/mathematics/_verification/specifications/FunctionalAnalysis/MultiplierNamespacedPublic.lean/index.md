# Verification target: Multiplier Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48448c134f1ac164daad12545b0ef9b81d062acf",
  "lexical_observation_count": 86,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Multiplier/Variant0c302d13ad7199f04079bfe6d7b9247a258af23b9dfffaa160b9cbf6d200c613.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48448c134f1ac164daad12545b0ef9b81d062acf`.

Source path: `GRWTSK/Algebra/Multiplier/Variant0c302d13ad7199f04079bfe6d7b9247a258af23b9dfffaa160b9cbf6d200c613.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Multiplier/Variant0c302d13ad7199f04079bfe6d7b9247a258af23b9dfffaa160b9cbf6d200c613.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DoubleCentralizer](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/doublecentralizer.md) | 76 | `declaration-track:6d8cc43c0ebcc5bddf1aa4892a25969200df630f11672a408bfa31ee1bd5ad63` |
| 2 | `lemma` | [DoubleCentralizer.ext](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/doublecentralizer-ext.md) | 88 | `result-track:f969317f76076e1aa2530ea4101f6127e00d387da23f0b8ff14115b934bbcee0` |
| 3 | `theorem` | [range_toProd](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/range-toprod.md) | 112 | `result-track:3c7fae47386169658ce4b65b7ba95e20b34c8c20b12fce6c83cf44ef2793b4e8` |
| 4 | `instance` | [instAdd](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/instadd.md) | 119 | `declaration-track:e856831bc00babba6f1d9dd73debf1ef208ba24c0fc06fc099b96e5a31d28201` |
| 5 | `instance` | [instZero](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/instzero.md) | 126 | `declaration-track:541a4369bc367b62b295dcd0c1aa6901f33955a9efe124c356464f684f1e9a87` |
| 6 | `instance` | [instNeg](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/instneg.md) | 131 | `declaration-track:69ef77aed7bea4bc733c99c50124f30a8ad903ebed8225572abf780248bd1ba8` |
| 7 | `instance` | [instSub](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/instsub.md) | 138 | `declaration-track:82e709e7b7424384c828d705b00a9f0c5f1649a09ebd9332ec7e836a736f2fa1` |
| 8 | `instance` | [instSMul](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/instsmul.md) | 150 | `declaration-track:b066c72acef9217e612c6235a7637f68c67cf307049a8a50334385972e9dff98` |
| 9 | `theorem` | [smul_toProd](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/smul-toprod.md) | 158 | `result-track:666cdbba5e3ac09d109bea0dbef2df77317d1c6ee2989c4cb5defe84574afc42` |
| 10 | `theorem` | [smul_fst](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/smul-fst.md) | 161 | `result-track:4cef22e6b902ea9a26ae8cb9d7da5b712d7c7a14c8339f58b4234156e2cbe7c9` |
| 11 | `theorem` | [smul_snd](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/smul-snd.md) | 164 | `result-track:b5ed0d6f66e4570a2a963f34088499baa10b50baa7079f26b3a76611afe402ec` |
| 12 | `instance` | [instIsScalarTower](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/instisscalartower.md) | 170 | `declaration-track:cd5e5aa7a3c2d9898e858b47345be8fecda226edb83c86278599b774c32770d0` |
| 13 | `instance` | [instSMulCommClass](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/instsmulcommclass.md) | 173 | `declaration-track:c1eb558fe8ec6d1760653f6e167fecc91921a490ea7b76225a26f550907e7e2a` |
| 14 | `instance` | [instIsCentralScalar](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/instiscentralscalar.md) | 176 | `declaration-track:0b525568a18ed225b3d3bb23d8e6f669f37abf095ea468b5f0bf960f41dd93ad` |
| 15 | `instance` | [instOne](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/instone.md) | 183 | `declaration-track:d67f6a1a5c8fba7c20435ed7563b60c7446c4e5957bcba0cbd3b04b27fe03113` |
| 16 | `instance` | [instMul](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/instmul.md) | 186 | `declaration-track:32d0a649a2efd0753ae09607b44de35f7cdbe24b9536d4ccd2cd3fda6554a4f0` |
| 17 | `instance` | [instNatCast](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/instnatcast.md) | 191 | `declaration-track:a64e514d438b8e9c410a1ce17aab21e8a4822a3ba3c41e2680f74e2bbc31f5fc` |
| 18 | `instance` | [instIntCast](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/instintcast.md) | 198 | `declaration-track:77fc3af252fb62de3bb5e4a40b1e88b41d9c2b9ef18863b7707c29ab200f9cdf` |
| 19 | `instance` | [instPow](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/instpow.md) | 205 | `declaration-track:43d0006a1386cb4b86c3bbeb160839f61c750458ef7b1fb9c73fd002440ddb62` |
| 20 | `instance` | [instInhabited](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/instinhabited.md) | 214 | `declaration-track:a49ba76018b2b4d4fccc8bf7ebb436dd452ad84acf75c3a684b3f93421b56b8f` |
| 21 | `theorem` | [add_toProd](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/add-toprod.md) | 218 | `result-track:7b1e6082569d98798f5c316eb2c0b3fb17e467dfaa9e5e795572e691c6b69363` |
| 22 | `theorem` | [zero_toProd](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/zero-toprod.md) | 222 | `result-track:7347fc3b2ed872a471f6b4aa8e52654b4f69b472637bcd012392a80d31755507` |
| 23 | `theorem` | [neg_toProd](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/neg-toprod.md) | 226 | `result-track:02eabc456f7c3be9d5945d5fdd3ffa35607b31266f2b198948ceffde07cda331` |
| 24 | `theorem` | [sub_toProd](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/sub-toprod.md) | 230 | `result-track:1f5f071ca4b9d55519ada5a2f15fc2a65cb31f1c5b91d85d5e3adb38fcb95b98` |
| 25 | `theorem` | [one_toProd](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/one-toprod.md) | 234 | `result-track:149b84c3728ca9f923f748a728ce57db010f43de0486f3621d2db6592d4069a4` |
| 26 | `theorem` | [natCast_toProd](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/natcast-toprod.md) | 238 | `result-track:76abafb00e9bcb3923567a26ed56a108b318c0903bb62ac79ad3f244fed0ab0f` |
| 27 | `theorem` | [intCast_toProd](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/intcast-toprod.md) | 242 | `result-track:1a89df623ac83959860c3ef4dc83189f0271915625a43792e117ce681b64899d` |
| 28 | `theorem` | [pow_toProd](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/pow-toprod.md) | 246 | `result-track:4d2f72a0ae70ce2f8335599c7908cc8ba9b25d488a95504eeb4a9d23c324aef4` |
| 29 | `theorem` | [add_fst](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/add-fst.md) | 249 | `result-track:681cc6f6fd464ea2a29f46c2c107528561b5b48ad832a2cd42b8a6b67fe612f6` |
| 30 | `theorem` | [add_snd](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/add-snd.md) | 252 | `result-track:b6ff363c8f8e7a0016b19cf3b8ab2145dabd5b2140d4deb03835df6e326db43e` |
| 31 | `theorem` | [zero_fst](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/zero-fst.md) | 255 | `result-track:2c8c7d58244e2882a3148ecade505fbd04fdc5a10eea3540d5d4c3878b1fc50c` |
| 32 | `theorem` | [zero_snd](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/zero-snd.md) | 258 | `result-track:6b87f7f9e2e499f1d5637c0de799674ba9c59adbc21c880d359269b08028b143` |
| 33 | `theorem` | [neg_fst](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/neg-fst.md) | 261 | `result-track:ad6c1b86191c5249d9b6886540fb0e706b9ac3e294a32a8a26bb2e12ad0d3ca1` |
| 34 | `theorem` | [neg_snd](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/neg-snd.md) | 264 | `result-track:c3b64bf612202d4056d4171de631a8acf5b239a38a7d103b13026a730f7e4dfe` |
| 35 | `theorem` | [sub_fst](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/sub-fst.md) | 267 | `result-track:bea832cbcd21215fbef195395cc9c4205137e28f797e3d020cd3d5c05cf8a27f` |
| 36 | `theorem` | [sub_snd](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/sub-snd.md) | 270 | `result-track:b2ef0ec10001cf7dbe4f0df8f133b1d3fb8e4c53dcd4562a30ca038303448402` |
| 37 | `theorem` | [one_fst](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/one-fst.md) | 273 | `result-track:04bdbb7c12f0bf2d9927e2872b94737039ab05c4a5c3ea3a69948c5b66ff78de` |
| 38 | `theorem` | [one_snd](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/one-snd.md) | 276 | `result-track:af52b21def7e1e46f67419de85380bf2185207ffc4cd6af467d87f5ffed8c344` |
| 39 | `theorem` | [mul_fst](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/mul-fst.md) | 280 | `result-track:d281c9eb4ac95fe50767f1f65b5c20987860f7bf317fafbef1ba0dc2ad373c30` |
| 40 | `theorem` | [mul_snd](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/mul-snd.md) | 284 | `result-track:3bd6f87e77eac04ff5d788eff9900d09b114c4165464aee4ca2d60f7336a34dd` |
| 41 | `theorem` | [natCast_fst](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/natcast-fst.md) | 287 | `result-track:b2341587a07c90d423fa97ce23568690bb427246ab4ed15d83d088263b54f02d` |
| 42 | `theorem` | [natCast_snd](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/natcast-snd.md) | 290 | `result-track:40032632b0edc21c7466db75fbd73a887f2e084f6761153c35083d10f2bd8720` |
| 43 | `theorem` | [intCast_fst](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/intcast-fst.md) | 293 | `result-track:6481c5791d0f88e09b1953d517bef509c6bfec87b8e7977c1c781c3cec5e03b0` |
| 44 | `theorem` | [intCast_snd](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/intcast-snd.md) | 296 | `result-track:0ffb6bc5cfd2a0d89b172022dd60804a60ce6bb547ff7a40f1850f9d321617e4` |
| 45 | `theorem` | [pow_fst](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/pow-fst.md) | 299 | `result-track:f77a25643766a2576c0b85df966a54126d03cf457f334dd9db2b987e20eea55b` |
| 46 | `theorem` | [pow_snd](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/pow-snd.md) | 302 | `result-track:2405489a6dc2533431db9153744e0123e9d94d5b957398df8577c85ae3303482` |
| 47 | `def` | [toProdMulOpposite](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/toprodmulopposite.md) | 307 | `declaration-track:c8292081236508d0a4477415cd4b2aac995576dfaf864c28105a854b7a26697a` |
| 48 | `theorem` | [toProdMulOpposite_injective](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/toprodmulopposite-injective.md) | 310 | `result-track:a32163ec897a153001d1fed985a9fa3b9d98c2cdc681560e20f026d1021fc89c` |
| 49 | `theorem` | [range_toProdMulOpposite](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/range-toprodmulopposite.md) | 316 | `result-track:e9985ed55c4f6ddc6e155ff4b3a26771a38753839b26f10a27a767746467fad4` |
| 50 | `instance` | [instRing](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/instring.md) | 326 | `declaration-track:383d097c94bab8a9fa190f0593d37d23c1886b8475a2f4e31be0a02c83792abd` |
| 51 | `def` | [toProdHom](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/toprodhom.md) | 334 | `declaration-track:99f066b05cdca927d452bd0ba96964c62032cfe111ebec694244229ad88d6e50` |
| 52 | `def` | [toProdMulOppositeHom](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/toprodmuloppositehom.md) | 341 | `declaration-track:f2ae0bfafe84f7a2b89b2413d4440a351b9bad8317d8c37f1bf104108510a11b` |
| 53 | `instance` | [instModule](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/instmodule.md) | 350 | `declaration-track:e015653f7c9efef03a5194a244d009a6fb72061e614db1ccc5ab1b0ba35c224f` |
| 54 | `instance` | [instAlgebra](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/instalgebra.md) | 355 | `declaration-track:9b1ec9ae1d202d7c1bc95eb2859484899ae9750d77dfeda1b1402d8d793c919b` |
| 55 | `theorem` | [algebraMap_toProd](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/algebramap-toprod.md) | 376 | `result-track:08d55afe8ba476b8d2a96b9b58fb05d3c7d8d7544acf5198b0a47ef6a5aadf86` |
| 56 | `theorem` | [algebraMap_fst](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/algebramap-fst.md) | 379 | `result-track:278ee8117db7eeaf7fabea0c0cbf39de782e1960d001657473f3821f38020391` |
| 57 | `theorem` | [algebraMap_snd](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/algebramap-snd.md) | 382 | `result-track:684961d1636922ae36149ed2f2604dd5dfbc04a989a707b51b22b2c35ffc9bca` |
| 58 | `instance` | [instStar](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/inststar.md) | 396 | `declaration-track:28d21c5d2be1207efe87314989a5303e89a43290d62228d6f248cb60ee5c7d77` |
| 59 | `theorem` | [star_fst](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/star-fst.md) | 409 | `result-track:4024c466e9ba6534d6938fabdff8c3c87e807013628ecb5921336a4ccf05e39d` |
| 60 | `theorem` | [star_snd](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/star-snd.md) | 413 | `result-track:105c3dce524c05510b6e6e022c0e3d627a132e2858d1024bd745da738b9f1033` |
| 61 | `instance` | [instStarAddMonoid](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/inststaraddmonoid.md) | 416 | `declaration-track:c14e0eabeecf26bba91e8f9e30df2051a2d1f4fb4b8f69cb244c9321826bfeef` |
| 62 | `instance` | [instStarRing](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/inststarring.md) | 421 | `declaration-track:43ce14cd7ebdcd9c623913003a0f048abb5ff3f7ba281c6e0c79aa090af94bf8` |
| 63 | `instance` | [instStarModule](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/inststarmodule.md) | 425 | `declaration-track:4f2069db47afb21f7e197b87be9c4ab0c95601b21090c482e043b9a79c7b4e5b` |
| 64 | `def` | [coe](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/coe.md) | 443 | `declaration-track:c8dafad691d384fd63f9d288c8f6caa613e5fa7eae8766dcc4da5666c8851527` |
| 65 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/instance.md) | 454 | `declaration-track:a9aaaa3fbc41ef73226864fbb3c3f591d7bf58c29aadfa59a7faa895e4d5d6b1` |
| 66 | `theorem` | [coe_fst](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/coe-fst.md) | 458 | `result-track:8c30eea2714bf53125b400a41b8622012f697a7ffe7bb45aad737c781599f4a9` |
| 67 | `theorem` | [coe_snd](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/coe-snd.md) | 462 | `result-track:bac6239dc2e29280dc7450afee94b8d875b408c20225e13a64d2091b0c6cf156` |
| 68 | `theorem` | [coe_eq_algebraMap](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/coe-eq-algebramap.md) | 465 | `result-track:aa9ba7d126084929bcab1978447de88c936811e837d07f23640ffaa68585a099` |
| 69 | `def` | [coeHom](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/coehom.md) | 474 | `declaration-track:be7efb0f13d4038406e19c9f3a2232c1f02d616e22fa7fd52bac2093e9a1fd75` |
| 70 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 501 | `declaration-track:ba7a6eb3e28983dcb89eeb5acbcc4d072e719313c5eda8a5650adefc3b914e04` |
| 71 | `theorem` | [norm_def](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/norm-def-source-edition-2.md) | 507 | `result-track:fa054b019db657afc123df9705f593d5370b036afe48202f98145434b3a5aa57` |
| 72 | `theorem` | [nnnorm_def](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/nnnorm-def.md) | 510 | `result-track:4af53678b7e786d42ffc49ddf39559dc09ba7a3dcba8fd46702d234bc9b7eab6` |
| 73 | `theorem` | [norm_def'](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/norm-def.md) | 513 | `result-track:2c9f99e8f7d242fb47a130c1fe9350c52792c9eb97dfffa524547b39e886842c` |
| 74 | `theorem` | [nnnorm_def'](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/nnnorm-def-source-edition-2.md) | 516 | `result-track:8d6da52ff1cc875aaf093569aff7e7799f2aa7f076c85a0624b88b3e593ef0e8` |
| 75 | `instance` | [instNormedSpace](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/instnormedspace.md) | 519 | `declaration-track:f09875d25cbe9b03f47b6b4ccf35e949d0f1c508f4b444c9097208e927601815` |
| 76 | `instance` | [instNormedAlgebra](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/instnormedalgebra.md) | 523 | `declaration-track:9d6e07a62de2cf8cb55fd4c1072bd8bd2bd560b02bab8d1dbcc72ff22b2331fe` |
| 77 | `theorem` | [isUniformEmbedding_toProdMulOpposite](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/isuniformembedding-toprodmulopposite.md) | 526 | `result-track:a76d8c87ea52e08b20d802856768a09420730f64fddb4d8931fab5a1409348a8` |
| 78 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 530 | `declaration-track:f95539a25b25d542e9048ef2735df0bcad34dd44abbdef748d42deb6d2e19a0b` |
| 79 | `theorem` | [norm_fst_eq_snd](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/norm-fst-eq-snd.md) | 540 | `result-track:ccd45d5004206830b916e8557eaf111cb8a7e55a3491902d3fe6ebd7f4616bf0` |
| 80 | `theorem` | [nnnorm_fst_eq_snd](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/nnnorm-fst-eq-snd.md) | 571 | `result-track:3100bc6fbf550b545f82bb4e36e1d54bf56acd1c20fc7ee9e86931f890563637` |
| 81 | `theorem` | [norm_fst](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/norm-fst.md) | 575 | `result-track:f077e9332f2f83906d13b8a3cbb55d86b1a395568efcc393fd20c0bea7761516` |
| 82 | `theorem` | [norm_snd](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/norm-snd.md) | 579 | `result-track:055b6a4f3cba33f0f74816391dc3879c5f08dbc6897c1f0d3414daf9512b4663` |
| 83 | `theorem` | [nnnorm_fst](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/nnnorm-fst.md) | 582 | `result-track:f435dfc5ffa7e344c4e0dfbe309904fbcd5503ecdd5cab081a03da5c2c85904b` |
| 84 | `theorem` | [nnnorm_snd](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/nnnorm-snd.md) | 586 | `result-track:7bfc0760d3a7c7947baf4710b572e9ee8902dc8aaa91bf68205df1f193742360` |
| 85 | `instance` | [instCStarRing](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/instcstarring.md) | 597 | `declaration-track:e65e5f6307957ee6ec44ac615f970b3514288c45e4887a8d4974e87a33ec0bbf` |
| 86 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/MultiplierNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 647 | `declaration-track:be780d960612409d7f798d563c839af102426cafb5fd167da55bfb167e6dc255` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb98a1f741c308c968a4fbc8d32b346f6f0dba14eec639f908980c872af756dc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Multiplier/Variant0c302d13ad7199f04079bfe6d7b9247a258af23b9dfffaa160b9cbf6d200c613.lean","GRWTSK/_verification/specifications/Algebra/Multiplier/Variant0c302d13ad7199f04079bfe6d7b9247a258af23b9dfffaa160b9cbf6d200c613.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
