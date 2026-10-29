# Verification target: Cont MDiff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a3eff42180012a8a159b383691e742e500022f0",
  "lexical_observation_count": 284,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiff/Variant12a3ad02d8017dbafecc1f0a3c2f1f148977a710b9b02522a13a12a68bd49cac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/ContMDiff.lean/index.md) · [Full source](../../../../DifferentialGeometry/ContMDiff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a3eff42180012a8a159b383691e742e500022f0`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/ContMDiff/Variant12a3ad02d8017dbafecc1f0a3c2f1f148977a710b9b02522a13a12a68bd49cac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/ContMDiff/Variant12a3ad02d8017dbafecc1f0a3c2f1f148977a710b9b02522a13a12a68bd49cac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.SmoothManifoldWithCorners` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.LocalInvariantProperties` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ContDiffWithinAtProp](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contdiffwithinatprop.md) | 92 | `declaration-track:83d5ab03c7679075da04cf19c2c2a23fe9b2ddca6a97fd903ff0eb19b0f2846f` |
| 2 | `theorem` | [contDiffWithinAtProp_self_source](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contdiffwithinatprop-self-source.md) | 96 | `result-track:4c81d16625cb00ef4746a3eba14e599a1846d22f2e7c9dc613802ca6e1eb4975` |
| 3 | `theorem` | [contDiffWithinAtProp_self](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contdiffwithinatprop-self.md) | 102 | `result-track:a2bc03653b90ef935eadb484a5f49ad47cb2f0311aa1ad5f9f541412ba0aef7a` |
| 4 | `theorem` | [contDiffWithinAtProp_self_target](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contdiffwithinatprop-self-target.md) | 107 | `result-track:ef444dcc9125bde1be6c53f4de68e728b34d0a78d56eb949f34cda5c80d37ba7` |
| 5 | `theorem` | [contDiffWithinAt_localInvariantProp](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contdiffwithinat-localinvariantprop.md) | 115 | `result-track:1e98327a57541612ba49109663380e346e76fd5ef1320b8d64bfd29c59f72bc2` |
| 6 | `theorem` | [contDiffWithinAtProp_mono_of_mem](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contdiffwithinatprop-mono-of-mem.md) | 159 | `result-track:dbd240ff869b1008c64a472a3c2ccac326ec67b04360b97c6a5907e6a0ba0b88` |
| 7 | `theorem` | [contDiffWithinAtProp_id](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contdiffwithinatprop-id.md) | 166 | `result-track:f47d5a8d7190c6979c74cfb0e2afe9749912dbce3b4294f38fa3f28e0c143352` |
| 8 | `def` | [ContMDiffWithinAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat.md) | 177 | `declaration-track:e61f778db3eb83198a047503b1db91e17ff1fdd66df4f445bed14e5ac0d0fe18` |
| 9 | `def` | [SmoothWithinAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothwithinat.md) | 184 | `declaration-track:c501f274dcb0de5a6786546c36b674761edfc482e31c5b5734cc8a83faf96964` |
| 10 | `def` | [ContMDiffAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat.md) | 191 | `declaration-track:79abaf7dd324c8861711f0e7a4c4fe6ef5e4e9cde4b540ca72741dd1b5d2ba20` |
| 11 | `theorem` | [contMDiffAt_iff](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-iff.md) | 195 | `result-track:2de9f170de923ff9031e85563d03e13ad4c689ad18d9894c20cf3f743d2b356b` |
| 12 | `def` | [SmoothAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothat.md) | 205 | `declaration-track:8d901bfa923ecc6204e91aeaf5480cf6c76dacc713561d8c0a81347d5e481c24` |
| 13 | `def` | [ContMDiffOn](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon.md) | 212 | `declaration-track:6b6df395d20cca0e2d8e0a2ca93ed88249ba980c8c246067d6da8d6d6d7a38ba` |
| 14 | `def` | [SmoothOn](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothon.md) | 218 | `declaration-track:f48502bd143c43b8f14bc351db9ab5217850b2b9d5a07064f64d1d17e70bccb1` |
| 15 | `def` | [ContMDiff](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff.md) | 225 | `declaration-track:726a17ba50c991d785b54814206aacc305bba74d16fe1d26e4692b4baa2bfdef` |
| 16 | `def` | [Smooth](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smooth.md) | 237 | `declaration-track:259335d8269f7043f1784eb1d13ac3a94b23a28c5f1362a9ddc5f202c8a00d85` |
| 17 | `theorem` | [ContMDiffWithinAt.of_le](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-of-le.md) | 245 | `result-track:3956c38aa7f9157f738c47ee63aa07daa3369150559e2ac3d6fb8ad90a8ffd4e` |
| 18 | `theorem` | [ContMDiffAt.of_le](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-of-le.md) | 250 | `result-track:6d0662295fab61c064b621c630e8a4b19a653e124167cdd4cafdc20567456e8b` |
| 19 | `theorem` | [ContMDiffOn.of_le](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-of-le.md) | 254 | `result-track:665de77a9f01831d6353a4cf5d84d2f89432bdafb12a9c4d2f59625808725ebd` |
| 20 | `theorem` | [ContMDiff.of_le](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-of-le.md) | 258 | `result-track:3fad7ad7016d850d1fc67f90611317c162db940c2027c8891a26ff093bff85ac` |
| 21 | `theorem` | [ContMDiff.smooth](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-smooth.md) | 264 | `result-track:4bc188296a607b04e3a055af128d0e3928476600bada198f38756daa04fb015c` |
| 22 | `theorem` | [Smooth.contMDiff](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smooth-contmdiff.md) | 268 | `result-track:5a0b387b5d8336540adfd7a7ad4f0ced9804deeab55ac1c78c2efd9501292c18` |
| 23 | `theorem` | [ContMDiffOn.smoothOn](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-smoothon.md) | 272 | `result-track:7cf85fbf0a583bd3a834e462574d83f3474baf8605df03d978c1b54ca42e75b4` |
| 24 | `theorem` | [SmoothOn.contMDiffOn](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothon-contmdiffon.md) | 276 | `result-track:66c0c1f79e29260132356c4330e0a118519b89200399dbdc35070063a960687f` |
| 25 | `theorem` | [ContMDiffAt.smoothAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-smoothat.md) | 280 | `result-track:c6811270e123e4289222bdc83953131fb4cd4906691d319dd2ee133f301ceea9` |
| 26 | `theorem` | [SmoothAt.contMDiffAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothat-contmdiffat.md) | 284 | `result-track:94c7a594ac5466e580be7c0fbd31555e543b819e63ece0e2e53a749ed3558d3c` |
| 27 | `theorem` | [ContMDiffWithinAt.smoothWithinAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-smoothwithinat.md) | 288 | `result-track:c6f6f7dae6bcc90fb76fdf0a27acc1f8e3e9f2854b85a89fa4274581acf76e4e` |
| 28 | `theorem` | [SmoothWithinAt.contMDiffWithinAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothwithinat-contmdiffwithinat.md) | 293 | `result-track:be81223ddd0b31f6ba32764f72f3a8226beecd1480303d43e4140c132ef02ade` |
| 29 | `theorem` | [ContMDiff.contMDiffAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-contmdiffat.md) | 298 | `result-track:21f8c12163b79250d396b45e4be2a2c5b381f66461381a879ec043b327ca3c3a` |
| 30 | `theorem` | [Smooth.smoothAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smooth-smoothat.md) | 302 | `result-track:cf069932d224c2f49af051446544fadd080257f408fc6a858288708224809bed` |
| 31 | `theorem` | [contMDiffWithinAt_univ](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-univ.md) | 306 | `result-track:2a8827edbd726f2c3c292133be0e9d66f95821ac33851002d951c1e596266d30` |
| 32 | `theorem` | [smoothWithinAt_univ](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothwithinat-univ.md) | 310 | `result-track:6610ab38dfb9991f8ae59945412ea24f5badc20364bf47b48d55307d4dedfb41` |
| 33 | `theorem` | [contMDiffOn_univ](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-univ.md) | 314 | `result-track:c0793cd7c355cd050be6cd78c29a2d35c4ff212e8e407f1327cdf84185c5691e` |
| 34 | `theorem` | [smoothOn_univ](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothon-univ.md) | 318 | `result-track:687d6f5e09bf238f49b562edcd330a7b9fe87ab6256fd7edb03d25197001f446` |
| 35 | `theorem` | [contMDiffWithinAt_iff](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-iff.md) | 324 | `result-track:25ad1049fad219abf04df6e9fe885ad6ac765f766a960587c16422bbea66957f` |
| 36 | `theorem` | [contMDiffWithinAt_iff'](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-iff-source-edition-2.md) | 340 | `result-track:b4f047173b07ebd937326fa20e798235ababbd2ccae6e901f1724ef7041bc782` |
| 37 | `theorem` | [contMDiffWithinAt_iff_target](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-iff-target.md) | 353 | `result-track:912c88d3ef76a63be6bf5de9dca12272fae64b326b99a8a1b38db932e63b4871` |
| 38 | `theorem` | [smoothWithinAt_iff](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothwithinat-iff.md) | 367 | `result-track:7d5765e266c83d10a49afda1c393a74268052e7d968f0b2ef00b0689565abecc` |
| 39 | `theorem` | [smoothWithinAt_iff_target](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothwithinat-iff-target.md) | 375 | `result-track:5dc1e3810d3e03aaaacbfd4b684d763830248f27987fd4c16a78c11b8ae1f516` |
| 40 | `theorem` | [contMDiffAt_iff_target](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-iff-target.md) | 381 | `result-track:3ac33fbd8368831492262409457cc4beaf2437f42cb50b81366ee39a06ba37f6` |
| 41 | `theorem` | [smoothAt_iff_target](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothat-iff-target.md) | 387 | `result-track:e8142b4298e2cc7e6b804058ef5d17bdb9d8717e7044db7aba9a44f40067432b` |
| 42 | `theorem` | [contMDiffWithinAt_iff_of_mem_maximalAtlas](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-iff-of-mem-maximalatlas.md) | 392 | `result-track:edf2b89c98610f7da0479123ac8fcd03e42ec6433224a0b19414784a683e45bb` |
| 43 | `theorem` | [contMDiffWithinAt_iff_image](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-iff-image.md) | 403 | `result-track:043ce3375d8c522886345ee5f06851e119bba9cb9275b50ade105996bc6b3666` |
| 44 | `theorem` | [contMDiffWithinAt_iff_of_mem_source](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-iff-of-mem-source-source-edition-2.md) | 416 | `result-track:ea0d4b781b1891afaaa3f502fe5a70bb6d7faf1761c10f937f5d65d38e09d121` |
| 45 | `theorem` | [contMDiffWithinAt_iff_of_mem_source'](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-iff-of-mem-source.md) | 426 | `result-track:2e5174ca929faf121f55bc6aa8ddcd5cf281fc3cc74284156d1cfc946d46c6c5` |
| 46 | `theorem` | [contMDiffAt_iff_of_mem_source](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-iff-of-mem-source.md) | 444 | `result-track:09ccd135982d7c9f7d4f359b68de1d901781db6197c0b736f4098ec52383f862` |
| 47 | `theorem` | [contMDiffWithinAt_iff_target_of_mem_source](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-iff-target-of-mem-source.md) | 454 | `result-track:6a759699b9adb5489804ac9d8d042d22afada7d186e7d6556d96ecbb62a6a064` |
| 48 | `theorem` | [contMDiffAt_iff_target_of_mem_source](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-iff-target-of-mem-source.md) | 470 | `result-track:20fcccf27a9998ada0eb9198618064f7f18f8684ba87d3fc264e618363140887` |
| 49 | `theorem` | [contMDiffWithinAt_iff_source_of_mem_maximalAtlas](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-iff-source-of-mem-maximalatlas.md) | 477 | `result-track:83576ce8a600d9fe6e85a4e65615f46181c3c980170d43fd005e44cabd953d3d` |
| 50 | `theorem` | [contMDiffWithinAt_iff_source_of_mem_source](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-iff-source-of-mem-source.md) | 491 | `result-track:02698662d59f8fdc9989e5547d70c541f684ee89515f7597e3d7185db6861f26` |
| 51 | `theorem` | [contMDiffAt_iff_source_of_mem_source](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-iff-source-of-mem-source.md) | 498 | `result-track:2e05f67cec4f23c5a40c7c3e3ff4ff3c461c04fa3bfb1e47295b7fe221418bbe` |
| 52 | `theorem` | [contMDiffOn_iff_of_mem_maximalAtlas](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-iff-of-mem-maximalatlas.md) | 504 | `result-track:9d94840fa00aaab840658a64ef0c80684b44c69ec122f8ceb999322b58fce4f0` |
| 53 | `theorem` | [contMDiffOn_iff_of_mem_maximalAtlas'](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-iff-of-mem-maximalatlas-source-edition-2.md) | 513 | `result-track:a6299900b964e696ae27471ecf284f4d39b967b2f5d13d88547e3643e4b4bb3f` |
| 54 | `theorem` | [contMDiffOn_iff_of_subset_source](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-iff-of-subset-source.md) | 525 | `result-track:b964ea9623c8edfcda2700430e896066b659712aa94775e64c5218f8a1549e57` |
| 55 | `theorem` | [contMDiffOn_iff_of_subset_source'](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-iff-of-subset-source-source-edition-2.md) | 539 | `result-track:c81ccd1e29032828e93b7191509739594e2448308785d5643f1a33a5a0cb0c89` |
| 56 | `theorem` | [contMDiffOn_iff](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-iff.md) | 549 | `result-track:9e4c4c1f8df61ad85cabb23c3baa007b12a53ccb18e40f8f6dcf0defe8820f36` |
| 57 | `theorem` | [contMDiffOn_iff_target](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-iff-target.md) | 578 | `result-track:c920866bcb4dbe0f50cb611f8867ce75a3a4fc075e068e35d7f4f49a11043361` |
| 58 | `theorem` | [smoothOn_iff](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothon-iff.md) | 595 | `result-track:2d176fe3e204ef55bfd01e96a872c00344776bfb3e59238f7b66a08ea3a1ce7c` |
| 59 | `theorem` | [smoothOn_iff_target](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothon-iff-target.md) | 605 | `result-track:894798d675e3af8df98f3662ce083ee0b99ba7ddaf049616ef81f13df7a96dcc` |
| 60 | `theorem` | [contMDiff_iff](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-iff.md) | 613 | `result-track:ad038abc2db53961c3b6503e19aeb4b29d0c55c2a872f4910f18aef0435a7ca0` |
| 61 | `theorem` | [contMDiff_iff_target](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-iff-target.md) | 625 | `result-track:b6bf9f028d6322e7f8d68c888e4dc344ad004a1a703782ab59ff896d64542cb3` |
| 62 | `theorem` | [smooth_iff](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smooth-iff.md) | 633 | `result-track:2dc56454adce59d63fdb1dc7075432d532d45dc0065e548768651f962bcddd05` |
| 63 | `theorem` | [smooth_iff_target](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smooth-iff-target.md) | 643 | `result-track:818b0beccec838700d5d72b02140a2fda5b7d195c720cc6403b2d87eeead6a68` |
| 64 | `theorem` | [ContMDiffWithinAt.of_succ](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-of-succ.md) | 653 | `result-track:50898e8b617f0d29ec29d66b74838097e2a328b392a0ba341ee751605891e68f` |
| 65 | `theorem` | [ContMDiffAt.of_succ](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-of-succ.md) | 658 | `result-track:d5cf61e11c406eac3e51284d4336b6a2d3b4b91f705e90d6d463a9d8c19f42fc` |
| 66 | `theorem` | [ContMDiffOn.of_succ](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-of-succ.md) | 662 | `result-track:cde37fe036dfd73c931806da32f22a177a8b234aadbe72d02978feb3420140ac` |
| 67 | `theorem` | [ContMDiff.of_succ](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-of-succ.md) | 666 | `result-track:d5ac59ac5a36ddc6169d53cadc9ceb008805c272d952f154b2d3cafc17d4c884` |
| 68 | `theorem` | [ContMDiffWithinAt.continuousWithinAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-continuouswithinat.md) | 673 | `result-track:0a996d526af5fb5d838c8c186f13e939b5d93834745918557fbcbae63ab22cb6` |
| 69 | `theorem` | [ContMDiffAt.continuousAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-continuousat.md) | 678 | `result-track:fdbfe839dfe3357694c9c2df48a17bf605c7f959ca6a14dda00ef79ccd245b81` |
| 70 | `theorem` | [ContMDiffOn.continuousOn](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-continuouson.md) | 682 | `result-track:6af3e503536c985392da9d7aaa285e9700d1a8382a7342fee48792cbda29b10e` |
| 71 | `theorem` | [ContMDiff.continuous](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-continuous.md) | 686 | `result-track:cde68c668a9c5950fa999560a8d3b20a8dbd8b88a6a519211e59b7270f91f77f` |
| 72 | `theorem` | [contMDiffWithinAt_top](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-top.md) | 692 | `result-track:df447ec76cfddf66199cbb1d457a4a8efb265ec0ff1ac3528a24ec35e43e7005` |
| 73 | `theorem` | [contMDiffAt_top](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-top.md) | 698 | `result-track:0e0e1b9b8914163189c0b0a29d75738ef42e1e09bc46efde18eb0fd93cada8fa` |
| 74 | `theorem` | [contMDiffOn_top](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-top.md) | 702 | `result-track:4530b10be38a4f073e6f527cc5c375ddeaf6ad730f2b018fea644b22f6c1f4b2` |
| 75 | `theorem` | [contMDiff_top](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-top.md) | 706 | `result-track:a1d8eac741ee0f557c968b0171898b70c63c0b332bca8b4f1fd1f84a7c8f4c7a` |
| 76 | `theorem` | [contMDiffWithinAt_iff_nat](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-iff-nat.md) | 710 | `result-track:149631418af4215ced5ae7f57a6ec423721880b95b2c314c20c14f72dea8046a` |
| 77 | `theorem` | [ContMDiffWithinAt.mono_of_mem](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-mono-of-mem.md) | 720 | `result-track:2f1c7045167dd53afc252f61f83111856d9dd6ea45693a342d54cfb89fa36e2a` |
| 78 | `theorem` | [ContMDiffWithinAt.mono](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-mono.md) | 726 | `result-track:faaf2ae51a887b2fb0aa12cc8d4eccc7a41fdec9e19573516dd480491d9935d2` |
| 79 | `theorem` | [contMDiffWithinAt_congr_nhds](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-congr-nhds.md) | 731 | `result-track:cb5f734a094ac929d61f703ad00a42372b964c7a9ac7cf9b91513a4034640af3` |
| 80 | `theorem` | [contMDiffWithinAt_insert_self](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-insert-self.md) | 737 | `result-track:5170542a394707c483662f6d6bd819f098098d1530e387c58985a4119853839b` |
| 81 | `theorem` | [ContMDiffWithinAt.insert](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-insert.md) | 746 | `result-track:c6dfc82570abb30fae0516d0115308b685912ea890525ac707c87c745c01d375` |
| 82 | `theorem` | [ContMDiffAt.contMDiffWithinAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-contmdiffwithinat.md) | 750 | `result-track:9f0127832a56712e70057beec11008c74ee599f5af5b90504ddb300bec508d85` |
| 83 | `theorem` | [SmoothAt.smoothWithinAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothat-smoothwithinat.md) | 755 | `result-track:c7d5e8c2f6d25e2b11775be225730750aafbaf91823e9537cad53260d882e18d` |
| 84 | `theorem` | [ContMDiffOn.mono](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-mono.md) | 759 | `result-track:200e54866db6c5ca19d37e02e1df7d461ef2715de7bdee502a1e16aa17257fe2` |
| 85 | `theorem` | [ContMDiff.contMDiffOn](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-contmdiffon.md) | 763 | `result-track:ffa202e9b1f95355b7b46eb901a72e04be73824588be3d5ec145e354906a6a26` |
| 86 | `theorem` | [Smooth.smoothOn](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smooth-smoothon.md) | 767 | `result-track:cbc3999f8fb415eccc56922e52d3d9d1bfc6553e3244b64d212a16dea722e1ab` |
| 87 | `theorem` | [contMDiffWithinAt_inter'](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-inter.md) | 771 | `result-track:93e65a37649b25803f676519d70b055aef404017485c3e694e97a35da8c979d8` |
| 88 | `theorem` | [contMDiffWithinAt_inter](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-inter-source-edition-2.md) | 776 | `result-track:e3180287c9d3b6df23e443ea38c961a0e13748bc868ce7fb5036f5ecfe18be0e` |
| 89 | `theorem` | [ContMDiffWithinAt.contMDiffAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-contmdiffat.md) | 781 | `result-track:c25f462f1c16a1df9b51317c45e7a89f85d7b85858cdfc42e88d82f0ef83a47b` |
| 90 | `theorem` | [SmoothWithinAt.smoothAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothwithinat-smoothat.md) | 786 | `result-track:259f94f0a65ade89473bbc20362864ef7abd5e17c79c37f64aa66ed37c6e2f73` |
| 91 | `theorem` | [ContMDiffOn.contMDiffAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-contmdiffat.md) | 791 | `result-track:4e084f20ba0d608c9fb1adf271a3e9db701260fba3308c67ddd9578d50517178` |
| 92 | `theorem` | [SmoothOn.smoothAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothon-smoothat.md) | 796 | `result-track:98bd2d94ea118aa42453cfd06ee89b9517cf3a27863365b14bbb2230d174d495` |
| 93 | `theorem` | [contMDiffOn_iff_source_of_mem_maximalAtlas](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-iff-source-of-mem-maximalatlas.md) | 800 | `result-track:7ab73358b0650f6a138c286227c049ac2ae6bcc20e67a4244fd3e22515247150` |
| 94 | `theorem` | [contMDiffWithinAt_iff_contMDiffOn_nhds](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-iff-contmdiffon-nhds.md) | 814 | `result-track:e2bff4cab8c3651d994ddcbfb08fbdf9fe527e53d30d229eb5a39fd58655f991` |
| 95 | `theorem` | [contMDiffAt_iff_contMDiffOn_nhds](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-iff-contmdiffon-nhds.md) | 846 | `result-track:c8df959a8ffb93fe877d19203e2a94235464d494fce8b0446ef5567ca9058c4f` |
| 96 | `theorem` | [contMDiffAt_iff_contMDiffAt_nhds](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-iff-contmdiffat-nhds.md) | 853 | `result-track:7af01b9f08200d391496cbfad9a51e00eea83c6d482485eb1661aeb68cbfcf45` |
| 97 | `theorem` | [ContMDiffWithinAt.congr](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-congr-source-edition-2.md) | 864 | `result-track:2fe02789322c55b3b64889d3c510bcb2e67cbbefc57c60a8578a92076d1589fb` |
| 98 | `theorem` | [contMDiffWithinAt_congr](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-congr.md) | 869 | `result-track:07c287bac27729ea90b83b8f5f0f3efe7b0b181fc23f1cc76947c7ce14e98d50` |
| 99 | `theorem` | [ContMDiffWithinAt.congr_of_eventuallyEq](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-congr-of-eventuallyeq.md) | 874 | `result-track:f6d6885183cc6e82829e9a80b141f2e71a1260c0a0dbfe2013a29632101842d3` |
| 100 | `theorem` | [Filter.EventuallyEq.contMDiffWithinAt_iff](../../../../DifferentialGeometry/ContMDiff.lean/declarations/filter-eventuallyeq-contmdiffwithinat-iff.md) | 879 | `result-track:cb2ebf0415eb438e9d6cef9e75a9462ec9bdeb1b713be96a182075e649c203f3` |
| 101 | `theorem` | [ContMDiffAt.congr_of_eventuallyEq](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-congr-of-eventuallyeq.md) | 884 | `result-track:75bb27d228c16cfa03dfb5112e9586bccea1f62af4124a8e439ac6ee48dbc8e1` |
| 102 | `theorem` | [Filter.EventuallyEq.contMDiffAt_iff](../../../../DifferentialGeometry/ContMDiff.lean/declarations/filter-eventuallyeq-contmdiffat-iff.md) | 889 | `result-track:8799d6fbe776a9108fa0dca8101b752d3795367249ad16862fb7137905405c55` |
| 103 | `theorem` | [ContMDiffOn.congr](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-congr.md) | 894 | `result-track:34d3cec2d79b82ae39fed12230238599acef48c87acc27e42854187367595f50` |
| 104 | `theorem` | [contMDiffOn_congr](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-congr-source-edition-2.md) | 899 | `result-track:74cb9efca736191132a1f90caaff2c0dc431d81f1eae02fd990fa4bb05f088d8` |
| 105 | `theorem` | [contMDiffOn_of_locally_contMDiffOn](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-of-locally-contmdiffon.md) | 908 | `result-track:b7a1e5815a7d5655051e37ba3f79c1c4623075941b9ca98e934ad9d03eb5a341` |
| 106 | `theorem` | [contMDiff_of_locally_contMDiffOn](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-of-locally-contmdiffon.md) | 913 | `result-track:c1e7fbe6e793c499fddb67f3912c3f0a3b1ccc4b6b51c340aa8e43532d58b96f` |
| 107 | `theorem` | [ContMDiffWithinAt.comp](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-comp.md) | 924 | `result-track:ad1573d58f03968acb0a359ec264bd6b4a349d5289941073960cabe6da86a054` |
| 108 | `theorem` | [ContMDiffWithinAt.comp_of_eq](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-comp-of-eq.md) | 953 | `result-track:b51457664b173e4b96eec0926075ac3f9a77720a663e3ce530ce5a189f504961` |
| 109 | `theorem` | [SmoothWithinAt.comp](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothwithinat-comp-source-edition-2.md) | 960 | `result-track:79ce0f20dc17af34f2ecbda308b5b07f55147323295be0d9d7f26bad5bac7ad7` |
| 110 | `theorem` | [ContMDiffOn.comp](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-comp.md) | 967 | `result-track:03a2bef2a085be3445025f139756bf649c0a33f39e3c954312211a2f11399870` |
| 111 | `theorem` | [SmoothOn.comp](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothon-comp.md) | 973 | `result-track:a2739a628ad0d5a469f1eaff16f5ae6ac3668cb2af50225a9447044b81c65ea6` |
| 112 | `theorem` | [ContMDiffOn.comp'](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-comp-source-edition-2.md) | 979 | `result-track:28ea6c0548bdfb5944bb78c6fb20e01271eacbae263572a4f6993d20a45a4a9b` |
| 113 | `theorem` | [SmoothOn.comp'](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothon-comp-source-edition-2.md) | 985 | `result-track:ed401b60f2ca4716d9459f5cf7e3f3491bcb64026338e6cb8d9dcb81f6420a39` |
| 114 | `theorem` | [ContMDiff.comp](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-comp.md) | 991 | `result-track:5f953b4f14760eeb43408bd5beeefcc3a72d648931d18007b9ab02ae6874a7cb` |
| 115 | `theorem` | [Smooth.comp](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smooth-comp.md) | 998 | `result-track:2fbc6c39bd72a6cab66d2b9154504718ec9e324f310f16fac6460753a9e8497e` |
| 116 | `theorem` | [ContMDiffWithinAt.comp'](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-comp-source-edition-2.md) | 1004 | `result-track:dbc255380fd026ef64b003e32fe70afe7748ab54dc8e2be1e6532420250c1520` |
| 117 | `theorem` | [SmoothWithinAt.comp'](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothwithinat-comp.md) | 1011 | `result-track:74b47a7911e7846b94cd83d682c119378cb1511be84e735b53d8cbdb7c6ca218` |
| 118 | `theorem` | [ContMDiffAt.comp_contMDiffWithinAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-comp-contmdiffwithinat.md) | 1019 | `result-track:0e025db0e332a0accab5a49213c2eaef73cd378e53e9cec525bef442d3c742dc` |
| 119 | `theorem` | [SmoothAt.comp_smoothWithinAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothat-comp-smoothwithinat.md) | 1027 | `result-track:b369c4373c308c4a63786ebc738c278b8f9f09038e0ad34b2731a0efc567d75e` |
| 120 | `theorem` | [ContMDiffAt.comp](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-comp.md) | 1033 | `result-track:c96af63bcb649b53864419d8d96108f344559b7187b0e749acd8cff711cfadc9` |
| 121 | `theorem` | [ContMDiffAt.comp_of_eq](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-comp-of-eq.md) | 1039 | `result-track:56d93c3fcf54d9d025bd069cff70397516927f5b3adc2c844a0ff80d28568b15` |
| 122 | `theorem` | [SmoothAt.comp](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothat-comp.md) | 1045 | `result-track:954abe39f3638a052f2fdf189977e7734d7cef88e760985557b88f449764d7be` |
| 123 | `theorem` | [ContMDiff.comp_contMDiffOn](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-comp-contmdiffon.md) | 1050 | `result-track:a7a75c0875cb20125c15612de0573646dafe036417c2624dfabbb7a64d8ca64e` |
| 124 | `theorem` | [Smooth.comp_smoothOn](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smooth-comp-smoothon.md) | 1055 | `result-track:56a0655d6800684ac0577700ab9ee0360269ff90b093f960bf4885168ab2c646` |
| 125 | `theorem` | [ContMDiffOn.comp_contMDiff](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-comp-contmdiff.md) | 1060 | `result-track:17777c1572ad63cb5a2ee452998da61fdd70f2ed1760d855e76ba3da3379ab52` |
| 126 | `theorem` | [SmoothOn.comp_smooth](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothon-comp-smooth.md) | 1065 | `result-track:b091ca19e4d51a0a5013ea53d435f8656d5c5565d9d5b4e5169015f54817d76e` |
| 127 | `theorem` | [contMDiff_model](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-model.md) | 1076 | `result-track:2f6729321151359a053a47200d0c762419bcf8ac52d2e6f12e2112ce43186dc5` |
| 128 | `theorem` | [contMDiffOn_model_symm](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-model-symm.md) | 1085 | `result-track:bae060d6d54dde98491b33dd48151e72d7455bfddacd29ee16c3bd975d9b7bcf` |
| 129 | `theorem` | [contMDiffOn_of_mem_maximalAtlas](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-of-mem-maximalatlas.md) | 1093 | `result-track:5f5558ca7f1fc97b0f19c5dbdb3fa2d7d12a2e5c4677e09c3ca52288c3ff430d` |
| 130 | `theorem` | [contMDiffOn_symm_of_mem_maximalAtlas](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-symm-of-mem-maximalatlas.md) | 1101 | `result-track:d6c3540bcf79fc3f49979e4566b4bb41daa6e72c5b595c12b5a39ea104882aa7` |
| 131 | `theorem` | [contMDiffAt_of_mem_maximalAtlas](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-of-mem-maximalatlas.md) | 1109 | `result-track:20525f4a1fec802b54f5309877c8036d368ecdf74ad48b00c3ba393425b2b84a` |
| 132 | `theorem` | [contMDiffAt_symm_of_mem_maximalAtlas](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-symm-of-mem-maximalatlas.md) | 1114 | `result-track:dd9a82114c9e55cf2796ec79904f69b228129b7c59993dad72eb2766ddfd65c5` |
| 133 | `theorem` | [contMDiffOn_chart](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-chart.md) | 1119 | `result-track:58fd740177516845f0c773c66b935d559043cf8d1718ec50f867d65221ae7324` |
| 134 | `theorem` | [contMDiffOn_chart_symm](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-chart-symm.md) | 1123 | `result-track:2947bb29c03703215a431f5425aca8cc60aa180d8b7e486799dd06f7243e4b0d` |
| 135 | `theorem` | [contMDiffAt_extend](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-extend.md) | 1127 | `result-track:5946d8bbefc6b4bc9717d7266b2ec06d713708baa7457b35f5b6cf8bc5a85983` |
| 136 | `theorem` | [contMDiffAt_extChartAt'](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-extchartat-source-edition-2.md) | 1132 | `result-track:b607188b5355b3f114a32da70da50ff20707d365d81e14e31eb7ab448ea763ee` |
| 137 | `theorem` | [contMDiffAt_extChartAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-extchartat.md) | 1137 | `result-track:4e974a30d5c557bfa6f94ce54c25ae0ea446053d367c8f8060eaa86e7f1fcbed` |
| 138 | `theorem` | [contMDiffOn_extChartAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-extchartat.md) | 1141 | `result-track:0fae45855d4a44f7acff69dee4641403e0f2f25bd81fc0c4b33ed9d8c5198aeb` |
| 139 | `theorem` | [contMDiffOn_extend_symm](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-extend-symm.md) | 1145 | `result-track:4fbbcc342fec74eea1113c8f46a3ea6bb56c33f8a9d857705a5f9d843a286265` |
| 140 | `theorem` | [contMDiffOn_extChartAt_symm](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-extchartat-symm.md) | 1153 | `result-track:240c34dfe2b18e971e7e26e32cff1c1fd6ded7c2d2c1fb3b47f0e8fbd7227f43` |
| 141 | `theorem` | [contMDiffOn_of_mem_contDiffGroupoid](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-of-mem-contdiffgroupoid.md) | 1160 | `result-track:02897b2d83f5e32efb01f8e1db9477247e9392e4563b6aebc8e42436873db999` |
| 142 | `theorem` | [contMDiff_id](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-id.md) | 1172 | `result-track:0057fd54985594ca1aa532df6a014aff91df3eace822be0a10a721ac2af1c152` |
| 143 | `theorem` | [smooth_id](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smooth-id.md) | 1177 | `result-track:5790176ec1c9a14f176960efbc5efbf4d0a1643cbd73a260daaedc53e8c0bb7a` |
| 144 | `theorem` | [contMDiffOn_id](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-id.md) | 1181 | `result-track:a7597afb97171acbab305ea507f5be60f7e2fb52f18ca0250c1134e6a37e15ab` |
| 145 | `theorem` | [smoothOn_id](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothon-id.md) | 1185 | `result-track:0032c08f9c79f321eeacd2fbc0da0a35c479414bc823a340d35030be55e65cab` |
| 146 | `theorem` | [contMDiffAt_id](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-id.md) | 1189 | `result-track:802ba75ed3bc525ed6945e48f2615f131c975d3b6efd16aba849dccf71ff4e8c` |
| 147 | `theorem` | [smoothAt_id](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothat-id.md) | 1193 | `result-track:a5c67cf51e6506202fce7f1314d0ba62492ca0dae72ab1a8633a428b69711355` |
| 148 | `theorem` | [contMDiffWithinAt_id](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-id.md) | 1197 | `result-track:7311b1f42a9c32b4eb95fc7b068a6d72131b117c0e08c2e82bf75592948cb37d` |
| 149 | `theorem` | [smoothWithinAt_id](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothwithinat-id.md) | 1201 | `result-track:6c99affd4412daed546e86daad9af9b574d0c3bd323fae2c609e42dce59b53ea` |
| 150 | `theorem` | [contMDiff_const](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-const.md) | 1214 | `result-track:d144ceb1bf41786a5414fcee68d38a8fc4d0a0eddb760e33d6514b84fff38147` |
| 151 | `theorem` | [contMDiff_one](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-one.md) | 1222 | `result-track:787a3b1b53e7e4da997b5b093f6d15db25d6070cf30b09c8bc276224f9d4a52f` |
| 152 | `theorem` | [smooth_const](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smooth-const.md) | 1227 | `result-track:7a9dd8b7750c79989ccaa7d703840428a2b27cb72ecda14312564f62a42a81ad` |
| 153 | `theorem` | [smooth_one](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smooth-one.md) | 1232 | `result-track:fb734e54e7008aa66bbf0d138e699db9474f4cd28b5e209b50320748daacc19a` |
| 154 | `theorem` | [contMDiffOn_const](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-const.md) | 1236 | `result-track:e13c8a0463871904997aa6e540d3910abc30cb268c49a8f1cdfdbf567284b588` |
| 155 | `theorem` | [contMDiffOn_one](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-one.md) | 1241 | `result-track:a941334582f1c59da1f265f7a73f8cdeea7c2d201ff83de54b2428774bc033dd` |
| 156 | `theorem` | [smoothOn_const](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothon-const.md) | 1246 | `result-track:00f40193f990320fd43977c9ee90f5c63db7207afb6bd35e175b2d19877621cb` |
| 157 | `theorem` | [smoothOn_one](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothon-one.md) | 1251 | `result-track:800696cb6465b8ce7a26b65058697f763d32d9ceb5825162ad2212067e9bdcf0` |
| 158 | `theorem` | [contMDiffAt_const](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-const.md) | 1256 | `result-track:fc513fcc37921c5a383b8a3f9c1a29a8de96e851eb941c96376aa98f95011b6a` |
| 159 | `theorem` | [contMDiffAt_one](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-one.md) | 1261 | `result-track:8841ca9ac327e40d4d5d2d0ed9e1ecf5cff4723a82c26aaf83c2307a80f336ea` |
| 160 | `theorem` | [smoothAt_const](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothat-const.md) | 1266 | `result-track:ec8e11cf8fdf65c6075f9dbcf26727dd5400994642d260e6313bfbd47a590bb4` |
| 161 | `theorem` | [smoothAt_one](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothat-one.md) | 1271 | `result-track:f625f6883daf0c1af3a49383ffcb38252d087cd171b22dee666aab405bdd44c4` |
| 162 | `theorem` | [contMDiffWithinAt_const](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-const.md) | 1276 | `result-track:cd58a7f821a9f244e895a8086735a0e29d7deafb04d34a697c07ec1e2d7afbf0` |
| 163 | `theorem` | [contMDiffWithinAt_one](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-one.md) | 1281 | `result-track:ab61ec013ce9a38d2130b844c45ac6b17053fb1534f0911209d05a24a9e16053` |
| 164 | `theorem` | [smoothWithinAt_const](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothwithinat-const.md) | 1286 | `result-track:bfe7b2799ea0440de30050ed513a5d4ff9ce7e4d9654829fe8b9dd06aed9eda5` |
| 165 | `theorem` | [smoothWithinAt_one](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothwithinat-one.md) | 1291 | `result-track:ffec5b257d64d02a059e574ef85cb898cec7d3c9d215c6b860921a642c612750` |
| 166 | `theorem` | [contMDiff_of_support](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-of-support.md) | 1298 | `result-track:3d5df76e7d602f16960a41960f3b8d43e77f6a7c0865e88969f8d1328e69868b` |
| 167 | `theorem` | [contMDiff_inclusion](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-inclusion.md) | 1314 | `result-track:7d89d5c4795574585c3121d8325cb47dd0cd0ffb20c9d75ab36daf0ca9fad336` |
| 168 | `theorem` | [smooth_inclusion](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smooth-inclusion.md) | 1326 | `result-track:7b635c9ffcf1c4e0231e3ab686098307f123be81221dffa5f4349045e1a9c99c` |
| 169 | `theorem` | [contMDiffWithinAt_iff_contDiffWithinAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-iff-contdiffwithinat.md) | 1337 | `result-track:ba4bc513d03c7e33bd9d2ccdeb52f481f35ff7642fa1e72a5fb9f032e046a555` |
| 170 | `theorem` | [contMDiffAt_iff_contDiffAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-iff-contdiffat.md) | 1349 | `result-track:eac2f14353a0c88c2f57272d1e54bf9f6273aca60364bd4b5ffae4eb3be81be4` |
| 171 | `theorem` | [contMDiffOn_iff_contDiffOn](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-iff-contdiffon.md) | 1358 | `result-track:f1104b382bfde6ea12fb265c0b25bb0520e16323f6f19123fa9d502d4eedc5f5` |
| 172 | `theorem` | [contMDiff_iff_contDiff](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-iff-contdiff.md) | 1367 | `result-track:cc4a4fcdcca7f0c2bffe3130ccc11bdc0d39d1deb316d701870bdce243f0f058` |
| 173 | `theorem` | [ContDiffWithinAt.comp_contMDiffWithinAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contdiffwithinat-comp-contmdiffwithinat.md) | 1375 | `result-track:7e5c9c8c0fb36847af045a7cd600cc9f27a220028cbce694f587f44f59195f8b` |
| 174 | `theorem` | [ContDiffAt.comp_contMDiffWithinAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contdiffat-comp-contmdiffwithinat.md) | 1381 | `result-track:e5436fa1c2869da04dbcb22595a1bfa92d6f37fea1c23415cf1e63f3133d29b7` |
| 175 | `theorem` | [ContDiffAt.comp_contMDiffAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contdiffat-comp-contmdiffat.md) | 1386 | `result-track:8d26f20a8208bf47bc4f46e8a483dd7265a35add805eb56a18784177b6eecb7e` |
| 176 | `theorem` | [ContDiff.comp_contMDiffWithinAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contdiff-comp-contmdiffwithinat.md) | 1391 | `result-track:6ca5d53aea39026ad50a19f00a0b826eefcd5df6f96b333e68d0a9d117864a95` |
| 177 | `theorem` | [ContDiff.comp_contMDiffAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contdiff-comp-contmdiffat.md) | 1396 | `result-track:5b950426b85ae87555ad047837f7a0e99cc0106893b47be7d5916b4510df8218` |
| 178 | `theorem` | [ContDiff.comp_contMDiff](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contdiff-comp-contmdiff.md) | 1400 | `result-track:c5a61e47cddf2af8c3dec7eb2e0d4d5a3faecf38dc5ae115f56c97f9d048003e` |
| 179 | `theorem` | [ContMDiffWithinAt.prod_mk](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-prod-mk.md) | 1412 | `result-track:1d97a4cd1f3ffbad91ead5d09473f414baec180688c9d0a62ab5159f8d3c700a` |
| 180 | `theorem` | [ContMDiffWithinAt.prod_mk_space](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-prod-mk-space.md) | 1419 | `result-track:33da5e534db4b6579f6d9cae9debef19f585f982f502c93356ec4756e51daf16` |
| 181 | `theorem` | [ContMDiffAt.prod_mk](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-prod-mk.md) | 1426 | `result-track:8cefc94deb526ae81c591ab00c2c7d369e121e3f8fddae36abd44c91eda4844c` |
| 182 | `theorem` | [ContMDiffAt.prod_mk_space](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-prod-mk-space.md) | 1431 | `result-track:f3326d363bdbe46e0fda425ff3d3c4968f94aa02c92a37997d7b56e45810cdc7` |
| 183 | `theorem` | [ContMDiffOn.prod_mk](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-prod-mk.md) | 1437 | `result-track:aed75671f6a4d803b6136eae8003083f29f709871a0adc8f1833345350787564` |
| 184 | `theorem` | [ContMDiffOn.prod_mk_space](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-prod-mk-space.md) | 1442 | `result-track:0b1efb52882224c37d075eb3b3dee920507dfb01e016e18339c63acf5186a4c8` |
| 185 | `theorem` | [ContMDiff.prod_mk](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-prod-mk.md) | 1447 | `result-track:c8872116b32503ad42d966796f08503dd151a6ef7822b09acfead6744688c2c5` |
| 186 | `theorem` | [ContMDiff.prod_mk_space](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-prod-mk-space.md) | 1452 | `result-track:a02b00d8885d554927c415cf0c59f2279ebc1c31ede757bd1d3d34e75807ab4a` |
| 187 | `theorem` | [SmoothWithinAt.prod_mk](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothwithinat-prod-mk.md) | 1457 | `result-track:698b62bd465217dc598750f06ce483893c99a1bbb5025f92397a8a64937646bf` |
| 188 | `theorem` | [SmoothWithinAt.prod_mk_space](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothwithinat-prod-mk-space.md) | 1462 | `result-track:8fa8b1a19a7d6ba67e2c9b504526b2415192e238686570bf1cc9aac626b0e677` |
| 189 | `theorem` | [SmoothAt.prod_mk](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothat-prod-mk.md) | 1468 | `result-track:4819be50b2274725096c145afec61a94cac152f80aa1a359b5a2ff332083e926` |
| 190 | `theorem` | [SmoothAt.prod_mk_space](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothat-prod-mk-space.md) | 1473 | `result-track:e10cef9a68e3a3a323c7681f062531d81cb42213ffa8993872987c227c6f2c23` |
| 191 | `theorem` | [SmoothOn.prod_mk](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothon-prod-mk.md) | 1478 | `result-track:e0c353bb6e9a6b4f5638c281ffc9a494fa210f5ef90a08cfa904cff4a9c5e377` |
| 192 | `theorem` | [SmoothOn.prod_mk_space](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothon-prod-mk-space.md) | 1483 | `result-track:26162cbd5583b7978330218e1ac514b5fca6bc61d025d0cfdb2df022b04bf759` |
| 193 | `theorem` | [Smooth.prod_mk](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smooth-prod-mk.md) | 1488 | `result-track:738029a094e67881544dde0ab2da4dda894aa88e57732ce56037ec617eb17803` |
| 194 | `theorem` | [Smooth.prod_mk_space](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smooth-prod-mk-space.md) | 1493 | `result-track:b055dd1c5c52d809420891c42811200f5f92fa41d0ee449297a8b15ec1868beb` |
| 195 | `theorem` | [contMDiffWithinAt_fst](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-fst-source-edition-2.md) | 1502 | `result-track:491812e005517f5d5671be9edd33691f230e4605575b1986a7e17afe527c4684` |
| 196 | `theorem` | [ContMDiffWithinAt.fst](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-fst.md) | 1518 | `result-track:345fbf64bb34f990003d0b187bd18117c1256308d5f809be06bb2b3984b985b7` |
| 197 | `theorem` | [contMDiffAt_fst](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-fst-source-edition-2.md) | 1524 | `result-track:f411a18af2ba759877035d6b29672fc2e32a84346d760df5f88573eed126d5ad` |
| 198 | `theorem` | [contMDiffOn_fst](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-fst.md) | 1528 | `result-track:4833185a577266fe2ce6af5ce3cd02d7272a81e40c80da6181d9e1369f389fa1` |
| 199 | `theorem` | [contMDiff_fst](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-fst-source-edition-2.md) | 1532 | `result-track:cac52d92b97d9681d1dc3ee53122cc3cbe12dedc91d8f5f3a95299bdc5065289` |
| 200 | `theorem` | [smoothWithinAt_fst](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothwithinat-fst.md) | 1535 | `result-track:067d48852a5ae62bf29c81fab3d7c09ee8104c9ad053a3324d8b82038f48e1f1` |
| 201 | `theorem` | [smoothAt_fst](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothat-fst.md) | 1540 | `result-track:8896559df5d74d96f11b7f5c654d3cb1a73aff66a9f3627d9ad3ab42a9f02a23` |
| 202 | `theorem` | [smoothOn_fst](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothon-fst.md) | 1544 | `result-track:6d7977d0f3088218515fc33422ba439f96036980b5c6f530368633751ac9505c` |
| 203 | `theorem` | [smooth_fst](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smooth-fst.md) | 1548 | `result-track:4f7ac15456eb090dbd15128a8d27d86595844b2a777f0e3eeab0949385da90f3` |
| 204 | `theorem` | [ContMDiffAt.fst](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-fst.md) | 1552 | `result-track:00b63d5a25fcb4e5fcb1fa66df23a0127d2a8f12cff5bca4d4b3691910637537` |
| 205 | `theorem` | [ContMDiff.fst](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-fst.md) | 1557 | `result-track:79b68088bb19778107a3b1e3e84ec602109dd7326e41a421542ed34a287ef30e` |
| 206 | `theorem` | [SmoothAt.fst](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothat-fst-source-edition-2.md) | 1562 | `result-track:da12369be87b2fd3f1fb0f4a7dc3fcab171ca0403d849399c500d49e023e9601` |
| 207 | `theorem` | [Smooth.fst](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smooth-fst-source-edition-2.md) | 1567 | `result-track:ba1e91faa7bf614f05f7bf1aa0a9cbdce0149011396337073a45736330bca513` |
| 208 | `theorem` | [contMDiffWithinAt_snd](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-snd-source-edition-2.md) | 1571 | `result-track:bdefb457c3b077af33adef0872658b12783559de003de706e5ba6a444dd4445a` |
| 209 | `theorem` | [ContMDiffWithinAt.snd](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-snd.md) | 1587 | `result-track:a107cb00692b43699df38ccbcae4aa757c18580022d349884229aa5b16d32a73` |
| 210 | `theorem` | [contMDiffAt_snd](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-snd-source-edition-2.md) | 1593 | `result-track:85b5da5b2188d874872eaf7f28f058fd6f5041bc417455e35c5ac0ce443cce3c` |
| 211 | `theorem` | [contMDiffOn_snd](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-snd.md) | 1597 | `result-track:03ad73063a22fdeb5af13aea248e7a038509a1ab06bf847c7341667415a22947` |
| 212 | `theorem` | [contMDiff_snd](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-snd.md) | 1601 | `result-track:0529b13d5cc064e51cd0abbc37ca26f892d0b90a71cca221577ff285c01cfd9b` |
| 213 | `theorem` | [smoothWithinAt_snd](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothwithinat-snd.md) | 1604 | `result-track:6b6ac830f63498c4fb9df6b265a01d29b822a668ce95e99dfca467b10b0315cf` |
| 214 | `theorem` | [smoothAt_snd](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothat-snd.md) | 1609 | `result-track:06566520231abe59b74f4c2b971b90438a99eef89c1b8c80ff657eead72f6019` |
| 215 | `theorem` | [smoothOn_snd](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothon-snd.md) | 1613 | `result-track:331e83dd4ec1e8fac79cd09f60572099bafc861330af5c8e65ab98bcabb14dbc` |
| 216 | `theorem` | [smooth_snd](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smooth-snd-source-edition-2.md) | 1617 | `result-track:9d5462178a29097c49752748995b509c5963ed829eb01fee6525faf8ec91cef8` |
| 217 | `theorem` | [ContMDiffAt.snd](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-snd.md) | 1621 | `result-track:69bb17f2982283d38e74e424c92675f2cdc28f9dadb758a7cfe00d6a599c47c9` |
| 218 | `theorem` | [ContMDiff.snd](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-snd-source-edition-2.md) | 1626 | `result-track:c5fa24dc9ef77881a761bb372cbd6acf7263b4a6ef3f9bba7a94e3606ad7ba59` |
| 219 | `theorem` | [SmoothAt.snd](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothat-snd-source-edition-2.md) | 1631 | `result-track:b6faa21ea37011cc7a0f9b516ea9ebdab7427b916ef3f7977ab947c366094b64` |
| 220 | `theorem` | [Smooth.snd](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smooth-snd.md) | 1636 | `result-track:20488f6b0ad28be142632a6b564ee80259c91cfa0e044c096e2e3512f8c69384` |
| 221 | `theorem` | [contMDiffWithinAt_prod_iff](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-prod-iff.md) | 1642 | `result-track:92e9589382ca76f0ca021ebb34f0040e0b03a83bd58043934ad7111ec67ef44d` |
| 222 | `theorem` | [contMDiffAt_prod_iff](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-prod-iff.md) | 1648 | `result-track:d2e2906a635ecb547b6314159561527cf3720e04fceb6cdb7d89b2185302e2de` |
| 223 | `theorem` | [contMDiff_prod_iff](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-prod-iff.md) | 1654 | `result-track:bc07185d0e4fe0b717619c1ae7881904afb32a7f11fea1cea50b1ce594ee16d6` |
| 224 | `theorem` | [smoothAt_prod_iff](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothat-prod-iff.md) | 1660 | `result-track:d3208603b17ab26019ec511018c1e389deee525d6edb8d9e17b90c9acfa5a89a` |
| 225 | `theorem` | [smooth_prod_iff](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smooth-prod-iff.md) | 1665 | `result-track:df2b5016a3fe50237d35b4057801b0816ce61aabfa1eefc5fc019220c1330141` |
| 226 | `theorem` | [smooth_prod_assoc](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smooth-prod-assoc.md) | 1670 | `result-track:e6174e9cfed49d1ff21f3f9316c9de322880b9b8f13ec915f78685e7f12945a6` |
| 227 | `theorem` | [ContMDiffWithinAt.prod_map'](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-prod-map-source-edition-2.md) | 1681 | `result-track:5fae1c65d9439b17d42e84dbbd3f55bfbb26904c97718a146ef620817555247d` |
| 228 | `theorem` | [ContMDiffWithinAt.prod_map](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-prod-map.md) | 1688 | `result-track:20f7eaa6e2c364b62ed266a6d27d47b3260d111235cf89c6530a27a54f0095fc` |
| 229 | `theorem` | [ContMDiffAt.prod_map](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-prod-map-source-edition-2.md) | 1694 | `result-track:26c41e8247f37fe06fdddbe109240e72c7ab5fe194f733c47eec41dcac3db77b` |
| 230 | `theorem` | [ContMDiffAt.prod_map'](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-prod-map.md) | 1701 | `result-track:0d1920767c13ce7dba2e847fe8648ccf58069a45d9d83482d264f6aeba15b113` |
| 231 | `theorem` | [ContMDiffOn.prod_map](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-prod-map.md) | 1707 | `result-track:ff7d75962a4dcfcf844c037f10eef4e24c3c39672fa07e3ab332d239edd9cef8` |
| 232 | `theorem` | [ContMDiff.prod_map](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-prod-map.md) | 1713 | `result-track:5bd4f89e90c4eb503d849a7d0f5872e582efd85fb8b8e7c585d8b701c81e0198` |
| 233 | `theorem` | [SmoothWithinAt.prod_map](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothwithinat-prod-map.md) | 1719 | `result-track:818e4a30c1c8373915f27606cf3405a0bb2aec6bac20ff4e804d9d9b1e2dff52` |
| 234 | `theorem` | [SmoothAt.prod_map](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothat-prod-map.md) | 1725 | `result-track:6e35b7e92eb499c4a54d63943e84948e1155e52463a0c6041e55d3447fe7cefa` |
| 235 | `theorem` | [SmoothOn.prod_map](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothon-prod-map.md) | 1730 | `result-track:4d3f5840639a33b79ae1e619a42dac228d9edc7b919fea7fbda8d25c5d30df32` |
| 236 | `theorem` | [Smooth.prod_map](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smooth-prod-map.md) | 1735 | `result-track:0c287b7a217d1a2bcaf3dccf5ad3a339eafdb81bd61d5bc5fb52f168c696afba` |
| 237 | `theorem` | [contMDiffWithinAt_pi_space](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-pi-space.md) | 1755 | `result-track:2b843ccbefca125d6b5d7aedf72614d74a959188d762b1160d9ced979a07522e` |
| 238 | `theorem` | [contMDiffOn_pi_space](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-pi-space.md) | 1764 | `result-track:7015706a7786a5610d69029d40c155e257c497a4f66f61a095a87bbedfd1efcb` |
| 239 | `theorem` | [contMDiffAt_pi_space](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-pi-space.md) | 1770 | `result-track:fc9f3e4e3e7e6a2b64a68505a57cdffa42908cbd1faf4e165eeb6918d335094c` |
| 240 | `theorem` | [contMDiff_pi_space](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-pi-space.md) | 1775 | `result-track:38edf0565d4ef9d39f9b5eb03c04d8583cd7dafbf40f8bfbde7bd4fabea8267e` |
| 241 | `theorem` | [smoothWithinAt_pi_space](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothwithinat-pi-space.md) | 1780 | `result-track:1435ef5a0745f6f0a5455f1189085f4130f3091b9f56bc18fa7c82243792fbb3` |
| 242 | `theorem` | [smoothOn_pi_space](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothon-pi-space.md) | 1786 | `result-track:9410e62588555e70c746ee7266f35143eac0e4b4102b45340892595bbeb73181` |
| 243 | `theorem` | [smoothAt_pi_space](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothat-pi-space.md) | 1791 | `result-track:95a6b45c5be9f54eeed019ec4e50cd17c704401853319de1a66dd3b5b4ee0c31` |
| 244 | `theorem` | [smooth_pi_space](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smooth-pi-space.md) | 1796 | `result-track:c63b201d2714a6c18a5c57ecbb1718d0b2339afba73e9f50477823cafaae70ed` |
| 245 | `theorem` | [ContinuousLinearMap.contMDiff](../../../../DifferentialGeometry/ContMDiff.lean/declarations/continuouslinearmap-contmdiff.md) | 1804 | `result-track:375a43e19086b33c413d13599a43fc8f96be9c00a9696e16583a5efaca4529a3` |
| 246 | `theorem` | [ContinuousLinearMap.contMDiffAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/continuouslinearmap-contmdiffat.md) | 1808 | `result-track:72bd7fb551d213681195d155afe94c68b4868331406915005779c7d8b2512e09` |
| 247 | `theorem` | [ContinuousLinearMap.contMDiffWithinAt](../../../../DifferentialGeometry/ContMDiff.lean/declarations/continuouslinearmap-contmdiffwithinat.md) | 1811 | `result-track:d27008f0f1b6d5b9df5f847d295ccd77f26eccfdad676a03a13f896e97c00de8` |
| 248 | `theorem` | [ContinuousLinearMap.contMDiffOn](../../../../DifferentialGeometry/ContMDiff.lean/declarations/continuouslinearmap-contmdiffon.md) | 1815 | `result-track:661cf4cb74a58db338320f5913bdf88f5284c7d1bc898fbe93b1c95ab57f00d5` |
| 249 | `theorem` | [ContinuousLinearMap.smooth](../../../../DifferentialGeometry/ContMDiff.lean/declarations/continuouslinearmap-smooth.md) | 1818 | `result-track:f05a36d2d9de91f066fb3d39be8ba31942a7da734cc4a8a0b7fe7252b7317201` |
| 250 | `theorem` | [ContMDiffWithinAt.clm_comp](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-clm-comp.md) | 1820 | `result-track:1ca69291ec95348b135bde24dc7cb3c8363f1266add8f8c589b011a5f59f15af` |
| 251 | `theorem` | [ContMDiffAt.clm_comp](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-clm-comp.md) | 1828 | `result-track:916786e704788aba484ef56d236d3573b209dcae70042aec74485dab486d4e44` |
| 252 | `theorem` | [ContMDiffOn.clm_comp](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-clm-comp.md) | 1834 | `result-track:0a13b747894a509051d02be071f90c932c10d5f829e8723335d72b4c05eac6eb` |
| 253 | `theorem` | [ContMDiff.clm_comp](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-clm-comp.md) | 1840 | `result-track:87645ba6547aba5d3ef0243c732f302d3cfd60c76a7873428411aa421bc047bb` |
| 254 | `theorem` | [ContMDiffWithinAt.clm_apply](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-clm-apply.md) | 1845 | `result-track:91f674fa4b8685db6dff184b0b0642cec9055613cbf0adc1dc27f1ae7593d219` |
| 255 | `theorem` | [ContMDiffAt.clm_apply](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-clm-apply.md) | 1855 | `result-track:3b94dbabaee162cbfd5764f40a2ffe2ad191ff2268c42341e70ddf4faa5f9032` |
| 256 | `theorem` | [ContMDiffOn.clm_apply](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-clm-apply.md) | 1861 | `result-track:a6dd7f81020ad7706200912588f120dcfa63404e1b89f81759591ab4e5c00ca2` |
| 257 | `theorem` | [ContMDiff.clm_apply](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-clm-apply.md) | 1866 | `result-track:e897008c010c15b7a1261d7a97bdabdad4fb2e20157d8edeef10d08a1067baa4` |
| 258 | `theorem` | [ContMDiffWithinAt.clm_precomp](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-clm-precomp.md) | 1873 | `result-track:3649132ef380b4c203529b2a9e1b033332b7385409c39bf913c3acd5186e0494` |
| 259 | `theorem` | [ContMDiffAt.clm_precomp](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-clm-precomp.md) | 1881 | `result-track:368a566a358b3766b5c7f4dfd8ce606237742568373f78494af2cd4b3609275b` |
| 260 | `theorem` | [ContMDiffOn.clm_precomp](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-clm-precomp.md) | 1887 | `result-track:01eaee2582a4358a6611865864cc07dc4ca30ae08357e473208b3b45c67e4ba4` |
| 261 | `theorem` | [ContMDiff.clm_precomp](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-clm-precomp.md) | 1893 | `result-track:9c7533ba8befaaca695c3997a1d8c5d56dee3ee9472c6fda299bef1f942cbc5d` |
| 262 | `theorem` | [ContMDiffWithinAt.clm_postcomp](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-clm-postcomp.md) | 1900 | `result-track:c15d2f5eca0c5dadd767559b0cad6261e3a1fadfc2099a4bcccc8663add3c763` |
| 263 | `theorem` | [ContMDiffAt.clm_postcomp](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-clm-postcomp.md) | 1908 | `result-track:824a522ee206c0cdb9b4aff0df2f27fa50059608d7f773872e2e8ca614eff21f` |
| 264 | `theorem` | [ContMDiffOn.clm_postcomp](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-clm-postcomp.md) | 1914 | `result-track:a457dc2b01ee0dea5fa3f406c1113c54c24809032d7c066f0ec9f9d6454864ab` |
| 265 | `theorem` | [ContMDiff.clm_postcomp](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-clm-postcomp.md) | 1920 | `result-track:82911379f8d7a820198ffb49117bf5c8c9677874b0ace20ecdf3e499abb1823a` |
| 266 | `theorem` | [ContMDiffWithinAt.cle_arrowCongr](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-cle-arrowcongr.md) | 1927 | `result-track:742dd28597d717f93ba8a6b35ac7b48262b5758948be12e14747809420b5ac8b` |
| 267 | `theorem` | [ContMDiffAt.cle_arrowCongr](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-cle-arrowcongr.md) | 1937 | `result-track:0de5ab2f5e5d92a4f91f25c84dd4ebd065634532575c64fc807fd00b554e9a71` |
| 268 | `theorem` | [ContMDiffOn.cle_arrowCongr](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-cle-arrowcongr.md) | 1944 | `result-track:3a6df784fc9d81e0755d24a3d8d5f7907c486187720054d122218fbfc1067cdf` |
| 269 | `theorem` | [ContMDiff.cle_arrowCongr](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-cle-arrowcongr.md) | 1951 | `result-track:455ce2c4fc5816ac39f08fd1902ab0d1f8b4a4669246c74516cff69e566edf96` |
| 270 | `theorem` | [ContMDiffWithinAt.clm_prodMap](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-clm-prodmap.md) | 1958 | `result-track:a8b1a84fb12fbab2d98752ae7e5c0919cfe55225a64019f9fbb6c87030c84abb` |
| 271 | `theorem` | [ContMDiffAt.clm_prodMap](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-clm-prodmap.md) | 1967 | `result-track:48898f030b41c41210c66b6541991f34df1cc32ea96d0d3fcc01c16f7e6bbc69` |
| 272 | `theorem` | [ContMDiffOn.clm_prodMap](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-clm-prodmap.md) | 1973 | `result-track:a06cd8556800ebbbf7b50c52a2540562cbc74760deccbb6b542f67748e7e7a88` |
| 273 | `theorem` | [ContMDiff.clm_prodMap](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-clm-prodmap.md) | 1979 | `result-track:9db044fa0e289ea15852d45aa2683e72424567e1b777e997045b8e0e50b4e009` |
| 274 | `theorem` | [smooth_smul](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smooth-smul-source-edition-2.md) | 1990 | `result-track:f5c5a8f99ed87041d49dd76c13ae163fcf0ac80cbb24e5f63d4f21f3efaf54a3` |
| 275 | `theorem` | [ContMDiffWithinAt.smul](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffwithinat-smul.md) | 1994 | `result-track:42cbb17b5641b170d4b6e54d73f50dea6eaf67baa58813b6f531c40acb7cfc2d` |
| 276 | `theorem` | [ContMDiffAt.smul](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffat-smul.md) | 2000 | `result-track:ea17d0940d35cd45c466bdc49a415e95b50d848535d4f6cc9dbc2624e3ea1e4b` |
| 277 | `theorem` | [ContMDiffOn.smul](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiffon-smul.md) | 2005 | `result-track:a07a059cf7b7c2841439dc1883625897ff7f79ecd138ecf42608bbef554aafc5` |
| 278 | `theorem` | [ContMDiff.smul](../../../../DifferentialGeometry/ContMDiff.lean/declarations/contmdiff-smul.md) | 2010 | `result-track:8b868a378514f63b3a546aa4d91e2dab09d10c0314cb6cc9e9119375b185c803` |
| 279 | `theorem` | [SmoothWithinAt.smul](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothwithinat-smul.md) | 2015 | `result-track:3c40672032147a20aedb287d05bea3c801671eb92a845dbe51a60f32bad22319` |
| 280 | `theorem` | [SmoothAt.smul](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothat-smul.md) | 2020 | `result-track:933cde8452b0b9a3fe098651a6a53ef6cbc4738e30c60f97ec87f30353171f44` |
| 281 | `theorem` | [SmoothOn.smul](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smoothon-smul.md) | 2025 | `result-track:6e263d9cc0893cd66412c0b04741c1ec54074f0f85650dfa97c7962a49637c0b` |
| 282 | `theorem` | [Smooth.smul](../../../../DifferentialGeometry/ContMDiff.lean/declarations/smooth-smul.md) | 2030 | `result-track:2b96e87a38cf75b5e5951dc36b92c681e73dab9c0e433cea8f15d0900f5ab102` |
| 283 | `theorem` | [isLocalStructomorphOn_contDiffGroupoid_iff_aux](../../../../DifferentialGeometry/ContMDiff.lean/declarations/islocalstructomorphon-contdiffgroupoid-iff-aux.md) | 2042 | `result-track:b571cc9ced59e0b94c07b3fd45ade045d748f00721ecfb87fc7c9b35152392d5` |
| 284 | `theorem` | [isLocalStructomorphOn_contDiffGroupoid_iff](../../../../DifferentialGeometry/ContMDiff.lean/declarations/islocalstructomorphon-contdiffgroupoid-iff.md) | 2088 | `result-track:4c3cdb1a680c42a30a0e2b53d2ed891a9cf5e2273fab7e5f9fe013003926a4a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6c9666501f4dcb1e5def709a75511c9eafdbd8ba854d4749d7bcede3ec1c8c4c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/ContMDiff/Variant12a3ad02d8017dbafecc1f0a3c2f1f148977a710b9b02522a13a12a68bd49cac.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/ContMDiff/Variant12a3ad02d8017dbafecc1f0a3c2f1f148977a710b9b02522a13a12a68bd49cac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
