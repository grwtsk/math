# Verification target: Uniform Space Completion Namespaced Uniform Inducing Pure Cauchy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c21e3d20d856d012ba3fe008d8697ba7a98b7d73",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variant593d7afd57ce7907e856c6b7b91e4f2cd847f666ca2e20c9ccd3dde365f75603.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/index.md) · [Full source](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c21e3d20d856d012ba3fe008d8697ba7a98b7d73`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variant593d7afd57ce7907e856c6b7b91e4f2cd847f666ca2e20c9ccd3dde365f75603.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Completion/Variant593d7afd57ce7907e856c6b7b91e4f2cd847f666ca2e20c9ccd3dde365f75603.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.AbstractCompletion` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CauchyFilter](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/cauchyfilter.md) | 68 | `declaration-track:5625c68f8332702c32e40ac451876264aae6657a686b9e367f90f4a4c234a24b` |
| 2 | `def` | [gen](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/gen.md) | 84 | `declaration-track:d35cd7e247b148a78b1c16bceb06ad7fb35d1b43407cf511c8aaa80224d81bd4` |
| 3 | `theorem` | [monotone_gen](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/monotone-gen.md) | 89 | `result-track:4511746bab3d3d6081d0eb9944dadec1ca26d7141b7351a021ce489a6ee4c574` |
| 4 | `theorem` | [symm_gen](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/symm-gen.md) | 95 | `result-track:7402f7271e5566c00c85f052546b62a4f62b7b2cab4d5b9821b60a3602f16e2c` |
| 5 | `theorem` | [compRel_gen_gen_subset_gen_compRel](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/comprel-gen-gen-subset-gen-comprel.md) | 112 | `result-track:b959d227d0ca4669cfbf45ac90bb1f41059c18cfb204eb757fa9b0b81d84bd27` |
| 6 | `theorem` | [comp_gen](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/comp-gen.md) | 123 | `result-track:eadef6c95eaa109fe51c128304c754bfc201167fc16afc3ff712c0009c70fc8b` |
| 7 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/instance-source-edition-6.md) | 138 | `declaration-track:a6e228c04e4aece322913af6a0881685a9c00fff215bfb7438f99117cfb888b7` |
| 8 | `theorem` | [mem_uniformity](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/mem-uniformity-source-edition-2.md) | 146 | `result-track:ae9a20d112c4ef89f191f106bc2a5664f3b0c6b6d69fe8834f25a57d34550e93` |
| 9 | `theorem` | [mem_uniformity'](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/mem-uniformity.md) | 152 | `result-track:0fe98de79eb6cf43272012660cbd044b693bb75bf026c6bf7ca8138392155fb8` |
| 10 | `def` | [pureCauchy](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/purecauchy.md) | 160 | `declaration-track:96956e356d3e07ead7bf1ac2b25b891f372372f96efcbe0aae282dbf54bb9bb6` |
| 11 | `theorem` | [uniformInducing_pureCauchy](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/uniforminducing-purecauchy.md) | 165 | `result-track:e2b314bc69e63ec3e19ca59854e4c45f7c9c54cce731c6ca071470431ec027e2` |
| 12 | `theorem` | [uniformEmbedding_pureCauchy](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/uniformembedding-purecauchy.md) | 178 | `result-track:e2443fd1798145faf7f06aa4779be3614ff037d95e6e38cc1dd0b209ab77d8cc` |
| 13 | `theorem` | [denseRange_pureCauchy](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/denserange-purecauchy.md) | 184 | `result-track:71a2f9043ff73e692b2548b643270cd705acd85619eb711c887ab448671ebac4` |
| 14 | `theorem` | [denseInducing_pureCauchy](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/denseinducing-purecauchy.md) | 210 | `result-track:6947fb8bf93f9c95099c124945d1fbeb1e6f5fd9dd939035904edcb7de27e18d` |
| 15 | `theorem` | [denseEmbedding_pureCauchy](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/denseembedding-purecauchy.md) | 215 | `result-track:fd2c4656f402fcbd9c07efbe5187520990b99cdb8986d4fcc2f96eae4ad37743` |
| 16 | `theorem` | [nonempty_cauchyFilter_iff](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/nonempty-cauchyfilter-iff.md) | 220 | `result-track:39cccd7eb330d3b0e772a6acf1ff728f57e61684c88acfda25ac3d7bec0bbc29` |
| 17 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/instance.md) | 234 | `declaration-track:009c72031ec25e3fda6385ece4ddf966ffcda14db0079238bf433a98cf793728` |
| 18 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/instance-source-edition-3.md) | 248 | `declaration-track:52ffa58839d9a93697536843057754a72c3c3dea98a8b5c6368f8e5a125b7b1b` |
| 19 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/instance-source-edition-4.md) | 251 | `declaration-track:53b2beea3d7c943ffc94fdfa20401dc8b97ef565fa180c5ba63285d94fde1345` |
| 20 | `def` | [extend](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/extend.md) | 258 | `declaration-track:963350af9a8d56aa3544a843b1947dec1337b6c2c4cc7716530090c7d166b0bd` |
| 21 | `theorem` | [extend_pureCauchy](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/extend-purecauchy.md) | 268 | `result-track:02e7953b3f33cb4cbfb0c7d72288aca5c10b30e0d57e762d7e400a69fb15cb47` |
| 22 | `theorem` | [uniformContinuous_extend](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/uniformcontinuous-extend.md) | 279 | `result-track:0401eb0eefeed14518971cdac44004b4222031b1682c3aa3ab48d7e6ddfdad8d` |
| 23 | `theorem` | [cauchyFilter_eq](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/cauchyfilter-eq.md) | 292 | `result-track:8c6b10740304814ae229507cc416e8d75804bed6f1baf7c5646a731eafd130ea` |
| 24 | `theorem` | [separated_pureCauchy_injective](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/separated-purecauchy-injective.md) | 329 | `result-track:f5b45dd74051b5ab7f90f2aeaba7569cd703d34b8ebf85e6108bfee9f2d4ebe1` |
| 25 | `instance` | [completeSpace_separation](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/completespace-separation.md) | 356 | `declaration-track:f983bb2b8d9d07eec596aa7c9fc6bd2e7dab455cc61744d1e26deb6df1fc8b13` |
| 26 | `def` | [Completion](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/completion.md) | 369 | `declaration-track:0ef2a1d5995125ef14d742347f6e0511ce8645649e9aaa37b8995401b2bdfc7d` |
| 27 | `instance` | [inhabited](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/inhabited.md) | 375 | `declaration-track:212fa0951c2365e84f99c9dea359e23d9a271109bd0cb575025d92f0a9a21690` |
| 28 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/instance-source-edition-5.md) | 378 | `declaration-track:5bb4333cb725bdf9333728959bde7dcf60223b04f5a3b25d679053cc9070dae5` |
| 29 | `instance` | [completeSpace](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/completespace.md) | 381 | `declaration-track:2d9ab772b2f653184d43afbc45d4e5610434b46ae0690e2f8caf7eba4f44776a` |
| 30 | `instance` | [separatedSpace](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/separatedspace.md) | 384 | `declaration-track:7cfc9d16e6fe02d8397a63a71d620fd8ff57ba2645771743dbf475da04ee8c33` |
| 31 | `instance` | [t3Space](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/t3space.md) | 387 | `declaration-track:12bec91a8a2560fc7caf56e8efb11b3c69413a21100960e499ebc54484a2b825` |
| 32 | `def` | [coe'](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/coe.md) | 393 | `declaration-track:d6dc939f4a29f34626dd75811d0f099834663cbaf7a4a4138226e3058e09c521` |
| 33 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/instance-source-edition-2.md) | 396 | `declaration-track:2d7b2ec4929d83b9169e935822d976bdf6c68068e94bd055a1a9153ce54c6112` |
| 34 | `theorem` | [coe_eq](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/coe-eq.md) | 400 | `result-track:4d277c9f124f13eb8ef30846f8a3d0e1df0276110d2f69232e91b22e836af9a7` |
| 35 | `theorem` | [comap_coe_eq_uniformity](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/comap-coe-eq-uniformity.md) | 404 | `result-track:dcedf71b488e8993c93d357bee5aa23f25228268003d4f5b58418ceb4e22e2af` |
| 36 | `theorem` | [uniformInducing_coe](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/uniforminducing-coe.md) | 416 | `result-track:006ddc720e3f6dc1ea6ca4105084ac16fde7958305f433bcdfd39aba5dd2eb45` |
| 37 | `theorem` | [denseRange_coe](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/denserange-coe.md) | 422 | `result-track:9e712dc5320cc1f18876e6e1648432b5bafc564756c04165b37ee37b44c2aa72` |
| 38 | `def` | [cPkg](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/cpkg.md) | 429 | `declaration-track:e126fbc5a9ba7809b6156c04aff283e13a9cd9871a92d125ca67778ba90499a1` |
| 39 | `instance` | [AbstractCompletion.inhabited](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/abstractcompletion-inhabited.md) | 439 | `declaration-track:661250e4f7706e8729018c9bf03bf570787388b3c3718595bef25dc7ef0db8ef` |
| 40 | `theorem` | [nonempty_completion_iff](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/nonempty-completion-iff.md) | 446 | `result-track:bcc040c39bd22a26dbc8ea85be40e68eb33d7e7f91fa3eea4706d54b953f7cd8` |
| 41 | `theorem` | [uniformContinuous_coe](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/uniformcontinuous-coe.md) | 450 | `result-track:b90f46c0f7edf1256bd2b461e4df12ec06b783061723001db98e9a419781d5c8` |
| 42 | `theorem` | [continuous_coe](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/continuous-coe.md) | 454 | `result-track:0d1ce4cab73e0ed80246bb70c1484ee0c84eeed1d3fd1e6b892337b4ee1fac6b` |
| 43 | `theorem` | [uniformEmbedding_coe](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/uniformembedding-coe.md) | 458 | `result-track:ad74ca8cc4d7dfd17f68d33ec84e12eb1386c46f3fc7b2b1ed1e681e9b73d111` |
| 44 | `theorem` | [coe_injective](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/coe-injective.md) | 463 | `result-track:36af0049f5ac375043e0a086dce16069bbc83ed972d2f90bb44ae3e9765e99ff` |
| 45 | `theorem` | [denseInducing_coe](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/denseinducing-coe.md) | 469 | `result-track:7df5708d08645ec805bb451db51f60126bdae150129b6ba5ae9acc05dd64b900` |
| 46 | `def` | [UniformCompletion.completeEquivSelf](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/uniformcompletion-completeequivself.md) | 474 | `declaration-track:d3613dad760c4d616ae77d09cd539d350d5610b0d8acf8e4f9f655eba40cb4ff` |
| 47 | `instance` | [separableSpace_completion](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/separablespace-completion.md) | 480 | `declaration-track:6912f5f0e8abdf4c6718cd916e60f53a772939f7eda3726ab496e6be6ab4e0e4` |
| 48 | `theorem` | [denseEmbedding_coe](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/denseembedding-coe.md) | 484 | `result-track:78bd85a17a0854ad51436583fe155a249d3264c44b6b37d746819a2884786539` |
| 49 | `theorem` | [denseRange_coe₂](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/denserange-coe-source-edition-3.md) | 488 | `result-track:f2bb98826eb5a02b40135ba325ddbc798f47d049aafacd5534e10a462d3d311b` |
| 50 | `theorem` | [denseRange_coe₃](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/denserange-coe-source-edition-2.md) | 493 | `result-track:bcd51c3dce1b8bd4f3a87053f08b118d7ab4fdb03d3ffe84ef7d9450225f1805` |
| 51 | `theorem` | [induction_on](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/induction-on.md) | 500 | `result-track:7e9ac4a80eb1827a7db033f3c9d9aee15dec9086a7b1e1803011c9bfd8731eaa` |
| 52 | `theorem` | [induction_on₂](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/induction-on-source-edition-2.md) | 506 | `result-track:b246d2b1c15d55ef937fd1b50c832e107b294098df3df5a1b2c75ad553fc842b` |
| 53 | `theorem` | [induction_on₃](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/induction-on-source-edition-3.md) | 515 | `result-track:f21028606635b1d260d8593af70eda3720df7cee7dd52e7b2b4a86127e44e77b` |
| 54 | `theorem` | [ext](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/ext.md) | 524 | `result-track:6f87c676e057605bc2a0f71b7c6c16746686aaf5e4944c8803081a0c44e4f23b` |
| 55 | `theorem` | [ext'](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/ext-source-edition-2.md) | 529 | `result-track:daf467d00641f2cf5d280275ae1e8da7a560f0dd4075c563f100c2a44b7ec255` |
| 56 | `def` | [extension](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/extension.md) | 541 | `declaration-track:4b1a0faba481725ad22a539d4d53aefa9ba24c2b96fdf57ae05f948d5732b712` |
| 57 | `theorem` | [uniformContinuous_extension](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/uniformcontinuous-extension.md) | 549 | `result-track:dfc696847d182daaa585672538f68ab3b6e7cac86d71c0fdd048cb20d3af8d48` |
| 58 | `theorem` | [continuous_extension](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/continuous-extension.md) | 554 | `result-track:1113af02f10ae6fc07980385c12f4dfbcfcb9e49ce16bb99b9be7384576875a9` |
| 59 | `theorem` | [extension_coe](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/extension-coe.md) | 562 | `result-track:50de9c97a9b98f0ef8de5a6d4a2be79fac6753248580074d69f5915adb843d35` |
| 60 | `theorem` | [extension_unique](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/extension-unique.md) | 569 | `result-track:d7ba0db315bf3423eb6712958d86f825923fa96d15da8a8d72f45b4da908f4e8` |
| 61 | `theorem` | [extension_comp_coe](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/extension-comp-coe.md) | 576 | `result-track:bc7b18eaffda309b12d4078ee667821bbda99769a030e36eaf7ae00d26aba440` |
| 62 | `def` | [map](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/map.md) | 588 | `declaration-track:054fc07615bb4aed3c1d44bf0c14309594d748c7a209f00d47c0cb41941c7fef` |
| 63 | `theorem` | [uniformContinuous_map](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/uniformcontinuous-map.md) | 592 | `result-track:1602d6aebe80f57c375b81ccfbb06c0c2efa0f8f8cee89eaf808632d89b6480e` |
| 64 | `theorem` | [continuous_map](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/continuous-map.md) | 597 | `result-track:2353cab356b17cb289380aeb0df5dbb43ccd47c604aba82b56869a8e2a546e16` |
| 65 | `theorem` | [map_coe](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/map-coe.md) | 603 | `result-track:ede19fe9b808521ec9ecded478c74e13dec250ec139ba925abfa06c61db053c3` |
| 66 | `theorem` | [map_unique](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/map-unique.md) | 607 | `result-track:67895fdc2e1cd89e4c36354895641385e94861a40a6977aab8e4016ce9d96d0c` |
| 67 | `theorem` | [map_id](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/map-id.md) | 613 | `result-track:dbcc963e81951c7634b814c187d56e83630438a1c3aafc8d3466ba62ac7d2573` |
| 68 | `theorem` | [extension_map](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/extension-map.md) | 617 | `result-track:9222931410171da349e94f28f73c785094f9c167e8e5099e3db9a434f500caec` |
| 69 | `theorem` | [map_comp](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/map-comp.md) | 628 | `result-track:6a3594a523ee8c5ee39d58e896a3d9de6bd7b3f78d8bf4fb5d8237f719bea69e` |
| 70 | `def` | [completionSeparationQuotientEquiv](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/completionseparationquotientequiv.md) | 641 | `declaration-track:05f56a1ebed32d04c445eb332dbc6f5b7172fa9c24aacfcd9d1351d2285ffeb8` |
| 71 | `theorem` | [uniformContinuous_completionSeparationQuotientEquiv](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/uniformcontinuous-completionseparationquotientequiv.md) | 664 | `result-track:480ffa3c3b9a3394eebb42e1cb9bddbe4b54b8790112eb818185d11068449307` |
| 72 | `theorem` | [uniformContinuous_completionSeparationQuotientEquiv_symm](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/uniformcontinuous-completionseparationquotientequiv-symm.md) | 669 | `result-track:40512d6d16217309fc594e5ba23e2aa98a838d119049d7094af344299b0bc502` |
| 73 | `def` | [extension₂](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/extension-source-edition-2.md) | 683 | `declaration-track:6f57bbfc06276969ccb8044766bf2a1be958176fb1895cd5a599e35412397f54` |
| 74 | `theorem` | [extension₂_coe_coe](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/extension-coe-coe.md) | 693 | `result-track:b5fde79411113caa9ac82ba5045c37cae1f3427809349f4499858e747733d324` |
| 75 | `theorem` | [uniformContinuous_extension₂](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/uniformcontinuous-extension-source-edition-2.md) | 702 | `result-track:e1d273bbe7f32a3d4c8801dfd4c9c3f9b27c7ae8cd2645f4c424799c1579e1d4` |
| 76 | `def` | [map₂](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/map-source-edition-2.md) | 713 | `declaration-track:88b7e13f70821bb4e0de7bdb526c25d55fbb31b82726963735cc88391d733087` |
| 77 | `theorem` | [uniformContinuous_map₂](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/uniformcontinuous-map-source-edition-2.md) | 717 | `result-track:f31fe4ffef16fa06c2c02ba868371b42f7049cc6e27b268a532312502655f115` |
| 78 | `theorem` | [continuous_map₂](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/continuous-map-source-edition-2.md) | 721 | `result-track:d1fbf43a5ea21c3d9cc8f84ba64c45d73ef5f59fb54c1f510ccb8720c694257f` |
| 79 | `theorem` | [map₂_coe_coe](../../../../GeneralTopology/UniformSpaceCompletionNamespacedUniformInducingPureCauchy.lean/declarations/map-coe-coe.md) | 727 | `result-track:bf2d64ad4f1b06fff56773664008347e9f92cb0594fe12729d02d2dbadafb19a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0987c760979cc6c03a02a00a423d16f1ef0fef82307cb270ad57faf32fe2349b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variant593d7afd57ce7907e856c6b7b91e4f2cd847f666ca2e20c9ccd3dde365f75603.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/Completion/Variant593d7afd57ce7907e856c6b7b91e4f2cd847f666ca2e20c9ccd3dde365f75603.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
