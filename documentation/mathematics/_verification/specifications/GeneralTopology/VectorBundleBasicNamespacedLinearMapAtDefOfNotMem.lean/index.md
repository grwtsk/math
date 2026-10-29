# Verification target: Vector Bundle Basic Namespaced Linear Map At Def Of Not Mem

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "819ab22cae2ff5c95513c9145fe1c5778bf4a61b",
  "lexical_observation_count": 114,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant11df1c28f200a799fde80d32e1168ff8b1d94f4888318801459815a8c8d764b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/index.md) · [Full source](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `819ab22cae2ff5c95513c9145fe1c5778bf4a61b`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant11df1c28f200a799fde80d32e1168ff8b1d94f4888318801459815a8c8d764b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant11df1c28f200a799fde80d32e1168ff8b1d94f4888318801459815a8c8d764b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Operator.BoundedLinearMaps` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.FiberBundle.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Pretrivialization.IsLinear](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/pretrivialization-islinear.md) | 76 | `declaration-track:433c26dcf69fd4729d227a0599e5ddfdaaf33df9a31fdccc5135a3db951b30c4` |
| 2 | `theorem` | [linear](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/linear-source-edition-2.md) | 84 | `result-track:a43e208c1c6ea09cbfba382d549a744c1456bcd9b597d8eea23b0bb7b4adad6f` |
| 3 | `def` | [symmₗ](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/symm.md) | 93 | `declaration-track:28c1f226b18351fc833db5486d7a78e1b4a7ebf79d08707970091280bf3d6345` |
| 4 | `def` | [linearEquivAt](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/linearequivat-source-edition-2.md) | 104 | `declaration-track:64941844c5574e5f4b9a7063e9b6c704179207c91c49aaab5f6b71c375671e3c` |
| 5 | `def` | [linearMapAt](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/linearmapat.md) | 115 | `declaration-track:6b90426e7bbc862119a541df39e4bad489b38e999ccde8476ba34791bff0d39e` |
| 6 | `theorem` | [coe_linearMapAt](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/coe-linearmapat.md) | 121 | `result-track:332a3339753726c732a084dc3e11b9e60b76dc2225ad38b1763dc1133a0c9896` |
| 7 | `theorem` | [coe_linearMapAt_of_mem](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/coe-linearmapat-of-mem-source-edition-2.md) | 126 | `result-track:b0eb55485533baed384d0bf194cb7a31c59599b1ca5448ed2a43e465c3472588` |
| 8 | `theorem` | [linearMapAt_apply](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/linearmapat-apply.md) | 131 | `result-track:2a4724681f335cd74e7078a516ef7c089b012ebd8903ad07bd3178443d2d088a` |
| 9 | `theorem` | [linearMapAt_def_of_mem](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/linearmapat-def-of-mem-source-edition-2.md) | 135 | `result-track:c325299f1e70c9ce994792cebab84e8c905ca39bd84653b73d2f7a6a47ed20d2` |
| 10 | `theorem` | [linearMapAt_def_of_notMem](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/linearmapat-def-of-notmem.md) | 139 | `result-track:cd447866beda0ad6f60e1fb52351c83ca19282696948af897749a0da037a2da2` |
| 11 | `theorem` | [linearMapAt_eq_zero](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/linearmapat-eq-zero.md) | 145 | `result-track:c292ab674877fa035c56e82a595d1a7af7977b4725b4a6e9b34e05dd6e975180` |
| 12 | `theorem` | [symmₗ_linearMapAt](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/symm-linearmapat-source-edition-2.md) | 149 | `result-track:eb976ea7d3ffa0c4d7beab3535e5b0d17573a7e2440d9e14e1e3e7708977aaaa` |
| 13 | `theorem` | [linearMapAt_symmₗ](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/linearmapat-symm.md) | 154 | `result-track:d4a6902595c319f5ca81849332d5c9cfe6f6a8ba8cc9bf2d196f47e2936d05d9` |
| 14 | `class` | [Trivialization.IsLinear](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/trivialization-islinear.md) | 165 | `declaration-track:017890b2e848a663d19c8dfd1b0fa3d1178b9a4b6f6c29e62ed85f95791dc207` |
| 15 | `theorem` | [linear](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/linear.md) | 173 | `result-track:185d65751867328c2f78aef526dfcd9ac203c68af39f5d487f84e8b6443719e0` |
| 16 | `instance` | [toPretrivialization.isLinear](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/topretrivialization-islinear.md) | 178 | `declaration-track:4b2df1eca1b907e1dfb11674375c711ebdededcd9f93bd0cd673c07452ae7b90` |
| 17 | `def` | [linearEquivAt](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/linearequivat.md) | 186 | `declaration-track:2098e1bcc4ad92f726772013aac499a1b55368678fcdc70b24f9b882dd46a117` |
| 18 | `theorem` | [linearEquivAt_apply](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/linearequivat-apply.md) | 193 | `result-track:df7affc09e9e6a907ac2c5d1cc3e583c4091595f3e6b0a66f45a00c7ae9b6323` |
| 19 | `theorem` | [linearEquivAt_symm_apply](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/linearequivat-symm-apply.md) | 198 | `result-track:b69eabf5f58fa3a8b0e4f12d136b5bb198e345e152267fffc72d33f0b2504ad8` |
| 20 | `def` | [symmₗ](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/symm-source-edition-2.md) | 204 | `declaration-track:fbf01762f9221ff2fb8914ac66f280c1e6d215cdc40fff7a273e77a9ca753b3b` |
| 21 | `theorem` | [coe_symmₗ](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/coe-symm.md) | 207 | `result-track:cbef1d54c3d75a3c2ea460e8b34300807419f6d770abdac45b3a559f8ed797a2` |
| 22 | `def` | [linearMapAt](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/linearmapat-source-edition-2.md) | 213 | `declaration-track:ca8f42f442b1690ffc777720cd0f9b3e5911db3cbd2341be52b93e2ffe589d90` |
| 23 | `theorem` | [coe_linearMapAt](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/coe-linearmapat-source-edition-2.md) | 217 | `result-track:a1a74fae4b3b96b2f42f2d06462527692aa39ded761566f563969c7f7deea956` |
| 24 | `theorem` | [coe_linearMapAt_of_mem](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/coe-linearmapat-of-mem.md) | 221 | `result-track:26595c64cd02d43ff9f6b685c1ca714bf277c7747e41f3ac04eac34428cadab3` |
| 25 | `theorem` | [linearMapAt_apply](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/linearmapat-apply-source-edition-2.md) | 226 | `result-track:a076949cf8491c0c0ebe1505ce2b6dee8f1b7338a8f50429189f3eb5fde8427b` |
| 26 | `theorem` | [linearMapAt_def_of_mem](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/linearmapat-def-of-mem.md) | 230 | `result-track:29966163b580f39236e1fba3234157c2ad69a7de058d494f4d8dadf4d69e306f` |
| 27 | `theorem` | [linearMapAt_def_of_notMem](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/linearmapat-def-of-notmem-source-edition-2.md) | 234 | `result-track:fff8385d35bcd183b44ecb936149c030445a09275d6a63966f55e3a2b92ecb2d` |
| 28 | `theorem` | [symmₗ_linearMapAt](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/symm-linearmapat.md) | 240 | `result-track:12c29c338200fa0ca685ac2d422daf78a2731c2cf0b806e9be1ebc162311e8a2` |
| 29 | `theorem` | [linearMapAt_symmₗ](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/linearmapat-symm-source-edition-2.md) | 244 | `result-track:f04f57ea084986c143cb209a5e217ca271030a355ab407cd1cd1e737e775cdee` |
| 30 | `def` | [coordChangeL](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/coordchangel.md) | 252 | `declaration-track:1f84598041caac094d41afbee2700e57d24ec73a6562a4c32b24a907642a7549` |
| 31 | `theorem` | [coe_coordChangeL](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/coe-coordchangel.md) | 276 | `result-track:5467ffe212fcd244ea298a0c5283ef88c6d5e94322d659ef2183a6fa2b06fad8` |
| 32 | `theorem` | [coe_coordChangeL'](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/coe-coordchangel-source-edition-2.md) | 281 | `result-track:a1403ee589d378a52264e5817374b8416e268aff3ca15c74f5db4dfc14fb0215` |
| 33 | `theorem` | [symm_coordChangeL](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/symm-coordchangel.md) | 287 | `result-track:86cf6d102d37fa97dfa8edcde5841ff52636887e277a253f0d4efc5dabf9f729` |
| 34 | `theorem` | [coordChangeL_apply](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/coordchangel-apply.md) | 293 | `result-track:c2d5a9b5d01fe2f1b625da1d56e13e29bf2a0f1cea5870dcd0cd5b80118fbbd2` |
| 35 | `theorem` | [mk_coordChangeL](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/mk-coordchangel.md) | 298 | `result-track:e662ef785d71757555c7e1790c1e8d1584589f37b523856bdb69e4706ea66eda` |
| 36 | `theorem` | [apply_symm_apply_eq_coordChangeL](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/apply-symm-apply-eq-coordchangel.md) | 307 | `result-track:211c1cdabc35bf240f8a32d57c3658c8b3993db21afac58345732749ec4bd0b9` |
| 37 | `theorem` | [coordChangeL_apply'](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/coordchangel-apply-source-edition-2.md) | 315 | `result-track:c2e8b8f18598055281f8460c5dc439f86dcb62ac7a2d43ab416c3c8f965057ab` |
| 38 | `theorem` | [coordChangeL_symm_apply](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/coordchangel-symm-apply.md) | 320 | `result-track:67f78aaa570c64f1348baad9ea7267996e3d467a33a2c56284069a2c3289e61e` |
| 39 | `def` | [zeroSection](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/zerosection-source-edition-2.md) | 335 | `declaration-track:c6d5b4fb8ebc15ff3d5165ae302c2e9ba5e311275ff5805e44b46bdde07e01d4` |
| 40 | `theorem` | [zeroSection_proj](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/zerosection-proj.md) | 338 | `result-track:8806b836b96c7907be890029d7883a905e9c37e1ee1293a2b2f343314b6c72a2` |
| 41 | `theorem` | [zeroSection_snd](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/zerosection-snd.md) | 342 | `result-track:d6ec76789cc397ba4036e77ad39acdd0614ca6f59cf3855aae33b7b0c7ac5921` |
| 42 | `class` | [VectorBundle](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/vectorbundle-source-edition-2.md) | 357 | `declaration-track:6619d4c5342fbb029eeaf5ad316a293772db90517c4f4289446675a07d5f6762` |
| 43 | `instance` | [(anonymous)](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/instance-source-edition-2.md) | 366 | `declaration-track:d048ec4766f1bbc27cbe3e6005f084623bae919f6ff0adf1f4319868b0e5ff2d` |
| 44 | `theorem` | [continuousOn_coordChange](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/continuouson-coordchange.md) | 370 | `result-track:60872522f63bc320bfedf32430416c5859922dc06fee5bc5e1528b2b5e22dd30` |
| 45 | `def` | [continuousLinearMapAt](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/continuouslinearmapat.md) | 381 | `declaration-track:183b1e53bdc3fd0432d8c67997892a5836e8d6b7da3919ccfba4373471df3df7` |
| 46 | `def` | [symmL](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/symml.md) | 393 | `declaration-track:2a5412c58eaed751f4dd1a905aeba46912cf575ba00f2f0020ea08a0df493d75` |
| 47 | `theorem` | [symmL_continuousLinearMapAt](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/symml-continuouslinearmapat.md) | 405 | `result-track:7c4ed37f06832e15774411a8ad8633ba76c40c4000592ef733677224a9dd6539` |
| 48 | `theorem` | [continuousLinearMapAt_symmL](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/continuouslinearmapat-symml.md) | 409 | `result-track:0c710d80f5083eab7bc5f407cddc3e26298dd80b832ecf4e85d98eb862ddad5e` |
| 49 | `def` | [continuousLinearEquivAt](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/continuouslinearequivat.md) | 417 | `declaration-track:fdfc97ec95d03f9991e39c7b5079bef89adaf1b74c3a1001918e11e3438a1c38` |
| 50 | `theorem` | [coe_continuousLinearEquivAt_eq](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/coe-continuouslinearequivat-eq.md) | 426 | `result-track:6d8837ce847af31edf71cd4f2c6e6a50eaf4dca127df99f16874999c22ab5ac5` |
| 51 | `theorem` | [symm_continuousLinearEquivAt_eq](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/symm-continuouslinearequivat-eq.md) | 431 | `result-track:384871684eae2afd5e21ea5bffbe38e354abc7c19a0881a351d7f8f19a9807a8` |
| 52 | `theorem` | [continuousLinearEquivAt_apply'](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/continuouslinearequivat-apply.md) | 436 | `result-track:0895963d3532d2353475a1942f62937b8482ca29075e0ddf83430efa6a022791` |
| 53 | `theorem` | [apply_eq_prod_continuousLinearEquivAt](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/apply-eq-prod-continuouslinearequivat.md) | 442 | `result-track:2a8f3553fbaab45a05d500d58db5e996533ef79a221254962fec9115a8943dd9` |
| 54 | `theorem` | [zeroSection](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/zerosection.md) | 450 | `result-track:86e6562544168c4df4bc49ad55f819ebee3a09d48d573a6ec9d479b0efbc07d6` |
| 55 | `theorem` | [symm_apply_eq_mk_continuousLinearEquivAt_symm](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/symm-apply-eq-mk-continuouslinearequivat-symm.md) | 456 | `result-track:c1ba5254298e7017f6788218fcb43d1727dff8e9569d47ffbab800ca948ae5e7` |
| 56 | `theorem` | [comp_continuousLinearEquivAt_eq_coord_change](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/comp-continuouslinearequivat-eq-coord-change.md) | 467 | `result-track:30ed71abb6bbe5cbcdc7b74987569c4bb05a8b28e2d40aa93e27bfdcb147e507` |
| 57 | `structure` | [VectorBundleCore](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/vectorbundlecore.md) | 484 | `declaration-track:57fc0e8ba1545069766ac27daf53232659a4a7c01bfc07e201ee3ec9661b5bef` |
| 58 | `def` | [trivialVectorBundleCore](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/trivialvectorbundlecore.md) | 497 | `declaration-track:16fa7b413096ff3b16b803662cf5ada90a9fab0794b51bb8ff95ae0145e99d4a` |
| 59 | `instance` | [(anonymous)](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/instance.md) | 507 | `declaration-track:b4c2218692eb23bf5aed5cb08f1048b8a0ea32a0ba708776e7688a9002ce8f98` |
| 60 | `def` | [toFiberBundleCore](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/tofiberbundlecore.md) | 517 | `declaration-track:85d11d745656e5cc118e4ca56a3333c4f5a2a5f2045c465669dd919a1d995a19` |
| 61 | `theorem` | [coordChange_linear_comp](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/coordchange-linear-comp.md) | 528 | `result-track:9a97bbc4f662dc6568fca221ad39bc683c422250ebb50a638ee81a37ab5cf019` |
| 62 | `def` | [Index](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/index.md) | 537 | `declaration-track:d5d4b8442e47ba6934f66871a0025165c8db6713d86f33c425fd29005ddc1f18` |
| 63 | `def` | [Base](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/base.md) | 541 | `declaration-track:cbac9b7f58b64d018290ab2b59587f62628624351ef49871b18e4430485b351a` |
| 64 | `def` | [Fiber](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/fiber.md) | 546 | `declaration-track:9ee83cf2a9f9849ac067b3ac5ffd7e27e42264f032525a1338bc74a65f692983` |
| 65 | `instance` | [topologicalSpaceFiber](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/topologicalspacefiber.md) | 549 | `declaration-track:127809be055ccbd72c5d4e08c262a919bcd2e5f2b54de7488d5b9e392a6bb509` |
| 66 | `instance` | [addCommGroupFiber](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/addcommgroupfiber.md) | 552 | `declaration-track:f8527dc34d6619d6c53953e9b0210a10e96fae3c2b2c8c1303737f1b7205e12d` |
| 67 | `instance` | [moduleFiber](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/modulefiber.md) | 555 | `declaration-track:353dbc2b5412bf53628b34ac6841ff5a813c5c64b5a411003a7201cbac639dc3` |
| 68 | `def` | [proj](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/proj.md) | 560 | `declaration-track:8206f86fc44acb72091f0e68c7ee176baf804c96fe39acbcdfaae5aefc98c78f` |
| 69 | `def` | [TotalSpace](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/totalspace.md) | 566 | `declaration-track:bbcf8a317b4ef171a591eccf1b2a32edf9166592f013948047aa4dd919188cb4` |
| 70 | `def` | [trivChange](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/trivchange.md) | 570 | `declaration-track:5a36659e586db72e891b1854fb81404a663cf78a6067824fd304bc75f0ea99b7` |
| 71 | `theorem` | [mem_trivChange_source](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/mem-trivchange-source.md) | 574 | `result-track:ed412ee0d064ed1fe7d5e6a0d593cd585f4f394cdbe3c8c2aec49b55a08b60d2` |
| 72 | `instance` | [toTopologicalSpace](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/totopologicalspace.md) | 580 | `declaration-track:56821b4d622e8761d242d42ded78aed926f2b38a60def91e7d57d2198ea689ab` |
| 73 | `theorem` | [coe_coordChange](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/coe-coordchange.md) | 586 | `result-track:ad3dfe1526b799f0498126abc1b0ae160b0f3431d2bcfff9e741f36631512ac9` |
| 74 | `def` | [localTriv](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/localtriv.md) | 591 | `declaration-track:3fb2aaebb3701bc81266236ce73e9b9655af25cb21bdecdaa47d53c9d601fe1c` |
| 75 | `theorem` | [localTriv_apply](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/localtriv-apply.md) | 595 | `result-track:f28d98f44c414349ec23f9b5cb40b1202ffa556645e9a873a36ca5ae2461aa75` |
| 76 | `instance` | [localTriv.isLinear](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/localtriv-islinear.md) | 600 | `declaration-track:40da32fb194a6dde7c3bba22b33e9fe48cdd994ee1f46450a7ddb340fb574720` |
| 77 | `theorem` | [mem_localTriv_source](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/mem-localtriv-source.md) | 608 | `result-track:59315db7c7be762cd2605c5b89f5bbc3b5cdecd6c9eca2da1215fb5b9f6e6354` |
| 78 | `theorem` | [baseSet_at](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/baseset-at.md) | 612 | `result-track:00a1ed53f30f5e44da71459d2d77f04038b9351b425ba001db850d705d235810` |
| 79 | `theorem` | [mem_localTriv_target](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/mem-localtriv-target.md) | 616 | `result-track:50cd820c7ac91db918a254f37e59f9e7a4383c60b04ec5773c93fb29ee96a46e` |
| 80 | `theorem` | [localTriv_symm_fst](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/localtriv-symm-fst.md) | 621 | `result-track:a36b673c809e28f7ed328d0930bd00c7d4c159311887ea0726cfbe76fa8cbcf1` |
| 81 | `theorem` | [localTriv_symm_apply](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/localtriv-symm-apply.md) | 626 | `result-track:0b596676cf194e26b5f7a6d59401deaf2f8cf8a799ecaae59a555fec0585b645` |
| 82 | `theorem` | [localTriv_coordChange_eq](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/localtriv-coordchange-eq.md) | 631 | `result-track:16d258426fd51dae59e8584027c64344386c660e6492d5552e94d87a17341fa1` |
| 83 | `def` | [localTrivAt](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/localtrivat.md) | 638 | `declaration-track:0c4c6e7a9b532df0e4313e10ab2fc131a72b0b88656d568e1d1c5977e5da4a25` |
| 84 | `theorem` | [localTrivAt_def](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/localtrivat-def.md) | 642 | `result-track:c7efcd00495b656727178dfea3bcb2689f0e7a4c1d2dfe60a0096b647725aaa0` |
| 85 | `theorem` | [mem_source_at](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/mem-source-at.md) | 646 | `result-track:c64000aefe8be955b9f5ae90cc30f689e876b274ecb72daf80a960e2507a329c` |
| 86 | `theorem` | [localTrivAt_apply](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/localtrivat-apply.md) | 651 | `result-track:3387430b74b9a794661a503b7c1f56d02c5839642469756343b7c3ddfb7691fb` |
| 87 | `theorem` | [localTrivAt_apply_mk](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/localtrivat-apply-mk.md) | 655 | `result-track:a52c3574973aa76d7cfd56c03bfd6f5909b4ee7f4f75a0030cebc9949928d249` |
| 88 | `theorem` | [mem_localTrivAt_baseSet](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/mem-localtrivat-baseset.md) | 659 | `result-track:72ccb828b876acd3f64a1a13c8a4f2e9ba7030c4cc61e58a423dcafe125a9249` |
| 89 | `instance` | [fiberBundle](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/fiberbundle.md) | 662 | `declaration-track:8e5a98cd9960762cfc8a9fcebd798129b179e411a95c881c34cc11efbc004050` |
| 90 | `instance` | [vectorBundle](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/vectorbundle.md) | 665 | `declaration-track:4adbebc19c81d32750bad9be9c0c63aecdb7f64996a94a3a9c80dc3ddce69db6` |
| 91 | `theorem` | [continuous_proj](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/continuous-proj.md) | 677 | `result-track:d59e71ecc5bb360b064263ea9a79c3b4dcf2d6e4eea2bbc027bcfbc8c30d6754` |
| 92 | `theorem` | [isOpenMap_proj](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/isopenmap-proj.md) | 681 | `result-track:8a03ca96f7e55c3971a5a314b6d47c9f649a3f1f75f28c709682bd103a758a17` |
| 93 | `theorem` | [localTriv_continuousLinearMapAt](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/localtriv-continuouslinearmapat.md) | 687 | `result-track:f9d3b153221cd590a07435e7fef4507525fd497a800ca3700c387433019d8a60` |
| 94 | `theorem` | [trivializationAt_continuousLinearMapAt](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/trivializationat-continuouslinearmapat.md) | 694 | `result-track:688ff4c480e4b269533a859e09ab608b180a97efc385bc1383405cf7121bd864` |
| 95 | `theorem` | [localTriv_symmL](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/localtriv-symml.md) | 701 | `result-track:a7acb91f9edd2baff4ab41acb5ff4f48708b9cfa806ad6b10389e4e5daf76c92` |
| 96 | `theorem` | [trivializationAt_symmL](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/trivializationat-symml.md) | 708 | `result-track:698aa74d145ed82b4df2018fbfbd878262e705a929f1f4715a8193f114e89822` |
| 97 | `theorem` | [trivializationAt_coordChange_eq](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/trivializationat-coordchange-eq.md) | 713 | `result-track:c2b50b91d2e7abe038b94a83b91391dafe0e36f653b1eda86aadb92005acb9aa` |
| 98 | `structure` | [VectorPrebundle](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/vectorprebundle.md) | 745 | `declaration-track:e515ea4a952154c7f12e88c86ac3b29ba1d6ecca9ceac27c0547ccafb2ac553a` |
| 99 | `def` | [coordChange](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/coordchange.md) | 762 | `declaration-track:081f17f8aafda9af3076b907892825c2f90a616b6636fee363d12219a5c101b9` |
| 100 | `theorem` | [continuousOn_coordChange](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/continuouson-coordchange-source-edition-2.md) | 766 | `result-track:7ac9fb2ab874cd3b9adb1afac4b06ccfe32a78870b6a660120225557f957fac2` |
| 101 | `theorem` | [coordChange_apply](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/coordchange-apply.md) | 771 | `result-track:cdc4d0131d2499e9ffff11204d9b10d94419ee7b862c8d1294e21b95741724f5` |
| 102 | `theorem` | [mk_coordChange](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/mk-coordchange.md) | 777 | `result-track:4456cf83cc7a1c61e6793b10d41b7e502790b1435a984f05a5d210ab10b3f09b` |
| 103 | `def` | [toFiberPrebundle](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/tofiberprebundle.md) | 788 | `declaration-track:33998791d65b27eaf5799101a7de458593a5ed1299838e8f1db1934b2685557c` |
| 104 | `def` | [totalSpaceTopology](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/totalspacetopology.md) | 802 | `declaration-track:c0c84a84fdfcb1dd03323e8d405a66590380a11ff9e66573ed64ff28037a30af` |
| 105 | `def` | [trivializationOfMemPretrivializationAtlas](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/trivializationofmempretrivializationatlas.md) | 807 | `declaration-track:0d85f6eee42df7639c0730699f771702a586a847ca548682e62cfabf226634ec` |
| 106 | `theorem` | [linear_trivializationOfMemPretrivializationAtlas](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/linear-trivializationofmempretrivializationatlas.md) | 812 | `result-track:9909d22ef6306ffaaacaa996e02316d5b4a1cc00bb516c0abe1de17bec9d774b` |
| 107 | `theorem` | [mem_trivialization_at_source](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/mem-trivialization-at-source.md) | 821 | `result-track:16f2f08d11e8425aa5a03676f1e5adbe12c0f03c06a7ebb1dbab9b3ca603b00a` |
| 108 | `theorem` | [totalSpaceMk_preimage_source](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/totalspacemk-preimage-source.md) | 826 | `result-track:185af276f2564a8d5915b742b6a5ecf31edcee3681c7d9805c3d6449823d68e5` |
| 109 | `theorem` | [continuous_totalSpaceMk](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/continuous-totalspacemk.md) | 831 | `result-track:3968ea815758613d8245872b107699e9e5ab24cca5e8a27c6599c27f004c7211` |
| 110 | `def` | [toFiberBundle](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/tofiberbundle.md) | 837 | `declaration-track:7863f3528a0652f415e03544a42cd73b8276ffc87af57f45a52ee7f4c9a6ab0c` |
| 111 | `theorem` | [toVectorBundle](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/tovectorbundle.md) | 846 | `result-track:f60141c7197fef0bf947bd7b90dd28eb0824670efa696bd16bb652bb696628b4` |
| 112 | `def` | [inCoordinates](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/incoordinates.md) | 893 | `declaration-track:7b05d7461220fa6168bbb29930529f0aae59576486c1e474204822c2701233e4` |
| 113 | `theorem` | [inCoordinates_eq](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/incoordinates-eq.md) | 900 | `result-track:03f9487d21578ab0140aff27b30f703de50a1fe77f1297fff59405312033d13a` |
| 114 | `theorem` | [Vector Bundle Basic Namespaced Linear Map At Def Of Not Mem](../../../../GeneralTopology/VectorBundleBasicNamespacedLinearMapAtDefOfNotMem.lean/declarations/incoordinates-eq-source-line-911-occurrence-2.md) | 911 | `result-track:f29c1c12f66f178350ed12ca68fde14feffd702586839ff91ea7d934bfd50381` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7fba066850202a528f5635fc312f615a27d720008537ee46ce619943994ffde8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant11df1c28f200a799fde80d32e1168ff8b1d94f4888318801459815a8c8d764b6.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant11df1c28f200a799fde80d32e1168ff8b1d94f4888318801459815a8c8d764b6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
