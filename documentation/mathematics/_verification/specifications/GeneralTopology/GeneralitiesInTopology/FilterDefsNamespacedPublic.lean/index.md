# Verification target: Filter Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60e7e458ccdb4eeceef9a4a8197d71cce889b8a2",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Defs/Variant888c713b85008dbd03af7a4748597d448ffcfc9ac364bf2d5cf44f0c736c0b04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60e7e458ccdb4eeceef9a4a8197d71cce889b8a2`.

Source path: `GRWTSK/Topology/GeneralTopology/Defs/Variant888c713b85008dbd03af7a4748597d448ffcfc9ac364bf2d5cf44f0c736c0b04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Defs/Variant888c713b85008dbd03af7a4748597d448ffcfc9ac364bf2d5cf44f0c736c0b04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/filter.md) | 83 | `declaration-track:53f6006c4273b9e88661d7c53dcc7f7281b8948b4668519b9c75cee278b9fe96` |
| 2 | `theorem` | [filter_eq](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/filter-eq.md) | 97 | `result-track:bd3e7d5f5fe6fcd030b32a1e6121ed911ca5047f087d78650d790be2929955a8` |
| 3 | `instance` | [instMembership](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/instmembership.md) | 101 | `declaration-track:8c53acde5e2677e5770d973d21cb41b8285e3bf162f07110bf29c465699629ac` |
| 4 | `theorem` | [ext](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/ext.md) | 104 | `result-track:ce8be55f17227b311f48631750db19dcc09c71f80a8ec8e83bdc3f27cf499ba4` |
| 5 | `theorem` | [mem_mk](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/mem-mk.md) | 107 | `result-track:b7cf0509e58ede72ba21837d2c8221bde826fb21f34baf638e6dde42590c4561` |
| 6 | `theorem` | [mem_sets](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/mem-sets.md) | 111 | `result-track:7fdff2eecd66f094bc1cb75374b4339a6253be266ffa013a9b94cf87898ff59d` |
| 7 | `theorem` | [univ_mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/univ-mem-source-edition-2.md) | 115 | `result-track:fe85de91fef1696f2347edbcc39c395e7745af4757102cc6b8c8af4e80070071` |
| 8 | `theorem` | [mem_of_superset](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/mem-of-superset.md) | 119 | `result-track:7665d89a82b9c83e2a4a9cce8bd5f1a302a26d2b000dda25cc06cdeccd839eae` |
| 9 | `theorem` | [univ_mem'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/univ-mem.md) | 122 | `result-track:88267caf70fa4ba04fdb4945e1221080e894052fb89b32bd73e2ec2c5ecd76fb` |
| 10 | `theorem` | [inter_mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/inter-mem.md) | 125 | `result-track:b938e91ed2968b71bceae670451902647824244fa7d4cb60db0a8e46c61189c5` |
| 11 | `theorem` | [mp_mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/mp-mem.md) | 128 | `result-track:d3874f3b5a882fe1b6fc6a047031ffc4c9ee8bd817ef08d41b8544ac19fa92c5` |
| 12 | `def` | [copy](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/copy.md) | 132 | `declaration-track:1832e640951d9af564e88dbda8b6a1caa9d9e69d01eaeec186ff5c07af122feb` |
| 13 | `theorem` | [mem_copy](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/mem-copy.md) | 138 | `result-track:1a90d624548a5ea8f7038d1c173469ab2d5adb3d776f64b1261ecc33f09e9b0e` |
| 14 | `def` | [comk](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/comk.md) | 143 | `declaration-track:7562e29f5f6f9e7153a524d9a4a33658530d16d3da6949a6c73a4e1fd8385b73` |
| 15 | `lemma` | [mem_comk](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/mem-comk.md) | 151 | `result-track:319fc74a5559d513cbe2af2444613534b039e624271527061b645e4c9c1c4c8c` |
| 16 | `def` | [principal](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/principal.md) | 156 | `declaration-track:7e266b88ef6fec8f02b26b10aaa6568e2a6c28e4ee56019b6cc8ca6acd947b71` |
| 17 | `theorem` | [mem_principal](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/mem-principal.md) | 165 | `result-track:1ae27d9e22c73bd3503eeafad3dfce0cec06365c6e3c5e85cd2ed38e65095fce` |
| 18 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 169 | `declaration-track:ccd156f91a2699edeef0b8521f9b8da60ac44569c9d83ae08b61c338d3c9a509` |
| 19 | `theorem` | [mem_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/mem-pure.md) | 173 | `result-track:a067e9b66b27938a2c3938690b89e7f292412a5f7fec99f993da90a3b0b50cc6` |
| 20 | `def` | [ker](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/ker.md) | 177 | `declaration-track:cbc05c1fcadae377b8cecc632966df6a042d5f63bf4e9d527ebacc77fc2d321e` |
| 21 | `def` | [join](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/join.md) | 180 | `declaration-track:14ffb6723b343edb9d49ab928757c9c92bb6b9ba44dedc6db5d6b61b19c08480` |
| 22 | `theorem` | [mem_join](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/mem-join.md) | 187 | `result-track:21250c2e0ae7e58f7e29ebe06aa653b90b52a4b852846ca74072bf634e14e813` |
| 23 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 190 | `declaration-track:d54aad60ef33db9048f2dcc3b1afca17fa8d84d63afac43c002816b1b1099b9c` |
| 24 | `theorem` | [le_def](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/le-def.md) | 196 | `result-track:f4c0d1a46f9cbbd5c49373fd6aa83b3ee73dd06e4aa1cd46ad19c635e6a15f5c` |
| 25 | `instance` | [instSupSet](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/instsupset.md) | 199 | `declaration-track:006520aa73e61e53521e1dff3dcc8848e8bb16bcac37295c4313720a94386605` |
| 26 | `theorem` | [mem_sSup](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/mem-ssup.md) | 202 | `result-track:41feee847d356317deccdad0c69ce5a97ccdf5bd1ce82d73dfef9498e2959005` |
| 27 | `def` | [sInf](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/sinf.md) | 208 | `declaration-track:56e8ca4bfcc110bc1d619b2aae97c47989c7e07ae4ef714b55c7f1572ac24007` |
| 28 | `instance` | [instInfSet](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/instinfset.md) | 210 | `declaration-track:e3d1cc2d43d502e77815a570a742aa7bf26ec835bef1575822e9a6060e78c3bf` |
| 29 | `theorem` | [sSup_lowerBounds](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/ssup-lowerbounds.md) | 213 | `result-track:e9af2e5974401b102eb0139de02096a7ae5fe03d1633293c76afe871b60ab47c` |
| 30 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 216 | `declaration-track:84f16c3cea6bd9b4b2eeccaf176646ff8d83cddc05ac79b9dc956bf2d42a6d23` |
| 31 | `theorem` | [mem_top_iff_forall](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/mem-top-iff-forall.md) | 219 | `result-track:f6a549011303937a9f47d7f75f925fc56d7daad318688e55c77cc6a2883f434a` |
| 32 | `theorem` | [mem_top](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/mem-top.md) | 223 | `result-track:9b03354a395b09d430a0031d7714a4163f2ef573947e5911eed88dde33240c20` |
| 33 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 226 | `declaration-track:8533490dcf9e42322adaf82794da2b5b3d9fa0316892959f1510c30910e9f679` |
| 34 | `theorem` | [mem_bot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/mem-bot.md) | 230 | `result-track:b7a4df7528062e12a0855262c7429dbbc94179be3ba658ac19dd3bdc61c6b7b4` |
| 35 | `instance` | [instInf](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/instinf.md) | 235 | `declaration-track:df12f06ced50efb4cf5a3a6e86dd08884e579fbaf122c1e7b6cd5857ae77e52b` |
| 36 | `instance` | [instSup](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/instsup.md) | 250 | `declaration-track:f37cac084d463a3114e9b2dcb2a726241159f56c2c9480f1d828c313466f50af` |
| 37 | `instance` | [instSDiff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/instsdiff.md) | 255 | `declaration-track:eec0fb24da87a960491f3aa43c0acafa6174eed9354d6e4fe40e00f782992014` |
| 38 | `instance` | [instHNot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/insthnot.md) | 268 | `declaration-track:f0c75a47eecab8ba4a68f263ac94ac704da12289cf0bc5ad3b1b354139ded002` |
| 39 | `theorem` | [mem_sdiff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/mem-sdiff.md) | 271 | `result-track:08b02ae3710fd3b504dbe192d200a275042feee7a4c1276c32581d6bcc3910b0` |
| 40 | `theorem` | [hnot_def](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/hnot-def.md) | 273 | `result-track:7d2eff8b79c21c648aec806a7b10719747823309d9bbfedb4f44abc5afa94d58` |
| 41 | `class` | [NeBot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/nebot.md) | 279 | `declaration-track:3eda4ddda228129c72dfd3af7e52eae9a8f23bd535f170f0257264b40e19db70` |
| 42 | `theorem` | [neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/nebot-iff.md) | 284 | `result-track:324c8f2e7c6ac3ec2df8315fee7971b26be9f4ea80a4f156929f143450b5516c` |
| 43 | `def` | [Eventually](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/eventually.md) | 289 | `declaration-track:8b26633536e45be19e577550ead20be2843e857e83af3de68b781fb2a634a9d7` |
| 44 | `def` | [Frequently](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/frequently.md) | 297 | `declaration-track:93027fe11fe10dac610d4f4ab42ab97dd3311a98e8100cd26c0974fc1316ba9e` |
| 45 | `def` | [EventuallyEq](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/eventuallyeq.md) | 305 | `declaration-track:2c35bcdd8b01255784e8ba9f5ede32ac5017fd0f95c0c0367d847a84269c97b6` |
| 46 | `def` | [EventuallyLE](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/eventuallyle.md) | 310 | `declaration-track:f953dce9bbabb477c56a04f38b34a2727fb265aecb9d1286572f1928f6e6c5b0` |
| 47 | `def` | [EventuallyEqSet](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/eventuallyeqset.md) | 318 | `declaration-track:f7fca3d37c6805a25fbf97b00be4aed3bd0d0c13a0d240025662f1fa0c243697` |
| 48 | `def` | [EventuallySubset](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/eventuallysubset.md) | 326 | `declaration-track:9851e5532a4e392b19e97879a514923239d382a81d5ad9e03f1e203a38fa245e` |
| 49 | `def` | [elabEventuallyRelSides](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/elabeventuallyrelsides.md) | 347 | `declaration-track:c63597005713f6a7c4e36245f338cbf7cd1a6d4a87e88cc29d1e0c8d3bd0fce3` |
| 50 | `def` | [elabEventuallyEq](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/elabeventuallyeq.md) | 364 | `declaration-track:c0c6c7f3bb88ce25750e5a1a2a16a8e09364d2994531458d97243ea0d28dcb8a` |
| 51 | `def` | [elabEventuallyLE](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/elabeventuallyle.md) | 376 | `declaration-track:a0ecd397d20395aa3648c9b0655099ac239d8c1fd99d0c744b2fae4803734c9e` |
| 52 | `def` | [precheckEventuallyEq](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/precheckeventuallyeq.md) | 386 | `declaration-track:1a4dfb7b99b2a7185966d042aee5d91e8a3a0732c7bbd2ce09acbe6689b93de3` |
| 53 | `def` | [precheckEventuallyLE](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/precheckeventuallyle.md) | 392 | `declaration-track:768b089f5ca53473e5161cb3d3efa494fa3f5098ef73783187fda3f7ce4f8259` |
| 54 | `def` | [unexpandEventuallyEq](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/unexpandeventuallyeq.md) | 398 | `declaration-track:5623829146949e166edaa410b4f54965847dea154f8780211efd2ba6aaf2652a` |
| 55 | `def` | [unexpandEventuallyEqSet](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/unexpandeventuallyeqset.md) | 404 | `declaration-track:e6177702477d6288e7183f4fd0e4cdd016cfe956ecb46aa477142ad29aaf194d` |
| 56 | `def` | [unexpandEventuallyLE](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/unexpandeventuallyle.md) | 410 | `declaration-track:4433c89a7c15d65ddee51e257df01b5cca2e8149942054a768f08ca644472004` |
| 57 | `def` | [unexpandEventuallySubset](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/unexpandeventuallysubset.md) | 416 | `declaration-track:0ca5ddc6f63b37f62c56641e36935d7c86eae78c7a7fbf96708215eb1a0736dd` |
| 58 | `def` | [map](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/map.md) | 421 | `declaration-track:c1645baddd34c4915b534dde04fc3b0bee4c32c56d2440229decf5a4497f7afc` |
| 59 | `def` | [Tendsto](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/tendsto.md) | 430 | `declaration-track:b9b0f9cec3c99aa7bd4ffa6226985fd478fb4904bfbbdd8a08eac28eb91dd682` |
| 60 | `def` | [comap](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/comap.md) | 441 | `declaration-track:c5b4b31907e5daf84d15a8051b3e536fb33fe2d0bdee9f3bdeae8143764b38d6` |
| 61 | `def` | [coprod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/coprod.md) | 449 | `declaration-track:1cb305d1a7b65cd4d6a30ceaa65adfa81a5c13d60a2462dc254dd3a19bb8807f` |
| 62 | `instance` | [instSProd](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/instsprod.md) | 454 | `declaration-track:4265a9abd87397275ae0769424fd46924fea6d08bd14eb51571ff509d9101607` |
| 63 | `theorem` | [prod_eq_inf](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/prod-eq-inf.md) | 457 | `result-track:539469a50d152854285830bc244fdafee6a77f8fb2c4e71c3aae956574ba1a39` |
| 64 | `def` | [pi](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/pi.md) | 461 | `declaration-track:87e22bdc3292a4508682cc27624b266d5deafbfca7181ccf5099c7c84c2a3746` |
| 65 | `def` | [bind](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/bind.md) | 468 | `declaration-track:1fea32e04d24f58685d99413b2106536e98e50edb058b057b24c37d1501d842f` |
| 66 | `def` | [seq](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/seq.md) | 472 | `declaration-track:b0565e19305a7088a493edbab2e0cfd5ae820e6b3ef1e42820a47e4e5489af23` |
| 67 | `def` | [curry](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/curry.md) | 485 | `declaration-track:af59b355e8dd2e3974db35b0809df3e4a16edafa87db8636397a8fa1826fa04c` |
| 68 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/instance.md) | 488 | `declaration-track:551999b6238fab9329ee6898b68721927e0ecc7536f5702d0365af0764b40849` |
| 69 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 491 | `declaration-track:7ae517c75786397a8ddd3da4c18d6929aaff0494d59bb4888b036362a17cc3db` |
| 70 | `def` | [lift](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/lift.md) | 495 | `declaration-track:82616368dd8a7bb89762d993c420376b8cbaf27bd66b682c87aa4d5ee3f7354e` |
| 71 | `def` | [lift'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/lift-source-edition-2.md) | 500 | `declaration-track:d253ab34af595175450279eb8c5e753ddf020bd16342826b5ea600e2c94f9903` |
| 72 | `def` | [IsBounded](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/isbounded.md) | 506 | `declaration-track:15b6db4a442c2e8207ccfadf3251b598ea6891bfbd441c77272ef6f957fd2c0a` |
| 73 | `def` | [IsBoundedUnder](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/isboundedunder.md) | 511 | `declaration-track:9358a1da5082cde1c520865cb0ce749d5705aa6f3a567f9e0a6c291cc3b3b87e` |
| 74 | `def` | [IsCobounded](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/iscobounded.md) | 524 | `declaration-track:86032678d9469e57ee1e6809f000e93bc155b9aead8ae132d1908c5928bbecb0` |
| 75 | `def` | [IsCoboundedUnder](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/iscoboundedunder.md) | 530 | `declaration-track:314cf6bbb06f0fa18a908cf300b23f55c3588924e704993df9e23682a5c7840d` |
| 76 | `syntax` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/syntax.md) | 553 | `declaration-track:9adeb5e8737eb90ecca032e2b87bc9679638e62cab382f5059b32300059bf9ba` |
| 77 | `elab_rules` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespacedPublic.lean/declarations/elab-rules.md) | 556 | `declaration-track:46b77c7d0e3cb6d7c8457406469141a91251b487a426c01c1c0ae2f3371095de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=88de2b034d4724d772bf4e747235907a7e27a2fd34a3e4cdca7eb41dd131db91 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Defs/Variant888c713b85008dbd03af7a4748597d448ffcfc9ac364bf2d5cf44f0c736c0b04.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Defs/Variant888c713b85008dbd03af7a4748597d448ffcfc9ac364bf2d5cf44f0c736c0b04.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
