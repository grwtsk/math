# Verification target: Part Not Mem None

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a87dfc59cb53b4131d3d06bc7aa681cc4dafda1b",
  "lexical_observation_count": 167,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant66609db9849b86724930cc5990d53d94722cdd0a7e5a7d28ca2ad4f5441a4037.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a87dfc59cb53b4131d3d06bc7aa681cc4dafda1b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant66609db9849b86724930cc5990d53d94722cdd0a7e5a7d28ca2ad4f5441a4037.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant66609db9849b86724930cc5990d53d94722cdd0a7e5a7d28ca2ad4f5441a4037.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Notation.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Part.](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/part.md) | 52 | `declaration-track:3acd46cfc05128839610f3971496e52d82a6b4320ad4dbd981abe99bfe60ccce` |
| 2 | `def` | [toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/tooption.md) | 63 | `declaration-track:82f38943a0ebdb48ce3b61e3749ccb29318211793b0426718d4ac65543d48125` |
| 3 | `lemma` | [toOption_isSome](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/tooption-issome.md) | 66 | `result-track:28e76cb704df6d5fe01d47123441d89676c133cbf5a550a0f4f662cb83411756` |
| 4 | `lemma` | [toOption_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/tooption-eq-none.md) | 69 | `result-track:4425fa73670effa6b05bc8584a15d9e0f50f77792d8810f9f26e025b267d0f89` |
| 5 | `theorem` | [ext'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/ext-source-edition-2.md) | 73 | `result-track:d87d98572ea8bef9ef8090aa9c8674663f69b2cf067bcf6105b746d3ff69532b` |
| 6 | `theorem` | [eta](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/eta.md) | 80 | `result-track:ba4ebbec7b35a1f053a48b6c9026a65e72be6f8ea722645b6d71d78d923f61cd` |
| 7 | `def` | [Mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/mem.md) | 84 | `declaration-track:d64e5058c4f4a11415cf5e88d107ceafab9c8596ab2ecb89d12ddfd823cb5429` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/instance-source-edition-13.md) | 87 | `declaration-track:ee7ac2a3f5870d7ae737fd0e4c4ada345cc40480f0dce44d7856adc781fece56` |
| 9 | `theorem` | [mem_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/mem-eq.md) | 90 | `result-track:84085f502531badf68c48e33357960ed62ddf18654600036617d7bdace54c158` |
| 10 | `theorem` | [dom_iff_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/dom-iff-mem.md) | 93 | `result-track:993a55b6e6027acafedec2be0bd17acf41ff33f2662eac50f6ac3a93d51b72a9` |
| 11 | `theorem` | [get_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/get-mem.md) | 96 | `result-track:48282bb5123aaefeac4709407628327a2ed58197eddb16000836f6764707b68a` |
| 12 | `theorem` | [mem_mk_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/mem-mk-iff.md) | 100 | `result-track:8ab4a725b9501fb5dd4861f3df84afc3a7bf3a0da5bbebfd2b8c4ab7767f34cb` |
| 13 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/ext.md) | 105 | `result-track:27f71ad0fabb132bbc1183f6b11ed0fd0083dd648874e8c6e6029cacd0e472ba` |
| 14 | `def` | [none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/none.md) | 110 | `declaration-track:a7037e6c4851caf2f5813afe820f17f9f379c8d0fed628e27fc4571110e237ad` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/instance-source-edition-4.md) | 113 | `declaration-track:1da0ce07e2d929ecfa54f6c6419d5cfa00ebde2468ffede04b7ede4869cbffbd` |
| 16 | `theorem` | [notMem_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/notmem-none.md) | 117 | `result-track:1bcfd8624f6e3b8954fb303f556a1184348bf254e180f13c10fdebe18627635d` |
| 17 | `def` | [some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/some.md) | 123 | `declaration-track:d46c951d8d3c8612cd2f87fde5e8a34a3c994eff50c7c89560abfd1b1cc5cb45` |
| 18 | `theorem` | [some_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/some-dom.md) | 127 | `result-track:752a41c428d4cf4a0aefb008721f1f285512ed4b5c89c1393989cdab824b7197` |
| 19 | `theorem` | [mem_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/mem-unique.md) | 130 | `result-track:7e61f38d40b61ed929aff7cbc8d2bde04b36e27fc6c1076de1a6d3c237de616c` |
| 20 | `theorem` | [mem_right_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/mem-right-unique.md) | 133 | `result-track:0299a5b558aa6e69680bf341d6ad462c0f20eb6dd32b963b1548daea9c768a46` |
| 21 | `theorem` | [Mem.left_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/mem-left-unique.md) | 136 | `result-track:ab2d766f06d35194649e0a3a9ba17601c0a1dea9929f7f63b1573103782a1b34` |
| 22 | `theorem` | [Mem.right_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/mem-right-unique-source-edition-2.md) | 139 | `result-track:0efdedd30749b8ba542034a220dce5993529b003c49840eee9fa2796a4a6e192` |
| 23 | `theorem` | [get_eq_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/get-eq-of-mem.md) | 142 | `result-track:cf218e5eeb0ae1ffb24a4d2f1ef2e1f704efd3f8cafa892686e66ef46d3d7961` |
| 24 | `theorem` | [subsingleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/subsingleton.md) | 145 | `result-track:d7b1bff1cb97df2f35d89a517ca313d1126152202448c3744831b3c0fe309243` |
| 25 | `theorem` | [get_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/get-some.md) | 149 | `result-track:4e6c446fa3f1eeeeabdbbafbbb1b50eb5470e06f077bfa839e626816198263fe` |
| 26 | `theorem` | [mem_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/mem-some.md) | 152 | `result-track:fa27f992a440e9fcb0777b74803bb72ea68bae42c96b10681d4b87d69278d607` |
| 27 | `theorem` | [mem_some_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/mem-some-iff.md) | 156 | `result-track:3152854d33ae62bf2bd9a273de1f8c010de5585e5b11f1cbfb7db6fc496ebe9e` |
| 28 | `theorem` | [eq_some_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/eq-some-iff.md) | 159 | `result-track:b26fb58bae5b6d3923e7fd9ade1c4459b4f2d7578750c23f6e47a8007607a7b9` |
| 29 | `theorem` | [eq_none_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/eq-none-iff.md) | 162 | `result-track:3fe9f20291ea856c62ccb41752ff8ab0791d8cdca648a695a94d5eeb83fedc0d` |
| 30 | `theorem` | [eq_none_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/eq-none-iff-source-edition-2.md) | 165 | `result-track:4615b200286ed22c49c7922110de4f96e2942da90cbb0019b5c947b5e72c34fd` |
| 31 | `theorem` | [not_none_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/not-none-dom.md) | 169 | `result-track:f43f1688303402b7cf97e227ec3f734daab9e06ec7e643eb10d7d7c57d14903b` |
| 32 | `theorem` | [some_ne_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/some-ne-none.md) | 173 | `result-track:d2944793b4ddf50b6a02f71048b8855224eb2f8334ffe5d922a7a68ec2f0df70` |
| 33 | `theorem` | [none_ne_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/none-ne-some.md) | 178 | `result-track:21ecf95bd5d6070c737154b9d48be29452c1c586903109637fccf04be256ab80` |
| 34 | `theorem` | [ne_none_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/ne-none-iff.md) | 181 | `result-track:5045a8dba96030a9a655b63d6f469c236ffb7947dfc556df4764c836eb99db18` |
| 35 | `theorem` | [eq_none_or_eq_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/eq-none-or-eq-some.md) | 188 | `result-track:e873c25a1f1ecb5997f8a7c16c69765737fb9d030e62aa8d35e85a7f05399b62` |
| 36 | `theorem` | [some_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/some-injective.md) | 191 | `result-track:b69932549c924faa0d514ee67259d0302b11eee00eb2b1b8592ef6990826eea2` |
| 37 | `theorem` | [some_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/some-inj.md) | 195 | `result-track:99ee3d96b3f24b62a69d95e2280f183ac85b48944c141a3ba4d45df5647a4f24` |
| 38 | `theorem` | [some_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/some-get.md) | 199 | `result-track:cdba8d32f6105f2d887afe914ff1fbb68633a92dc318ffc485495af878e82aa1` |
| 39 | `theorem` | [get_eq_iff_eq_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/get-eq-iff-eq-some.md) | 202 | `result-track:5e986daac1d90496210322ebb57b075ec41a9505f52b300c3668c0b972e91bfb` |
| 40 | `theorem` | [get_eq_get_of_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/get-eq-get-of-eq.md) | 205 | `result-track:7f4e5ed9d131df0d20c002eb8e5a2c002d270eb443e7104960e655f0c31ca2df` |
| 41 | `theorem` | [get_eq_iff_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/get-eq-iff-mem.md) | 209 | `result-track:d2f1afc6b9ffbf99d56c4f753b71cf66b0ae210adb3bf574325532abb9b6fbd7` |
| 42 | `theorem` | [eq_get_iff_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/eq-get-iff-mem.md) | 212 | `result-track:7e7b01309c904c270fc50b390a836f387ed2b6fe92276774d28c5ed91454d305` |
| 43 | `theorem` | [none_toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/none-tooption.md) | 216 | `result-track:deffbee11a419bbbeda7c514da8d0171190f9f1054dc73c5eb61820b7ae26338` |
| 44 | `theorem` | [some_toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/some-tooption.md) | 220 | `result-track:e23a142dabf326b7834d570ec2bf5aad54a0f26c8c806cb20733ba5f48973f35` |
| 45 | `instance` | [noneDecidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/nonedecidable.md) | 223 | `declaration-track:82ed2d5017405b274ff8a7d7b0849d73e56c734a5f183352f0f5bb4fcc1daa56` |
| 46 | `instance` | [someDecidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/somedecidable.md) | 226 | `declaration-track:06bd7ce311354fe8e13c3858f7d22bfc4a8191154561e21c2480a0dec6db7d13` |
| 47 | `def` | [getOrElse](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/getorelse.md) | 231 | `declaration-track:ac7eba51ba13facb593a6268fcd310f7b460f13c51beea4d5ded6cd04e104285` |
| 48 | `theorem` | [getOrElse_of_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/getorelse-of-dom.md) | 234 | `result-track:3c6c7d4460794e4fc7e85ac6db1bbd176fb544c700bae9132e7820b1ed74b9c0` |
| 49 | `theorem` | [getOrElse_of_not_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/getorelse-of-not-dom.md) | 238 | `result-track:3f0c0d91e4732fe86a3cffd0f83feac5f17f429522d6e8a6d047a14436cb9418` |
| 50 | `theorem` | [getOrElse_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/getorelse-none.md) | 243 | `result-track:11a3f8e500d882dd81d733442e5c7d18f2825d0aee6a7a0aa02bb8aba6749a09` |
| 51 | `theorem` | [getOrElse_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/getorelse-some.md) | 247 | `result-track:629f6b97e99e39cfea3c460cd8b7bfef58c1c54c430cc9aa4ce3c37dfc3f81aa` |
| 52 | `theorem` | [mem_toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/mem-tooption.md) | 251 | `result-track:f8db63da3d6e1904f6035cab5b3e524b718cc052cde8ee5ab9587fbdea822fbe` |
| 53 | `theorem` | [toOption_eq_some_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/tooption-eq-some-iff.md) | 258 | `result-track:372468e8ce9e18c9459161af7b61f128aacd4d630bc91473781b941692cbc263` |
| 54 | `theorem` | [Dom.toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/dom-tooption.md) | 262 | `result-track:a1b8a3034e005a095b83a0a4e69b9919f8c85fcf723822cb76b73a29580e06d6` |
| 55 | `theorem` | [toOption_eq_none_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/tooption-eq-none-iff.md) | 265 | `result-track:47839458021d47f154f2e2797eebf3e67a38bcd064b661ea3de7a3f6781427b5` |
| 56 | `theorem` | [elim_toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/elim-tooption.md) | 269 | `result-track:d0ac1eb051d18b8657c3572ad594949d18bddd0edaed4e8af37b0e8df7455704` |
| 57 | `def` | [ofOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/ofoption.md) | 279 | `declaration-track:a2d408a43fe6757c01968c4d03ca86a732c1adb64febf921d5141fdc73dcb314` |
| 58 | `theorem` | [mem_ofOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/mem-ofoption.md) | 284 | `result-track:6b8d183868bad0b19e728b6ea20ea138b7be0f1a99076983de0e6f515bf1fa75` |
| 59 | `theorem` | [ofOption_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/ofoption-dom.md) | 289 | `result-track:407d35d6c1a76ded21e0fafccbdc0dca4aac49ab1ef9f7d3b60fc232e8527209` |
| 60 | `theorem` | [ofOption_eq_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/ofoption-eq-get.md) | 293 | `result-track:c9eef9c71076961fdaf9781464666f466b361b2496f3072986e0084e070d0180` |
| 61 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/instance-source-edition-6.md) | 299 | `declaration-track:516191ab59b3a0235026a06e5f4bcec7ee688a0256194fef94094f21dcec3081` |
| 62 | `theorem` | [mem_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/mem-coe.md) | 302 | `result-track:ccd2a3d8d37bc56c973490e37f8937f214099a1824ec39dc8ef8ee3dfba80893` |
| 63 | `theorem` | [coe_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/coe-none.md) | 306 | `result-track:e64e9cf5f70ddb358550611b01795fbb6c4529b2c605a2b3894e52abc245e639` |
| 64 | `theorem` | [coe_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/coe-some.md) | 310 | `result-track:4e19d48b78cba0be1875d8784c90a5ae7a458ff69405600b7ca1a82f092a50fc` |
| 65 | `theorem` | [induction_on](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/induction-on.md) | 314 | `result-track:e07057b472bde0715025e4d218d7633b5d8adcaf6537e55149deddac8a0d528e` |
| 66 | `instance` | [ofOptionDecidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/ofoptiondecidable.md) | 319 | `declaration-track:8576099188918c49a6efc237d719fcfd5f55ebae7d2a1be070a127dd452d0e96` |
| 67 | `theorem` | [to_ofOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/to-ofoption.md) | 324 | `result-track:481f419467908a37dc1909b052f06950c601597c6e883ae7a84caad6451c12b8` |
| 68 | `theorem` | [of_toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/of-tooption.md) | 327 | `result-track:8e902bceb14e53ff91ea93ffa515df2d09394ab778adfc0852fddda6d8c07b8f` |
| 69 | `def` | [equivOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/equivoption.md) | 331 | `declaration-track:c1945e1550e537683aeeeeb11531b08b480538dc19e3d69a46b5a982efc7c833` |
| 70 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/instance-source-edition-3.md) | 337 | `declaration-track:0e3105e2dd10316c3e563238cc570f30dea0f83ccce8ec781b1dec679fa43446` |
| 71 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/instance-source-edition-2.md) | 344 | `declaration-track:09b44a5e4a20f62cae35f3f03a67a908de45333dffe9a63c0d6495097f22aef2` |
| 72 | `theorem` | [le_total_of_le_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/le-total-of-le-of-le.md) | 348 | `result-track:e53e6bee19d08212805db987be28758bcd04f21fa923593ab865219d1f25c1f7` |
| 73 | `def` | [assert](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/assert.md) | 362 | `declaration-track:4c01b1181704c82ca3c216906a62caaaf5b97ffa9c28c13eb4100938e8fb4ad8` |
| 74 | `def` | [bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/bind.md) | 367 | `declaration-track:e1b4f1c2daa686b95d1dea946ab61297065e5c99bc46dbd9ff927e636f92d327` |
| 75 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/map.md) | 372 | `declaration-track:b7e7033de44036a8f82e2312086f635b490cf4f5058dd276fa21525dc2536db9` |
| 76 | `theorem` | [mem_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/mem-map.md) | 375 | `result-track:b1c12eecd06b9b64f7381f271da260122b551934f6c35abc47752d7860131343` |
| 77 | `theorem` | [mem_map_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/mem-map-iff.md) | 379 | `result-track:9f6de41d56cbb90d76966d02a2fd4fa0a7e4af57998350582810b375e5b143df` |
| 78 | `theorem` | [map_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/map-none.md) | 385 | `result-track:f3a831f2396b328b19e329b98c9bf068755f5be2ba9c3bd54ad7245674d072cc` |
| 79 | `theorem` | [map_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/map-some.md) | 389 | `result-track:6c25aae1705cbbcfce7ff9943fd1b7abe70b9f816d6cd7d38a66dd4646d4f40e` |
| 80 | `theorem` | [mem_assert](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/mem-assert.md) | 392 | `result-track:06e1c624839f901051f8f6b12f16309547260684f26c0308aaaa696003f83f25` |
| 81 | `theorem` | [mem_assert_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/mem-assert-iff.md) | 396 | `result-track:d2a1e2fc4433be38b0f403d844f1c660c006eff5f8d0d1aade63f5651fd37e70` |
| 82 | `theorem` | [assert_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/assert-pos.md) | 401 | `result-track:e9e15e660899324aa30e8db430ca1f6f1487bdfb40335d085207833b21d37568` |
| 83 | `theorem` | [assert_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/assert-neg.md) | 409 | `result-track:fc1e32f8b92e18fa320b74c4fc843e9e6f15284d29b06c0fccd5e9d2c83a810e` |
| 84 | `theorem` | [mem_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/mem-bind.md) | 416 | `result-track:f4490e14097123799d636e1a49fa6fc0f71622c00292be77b1e7d3edba919447` |
| 85 | `theorem` | [mem_bind_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/mem-bind-iff.md) | 420 | `result-track:1f7437f7f984186e91c4a09173cf357f4d4839500636c0368baa02360cf7cf4a` |
| 86 | `theorem` | [Dom.bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/dom-bind.md) | 425 | `result-track:1edc4d7cef40d65b4b68eb3f9e5d2415adc6f94636a75b3153f660abbedb9fd2` |
| 87 | `theorem` | [Dom.of_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/dom-of-bind.md) | 432 | `result-track:c6ecf08881b73777435c189ad8a5c6cf38fa64fea5daea0c80027c6455f6826d` |
| 88 | `theorem` | [bind_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/bind-none.md) | 436 | `result-track:3c197c41b08aa805dba21415576504894e4c3b23f4ff4493a84e8c2d551f705d` |
| 89 | `theorem` | [bind_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/bind-some.md) | 440 | `result-track:04e04d57e359ed554e4edc6bbbd67a8c0243e321c932efde5ce091a2393c2f37` |
| 90 | `theorem` | [bind_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/bind-of-mem.md) | 443 | `result-track:667e83b851aca61bb6cb7680a570cdc98b0d3593f27fef8d2e6c33fb92dcfb85` |
| 91 | `theorem` | [bind_some_eq_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/bind-some-eq-map.md) | 446 | `result-track:a8afb9eea2a0b2382917006f3030e188e4a582e35d7f124e5ef6eea928a48b8c` |
| 92 | `theorem` | [bind_toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/bind-tooption.md) | 449 | `result-track:14e6820f58bac3c8e370554bb74d4b38d13a038f4b5785eb7c6f1f20525d368e` |
| 93 | `theorem` | [bind_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/bind-assoc.md) | 458 | `result-track:173189027ea68ddd0e93978eb714544a82c58af529ae7047b9a26a8b1ed64f8e` |
| 94 | `theorem` | [bind_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/bind-map.md) | 466 | `result-track:d28b67fa039531062d3370e6dfcc3049ac1e256e10b4a3c69defd9af6652206d` |
| 95 | `theorem` | [map_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/map-bind.md) | 470 | `result-track:74cf21067d1634ab2344a89b53d630f9ed068312d0e07acf395bdb2ec79b95aa` |
| 96 | `theorem` | [map_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/map-map.md) | 474 | `result-track:656a71608e33ed5dbca4627bcbadc2f2177a5b731302776e8314902e9af1b2c5` |
| 97 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/instance-source-edition-8.md) | 477 | `declaration-track:9cd2ce0e695c30ed99590e87b3ebff8d443a3a0b550ee45dcc2ff193b7cf6202` |
| 98 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/instance.md) | 482 | `declaration-track:0911f29cf66fdf31e21e2add1e06848282b00e165ed68e8624166e881df7f197` |
| 99 | `theorem` | [map_id'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/map-id.md) | 503 | `result-track:043aed2b51839ca1541c2a2aea75e0d44e599cd060b6364946dabc6ddd72db53` |
| 100 | `theorem` | [bind_some_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/bind-some-right.md) | 507 | `result-track:97e8864ece45085baa304fd8fcda246dd98a4e98e2133fb337d19517767b1cdf` |
| 101 | `theorem` | [pure_eq_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/pure-eq-some.md) | 512 | `result-track:873eaecca0a0b6eb966e1d623671a791e3c94c48690e8fb6a6cfcf4d6688c128` |
| 102 | `theorem` | [ret_eq_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/ret-eq-some.md) | 516 | `result-track:2fff0aa0bb52754aad185143a3b6fdcb3f5d746a61f53b791498803aaf1f237a` |
| 103 | `theorem` | [map_eq_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/map-eq-map.md) | 520 | `result-track:442d6fa8b013e518d65716e9b52af400748645a146218d7fa7ed06a7d2e47a07` |
| 104 | `theorem` | [bind_eq_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/bind-eq-bind.md) | 524 | `result-track:f5ecfdad1daf20b4101225e0383c6e432fa6ae63d3f0b6ff2a12d5934a136c89` |
| 105 | `theorem` | [bind_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/bind-le.md) | 527 | `result-track:388390eccea458696a3fd55ed67f5e8dae7b0a808db25a88d07684ac9ed49ab6` |
| 106 | `def` | [restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/restrict.md) | 545 | `declaration-track:3cecd8a224da645a541cfd8dcad7825912871282e35be5828c66d1ccd0b8faa0` |
| 107 | `theorem` | [mem_restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/mem-restrict.md) | 549 | `result-track:03d20294617c63934394e905d70c623c54d45238b6891eb3e5d736702b5a03bf` |
| 108 | `def` | [unwrap](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/unwrap.md) | 557 | `declaration-track:5aa68d91a3d5c3ca75d30bedd40dbf2c054a2ae854d54f833dfb76689073cb78` |
| 109 | `theorem` | [assert_defined](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/assert-defined.md) | 560 | `result-track:573b0f8dd7d7052ef88cc3898a1b9d8505092dcd60e874450c864dec98c6ea72` |
| 110 | `theorem` | [bind_defined](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/bind-defined.md) | 563 | `result-track:638a34658934c32181501d12de2629724ac696d128afc372621b98ba77946a02` |
| 111 | `theorem` | [bind_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/bind-dom.md) | 568 | `result-track:6c8b1d193362c3b4fd207806390a23a6668eebf479adf51402fb28e4d402fb41` |
| 112 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/instance-source-edition-5.md) | 581 | `declaration-track:45a084c65b76729ff3b3948908ef9262c67791006aa8bd4ac2d5cf07f54cda2d` |
| 113 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/instance-source-edition-7.md) | 584 | `declaration-track:78bc8400156aa455e52e70e325a30b907e67fe85cff4e42c9e2373d3f6a69795` |
| 114 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/instance-source-edition-16.md) | 587 | `declaration-track:f8a550b529456fdc1b60cdea06f43211fa533b711cac0630e542552a0a9f5429` |
| 115 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/instance-source-edition-9.md) | 590 | `declaration-track:abf53668e6c75b9a5713704bb0ee804a64c3920117e2d2027c8b1efa09e14d7f` |
| 116 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/instance-source-edition-10.md) | 592 | `declaration-track:c28c83eeb9ed858a78a91a935f7f52ed91f972b318feb1d32d88f80b6c48fd9f` |
| 117 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/instance-source-edition-11.md) | 594 | `declaration-track:c403cc5aa9824557877ff18744559695f55c88763e4a4a47115bb3925881f4e1` |
| 118 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/instance-source-edition-14.md) | 596 | `declaration-track:f47205cc4f2dbe30a61659f5277c42b60800256fbc16b102356a6cc00be35719` |
| 119 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/instance-source-edition-12.md) | 598 | `declaration-track:d24859125a670183ec57172f4c53a0e5e3c5ac150695fb6684ead40617fb463c` |
| 120 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/instance-source-edition-15.md) | 600 | `declaration-track:f5a88d2af5410be51b22b010b2ac9197ce6fc008c8a603d59c9629b2bf2f2ad7` |
| 121 | `theorem` | [mul_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/mul-def.md) | 605 | `result-track:2cc4abe7886a6d1308d884f49922743abf90bf74873ca2ae09fb72f806617599` |
| 122 | `theorem` | [one_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/one-def.md) | 608 | `result-track:0fe737aabd764a94667ebf5a295a4ebfaec8de21aa7f52918d3b5711da459d6b` |
| 123 | `theorem` | [inv_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/inv-def.md) | 611 | `result-track:3dd3e9540423342769cfd14f30c7f6c7de2b8420a49dcaeb45c464accdae047d` |
| 124 | `theorem` | [div_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/div-def.md) | 614 | `result-track:11aecf743dc88faf9a05b4f1d3b23a1a12052c0075fccba36d42ef959d068e83` |
| 125 | `theorem` | [mod_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/mod-def.md) | 616 | `result-track:e4967545a27b8bf06b871e2f2e4e12992dcfdf2b16cc5c1685899e1f77f0ca15` |
| 126 | `theorem` | [append_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/append-def.md) | 617 | `result-track:825c604c3912274cb2602c59f1e8e215f6722fd0a8e6512971036266b7943350` |
| 127 | `theorem` | [inter_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/inter-def.md) | 618 | `result-track:ab5746a3d89d58f4a4dd615d6ee92cc666e2b1d6d180ab1f890826c1a1bfd348` |
| 128 | `theorem` | [union_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/union-def.md) | 619 | `result-track:0f3211a1c739d7ce8fd01a6fdc31746182cb287b9ab3b350f1583c44da4ba41e` |
| 129 | `theorem` | [sdiff_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/sdiff-def.md) | 620 | `result-track:0a7d3a61fb4e3f076fc417e1c2fff39c378460d097efbe9cf1aa7d33448e3101` |
| 130 | `theorem` | [one_mem_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/one-mem-one.md) | 625 | `result-track:aa340f49b6880f3b2d6f7dc8ba28006f0236428ed06f4a237c0a21b9d0de47f0` |
| 131 | `theorem` | [mul_mem_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/mul-mem-mul.md) | 629 | `result-track:bdc73400784c03242872db44c25336d66204a10f102f76597ae7c5ed3a68c3ad` |
| 132 | `theorem` | [left_dom_of_mul_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/left-dom-of-mul-dom.md) | 633 | `result-track:7a88be57b4aa49822ba7f57ab90d3503ed15d51cdaeabecdcdd4a7ad08deccc2` |
| 133 | `theorem` | [right_dom_of_mul_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/right-dom-of-mul-dom.md) | 636 | `result-track:5c2da92c2c975812810515439cd3a628c15a4a62b5378bd802c2149cebf08789` |
| 134 | `theorem` | [mul_get_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/mul-get-eq.md) | 639 | `result-track:84d6ca1b1d4abb46c539283180d3f46b8bb7dc2aafdc77bc34ec89dfe3a99378` |
| 135 | `theorem` | [some_mul_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/some-mul-some.md) | 643 | `result-track:de3c1cf84ab8b0bd4ccc4b9cf3351dc92624cfbfef9d2605f89c4f815e604d1a` |
| 136 | `theorem` | [inv_mem_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/inv-mem-inv.md) | 646 | `result-track:46f6d2b4c59b5070bbf5876c4ab6e75e4ee53ce72025a3a25aa0cb0112e1208f` |
| 137 | `theorem` | [inv_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/inv-some.md) | 650 | `result-track:6e86352c3eee7f037ebd6465bbfaedf60593126f0488ecfc1bddf01d01b707c5` |
| 138 | `theorem` | [div_mem_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/div-mem-div.md) | 654 | `result-track:f9f4ba8de72d6ddcce5695a725733df7f96c5b69ddfead810d9782b7e9179dd8` |
| 139 | `theorem` | [left_dom_of_div_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/left-dom-of-div-dom.md) | 658 | `result-track:d76a393a4d4784bdaeae471338f7332242734e0c8a807011e74f262c0f40b680` |
| 140 | `theorem` | [right_dom_of_div_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/right-dom-of-div-dom.md) | 661 | `result-track:ea4f43afad8a2636812c069a5156999cd1436708cb37ce4d00942f060dd43f9a` |
| 141 | `theorem` | [div_get_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/div-get-eq.md) | 664 | `result-track:2e1108a8af0a839ac3fff5d80fff1456cc32f955e732b6c1bfc845062f04f706` |
| 142 | `theorem` | [some_div_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/some-div-some.md) | 669 | `result-track:97d08ecf0728073428a7813c1eed2dce8bbb51aaef0c0bdf4ad0fa224a03965b` |
| 143 | `theorem` | [mod_mem_mod](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/mod-mem-mod.md) | 671 | `result-track:60b19f10ec7c9c711ede29fd3b68d395c0243f150c2f1a63be8d5a990b6563db` |
| 144 | `theorem` | [left_dom_of_mod_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/left-dom-of-mod-dom.md) | 674 | `result-track:fdaae0b2bd1030842170fe90cac2db2ec2e2277d0d396acdd4e0f931900ab9dc` |
| 145 | `theorem` | [right_dom_of_mod_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/right-dom-of-mod-dom.md) | 676 | `result-track:51fba230272964c82f09a5d1b2003f36884601af69b1eb40cd7c967f8ca8257b` |
| 146 | `theorem` | [mod_get_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/mod-get-eq.md) | 679 | `result-track:8b189d1b626fee396d247924bb42d4b2b0cf62fb77326bb686dd3a30dc0b1918` |
| 147 | `theorem` | [some_mod_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/some-mod-some.md) | 683 | `result-track:f8c95f16c95869dce9b127b0d884449f84fb38620adbf21bed4ac133a49d5904` |
| 148 | `theorem` | [append_mem_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/append-mem-append.md) | 685 | `result-track:666b55927fd18ae41bb10e9ba6d2e07668677188b194ffb64e64a91a8ed2ec86` |
| 149 | `theorem` | [left_dom_of_append_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/left-dom-of-append-dom.md) | 688 | `result-track:760c5e45033f0922dd58ea331504222d94166989831d6e70f7b0bc343d5ecad7` |
| 150 | `theorem` | [right_dom_of_append_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/right-dom-of-append-dom.md) | 690 | `result-track:4c4bc1979b7ed6d14a790e7dc0d6ee2472eefabeac688aa2cc962618ff3ee4ce` |
| 151 | `theorem` | [append_get_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/append-get-eq.md) | 693 | `result-track:d31e7c7e522e259cf00e32b20df68614d04d1c44d84adc6187ecf1c3d0c35379` |
| 152 | `theorem` | [some_append_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/some-append-some.md) | 697 | `result-track:c65f259dab44b828371ddc8a7da14d3d84996ea5f509c049a8de81629924551c` |
| 153 | `theorem` | [inter_mem_inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/inter-mem-inter.md) | 700 | `result-track:12a246c36cf6a7f2c7b8e0b3d6c6fafcc7848edc40edc155745a7693681fcb9f` |
| 154 | `theorem` | [left_dom_of_inter_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/left-dom-of-inter-dom.md) | 703 | `result-track:e935d5b1cea4862eb206fa9df9833017a7069953972fd9708cf8827b893d9dd0` |
| 155 | `theorem` | [right_dom_of_inter_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/right-dom-of-inter-dom.md) | 705 | `result-track:d90bf1e5aec8c0d2d86964191363930cf39702c8dc112d8b5ecfbee7f05dd166` |
| 156 | `theorem` | [inter_get_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/inter-get-eq.md) | 708 | `result-track:b4125aa1ae3cc352c3da586fbb9d0aad7a1c88feb24af5f8f92d450d9e3483d1` |
| 157 | `theorem` | [some_inter_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/some-inter-some.md) | 712 | `result-track:83567df03bf72207ec7b75ccc414973c483aec806b78b0439912f248ee2c2133` |
| 158 | `theorem` | [union_mem_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/union-mem-union.md) | 715 | `result-track:056265d98a3377497c5c403d0ed492c12b98be1f496e0d6e3ec3fe39e736c040` |
| 159 | `theorem` | [left_dom_of_union_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/left-dom-of-union-dom.md) | 718 | `result-track:b87eb1a57cad9978b4c95c54614cdab5fd3e310fc6d6e3409c68609005ed54dc` |
| 160 | `theorem` | [right_dom_of_union_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/right-dom-of-union-dom.md) | 720 | `result-track:dc554bf886dbe303521603cd6a9a619df2d0ba8486b0fc7665d9ebcb40223c0c` |
| 161 | `theorem` | [union_get_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/union-get-eq.md) | 723 | `result-track:8ecf269c176b3c27fe1b984d6dbc7899a3ef06bded7992ba4ba3f832bd987ffe` |
| 162 | `theorem` | [some_union_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/some-union-some.md) | 727 | `result-track:af4fd784787a17345d8345350e5b7f485e74d620c568305e82069f6fed17ea93` |
| 163 | `theorem` | [sdiff_mem_sdiff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/sdiff-mem-sdiff.md) | 729 | `result-track:7af745448f25a5c03b02aea806a96e5192dc223088b09ae8d7b582e2a0e742e6` |
| 164 | `theorem` | [left_dom_of_sdiff_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/left-dom-of-sdiff-dom.md) | 732 | `result-track:aa22e6967a28ff78130110b0edc3b5df792b7c1c4344f5af2067b415bbf58808` |
| 165 | `theorem` | [right_dom_of_sdiff_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/right-dom-of-sdiff-dom.md) | 734 | `result-track:77d2f13829fb102205ae9a0ae239a69e455665e514f63713e876a0d8b5765189` |
| 166 | `theorem` | [sdiff_get_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/sdiff-get-eq.md) | 737 | `result-track:8e1516410a11d4a989b027017302f4c10fe0c9de0f33bbfbe4c1076c51f9a1c1` |
| 167 | `theorem` | [some_sdiff_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNone.lean/declarations/some-sdiff-some.md) | 741 | `result-track:f1b4c76f2859abcd1f387718c2c50ea06150e82958bed61fda82ee4d40cf9ad1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2588ec1c5af7fc305681d69efe68127150256977b73399d31e33c2cc1cbc55da -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant66609db9849b86724930cc5990d53d94722cdd0a7e5a7d28ca2ad4f5441a4037.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant66609db9849b86724930cc5990d53d94722cdd0a7e5a7d28ca2ad4f5441a4037.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
