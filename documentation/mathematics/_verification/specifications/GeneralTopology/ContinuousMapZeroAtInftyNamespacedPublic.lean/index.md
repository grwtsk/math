# Verification target: Continuous Map Zero At Infty Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4089472c158381f8a1b8843a0e92e9c6eab50f3c",
  "lexical_observation_count": 93,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Varianta7535ac0bf30f3343be14649d58d61161e2eb49749b7dcef7e4a15d5f0d58d52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4089472c158381f8a1b8843a0e92e9c6eab50f3c`.

Source path: `GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Varianta7535ac0bf30f3343be14649d58d61161e2eb49749b7dcef7e4a15d5f0d58d52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ZeroAtInfty/Varianta7535ac0bf30f3343be14649d58d61161e2eb49749b7dcef7e4a15d5f0d58d52.lean.json)

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
| 1 | `structure` | [ZeroAtInftyContinuousMap](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/zeroatinftycontinuousmap.md) | 53 | `declaration-track:8fec3d31f3fdb48fca8790a1714c7d90ff28b125c70d278649887d01e4f0ad4f` |
| 2 | `class` | [ZeroAtInftyContinuousMapClass](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/zeroatinftycontinuousmapclass.md) | 72 | `declaration-track:f06bedd9f1f9a3cb171881502b2f292b84a43e0683ef47c074368e53b27438d5` |
| 3 | `instance` | [instFunLike](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instfunlike.md) | 88 | `declaration-track:b2083e5db6ebc0f59e3470abf387a780788b77d65fb26fe6342978f7c69836b7` |
| 4 | `instance` | [instZeroAtInftyContinuousMapClass](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instzeroatinftycontinuousmapclass.md) | 95 | `declaration-track:abd15cf148340a6c325694e5906e014d38b98a97e52cbc311f5793e9e5b75bf6` |
| 5 | `instance` | [instCoeTC](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instcoetc.md) | 99 | `declaration-track:5066514d34cd6daa4c7ec8e22465233655d26bf96620252c9da96e695f95c151` |
| 6 | `theorem` | [coe_toContinuousMap](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/coe-tocontinuousmap.md) | 106 | `result-track:01d8ac76ec06ffd4b8a46666c6093aae758529ac60b3ba3fdaeba3ab96086b8c` |
| 7 | `theorem` | [ext](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/ext.md) | 110 | `result-track:69f352b1bfdb813a489410dfb9afab52fc0c58154fdcf403fadf5ef4dfa49bc9` |
| 8 | `lemma` | [coe_mk](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/coe-mk.md) | 114 | `result-track:2cb444f95544e1aa9686e5578e818064427eb6c483bb3497a3dd3a74755383b3` |
| 9 | `def` | [copy](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/copy.md) | 122 | `declaration-track:dd74d7137eecf541449a078621b3baeb0de0fb135f0023dad34741dc9aeedc1e` |
| 10 | `theorem` | [coe_copy](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/coe-copy.md) | 132 | `result-track:fcb742771f71788fbd53644867e09e017c8bf841dd2883bb49a904e6d6738d5b` |
| 11 | `theorem` | [copy_eq](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/copy-eq.md) | 135 | `result-track:912535490e42f4d95275d1de41ee3eafdd8d9a56225778eab167bfbabc868f82` |
| 12 | `theorem` | [eq_of_empty](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/eq-of-empty.md) | 138 | `result-track:1a9f786ec365b8c83db39d2e28e8035bc21b5594925c9e72f4e451978123bf53` |
| 13 | `def` | [ContinuousMap.liftZeroAtInfty](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/continuousmap-liftzeroatinfty.md) | 144 | `declaration-track:2cb6b0921e5a4b9fc0e07784e9247a06fa759cdfd13161a0880fbd339d376d80` |
| 14 | `lemma` | [zeroAtInftyContinuousMapClass.ofCompact](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/zeroatinftycontinuousmapclass-ofcompact.md) | 152 | `result-track:a1a36ec6f13b0009835247285bd0e8d3340bd1750084bc0f6d772c52b4c70492` |
| 15 | `instance` | [instZero](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instzero.md) | 171 | `declaration-track:c77203fa7e651fc111a294244a015247708f22085681e1d25dc39d698ec7a1a1` |
| 16 | `instance` | [instInhabited](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instinhabited.md) | 174 | `declaration-track:901b227ed06b5aceb997ea837dd4febfb98eb67c830e15be5f49efa941c2e5ee` |
| 17 | `theorem` | [coe_zero](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/coe-zero.md) | 178 | `result-track:46e8a8e19602cec69ba0e34600ed99e4399ca1b1acd5bca4010e5aad59f207a9` |
| 18 | `theorem` | [zero_apply](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/zero-apply.md) | 181 | `result-track:c13374a77bfc7e5095d149cd8b4db12edbade81b96362a7fdbf5306527c97b1d` |
| 19 | `instance` | [instMul](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instmul.md) | 184 | `declaration-track:3007cf72b3caa14a092534060171029d228bd5be8ff10aae1bf36831a7a3f48f` |
| 20 | `theorem` | [coe_mul](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/coe-mul.md) | 189 | `result-track:bb4ca12ba6af356e64755a2c7301a4747abed196e17fd892d0e639737ef51a09` |
| 21 | `theorem` | [mul_apply](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/mul-apply.md) | 192 | `result-track:627cca26a5a8b4a1f19798f8a262350c77e5b82de262fbf790ad859d8cdb9f78` |
| 22 | `instance` | [instMulZeroClass](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instmulzeroclass.md) | 195 | `declaration-track:5f603ae90ef775a10006b1142a330b4da28546fb23a87a1d538687adff66a48f` |
| 23 | `instance` | [instSemigroupWithZero](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instsemigroupwithzero.md) | 198 | `declaration-track:67c09d7b9d19230bf97e919829852ed836bf371ace321cd1879c1fcaf8306027` |
| 24 | `instance` | [instAdd](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instadd.md) | 202 | `declaration-track:7281b8ff6751ac576281b91db72cede40f5023da7012e9300b672e037a2938a7` |
| 25 | `theorem` | [coe_add](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/coe-add.md) | 206 | `result-track:b48afc3e70752729b4647d484ee1e8a918cae9a6242a5b91a207a1d17b601d06` |
| 26 | `theorem` | [add_apply](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/add-apply.md) | 209 | `result-track:2a88c14d6089a4148ff127342be6617251f9ce1df425cb852a51d1dbf1810198` |
| 27 | `instance` | [instAddZeroClass](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instaddzeroclass.md) | 212 | `declaration-track:2e36046d6075ad65bc43b242db64422d479d1fc729b9d75d54f0b98f5e6aed18` |
| 28 | `instance` | [instSMul](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instsmul.md) | 215 | `declaration-track:765b66307a422c6e0bf66e36889e3c3c7157e5d189002e4c8459cc71d0bf481c` |
| 29 | `theorem` | [coe_smul](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/coe-smul.md) | 220 | `result-track:3764637e9cb5b20c33c5a808771b946a4244d3796f4d606f40a97bba465919e0` |
| 30 | `theorem` | [smul_apply](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/smul-apply.md) | 224 | `result-track:5bca74d70ef4f7a4ea0b6ca7c19d5de210c663ad1131f9cb55751f4285e03747` |
| 31 | `instance` | [instAddMonoid](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instaddmonoid.md) | 232 | `declaration-track:81426bdd5756733c27047938ad07bf25297b40ad41ea0658d0693d6bb37654ef` |
| 32 | `instance` | [instAddCommMonoid](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instaddcommmonoid.md) | 237 | `declaration-track:94c0192fa628464b509492750898a4db46893ca624d1c1f90c73eb1f6f00526c` |
| 33 | `instance` | [instNeg](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instneg.md) | 244 | `declaration-track:ee94facdfb4ddfd68675caec85fd4a41ea1201afff53e39bbf861199765d3a87` |
| 34 | `theorem` | [coe_neg](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/coe-neg.md) | 248 | `result-track:4a81a92fa9f0fef3fd18cdf897e88c244a2111cea00646132e6b3693754737b0` |
| 35 | `theorem` | [neg_apply](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/neg-apply.md) | 251 | `result-track:588757afe0d92df059421064e345b8db5e1153d2d537d295ff9107c5039753cf` |
| 36 | `instance` | [instSub](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instsub.md) | 254 | `declaration-track:6b50dad37dfbc164ceb8831375e5892c9a94a1ac119c61d5ed0b2c8b52242dc4` |
| 37 | `theorem` | [coe_sub](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/coe-sub.md) | 258 | `result-track:d67ae867a8ddd4023842371fa908165be689a5459c60844f76257d8ddb9f5780` |
| 38 | `theorem` | [sub_apply](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/sub-apply.md) | 261 | `result-track:30b2a648edec69b3e0610052de433554a9e1042360ab3ee874a49c369e10b91e` |
| 39 | `instance` | [instAddGroup](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instaddgroup.md) | 264 | `declaration-track:ac0204aae022822e54d90748afb000360c56bdbadbe73aa47f7b90f87d1f3807` |
| 40 | `instance` | [instAddCommGroup](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instaddcommgroup.md) | 269 | `declaration-track:0964f262266c5c9b37a1497197722b5c8f73b1ccc8b7369fb129005252560249` |
| 41 | `instance` | [instIsCentralScalar](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instiscentralscalar.md) | 274 | `declaration-track:b5f82085249c15ac571d528f06cb39ddd74b06de4bf99d927afca317423d6c0e` |
| 42 | `instance` | [instIsScalarTower'](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instisscalartower-source-edition-2.md) | 278 | `declaration-track:61012b3e1f3c73f50766698832d03569cc299b976fbc07539de3c3889c179663` |
| 43 | `instance` | [instSMulCommClass'](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instsmulcommclass.md) | 283 | `declaration-track:e4e434d66828c57972df60ce7e7603aeec2841b80c00e6f243608a7184926004` |
| 44 | `instance` | [instSMulWithZero](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instsmulwithzero.md) | 288 | `declaration-track:351c548a9df0bb127415a254158af90f5455e0b9d44185486c96fce8ced3b4a3` |
| 45 | `instance` | [instMulActionWithZero](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instmulactionwithzero.md) | 292 | `declaration-track:616c518e1efa987738a0fd3d6bbf2ac8877068d73f697f8c476d75c7c8c1a202` |
| 46 | `instance` | [instModule](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instmodule.md) | 296 | `declaration-track:9ad5ac7d80f7a0ba36b5d4d6587c69ca7ef9e73d9f84a93d5f2b691323c2fe7a` |
| 47 | `instance` | [instNonUnitalNonAssocSemiring](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instnonunitalnonassocsemiring.md) | 300 | `declaration-track:b76bc10a8e9164d9e7998fe51909aa5443bc547ce3ba2b788d9f3341711eaf9e` |
| 48 | `instance` | [instNonUnitalSemiring](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instnonunitalsemiring.md) | 304 | `declaration-track:b6dc1f93dd18b47e0cd380ce83fdf946059e7531bcf2eb06550e7720104f93a4` |
| 49 | `instance` | [instNonUnitalCommSemiring](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instnonunitalcommsemiring.md) | 308 | `declaration-track:d96b09f3c4f20f7d8817efb7821d169942427fbd616501641aa58bf432409fcd` |
| 50 | `instance` | [instNonUnitalNonAssocRing](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instnonunitalnonassocring.md) | 312 | `declaration-track:5fe92c677b7f52630c671efb6ebb6205dd1376454313c36e9f2e154a1b278ab8` |
| 51 | `instance` | [instNonUnitalRing](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instnonunitalring.md) | 317 | `declaration-track:52d4223b221d2e81fcc9cb049470fd44296032712ac025a80ac863e8d92da4c2` |
| 52 | `instance` | [instNonUnitalCommRing](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instnonunitalcommring.md) | 322 | `declaration-track:3840925062cc55923375cdf5b5f37b832986849a0e95a355d1a117cdfbf02a8e` |
| 53 | `instance` | [instIsScalarTower](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instisscalartower.md) | 327 | `declaration-track:5af346583dc8193c09512f30c05546daa4ebe2fd3176ff33ba33ab3b396f9939` |
| 54 | `instance` | [instSMulCommClass](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instsmulcommclass-source-edition-2.md) | 335 | `declaration-track:f1fefbebcc9dd78992d6cc52ed4025a92ad41c8ad5a9d24aa3d1d434f6ff8435` |
| 55 | `theorem` | [uniformContinuous](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/uniformcontinuous.md) | 350 | `result-track:f98cde16faabd312e7c5f73581482fa58693a9e0e135538a63358b53f8ca7e7e` |
| 56 | `theorem` | [bounded](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/bounded.md) | 370 | `result-track:74df820675dd1e69629ef936341316c930db85514e621870c84172fab5872f39` |
| 57 | `theorem` | [isBounded_range](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/isbounded-range.md) | 383 | `result-track:e7e3eaedf8038b584c5b20b5318b761265cdf75a21862b73b17f1c7cd3804c6f` |
| 58 | `theorem` | [isBounded_image](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/isbounded-image.md) | 386 | `result-track:3671dbb82629ef69cde0a78b44d8129d5004055af81ff0cc978b2e65d5551f59` |
| 59 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 389 | `declaration-track:ae740ee6d99bf6aa4fe39b038772ee0fafc55a3bf17bd4534b9fe6d65e1629a4` |
| 60 | `def` | [toBCF](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/tobcf.md) | 395 | `declaration-track:b1df906d637ba35dd964d62ba1503951c9e97ed606119099579c14343cc4209e` |
| 61 | `theorem` | [toBCF_injective](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/tobcf-injective.md) | 402 | `result-track:ee9fd8ae7ba0dba1a2c1b1175f6746dc53e965e1256c5a6232d961dafb17457c` |
| 62 | `instance` | [instPseudoMetricSpace](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instpseudometricspace.md) | 412 | `declaration-track:add2f998f481e28b30f0fa4ea173f2e7a29e53367331913fe0ef6daa0f5ed17c` |
| 63 | `instance` | [instMetricSpace](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instmetricspace.md) | 417 | `declaration-track:9f77a85bbd372c2d1f2b104240efc96b38cca9101bab62545f873e21fb13836b` |
| 64 | `theorem` | [dist_toBCF_eq_dist](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/dist-tobcf-eq-dist.md) | 422 | `result-track:71c356052b9ee1f85d25230b72e5b325b4652f72fcb004facc55066d072b7687` |
| 65 | `theorem` | [tendsto_iff_tendstoUniformly](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/tendsto-iff-tendstouniformly.md) | 428 | `result-track:7e27ff25d309899f19529e79fe44d902fbd3762e9d2717fd3bfd5918117e4928` |
| 66 | `theorem` | [isometry_toBCF](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/isometry-tobcf.md) | 434 | `result-track:1451f4d2185505ef32b26bec4a4117dd81fb8e2b71e96d46d6410dc4140c3c44` |
| 67 | `theorem` | [isClosed_range_toBCF](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/isclosed-range-tobcf.md) | 436 | `result-track:1a79186b02091aadc4a9d1fc7f6a4a40e7a8641d2b64a75562f6aefa881fc4f3` |
| 68 | `instance` | [instCompleteSpace](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instcompletespace.md) | 453 | `declaration-track:c072d5128c824a6f6e95fb0e4b4bddf1ff24811d26f35f54a78151f4ec4fb6c1` |
| 69 | `instance` | [instSeminormedAddCommGroup](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instseminormedaddcommgroup.md) | 471 | `declaration-track:09a97aa8641f1e403f745904c2766ea2322e44dec4b9c51f1eefde55d96f6f11` |
| 70 | `instance` | [instNormedAddCommGroup](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instnormedaddcommgroup.md) | 475 | `declaration-track:138a354bc2e7203a1eb9325a357c80206a74ed4e74ecd1eadf05590daec026fb` |
| 71 | `theorem` | [norm_toBCF_eq_norm](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/norm-tobcf-eq-norm.md) | 483 | `result-track:32358bb2589a2c128c66e53b048dd9cf2f82faa8fc3d1f25ca89c614dbcb9880` |
| 72 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instance.md) | 486 | `declaration-track:7862b0c9ee4150cf9c493e8abda87cf47f56b03530cf3380c3e13557de12b61f` |
| 73 | `instance` | [instNonUnitalSeminormedRing](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instnonunitalseminormedring.md) | 493 | `declaration-track:228a3f3040367b9a3781445b988a85e1782cafffb1d9b5a205d49e7748cd27d4` |
| 74 | `instance` | [instNonUnitalNormedRing](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instnonunitalnormedring.md) | 498 | `declaration-track:a9741d96244698aa417a5080fa7c60c69f0a75468fd57f18cacfeba2408be81d` |
| 75 | `instance` | [instNonUnitalSeminormedCommRing](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instnonunitalseminormedcommring.md) | 502 | `declaration-track:919a42351d75c0acd4fb419ce8c99b3cf34a82882edf67349c695bf6270e8344` |
| 76 | `instance` | [instNonUnitalNormedCommRing](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instnonunitalnormedcommring.md) | 506 | `declaration-track:da9d45f0169c7967ceaf70f1f44b421b40d9d7e88a1e2ca891640d19ecddd01c` |
| 77 | `instance` | [instStar](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/inststar.md) | 529 | `declaration-track:49e6aa4e28bfbb1e52f945aa3c725f98ca07a002910cd9758da92b4f86e80b10` |
| 78 | `theorem` | [coe_star](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/coe-star.md) | 537 | `result-track:95e06e6e9d84194640151859eb668640270b42758b9df589134727daed6dc96e` |
| 79 | `theorem` | [star_apply](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/star-apply.md) | 540 | `result-track:4d25b559eb4173584412886459081e342729a4c0d78b4ff1e3ae392c8a95c770` |
| 80 | `instance` | [instStarAddMonoid](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/inststaraddmonoid.md) | 543 | `declaration-track:9ba27d86d30c1a6be18cffcbe8af65eb25f0d795bc4d2b440b69152fd685f775` |
| 81 | `instance` | [instNormedStarGroup](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instnormedstargroup.md) | 553 | `declaration-track:84a51102b098d583a0845d9fb87d72c1b8c0e1ebc38acba0f0809c6f6ab7a39b` |
| 82 | `instance` | [instStarModule](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/inststarmodule.md) | 563 | `declaration-track:fc1d5bc54ab486947ecbd532c8bed545c719defe3220de5ac69cfe38deaf73f9` |
| 83 | `instance` | [instStarRing](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/inststarring.md) | 573 | `declaration-track:96e240af56aeecdd9dc250bd35bf6995411aac7801fdd4b2309811f62898a8b8` |
| 84 | `instance` | [instCStarRing](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/instcstarring.md) | 581 | `declaration-track:c8d4adaea9932a789f7c2db083e99f76d111847975901edf26d355571fe08131` |
| 85 | `def` | [comp](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/comp.md) | 603 | `declaration-track:3685b5004e2a8c2b335bf7d1c1eee4e2d18e85a3cd6897d3abc748289b087eb5` |
| 86 | `theorem` | [coe_comp_to_continuous_fun](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/coe-comp-to-continuous-fun.md) | 608 | `result-track:3c95f0865010cf6898fe584ab3774dcf8a3a7751843498b0ea36cb09a68c0db4` |
| 87 | `theorem` | [comp_id](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/comp-id.md) | 612 | `result-track:11ad78e6c4cf0a213748a028cb984d64a24727a78c94d9a3113cae6620fd255d` |
| 88 | `theorem` | [comp_assoc](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/comp-assoc.md) | 616 | `result-track:a75982043ee5a24f6d7eee8177fd32f4f4e48ae075e8e995cab1903a6488d0f2` |
| 89 | `theorem` | [zero_comp](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/zero-comp.md) | 621 | `result-track:920262565e6d97164171d3057d47ebe64b48f8c8f167ac5222f15a4ab838f565` |
| 90 | `def` | [compAddMonoidHom](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/compaddmonoidhom.md) | 627 | `declaration-track:42d3c806395d9e48476667f8ad3a5dc556fa943d3ff9f0224ef1d5b18f892fce` |
| 91 | `def` | [compMulHom](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/compmulhom.md) | 633 | `declaration-track:652048f68ed2e6074db4266e719b98d75437d0c4d1e5410ed873135fae87b6d5` |
| 92 | `def` | [compLinearMap](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/complinearmap.md) | 638 | `declaration-track:08eb688827eb349859be951cb1182edd6841d033b85fb48fa72a20183fa1be60` |
| 93 | `def` | [compNonUnitalAlgHom](../../../../GeneralTopology/ContinuousMapZeroAtInftyNamespacedPublic.lean/declarations/compnonunitalalghom.md) | 645 | `declaration-track:b2571189d7f182a496ed6ee04ca4b323e19bb9eee1f92b8dbda8a772692fdd9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=75ea540473d5e81758c5a0327ac88c5acb9616f51c1e4e74ecaf0e1d31b28533 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Varianta7535ac0bf30f3343be14649d58d61161e2eb49749b7dcef7e4a15d5f0d58d52.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ZeroAtInfty/Varianta7535ac0bf30f3343be14649d58d61161e2eb49749b7dcef7e4a15d5f0d58d52.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
