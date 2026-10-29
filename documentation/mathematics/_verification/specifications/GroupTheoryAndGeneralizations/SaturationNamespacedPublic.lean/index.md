# Verification target: Saturation Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87d96d5fba642b18e64dbb5269ead090564e5fbc",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Saturation/Variant52feddc68453dfd930959fc12b6a70b7193d228d1f7162d7c7a264f6f75fda8c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87d96d5fba642b18e64dbb5269ead090564e5fbc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Saturation/Variant52feddc68453dfd930959fc12b6a70b7193d228d1f7162d7c7a264f6f75fda8c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Saturation/Variant52feddc68453dfd930959fc12b6a70b7193d228d1f7162d7c7a264f6f75fda8c.lean.json)

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
| 1 | `def` | [MulSaturated](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/mulsaturated.md) | 56 | `declaration-track:a810192a9c0b87d10135b518fe066dc5b93d067a5d26732510d09125ac8eed1e` |
| 2 | `theorem` | [mul_mem_iff](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/mul-mem-iff.md) | 65 | `result-track:1464daba8a2ce06192aea57b4eccc1dab200a276e7a6f5561ee2697d1f9f58e4` |
| 3 | `theorem` | [top](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/top.md) | 69 | `result-track:aa830da35e6bd008de96f83604600aa2dee84c93b9454f2d945cd67b30785fd5` |
| 4 | `theorem` | [inf](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/inf.md) | 73 | `result-track:fb2b9701db0ec7175ec50228aaf885d7a07d2443a92cebf4ce3e25c6d2fa2af7` |
| 5 | `theorem` | [sInf](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/sinf.md) | 77 | `result-track:39880d53a8669e4c132b13b8470ec3356e6e5ac0b8632cc7f5aa9b4deb5827f9` |
| 6 | `theorem` | [iInf](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/iinf.md) | 83 | `result-track:5492615bbc708b290bf5a3ac30586a03e0e12b5fd153c3de4538b25354544f83` |
| 7 | `theorem` | [of_left](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/of-left.md) | 89 | `result-track:2fb2a7a2bd0dacf674aafc60b047ccb1c617f71abeb8d2dca35f6a1c1d2acee4` |
| 8 | `theorem` | [of_right](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/of-right.md) | 95 | `result-track:7208816e55580bf8479cd8d560a826b0ed94adda809b21bfc415aed73a66df48` |
| 9 | `structure` | [SaturatedAddSubmonoid](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/saturatedaddsubmonoid.md) | 105 | `declaration-track:06be377ccb15ca5316ba0ecf7c994eaed35efb9942571e44f4c938277d76feb8` |
| 10 | `structure` | [SaturatedSubmonoid](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/saturatedsubmonoid.md) | 109 | `declaration-track:87490c43d358781ac560fdccc163e980324177585630979d41a24ef718215e7f` |
| 11 | `theorem` | [toSubmonoid_injective](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/tosubmonoid-injective.md) | 118 | `result-track:03b07f6bf43b73e1802c1f3293be3b1a944f91304690956f41ad3bf984bd3492` |
| 12 | `lemma` | [ext](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/ext.md) | 122 | `result-track:7b04d0c62cf74af0259cc5f62a3204b81a15acc61e7f553dd4db29f36a27795f` |
| 13 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 127 | `declaration-track:775a8c091c7439f62432d81f86535d3b17eac195546bbdfb937bb0c370f1ed92` |
| 14 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 132 | `declaration-track:69c5696436f4ed36c35bce9cd238d2f0404a12f9623c6cd8d8a83f4b26957362` |
| 15 | `lemma` | [ext'](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/ext-source-edition-2.md) | 135 | `result-track:ef3911ad2594678f4fdb1038a063773bdca846b8dd58f1e22f0411451392a322` |
| 16 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 140 | `declaration-track:eae456f7b3c939ef8e2883c44e3a72dd331a007473d9a802bdc0ffabf63eefcb` |
| 17 | `lemma` | [mem_toSubmonoid](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/mem-tosubmonoid.md) | 145 | `result-track:93c5592538bde31856f1a6be096bf37ababd13ac30d4a3bf346e047d94536b58` |
| 18 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 149 | `declaration-track:c019594f1d06ac8428ed64e77507702884ff040c8fe66d803c6cd5e02d98109b` |
| 19 | `theorem` | [mem_top](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/mem-top.md) | 153 | `result-track:44e96f025a5c5d9a6e075e724943ce3a842ac2de8d92fb38a1c7af34c2e37ba9` |
| 20 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 157 | `declaration-track:fbbdadf35bd28cdc172ba27830d39648e4cdac43b9ff0f3f4ec8b95f15354368` |
| 21 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 162 | `declaration-track:ffa1093c4cea9e5c24ffe173cad2743364a5b84163bd65a494b7ffdcf5497ee2` |
| 22 | `theorem` | [mem_sInf](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/mem-sinf.md) | 172 | `result-track:006d183e5477316999c6456f096972348935d1c6fd37f070d0ee6a28a1f4ac83` |
| 23 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 177 | `declaration-track:58a696f635ba46aaf90f48b87f375281520c85f6ab72e3e32f33c58b4bf7d345` |
| 24 | `def` | [saturation](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/saturation.md) | 193 | `declaration-track:45c0b6bc648efd5d40addf712dc58bd045c153b6b9c724f2cd0cc5e1f19dc12a` |
| 25 | `theorem` | [gc_saturation](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/gc-saturation.md) | 203 | `result-track:6991e1b01e869bc001e19cdf443845d21162a2ff3a1edc5f4fce923c92869245` |
| 26 | `def` | [giSaturation](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/gisaturation.md) | 213 | `declaration-track:f39d046a5425ee2e0f060a69863ddb5bd149ad2dc6c444f2b659b5e546c6a65d` |
| 27 | `theorem` | [saturation_le_iff_le](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/saturation-le-iff-le.md) | 222 | `result-track:3b1ead7156e8f030b7ecaff80c12fc7f580d20e44f42c4040cc5007bab033853` |
| 28 | `theorem` | [le_toSubmonoid_saturation](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/le-tosubmonoid-saturation.md) | 228 | `result-track:4cbbe7868fefcf985cfcc71b614a6e03d762da9e54b76064244aed79fd4f1453` |
| 29 | `theorem` | [saturation_toSubmonoid](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/saturation-tosubmonoid.md) | 231 | `result-track:b93d0246c6521d89059f65e8d1cbedca86741e612fa72500615f105ae38a422c` |
| 30 | `theorem` | [saturation_induction](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/saturation-induction.md) | 234 | `result-track:4b4f0943ac394cca83fafe26675897f51d1cbbde6633f60558f236ee440ed2b9` |
| 31 | `theorem` | [mem_saturation_iff](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/mem-saturation-iff.md) | 256 | `result-track:164ac740309bda070d209099966504a6a01a65745515c5dd748955194259b757` |
| 32 | `theorem` | [mem_saturation_iff'](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/mem-saturation-iff-source-edition-2.md) | 268 | `result-track:59c0cd23ae25898256f280334b6eff556fca291a20544fdbf7025a79d38c83c8` |
| 33 | `theorem` | [mem_saturation_iff_exists_dvd](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/mem-saturation-iff-exists-dvd.md) | 271 | `result-track:b8a823291e92bb989a2150c9461de64e6ce113683bb121489e5063aa5e62c69d` |
| 34 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/instance.md) | 281 | `declaration-track:17c13cedf0cc96dbbe41a9a5b3b417ba4d827a6636c5531cc7b59d834f1448f7` |
| 35 | `theorem` | [bot_def](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/bot-def.md) | 295 | `result-track:dbd8d5aa0aff4340fc47cc3efde05f6c01bc0c6b49370623bec4a3095e7e5c9f` |
| 36 | `theorem` | [sup_def](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/sup-def.md) | 298 | `result-track:98d126e722eeac49067164ca08174a1d9490daf9824a4c4f4b60195b244dc878` |
| 37 | `theorem` | [sSup_def](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/ssup-def.md) | 302 | `result-track:c4ffcb078e43c0e2757102b9404df149b187e4ec931eaa993c3b289312c91205` |
| 38 | `theorem` | [iSup_def](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/isup-def.md) | 306 | `result-track:6eea7a04a7397cfec3c98faa40617c474a586414944833be1f0b6c5104897edd` |
| 39 | `theorem` | [mem_bot_iff](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/mem-bot-iff.md) | 316 | `result-track:32c21f3a0f5cb8d748e2f0ed458a7adc3cbf16a94527ae6896eccd6fcbda6538` |
| 40 | `theorem` | [saturation_bot](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/saturation-bot.md) | 327 | `result-track:8e44b1961f256c2f0b1640521c78a8a13dc437971f0a9e81e1a905bc8e9b9f4c` |
| 41 | `theorem` | [saturation_top](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/saturation-top.md) | 330 | `result-track:621408a251fe30de14055ce192c1df59212706803ee7e9c6a5ecbe21739859b3` |
| 42 | `theorem` | [saturation_sup](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/saturation-sup.md) | 333 | `result-track:613c858a4a5477b581380f45ea0a0340bf5a80f24cb493fa6e1d0dbe69d8ba8b` |
| 43 | `theorem` | [saturation_sSup](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/saturation-ssup.md) | 342 | `result-track:29de738c07a1f207ff5b58568cdabd2eb74f5357dfa14c9c8b20c04ec3c34155` |
| 44 | `theorem` | [saturation_iSup](../../../../GroupTheoryAndGeneralizations/SaturationNamespacedPublic.lean/declarations/saturation-isup.md) | 346 | `result-track:c8b6f4c455401031e419e5cab2988f92e31888a00b1a730d0082eca1ba9c327e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2509cf617e7fcca2b372f6d1bfb3162b51f5d152122c8c4ea6724583a0dbb399 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Saturation/Variant52feddc68453dfd930959fc12b6a70b7193d228d1f7162d7c7a264f6f75fda8c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Saturation/Variant52feddc68453dfd930959fc12b6a70b7193d228d1f7162d7c7a264f6f75fda8c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
