# Verification target: Cont MDiff Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79418ade9f2f078695d8ba3a08f730495bfffb41",
  "lexical_observation_count": 105,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Defs/Variant7816f93367ecfb43b4b55f72ec8899c8e0866eeb6071c2121375f5517ebdbda5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79418ade9f2f078695d8ba3a08f730495bfffb41`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Defs/Variant7816f93367ecfb43b4b55f72ec8899c8e0866eeb6071c2121375f5517ebdbda5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Defs/Variant7816f93367ecfb43b4b55f72ec8899c8e0866eeb6071c2121375f5517ebdbda5.lean.json)

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
| 1 | `def` | [ContDiffWithinAtProp](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contdiffwithinatprop.md) | 82 | `declaration-track:fc1baaf23905faff392435556b298b0942900ef514674086241e0340260ab635` |
| 2 | `theorem` | [contDiffWithinAtProp_self_source](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contdiffwithinatprop-self-source.md) | 85 | `result-track:080082aced5826fc60d90416ed0dcc2d50b7829264eb6e2960b6894ee13647f3` |
| 3 | `theorem` | [contDiffWithinAtProp_self](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contdiffwithinatprop-self.md) | 90 | `result-track:5dafb4e420f99c7912ea63cdb599ffbce729cb8feb942d032c5212385509df08` |
| 4 | `theorem` | [contDiffWithinAtProp_self_target](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contdiffwithinatprop-self-target.md) | 94 | `result-track:b1a558b936381dcd2a94b7c4db3e3ae4360ca47b8ecd8d3d922f977319db05ef` |
| 5 | `theorem` | [contDiffWithinAt_localInvariantProp_of_le](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contdiffwithinat-localinvariantprop-of-le.md) | 101 | `result-track:d5df493eb53c55dd670983953a9f4737fc4331caf2cf9f5ee721a1ab476856cf` |
| 6 | `theorem` | [contDiffWithinAt_localInvariantProp](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contdiffwithinat-localinvariantprop.md) | 143 | `result-track:dc686e908223a718846d222ff8118b61206743f27ceb83802db7be453bab7a8c` |
| 7 | `theorem` | [contDiffWithinAtProp_mono_of_mem_nhdsWithin](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contdiffwithinatprop-mono-of-mem-nhdswithin.md) | 148 | `result-track:c3dfb77d28980d26440e82cf756109abec89ed3125c0409d71cf8c2a49d850c0` |
| 8 | `theorem` | [contDiffWithinAtProp_id](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contdiffwithinatprop-id.md) | 155 | `result-track:7cbce87fe5d9755c0279fdb8f3b993a55ce3a4acd4a02c1ff7d85936e34968de` |
| 9 | `def` | [ContMDiffWithinAt](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat.md) | 170 | `declaration-track:925fb19931d4ac1cc50759f307c58e4103b5c85114eff102470ab72c566253ef` |
| 10 | `def` | [ContMDiffAt](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffat.md) | 181 | `declaration-track:f4f6b65bf9abda6ab5470c67d878c481fa3e97f389bc9f72d721b5879221e9e4` |
| 11 | `theorem` | [contMDiffAt_iff](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffat-iff.md) | 184 | `result-track:b682aa74491ec8e803b7b00135eaca0203d5f26d24e56d71345f0cca50bbac7c` |
| 12 | `def` | [ContMDiffOn](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffon.md) | 200 | `declaration-track:f14efef8a2f4062bf2ecf2bcf0a36ec73eba7f282d17ffd849a6ce8d401ed8c9` |
| 13 | `def` | [ContMDiff](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiff.md) | 211 | `declaration-track:a61f64c6c29c990ca714b4ccaedbb613bfb0cbcdd8a26046e36b953b191c2a3b` |
| 14 | `theorem` | [ContMDiffWithinAt.of_le](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-of-le.md) | 216 | `result-track:c8aaff163d0f3b7ce7c606ea78e5fb3a7d75fa0c97644b660fbe6bfab47f7285` |
| 15 | `theorem` | [ContMDiffAt.of_le](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffat-of-le.md) | 221 | `result-track:02f391e403abf4ef0b3af9b373578810938e646028f38bd7f8e4ad5ba76c1a00` |
| 16 | `theorem` | [ContMDiffOn.of_le](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffon-of-le.md) | 224 | `result-track:da5551bbc167ad9fdfa90007f629fda4d43c9c6c54689f8cc20a32dda492c978` |
| 17 | `theorem` | [ContMDiff.of_le](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiff-of-le.md) | 227 | `result-track:9c8b43f1604b8744cb7850b9af16d598561f2e3d2414b02feb5a99ebf8552444` |
| 18 | `theorem` | [ContMDiff.contMDiffAt](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiff-contmdiffat.md) | 232 | `result-track:faf454bb44593a4a6299f36204336579009490ef52eb101f4b51ffc843d28f04` |
| 19 | `theorem` | [contMDiffWithinAt_univ](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-univ.md) | 235 | `result-track:55ce8b3b360ea924c7aaccc74ec09cbbcf85c0dba7c1d900c2cc514e46a7e9ad` |
| 20 | `theorem` | [contMDiffOn_empty](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffon-empty.md) | 239 | `result-track:c1f42e64d1e647f5f0c5c94b3f24dce7f75b1d56e45727c3b443821ebb525a39` |
| 21 | `theorem` | [contMDiffOn_univ](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffon-univ.md) | 241 | `result-track:ac76c25c44489ff980fe7ad8289c0801de56faf68f4d4561c82b89cac90d1a51` |
| 22 | `theorem` | [contMDiffWithinAt_iff](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-iff.md) | 246 | `result-track:8cbe350617b1c18afb5b7cdf2cbf14faa75d9940e12565ff9044141512429b74` |
| 23 | `theorem` | [contMDiffWithinAt_iff'](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-iff-source-edition-2.md) | 261 | `result-track:a43e7f2e16aacd53d66219cbcc531fdbfd6847a42155c8225a5cc119831b3379` |
| 24 | `theorem` | [contMDiffWithinAt_iff_target](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-iff-target.md) | 274 | `result-track:0b2742887320b18e45358c492ef30fb1e6fd7f6dd937a02eb64de9441ec81299` |
| 25 | `theorem` | [contMDiffAt_iff_target](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffat-iff-target.md) | 288 | `result-track:52582af2f8d358e537e6cc28bde7c529c4c0a79155710717dea41b239dc46f8e` |
| 26 | `theorem` | [continuousWithinAt_iff_source](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/continuouswithinat-iff-source.md) | 293 | `result-track:df9de6767e677f3df60ad0f20a177aa3b5157351ffbfef31725ca2be12a764bc` |
| 27 | `theorem` | [contMDiffWithinAt_iff_source](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-iff-source.md) | 320 | `result-track:c471f0148b511c8a708e338e745c02d182a9f52cbf8efe4f4e706efa864facf6` |
| 28 | `theorem` | [contMDiffAt_iff_source](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffat-iff-source.md) | 329 | `result-track:872a104fc19296ef0113453adced79df422824129dcb2980af6090c639525298` |
| 29 | `theorem` | [contMDiffWithinAt_iff_source_of_mem_maximalAtlas](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-iff-source-of-mem-maximalatlas.md) | 337 | `result-track:ccd19f8b9a24cef5fbd1b37fb5728a0ba02269af2985c90ad0198c42f095b200` |
| 30 | `theorem` | [contMDiffWithinAt_iff_source_of_mem_source](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-iff-source-of-mem-source.md) | 350 | `result-track:48068766a7d7e44388e239ddfda44b5672ff2b994fca6faaa685a95e0b5800ed` |
| 31 | `theorem` | [contMDiffAt_iff_source_of_mem_source](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffat-iff-source-of-mem-source.md) | 357 | `result-track:ed5251329dd08476ae6c77f65cda3e4f78c7248dfb66800894c16e14e7b2cc35` |
| 32 | `theorem` | [contMDiffWithinAt_iff_target_of_mem_maximalAtlas](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-iff-target-of-mem-maximalatlas.md) | 363 | `result-track:934f5bf8f1d086d8f091a03c890fcd44a33d732741eb0f9e12eb81604d554df0` |
| 33 | `theorem` | [contMDiffWithinAt_iff_target_of_mem_source](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-iff-target-of-mem-source.md) | 376 | `result-track:98b295ae26695aa4bbb685f65bc055b988c3713bd3452a337bf63926f4b8590d` |
| 34 | `theorem` | [contMDiffAt_iff_target_of_mem_source](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffat-iff-target-of-mem-source.md) | 382 | `result-track:d126788ebcaeaf99521ca78b86aae8593f768ccb205401929f0c203c8cf8947c` |
| 35 | `theorem` | [contMDiffWithinAt_iff_of_mem_maximalAtlas](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-iff-of-mem-maximalatlas-source-edition-2.md) | 389 | `result-track:d179a2b142aefc1d092898285d722e74e3aa7767436f358e73126a052ce98365` |
| 36 | `theorem` | [contMDiffWithinAt_iff_of_mem_maximalAtlas'](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-iff-of-mem-maximalatlas.md) | 400 | `result-track:7167a337727e585ac48b54e91a8b49a8b03dc64c1aafcaea0ea33af5e21461ff` |
| 37 | `theorem` | [contMDiffWithinAt_iff_image](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-iff-image.md) | 417 | `result-track:221ff030f313ed7f6a7f8bbdca06ead33a19311128198d9c2747e8baa25f6eb3` |
| 38 | `theorem` | [contMDiffAt_iff_of_mem_maximalAtlas](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffat-iff-of-mem-maximalatlas.md) | 428 | `result-track:783578b5d1366975c125a623836faabb77688f9b0b2218a725a1df75b881cb17` |
| 39 | `theorem` | [contMDiffWithinAt_iff_of_mem_source](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-iff-of-mem-source-source-edition-2.md) | 439 | `result-track:8e3f635ea6a33e900ff4ab14c5aa65149db1e91eaab0910a79aadf46267f90ed` |
| 40 | `theorem` | [contMDiffWithinAt_iff_of_mem_source'](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-iff-of-mem-source.md) | 448 | `result-track:4f3b2d42a657512ac900464feea0f6e07639435272a553035a7703ddfd958173` |
| 41 | `theorem` | [contMDiffAt_iff_of_mem_source](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffat-iff-of-mem-source.md) | 466 | `result-track:aef60914e6e8c28b23c7a22cd321220d2082616b500fa2c562aaa0ba4caa61fd` |
| 42 | `theorem` | [contMDiffOn_iff_of_mem_maximalAtlas](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffon-iff-of-mem-maximalatlas-source-edition-2.md) | 475 | `result-track:33589d28cfabec002c9d3be59c33c8ddbe70d48bab327ed0a9698d293f16b306` |
| 43 | `theorem` | [contMDiffOn_iff_of_mem_maximalAtlas'](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffon-iff-of-mem-maximalatlas.md) | 483 | `result-track:1df30756319d7ae3cb05435daf6bd3643c184ce03bfddeaa2e570c03ee740b45` |
| 44 | `theorem` | [contMDiffOn_iff_of_subset_source](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffon-iff-of-subset-source-source-edition-2.md) | 495 | `result-track:f7a84dd469ac313ac9c1172bb2d6409414f07833f9d0cf1596477c8e40ef2ac2` |
| 45 | `theorem` | [contMDiffOn_iff_of_subset_source'](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffon-iff-of-subset-source.md) | 509 | `result-track:5deac17c5965422c4883b78538fba440f2c726341c3cf0551a9af1acecec396b` |
| 46 | `theorem` | [contMDiffOn_iff](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffon-iff.md) | 519 | `result-track:1bb53037b621ca05d9b5e195b1b2e77d9a9cdc5bbb95b0f42f39b01d0fe8b465` |
| 47 | `theorem` | [contMDiffOn_zero_iff](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffon-zero-iff.md) | 546 | `result-track:40497e5c0353b0091a638d5974853870291268ef808ca1f9e6c60f2d59f7dd32` |
| 48 | `theorem` | [contMDiffOn_iff_target](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffon-iff-target.md) | 561 | `result-track:5e7896cf91033b8f4dea2dc5f488763940ffb0ef8c853a641afbc0ee620bf014` |
| 49 | `theorem` | [contMDiff_iff](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiff-iff.md) | 579 | `result-track:6c6373f0de56b7f29348a3bfdc8afead2dc306b8a7f78cde6c5d5ff03c6a4a8d` |
| 50 | `theorem` | [contMDiff_iff_target](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiff-iff-target.md) | 590 | `result-track:346ac8a0e898a3c0c12488f27c71cbd21f2c45f99ea3c4c841c684734e7e803f` |
| 51 | `theorem` | [contMDiff_zero_iff](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiff-zero-iff.md) | 598 | `result-track:4e6fec0091cfed4805ec1fd1f0f16041d9eae76532fdf0bc5a1d5ab32654fc57` |
| 52 | `theorem` | [ContMDiffWithinAt.of_succ](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-of-succ.md) | 607 | `result-track:78d162749b3bada42ad4dc319839e9ef1ca5a47ab6f349900e086a16b06a81c5` |
| 53 | `theorem` | [ContMDiffAt.of_succ](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffat-of-succ.md) | 611 | `result-track:02bed5f3f60125e781050a7263a5f6dfb828c0c2e443752d65886667be4b8d1e` |
| 54 | `theorem` | [ContMDiffOn.of_succ](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffon-of-succ.md) | 614 | `result-track:2770701657c4aca9df8f8ae0ea957c5e11c0d884d67911675fc55be666e7ce10` |
| 55 | `theorem` | [ContMDiff.of_succ](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiff-of-succ.md) | 617 | `result-track:26b04dbddf2a1165743d7cc508010c7745cb9831af4adcf254a37b2fcc8247e7` |
| 56 | `theorem` | [ContMDiffWithinAt.continuousWithinAt](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-continuouswithinat.md) | 623 | `result-track:660d72941631dc8fbee450d2112f3a01449a008ef8dd9fa802b7b67f160a6e52` |
| 57 | `theorem` | [ContMDiffAt.continuousAt](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffat-continuousat.md) | 627 | `result-track:698343916cb839501acaba00223e3a051317c8fb8aac5e1afeae0d2203db6ff8` |
| 58 | `theorem` | [ContMDiffOn.continuousOn](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffon-continuouson.md) | 630 | `result-track:6369b9d5a2e4ff97fae2258a0715e21b2936458c8f34af9c286fd9e057c6386e` |
| 59 | `theorem` | [ContMDiff.continuous](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiff-continuous.md) | 633 | `result-track:9af9e6c00f98f1a8b2bd9cdca568d012c01a0424ca20aa1a83a81831f4d88561` |
| 60 | `theorem` | [contMDiffWithinAt_infty](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-infty.md) | 638 | `result-track:55401f8c1258a0202094de57c551558829b08c5619c7d3712c015e01f5f6ecad` |
| 61 | `theorem` | [contMDiffAt_infty](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffat-infty.md) | 643 | `result-track:07765b532c937c038b06ec27c9266e65fcaa34f80ac9bb20dd6ecf546d3d75c4` |
| 62 | `theorem` | [contMDiffOn_infty](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffon-infty.md) | 646 | `result-track:bf22572eba4d4d36f8dcf1a762b113f8aaa2105060391af7be13e72df3701dd3` |
| 63 | `theorem` | [contMDiff_infty](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiff-infty.md) | 650 | `result-track:7bdfbf80af99857e54de1c263f3d99d701d83d51f1eb2216eb3b19b95d7c8e07` |
| 64 | `theorem` | [contMDiffWithinAt_iff_nat](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-iff-nat.md) | 653 | `result-track:c5960c3ce57135e3098d29a61c34e8ea2884d53f20233d1589fc9affa05bde2a` |
| 65 | `theorem` | [contMDiffAt_iff_nat](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffat-iff-nat.md) | 660 | `result-track:5e984d6a2595a2d9b52f0076a98917c9defc2c1f67d8b206c359a4eb21ca2c6d` |
| 66 | `theorem` | [contMDiffWithinAt_iff_le_ne_infty](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-iff-le-ne-infty.md) | 667 | `result-track:d4f12c82666aea91d2a31c4450dbb90252bf9f8d8dc1c8f695d782dfce56c321` |
| 67 | `theorem` | [contMDiffAt_iff_le_ne_infty](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffat-iff-le-ne-infty.md) | 679 | `result-track:af73549c8240a81b7754d7928dfb42e691a61f07e1e0e5cd06f7f481348908a2` |
| 68 | `theorem` | [ContMDiffWithinAt.mono_of_mem_nhdsWithin](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-mono-of-mem-nhdswithin.md) | 686 | `result-track:cb34c47f2b8983aef1b6fa5cbd5210469c6539d79f7eeccb5e003906b29c72a4` |
| 69 | `theorem` | [ContMDiffWithinAt.mono](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-mono.md) | 692 | `result-track:c394db512b30225bb6b831e57f6ccf68f086debfe7711e85880cef608c420aab` |
| 70 | `theorem` | [contMDiffWithinAt_congr_set](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-congr-set-source-edition-3.md) | 696 | `result-track:aefceef635b0179bb20c1483edf64494957334968afd81d423523a2f4d341826` |
| 71 | `theorem` | [ContMDiffWithinAt.congr_set](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-congr-set.md) | 700 | `result-track:12ec809d9c62ef7f60161657af69837ba2a516b1dd2512381cc7d7c6cae678ac` |
| 72 | `theorem` | [contMDiffWithinAt_insert_self](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-insert-self.md) | 704 | `result-track:be2562933655d1a1f1e0c7b3542ad000ecc2d583cbfcbc4ca5a78d50bf0c48c9` |
| 73 | `theorem` | [ContMDiffWithinAt.insert](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-insert.md) | 714 | `result-track:f23d6b08f055dc1a3e933b60de9126d1e2fefb90cede8d02b21f233ca437c9cc` |
| 74 | `theorem` | [contMDiffWithinAt_congr_set'](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-congr-set-source-edition-2.md) | 720 | `result-track:77eeabd78633d483fe377893580dae0f54584a8172cf895f0f03c5fc05e08848` |
| 75 | `theorem` | [ContMDiffAt.contMDiffWithinAt](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffat-contmdiffwithinat.md) | 726 | `result-track:bea2b6f29fcc69e28430edd69bec8038e99d7db60bd55fa6287a3073941fbd26` |
| 76 | `theorem` | [ContMDiffOn.mono](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffon-mono.md) | 730 | `result-track:7f801694aec25da7adb26e5b4624710f37c4c13adec3bd9b327a32dbaf0ff6a0` |
| 77 | `theorem` | [ContMDiff.contMDiffOn](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiff-contmdiffon.md) | 733 | `result-track:e9b6b3614c76e27b2b4e827d0372705bdbab01017373d8157c39f36b39d3ee70` |
| 78 | `theorem` | [contMDiffWithinAt_inter'](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-inter-source-edition-2.md) | 736 | `result-track:f81a3464a0a0e67a1189516c33f638d48340c8a4206d372f13275c11bf4a6b9e` |
| 79 | `theorem` | [contMDiffWithinAt_inter](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-inter.md) | 740 | `result-track:9b613ecdd03b5575baca6e4c499756aede05fee34b131d2883bf6f2bd2513efb` |
| 80 | `theorem` | [ContMDiffWithinAt.contMDiffAt](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-contmdiffat.md) | 744 | `result-track:427e4b255301ea8e531ee7c34b9ad6b311f7234207ca2e9d81cdea2f86701713` |
| 81 | `theorem` | [ContMDiffOn.contMDiffAt](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffon-contmdiffat.md) | 749 | `result-track:c5156331e403acc20877d3e28b4bdd3455057d1b1f87d51afd000625b3663f5e` |
| 82 | `theorem` | [contMDiffOn_iff_source_of_mem_maximalAtlas](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffon-iff-source-of-mem-maximalatlas.md) | 753 | `result-track:e7a045cf342f8bd01dcec42dc74822330c75323700e29a07f7ea64d4b61fa63c` |
| 83 | `theorem` | [contMDiffWithinAt_iff_contMDiffOn_nhds](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-iff-contmdiffon-nhds.md) | 765 | `result-track:f94669546077c526357e97a1af433ad347584743dfc3304820e965df9016693d` |
| 84 | `theorem` | [ContMDiffWithinAt.contMDiffOn'](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-contmdiffon-source-edition-2.md) | 798 | `result-track:b528ea178a53ddcfb25a499ba038aad41d86146095e818b81d5da06b84dac05e` |
| 85 | `theorem` | [ContMDiffWithinAt.contMDiffOn](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-contmdiffon.md) | 819 | `result-track:a7bfc1d7dd301d1ef32d32dbc0b2d1ae514ea67a865ecfa075cb55f63299b46f` |
| 86 | `theorem` | [contMDiffAt_iff_contMDiffOn_nhds](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffat-iff-contmdiffon-nhds.md) | 829 | `result-track:489c2f6f6b2ed47dc7d25276a79f6237b0938a70af25c5c15d0334b776c01cb1` |
| 87 | `theorem` | [contMDiffAt_iff_contMDiffAt_nhds](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffat-iff-contmdiffat-nhds.md) | 836 | `result-track:b3ef7fa00730320fa3628a60dbc0af818c54493b2612d9f48f6e5ef9f490a3f5` |
| 88 | `theorem` | [contMDiffWithinAt_iff_contMDiffWithinAt_nhdsWithin](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-iff-contmdiffwithinat-nhdswithin.md) | 847 | `result-track:1c5c3b768a4ebd6d4be85abb4320a5ef57c5f6cb91332a5d70c07dcda3756587` |
| 89 | `theorem` | [ContMDiffWithinAt.congr](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-congr-source-edition-2.md) | 860 | `result-track:d28177d4454bc92b40923ec49a9d3d4a9476009a4007894b1627f1b8175b9a76` |
| 90 | `theorem` | [ContMDiffWithinAt.congr'](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-congr.md) | 866 | `result-track:7094fff76353f402512cbbcf048ef23e8fc10f8478ba3a0fd4f27c6be74bf87f` |
| 91 | `theorem` | [contMDiffWithinAt_congr](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-congr-source-edition-3.md) | 871 | `result-track:d854ce3f4cb813dd7648ae13e9e46f23b8ccb4640d2c434edebb16366c893e8b` |
| 92 | `theorem` | [ContMDiffWithinAt.congr_of_mem](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-congr-of-mem-source-edition-2.md) | 875 | `result-track:c2a4e3be9236a1221e73f1bec7634d7e13a86696eb9fb259be4a0b18bd423e56` |
| 93 | `theorem` | [contMDiffWithinAt_congr_of_mem](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-congr-of-mem.md) | 880 | `result-track:93ce7b445e7ffb8078af11eeb9ef5e31ed2169bd720367ef4fd76faab7de2446` |
| 94 | `theorem` | [ContMDiffWithinAt.congr_of_eventuallyEq](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-congr-of-eventuallyeq.md) | 884 | `result-track:bd362b5031a7d1488aca073684cc6b98faab82a101544ea8104cbe67ce5f55f7` |
| 95 | `theorem` | [ContMDiffWithinAt.congr_of_eventuallyEq_of_mem](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffwithinat-congr-of-eventuallyeq-of-mem.md) | 888 | `result-track:8cfc78746a42d58e08a88b591de139f80a29163acf77c16490c5b5c370bc7122` |
| 96 | `theorem` | [Filter.EventuallyEq.contMDiffWithinAt_iff](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/filter-eventuallyeq-contmdiffwithinat-iff.md) | 892 | `result-track:cb612eb8e62d532810f35757fce906124bc8cf492b375f1418ef482e2aa9334f` |
| 97 | `theorem` | [ContMDiffAt.congr_of_eventuallyEq](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffat-congr-of-eventuallyeq.md) | 896 | `result-track:0dc98bfbcc0428153738a07ef451e1f8692213edf7d9d706dc8ded0ee39802de` |
| 98 | `theorem` | [Filter.EventuallyEq.contMDiffAt_iff](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/filter-eventuallyeq-contmdiffat-iff.md) | 900 | `result-track:4c5c91089e34647c9989413634f5b560d336371139672f6430a1e6704c26b8ed` |
| 99 | `theorem` | [ContMDiffOn.congr](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffon-congr.md) | 904 | `result-track:81b545e2abc38956e75e8e05388f160230bb3bf1447668041f9c1d541998f85d` |
| 100 | `theorem` | [contMDiffOn_congr](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffon-congr-source-edition-2.md) | 908 | `result-track:c696c3d676c6d63315a9611c64678c1fe82cac8fd4446bd34b4ea35f8755ba9f` |
| 101 | `theorem` | [ContMDiffOn.congr_mono](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffon-congr-mono.md) | 912 | `result-track:ba821c3d90f3dd4cd93111033a717bb5bca171f6c6e76bbec6ebd0e671c70cbd` |
| 102 | `theorem` | [ContMDiff.congr](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiff-congr.md) | 916 | `result-track:20975a0cf3b412d68aecd7f0edd6cc7c61a1b931ae08ed4c51ae43d0acd3215a` |
| 103 | `theorem` | [contMDiff_congr](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiff-congr-source-edition-2.md) | 921 | `result-track:24a945b0919ddbadaa8f1ba59148722d850c10737f9e7217a52da4947a4e0d62` |
| 104 | `theorem` | [contMDiffOn_of_locally_contMDiffOn](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiffon-of-locally-contmdiffon.md) | 930 | `result-track:abee12ea4e6399ee7b11bcb805bc06e8451429fc541ee96e96faca5bcb02b1b1` |
| 105 | `theorem` | [contMDiff_of_locally_contMDiffOn](../../../../DifferentialGeometry/ContMDiffDefsPublic.lean/declarations/contmdiff-of-locally-contmdiffon.md) | 934 | `result-track:f9823e219946a405238df7aa1f70085559c1ce94fa3b8563c08326b76a7d3ca8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=45c85cab195866bf3e3e91288d144fc4a8b67901a9d2b08a081d84897928d4db -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/Defs/Variant7816f93367ecfb43b4b55f72ec8899c8e0866eeb6071c2121375f5517ebdbda5.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/Defs/Variant7816f93367ecfb43b4b55f72ec8899c8e0866eeb6071c2121375f5517ebdbda5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
