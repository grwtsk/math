# Verification target: Continuous Map Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dba3ff124acba0d76d7c945eba80379fb8982fc3",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ContinuousMapZero/Variant58fa04fb28f061b185f140cecd8fdbe3e507eeb781529bc31007b852b4d53934.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ContinuousMapZero.lean/index.md) · [Full source](../../../../GeneralTopology/ContinuousMapZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dba3ff124acba0d76d7c945eba80379fb8982fc3`.

Source path: `GRWTSK/Topology/GeneralTopology/ContinuousMapZero/Variant58fa04fb28f061b185f140cecd8fdbe3e507eeb781529bc31007b852b4d53934.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ContinuousMapZero/Variant58fa04fb28f061b185f140cecd8fdbe3e507eeb781529bc31007b852b4d53934.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousMap.Algebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Compact` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousMapZero](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/continuousmapzero.md) | 31 | `declaration-track:2a1ca582ed2c9881d8dad1c02300dabcd828f8666d6d1730518681026005d74d` |
| 2 | `instance` | [instFunLike](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instfunlike.md) | 45 | `declaration-track:709c47403758a71325bcf956826fea9854c6fe1272bd31abb009c752636bdd54` |
| 3 | `instance` | [instContinuousMapClass](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instcontinuousmapclass.md) | 49 | `declaration-track:df17048a25b49c1176371f29a51cf7042f34f21ca5814d9250bf6e5c69fde951` |
| 4 | `instance` | [instZeroHomClass](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instzerohomclass.md) | 52 | `declaration-track:b59b74029db85611e4c0d67af90b7b17207b3e4d6cff3c9611936b68fecc96e0` |
| 5 | `lemma` | [ext](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/ext.md) | 56 | `result-track:37245f6ef2fbf0c177bf5641a3c6311fecdfa37517842a544028fee8ce032810` |
| 6 | `lemma` | [coe_mk](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/coe-mk.md) | 59 | `result-track:0bbc3e7694c6c467166b40cd05e5c535b91f1d63e0d2e1f35db5d59e6041511c` |
| 7 | `lemma` | [toContinuousMap_injective](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/tocontinuousmap-injective.md) | 61 | `result-track:59ba8f1cf148265411c79f97d52137f163c4d71c597ae7d1aabee359cac0c4f3` |
| 8 | `lemma` | [range_toContinuousMap](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/range-tocontinuousmap.md) | 64 | `result-track:275fd685a8bd32c5d4f1ddce7888a644bdd81149fdbda8b37cadb6fc0c3d3492` |
| 9 | `def` | [comp](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/comp.md) | 68 | `declaration-track:27bd3ccaaef259118e30e8aa86e09e4d82d0bd4735e29c98507727e979830347` |
| 10 | `lemma` | [comp_apply](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/comp-apply.md) | 73 | `result-track:615f853b1c70e6392a26c0fec6cd2c0ef85e8489dbcb8ad2d506fdfd5997ac00` |
| 11 | `instance` | [instPartialOrder](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instpartialorder.md) | 75 | `declaration-track:ba04bedd8a8fd9753b11aed9fd64b39bd66df58550434af1dadb579864a3d43d` |
| 12 | `lemma` | [le_def](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/le-def.md) | 78 | `result-track:107eff5b31856d26694142002ebc95fe8777824b4c76555f05f7ce6e27486b23` |
| 13 | `instance` | [instTopologicalSpace](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/insttopologicalspace.md) | 80 | `declaration-track:6456b63bbe513518a966f75907d8d9573a98e49cfa9ccdb8bf5a7b1035474cf4` |
| 14 | `lemma` | [isEmbedding_toContinuousMap](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/isembedding-tocontinuousmap.md) | 83 | `result-track:eb76226377ad199996af605eeb074c569c0deb616c94f54af9bc3c5d5f8e0a79` |
| 15 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instance-source-edition-5.md) | 90 | `declaration-track:8d23e064fc62eda8e2a12417be90b249d595f51e3acc353ca465b1cc1422d6df` |
| 16 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instance-source-edition-7.md) | 91 | `declaration-track:b6fa15e5eff9a963968f5120bbd34c635aa3ee521f02253a543b161c7ec4bfd1` |
| 17 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instance-source-edition-13.md) | 92 | `declaration-track:ea8e579ea8fa3e05e582674b897a416952df54f0789af12e48b864a280bfe574` |
| 18 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instance-source-edition-6.md) | 93 | `declaration-track:b0329c0f98aace29eb4d27ca59eaa79349f698dd4208746d664e7ae65ceee364` |
| 19 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instance-source-edition-15.md) | 94 | `declaration-track:f4b9c335adb9315152e82f96b727fdf41042ebb8039e181c3ec4999a0bdfbad6` |
| 20 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instance.md) | 95 | `declaration-track:23bcd73ed40fb35bbbb0d184f3b08f0b55a1c8d619d6a36e6309ad2ec6fc27f7` |
| 21 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instance-source-edition-2.md) | 96 | `declaration-track:33eb5620f3df39a97b23f1c75b1e7c87401c1e220118ab76403a864626c91872` |
| 22 | `instance` | [instContinuousEvalConst](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instcontinuousevalconst.md) | 98 | `declaration-track:f2dc4862eda6341db2ab7a68a2b0613aa9f0da216df06c17e6b9500c7ce65801` |
| 23 | `instance` | [instContinuousEval](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instcontinuouseval.md) | 101 | `declaration-track:594b674914a2c9a93cde1b787099d8e89feda8500da2e4cc52d44ebfdce5bd2d` |
| 24 | `lemma` | [isClosedEmbedding_toContinuousMap](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/isclosedembedding-tocontinuousmap.md) | 104 | `result-track:4bcaae28a9838e12ed75d229fc784600db8ba454af9245fd4c0e839a49be9d29` |
| 25 | `lemma` | [continuous_comp_left](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/continuous-comp-left.md) | 112 | `result-track:5bba22e497351e0499bc69bfb068bfa647e3430dfd1b600a068a05b3a4f77ba1` |
| 26 | `def` | [id](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/id.md) | 121 | `declaration-track:614f00c53e4d114b5c479d47c64a5ec4cd9a698ec9ca6f57c73bed1eb474364f` |
| 27 | `lemma` | [toContinuousMap_id](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/tocontinuousmap-id.md) | 125 | `result-track:b23c549907e5a184c62fcda94debb4b8fd1e0ac705499dfc7f04819e0f1e434f` |
| 28 | `instance` | [instZero](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instzero.md) | 136 | `declaration-track:3cfd07b9a1295b8e28319cf9274ed2b03f6cc12d0945c92424fa171ba30710ba` |
| 29 | `lemma` | [coe_zero](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/coe-zero.md) | 139 | `result-track:e3862dcd0fa52072cafc602ab5a438ea36fd5256fde6321ce8a248ef9e207dc7` |
| 30 | `instance` | [instAdd](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instadd.md) | 141 | `declaration-track:5407f92d4add51da4a30ca849f46a8b86b67d8235edf70b1d8a2aeb0d19d976c` |
| 31 | `lemma` | [coe_add](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/coe-add.md) | 144 | `result-track:a7954ac60ce7584dce9a77ad3e5f0c8f6538a1670b57079d0e259dc2236a977c` |
| 32 | `instance` | [instMul](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instmul.md) | 146 | `declaration-track:c92d0d46ca2043542a7bb6ed84a763cd88080dae4498ea64d31c406fbc374453` |
| 33 | `lemma` | [coe_mul](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/coe-mul.md) | 149 | `result-track:e8ca6b7429f61e7438fae57baa75fe2df325c7091a1a7040cc749cb805544544` |
| 34 | `instance` | [instSMul](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instsmul.md) | 151 | `declaration-track:71ff19c4b2209bc01f4efaa6c21bff0dc971ceef9f63544dfdb128ebf1df2b03` |
| 35 | `lemma` | [coe_smul](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/coe-smul.md) | 155 | `result-track:64a34b81063e129988cffbf76693f60dbb8aed17f6a27f400f8cf84063aef1c1` |
| 36 | `instance` | [instNonUnitalCommSemiring](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instnonunitalcommsemiring.md) | 162 | `declaration-track:43a57b91ed5a2c4e7a85d8f1e1c5e1146d4371182afa5cd3e238fb3fffa42926` |
| 37 | `instance` | [instModule](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instmodule.md) | 166 | `declaration-track:5748da0ec92523a646ac49c3aa12771bf6aa9498b7e585b3b076972242dd4f1c` |
| 38 | `instance` | [instSMulCommClass](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instsmulcommclass.md) | 171 | `declaration-track:0aede10348dcea5c33de9a75b849d263354179f390d5d1c9fe2e9e1ae27e581d` |
| 39 | `instance` | [instSMulCommClass'](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instsmulcommclass-source-edition-2.md) | 176 | `declaration-track:509c1a91e17c1eeda2129386cf054de337a44f15ae055786e55fa42be34bb2cc` |
| 40 | `instance` | [instIsScalarTower](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instisscalartower-source-edition-2.md) | 180 | `declaration-track:fa96dd17f39111a43616b73730c64b238dd2957d3fd952bc89a4fe3fe4b68d15` |
| 41 | `instance` | [instIsScalarTower'](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instisscalartower.md) | 185 | `declaration-track:dca804ca1e9916ede363b9f652767079231b7ad37134a0883218d0f9ea23fc53` |
| 42 | `instance` | [instStarRing](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/inststarring.md) | 189 | `declaration-track:7fb27ce55e5efd05b0516c440e537a4c9937f90019e3261b5cb4ab9fcc9a46fa` |
| 43 | `instance` | [instStarModule](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/inststarmodule.md) | 195 | `declaration-track:081a24e74e144c3c7df5506de24304b0ccaec7fb1009b0b2a2958c85b1ec9b83` |
| 44 | `lemma` | [coe_star](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/coe-star.md) | 199 | `result-track:7ac49c3c690a394af0ac4c5b396114d964ebc62c10404b633b9469d5096f052d` |
| 45 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instance-source-edition-8.md) | 201 | `declaration-track:c36754fd9e49c93793b2cfb4da2df5921ebddd3fa2cf166647ff90d69e052f1e` |
| 46 | `instance` | [instCanLift](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instcanlift.md) | 204 | `declaration-track:889d6db10c3b5f88d2c4ac1ca8e4f103117c2c44c54d25ea230b4cc8d92a4491` |
| 47 | `def` | [toContinuousMapHom](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/tocontinuousmaphom.md) | 209 | `declaration-track:fa193933d6af28666eceff57306ea3126834fd4ab4e176435c6526a58bc26730` |
| 48 | `lemma` | [coe_toContinuousMapHom](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/coe-tocontinuousmaphom.md) | 217 | `result-track:4cec60a51dddef91c04cef7c0529141c7172cf4d2a03b06d815d46fdaf4d5549` |
| 49 | `def` | [toContinuousMapCLM](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/tocontinuousmapclm.md) | 223 | `declaration-track:6dea5f8a2aef265563e7b19229a169df9b4ae4c5d7020b170557833cd9f057b1` |
| 50 | `def` | [evalCLM](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/evalclm.md) | 230 | `declaration-track:6da579b67ad9b91eadcb1448c151193dab29e00948b227e37cb628a15c812a32` |
| 51 | `lemma` | [evalCLM_apply](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/evalclm-apply.md) | 235 | `result-track:b7881e807729ed243b8cb10f368012ddb4a2a094838bfdce35734a054815f6ee` |
| 52 | `def` | [coeFnAddMonoidHom](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/coefnaddmonoidhom.md) | 239 | `declaration-track:64b8112d99164bf3a455f94f08f8e7febf1fad9a4f8e7eea5c72952bced3f763` |
| 53 | `lemma` | [coeFnAddMonoidHom_apply](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/coefnaddmonoidhom-apply.md) | 245 | `result-track:7758a5c8a54d5820775857759c3edf4b1dd4fa4183737151dab6ce088fce3892` |
| 54 | `lemma` | [coe_sum](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/coe-sum.md) | 247 | `result-track:df2577b24a4a2542ecb4bda8f3a650c07ed57225f08fa3f7099536c8a6cf7041` |
| 55 | `instance` | [instSub](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instsub.md) | 258 | `declaration-track:054100955e6662348b1a50cc56c2f54935810fc1bf7e58a68a68dc3d4c57e27c` |
| 56 | `instance` | [instNeg](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instneg.md) | 261 | `declaration-track:242a059fb8d821744a23d68994b18f725ac4969404adea21ee7899398b36863d` |
| 57 | `instance` | [instNonUnitalCommRing](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instnonunitalcommring.md) | 264 | `declaration-track:d987acf880706d5639c971013d56914373cd6fad28c8a23e86fc86096d1bbfd7` |
| 58 | `lemma` | [coe_neg](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/coe-neg.md) | 269 | `result-track:f649ef44eacfb76edfd94832b678963e303a2122eacd62857de2686ef920023a` |
| 59 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instance-source-edition-3.md) | 271 | `declaration-track:3cd20f94559fbe53cbd3f42c728cb22e4399b8049f80093770cd50d4abd9dbc6` |
| 60 | `instance` | [instUniformSpace](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instuniformspace.md) | 285 | `declaration-track:af7e9963f00be97896178e912104957186759d08d806d35e9de48d12ee3eae38` |
| 61 | `lemma` | [isUniformEmbedding_toContinuousMap](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/isuniformembedding-tocontinuousmap.md) | 287 | `result-track:e46706ec5bb44adb9879c65d06e99c09e201828f94b41028f1895c845536a978` |
| 62 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instance-source-edition-10.md) | 292 | `declaration-track:d16b6787a43cfad62b66a01c5f40d3283cf5a629e914a88c99ce29dd5d5b0505` |
| 63 | `lemma` | [isUniformEmbedding_comp](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/isuniformembedding-comp.md) | 296 | `result-track:27fe13cc528bccfb1fa775b06fa6374b00545d7ff81817a99d378babdadc993c` |
| 64 | `def` | [_root_.UniformEquiv.arrowCongrLeft₀](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/root-uniformequiv-arrowcongrleft.md) | 304 | `declaration-track:c0a56b9b9039e9ecf76f57dc35270243797ccc9ce8f16d4bcce33a85a75dd66c` |
| 65 | `def` | [nonUnitalStarAlgHom_precomp](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/nonunitalstaralghom-precomp.md) | 331 | `declaration-track:50b6bfd12fa6bea41727ce8845422e9009fa93b1e0e54e8430009a646307be87` |
| 66 | `def` | [nonUnitalStarAlgHom_postcomp](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/nonunitalstaralghom-postcomp.md) | 343 | `declaration-track:a36036ac30365f2928da5512261fb92fb7a4874e6f08df756bc596ee2c192bb2` |
| 67 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instance-source-edition-11.md) | 358 | `declaration-track:ddd86cb801dcb93d78559e7236fff925590c5edc130bef18f887ebcfdb3c827e` |
| 68 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instance-source-edition-12.md) | 361 | `declaration-track:e3711192907ca5a6e6cce215a4b6fae5c59a15c9cf9d6e10e23a251ce737240f` |
| 69 | `lemma` | [norm_def](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/norm-def.md) | 364 | `result-track:1935795b4653bcb4700676b05210b56e46b8b650ee13b4f289bc4a71a52702b6` |
| 70 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instance-source-edition-9.md) | 367 | `declaration-track:cceda48b3acb9f25cc3acfd694ac9c261dbe1f1d10190e9a0e4b984dd2c5390b` |
| 71 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instance-source-edition-4.md) | 372 | `declaration-track:767c9e33ea0bea4e3c2c9f2ee03f0312000871c83b307f17985b9dfd6b1baa73` |
| 72 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZero.lean/declarations/instance-source-edition-14.md) | 376 | `declaration-track:f2ba8c5e64259623ddeb2251c73f8e21ba6c86ead74233ce4957fc598d0afdc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc52c02f3a2b358bb3e59a50ce6511bfde5b6f8f2fbc10b37caa9844c60dea0b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ContinuousMapZero/Variant58fa04fb28f061b185f140cecd8fdbe3e507eeb781529bc31007b852b4d53934.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ContinuousMapZero/Variant58fa04fb28f061b185f140cecd8fdbe3e507eeb781529bc31007b852b4d53934.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
