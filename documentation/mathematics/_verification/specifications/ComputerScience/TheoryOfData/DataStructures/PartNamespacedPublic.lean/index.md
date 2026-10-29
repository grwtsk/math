# Verification target: Part Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29b43dd9826415e25c8d6baf8e0c73cbe842db5e",
  "lexical_observation_count": 171,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant1057a348fae2c865662b7ec17933161fa8b71b9ea7e2facf05daceca0eff48ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29b43dd9826415e25c8d6baf8e0c73cbe842db5e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant1057a348fae2c865662b7ec17933161fa8b71b9ea7e2facf05daceca0eff48ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant1057a348fae2c865662b7ec17933161fa8b71b9ea7e2facf05daceca0eff48ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Part.](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/part.md) | 66 | `declaration-track:408e2f2f422783ba2de2c1ff53025582b18c57744bc566ea75b933f001cc2e99` |
| 2 | `def` | [toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/tooption.md) | 77 | `declaration-track:8a06bbc9e22688a3486c5e648acaf211fac98b5fb22449c286a1a880763f3568` |
| 3 | `lemma` | [toOption_isSome](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/tooption-issome.md) | 80 | `result-track:a4269478a1a7a34354a999f9b0f077e5e98e36b6945ae5d372044c0b5f9bad25` |
| 4 | `lemma` | [toOption_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/tooption-eq-none.md) | 83 | `result-track:10f5b2c46f522bd1bb95dd34da481a4c514fcb772b38a865734408898fbaab8c` |
| 5 | `theorem` | [ext'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/ext.md) | 87 | `result-track:72b733666f2eb70ff04d4116d4559abda0e98691f2a44a781338b0b0d4f2c2a0` |
| 6 | `theorem` | [eta](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/eta.md) | 94 | `result-track:5c45f9041eb34187b80b5b0a074585c9f824a2b086f35734e75795659f8e131b` |
| 7 | `def` | [Mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/mem.md) | 98 | `declaration-track:813861edfa5d2304d289705ea5855fb49f6d876eb0a13015605921bbd1eb91ce` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 101 | `declaration-track:c8463d4feb89af5e745bb6e8795a9bcaa1e28141ea20558bae7afc0d96ae27a7` |
| 9 | `theorem` | [mem_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/mem-eq.md) | 104 | `result-track:0ecdf75f94c66efc9ea35d2e51f8a86590d8f5e1e00614fabc1ce3483f948857` |
| 10 | `theorem` | [dom_iff_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/dom-iff-mem.md) | 107 | `result-track:4de15262ec018008eb4ea9dae38c734db885a338a9bfe9d6d849d88bb2f1150d` |
| 11 | `theorem` | [get_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/get-mem.md) | 110 | `result-track:f6729bfdae056669b2bd3f61e8fe86f89dc9dd64796945fee567d421c6fd8939` |
| 12 | `theorem` | [mem_mk_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/mem-mk-iff.md) | 114 | `result-track:227b21d26be9450350b243dcb3bc5c0f52694866e2b2102b002899f88fc2ef6c` |
| 13 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/ext-source-edition-2.md) | 119 | `result-track:78f4468ecae2658a68f30fd641bd4b1bf3cf5d663c935cdf37f771a5fab55edd` |
| 14 | `def` | [none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/none.md) | 124 | `declaration-track:dde08236680fb41e5b6ae8fa3843e55e4eab415bd3299e09e059a41f5fbf867e` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 127 | `declaration-track:af7a8363b06add4768e2147b2cb60ff34bd9877b628bb690731cea35467ecc0c` |
| 16 | `theorem` | [notMem_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/notmem-none.md) | 131 | `result-track:0d3458061280fb48234bce76c218136faff0cc20997335a7e8165aedb0affcbf` |
| 17 | `def` | [some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/some.md) | 135 | `declaration-track:e581151ddc53508503489a0268d84579ce255ef1d520de53bd6a91521ad94208` |
| 18 | `theorem` | [some_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/some-dom.md) | 139 | `result-track:eb44181418d2176b5f849edfcd6fc0e2481fc418ab474dc459cf7c6280f3ff85` |
| 19 | `theorem` | [mem_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/mem-unique.md) | 142 | `result-track:e19c149462106faa8c05fa555be386893c0ca7d707eff20fa51667716acab85b` |
| 20 | `theorem` | [mem_right_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/mem-right-unique.md) | 145 | `result-track:215263a556663fa6456eebd44bac1ab0677798cfab83327fb32a5708636b7c12` |
| 21 | `theorem` | [Mem.left_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/mem-left-unique.md) | 148 | `result-track:ca0bfe81e7245af55f91f08e4e02adebb4c4f12f715565d6bf2e76d04622a149` |
| 22 | `theorem` | [Mem.right_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/mem-right-unique-source-edition-2.md) | 151 | `result-track:93519f1b65cf53b6df054e68789af6d670a9739674fe0fcefe5b8df3dc18e193` |
| 23 | `theorem` | [get_eq_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/get-eq-of-mem.md) | 154 | `result-track:ae2b8b687820b2e2b1462cf0e55e88c4ead2cf4c9441c5052b59440b3672863b` |
| 24 | `theorem` | [subsingleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/subsingleton.md) | 157 | `result-track:2ea92f7bb2aecbd399c6c5d5e4df7ff5217fd0e5fcfbdf5aeebaa21678569b51` |
| 25 | `theorem` | [get_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/get-some.md) | 161 | `result-track:3f2284823e88f10bdd193ad7a0fa235b828b9cc7a9b7a28aeecee6d0fd0f3ba8` |
| 26 | `theorem` | [mem_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/mem-some.md) | 164 | `result-track:f472ab819372acdbe3339832d17edbdbda58440658345e503035daeac24a54b6` |
| 27 | `theorem` | [mem_some_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/mem-some-iff.md) | 168 | `result-track:ad593ebadc23bbeea71fc6d0c5e3d4ff49562b4b5f59628e26a416765cbbbad4` |
| 28 | `theorem` | [eq_some_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/eq-some-iff.md) | 171 | `result-track:281e6a8808115adb3a157249ac69b582021025e9cc2c470cc4cb1a35fcec5330` |
| 29 | `theorem` | [eq_none_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/eq-none-iff.md) | 174 | `result-track:4ff4508459feb4634429de6cd8dfb3eade5f2d6d8441d124b86e69a8db40b529` |
| 30 | `theorem` | [eq_none_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/eq-none-iff-source-edition-2.md) | 177 | `result-track:60ecd4b7c20b8bf5a05704918c31ca4464225a87441787026bcbd3c8fcca2953` |
| 31 | `theorem` | [not_none_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/not-none-dom.md) | 181 | `result-track:208e35366c1a9598197f175c251b85010d3df722b3e1bfa8adaa6df8f3cc7b07` |
| 32 | `theorem` | [some_ne_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/some-ne-none.md) | 185 | `result-track:e61b869ee61907696410a5f59cc6708f99e26ea93b072752bc89aca548e09d15` |
| 33 | `theorem` | [none_ne_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/none-ne-some.md) | 190 | `result-track:c026b017c4e93f285a5a73d6a6cc0cffdef8db706a7ccdd630603def798e3b2a` |
| 34 | `theorem` | [ne_none_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/ne-none-iff.md) | 193 | `result-track:5a4ff0cf8365b4d4bbd7ba7bbdf77594fdb4dcaf00285635bb2447f8dd108298` |
| 35 | `theorem` | [eq_none_or_eq_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/eq-none-or-eq-some.md) | 200 | `result-track:dd5ff5889d27c21f84ccd6ed030e6b4078acea9536d87b33ee70ee0a1d91d8e4` |
| 36 | `theorem` | [some_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/some-injective.md) | 203 | `result-track:972dffd6f424bdac9bc53aeb2fd5c7f23b245237e264525c3642895f5f483184` |
| 37 | `theorem` | [some_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/some-inj.md) | 207 | `result-track:fdb11fa6a43d307d0d6908bc4c17a53c40eb9622cbc0451ddfeffce58558c6f1` |
| 38 | `theorem` | [some_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/some-get.md) | 211 | `result-track:933ad23583a8a782d2e0b83129d392e2f9011fc1ee63c3f83f31f65b24757615` |
| 39 | `theorem` | [get_eq_iff_eq_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/get-eq-iff-eq-some.md) | 214 | `result-track:122488f19bfc9b4e64421fc242628957b5523249922c0defeb560949fe7be754` |
| 40 | `theorem` | [get_eq_get_of_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/get-eq-get-of-eq.md) | 217 | `result-track:067d42682b2adad5a2d097169ffab9235a51af902213896ef54f424e5537cb2b` |
| 41 | `theorem` | [get_eq_iff_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/get-eq-iff-mem.md) | 221 | `result-track:710e0aa9c3a714aea098b78e31103a7f8ceac37e78f7e97c347bcefcb3f7380d` |
| 42 | `theorem` | [eq_get_iff_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/eq-get-iff-mem.md) | 224 | `result-track:12806e247257522e70adb070eeb8fb9b4ded5acef365768d7a7a7bec346523b3` |
| 43 | `theorem` | [eq_of_get_eq_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/eq-of-get-eq-get.md) | 227 | `result-track:5ee44548493ff5a4b18848933f3c504388fead17dba16d7876e821b6c91ab6bc` |
| 44 | `theorem` | [eq_iff_of_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/eq-iff-of-dom.md) | 231 | `result-track:63306ade02a66fe7566eb9708ffefe6c88f960efd239e148067bc0d5b2b391bd` |
| 45 | `theorem` | [eq_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/eq-of-mem.md) | 234 | `result-track:1243c1a7cbfdd843e5e4d3b1a0c35be4b87f43f38d665fcc56a31ba3df6c8041` |
| 46 | `theorem` | [none_toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/none-tooption.md) | 239 | `result-track:cf871b2cab7d15dc2fcf199568123c1546fdfc7a8e544518667f656ec100ebfe` |
| 47 | `theorem` | [some_toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/some-tooption.md) | 243 | `result-track:4b95ee80c3dc200e49499661236855f0faa44e9b48258404adcc9eef8e24935f` |
| 48 | `instance` | [noneDecidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/nonedecidable.md) | 246 | `declaration-track:15a8d25d3881548b3a57a423454277d3f952c053448aae3cf6dd95824096a369` |
| 49 | `instance` | [someDecidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/somedecidable.md) | 249 | `declaration-track:50a67cf802e9d9d47f8754959ee023bdf425cfa6a638f4e448b040fbb553b95f` |
| 50 | `def` | [getOrElse](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/getorelse.md) | 254 | `declaration-track:d520489131cfd5a3344f11bbabc988541dd0142a9ae887716876c2d13dbdc6e6` |
| 51 | `theorem` | [getOrElse_of_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/getorelse-of-dom.md) | 257 | `result-track:3044f781997451e10cdcd9b3e3f24d3be78c48abc76b11140f6ba30a8548fe1a` |
| 52 | `theorem` | [getOrElse_of_not_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/getorelse-of-not-dom.md) | 261 | `result-track:59b093d652cec5b904d36b6c92ed9bdf92c4f71eb94af62c1e03f02340ac08d4` |
| 53 | `theorem` | [getOrElse_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/getorelse-none.md) | 266 | `result-track:7edf837af0d952d5f06dd65fcc32b355e022cd92f113aa78df7986b63657dc60` |
| 54 | `theorem` | [getOrElse_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/getorelse-some.md) | 270 | `result-track:958626f8f69e54768b3b4db08b0de1ef5a1587eeac34c86d4fbf0cbcaafbb746` |
| 55 | `theorem` | [mem_toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/mem-tooption.md) | 274 | `result-track:aac95f167b6a000c011e76e07a687e48fc56f572f873d5aa010cb5feca4546e9` |
| 56 | `theorem` | [toOption_eq_some_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/tooption-eq-some-iff.md) | 282 | `result-track:2baa891c86672962938817e36c93cc0a26596029b07310e9993f77031d733fc9` |
| 57 | `theorem` | [Dom.toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/dom-tooption.md) | 286 | `result-track:ae7e5df4b990e295bd69ce8ce5b27b233e8cfc9db3ecdfb470af48e9fc34bdfe` |
| 58 | `theorem` | [toOption_eq_none_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/tooption-eq-none-iff.md) | 289 | `result-track:6830325d121c98bb8c8889223d023eb6a81d2f463fae27ba5ec8d12d3c393131` |
| 59 | `theorem` | [elim_toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/elim-tooption.md) | 293 | `result-track:cee2a5d4fcf0107b6d40bc5b41e1a0ab04a9f5caf0616598bfd5125e19b4879c` |
| 60 | `def` | [ofOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/ofoption.md) | 303 | `declaration-track:2836205e33b86d74905c0169b4b9bc38b2d9e7f07b33633b832c2cc6642cff75` |
| 61 | `theorem` | [mem_ofOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/mem-ofoption.md) | 308 | `result-track:38185888a9f49d9b82c16af8463073f3b21f4fc107f3889d2e0ba6a9dc64c34d` |
| 62 | `theorem` | [ofOption_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/ofoption-dom.md) | 313 | `result-track:8d9d33ad352b7323f0a7c82921c73a2d8d3a2f38635ca8c49e1ee7a174e870eb` |
| 63 | `theorem` | [ofOption_eq_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/ofoption-eq-get.md) | 317 | `result-track:9c30c9e1621ab0a6f9691a85d3db5d6edaeb8a6399bf50a799c04799d2c13470` |
| 64 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/instance-source-edition-15.md) | 323 | `declaration-track:d371df570a9fa1591092284599c5f410e2f8f772c5b1c107d89186678d50b966` |
| 65 | `theorem` | [mem_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/mem-coe.md) | 326 | `result-track:a9538caa3f8adbf6942d9b376a3a92422cf6d1dd9784c568e19b679f4be39c19` |
| 66 | `theorem` | [coe_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/coe-none.md) | 330 | `result-track:dbdc3795ac7037f28c4fcf36e00804f9e921d1d5702848911b2131599c271ece` |
| 67 | `theorem` | [coe_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/coe-some.md) | 334 | `result-track:4d6b0aa152abd13220cabdb174909d5ca5af6b46b84c49416b0463e38d942af7` |
| 68 | `theorem` | [induction_on](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/induction-on.md) | 338 | `result-track:702c5a7700bf19b998902cea066c8afbc9d178a5dd63164cb5b96435d0014bb3` |
| 69 | `instance` | [ofOptionDecidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/ofoptiondecidable.md) | 343 | `declaration-track:14b18b3dc7ea04efe43402186127e340781f95c2cfb41f959ad43b717f2a9df0` |
| 70 | `theorem` | [to_ofOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/to-ofoption.md) | 348 | `result-track:788beae90493c32396bd761cb4b612fb20f0d8e141bb6cd845ad4255a028721b` |
| 71 | `theorem` | [of_toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/of-tooption.md) | 351 | `result-track:05e013f71181f2ddbf3b7749988e025b749e95fefe11f8634c17ce5c530c54da` |
| 72 | `def` | [equivOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/equivoption.md) | 355 | `declaration-track:82642f31332371140561356c74a2f199d0c7a1c04d7f352a465217e8e68acaa8` |
| 73 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 361 | `declaration-track:cc94a8fda85b9ec2c18928dab2170441bde48b6da5436a8034d20a9be1b4cd24` |
| 74 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 368 | `declaration-track:53312222fbe8011aa160bd4810f02779ef7e556d24c02c0813336798141d0e91` |
| 75 | `theorem` | [le_total_of_le_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/le-total-of-le-of-le.md) | 372 | `result-track:4a467168b1e52661ca3e10405da66a4832383a97cac8f9c4f5de36d967dbca4e` |
| 76 | `def` | [assert](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/assert.md) | 386 | `declaration-track:e5fd2282a868da01b58d3a56c0992be84eaed5a9a6a2b88de022dc5c73e67667` |
| 77 | `def` | [bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/bind.md) | 391 | `declaration-track:f28799d701c84e4c67afd5861bddc61b81d9305cab069f3badc808cdba389452` |
| 78 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/map.md) | 396 | `declaration-track:39dc720635b101839e6f3e8bd9859a6c844f14b9f1b3cda962b5108bd6b63a00` |
| 79 | `theorem` | [mem_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/mem-map.md) | 399 | `result-track:44a45f7c5be10ad618c16b24cfa27300bbc86ff460de59e58984c496c964194b` |
| 80 | `theorem` | [mem_map_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/mem-map-iff.md) | 403 | `result-track:1176529064059c71ff34c5abcb0bf09125dfcec2f3d64a59f9bcd00068de5a70` |
| 81 | `theorem` | [map_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/map-none.md) | 409 | `result-track:fef6f4dae473fb63ae47dcc44566d79a1d82a167b97d19481746666d05ed9ddc` |
| 82 | `theorem` | [map_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/map-some.md) | 413 | `result-track:fd96e091fc0518a01ba96ed1a2b3654990645393d205a9273ac1e50378e6293f` |
| 83 | `theorem` | [mem_assert](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/mem-assert.md) | 416 | `result-track:b0f332047245f45eec57c43bdb5e3598b9921465e2589f8b029b462d939fba2b` |
| 84 | `theorem` | [mem_assert_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/mem-assert-iff.md) | 420 | `result-track:8822c692371fe09a78f24ad7e344963f0dd61458c984401f922c3b0beac27b5c` |
| 85 | `theorem` | [assert_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/assert-pos.md) | 425 | `result-track:599c35cb9d3939b30c801e02a121addfe095751b74654eca904a42186af54b73` |
| 86 | `theorem` | [assert_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/assert-neg.md) | 429 | `result-track:c002dd6e5b2fe19b9ee8632fa51c32a42ecf4995b8b5ab1407633b817cbb8626` |
| 87 | `theorem` | [mem_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/mem-bind.md) | 433 | `result-track:2b14a6b2cb16a70f1828175778cfd9334921371e554226e15ebe05004ab070e5` |
| 88 | `theorem` | [mem_bind_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/mem-bind-iff.md) | 437 | `result-track:89b384180dc16cb30d3beee486deb6b669de0d8951f1c9e3996edec86d463f63` |
| 89 | `theorem` | [bind_eq_some_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/bind-eq-some-iff.md) | 444 | `result-track:6acfd6b0f8a81e4b059ce797ae26f5ece111d7195b478bd285ed9c4328b30ec6` |
| 90 | `theorem` | [Dom.bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/dom-bind.md) | 448 | `result-track:955d61029f6498c2ea2b04be4692d1f15b0f89a93845354465af1edb92eca029` |
| 91 | `theorem` | [Dom.of_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/dom-of-bind.md) | 455 | `result-track:bee584faff1774e459b6f2bf66660cc447e28ba6613f517a3754ec9f11dac462` |
| 92 | `theorem` | [bind_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/bind-none.md) | 459 | `result-track:a2c3bfa64997944faf49b3707cecdb0662ce136dc23d75de4327cd1b9ba877c2` |
| 93 | `theorem` | [bind_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/bind-some.md) | 463 | `result-track:0107f7bcd169eaf03a62e34368835fd5b0b373eb460eb51c7771610864a7e7d1` |
| 94 | `theorem` | [bind_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/bind-of-mem.md) | 466 | `result-track:5025f776470f863e7c92079bf4c80f359aabc802c5a48fa4745c64310c9b0eda` |
| 95 | `theorem` | [bind_some_eq_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/bind-some-eq-map.md) | 469 | `result-track:e5d06054299df1048835887da7d5154ea969a407490255fdc5cea178433fa199` |
| 96 | `theorem` | [bind_toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/bind-tooption.md) | 472 | `result-track:c1fca17d447e241a1ab4228690e1f88dd51ae2987d537804f0925309a4fed132` |
| 97 | `theorem` | [bind_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/bind-assoc.md) | 481 | `result-track:02381bb02ce949c226f873a894b0d1140a1fe3ddfa363e1aeadca86031961eef` |
| 98 | `theorem` | [bind_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/bind-map.md) | 489 | `result-track:39810db553fee76297708166c0edf93c7cfbcaacdd378427fd7822b3c3343bd9` |
| 99 | `theorem` | [map_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/map-bind.md) | 493 | `result-track:6257c169644abc95c61e39dfba789c8cb7478044f692830393bea9fced96898a` |
| 100 | `theorem` | [map_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/map-map.md) | 497 | `result-track:a153678cdee8f4967ddb04bc4d31c152adc38fa071bbff915e0528a3098e8ba4` |
| 101 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 500 | `declaration-track:5eb63e25f6db99c169cc90516e58140488c498916c2e88c9c138bd78d7e5a784` |
| 102 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 505 | `declaration-track:bea8111eff7f2a351c07deab127c85e3a0064a0cea3c5a4e38a94a8edcf6159a` |
| 103 | `theorem` | [map_id'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/map-id.md) | 526 | `result-track:27fc39b1ca42543d360e93de88cc22c3ade199c02f87227041de03838926febd` |
| 104 | `theorem` | [bind_some_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/bind-some-right.md) | 530 | `result-track:cb7a3966e63741905c556a8c1983cd4e56182acd64743c29f52634c020690954` |
| 105 | `theorem` | [pure_eq_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/pure-eq-some.md) | 535 | `result-track:c4797a6aed8b175a1783250e473535145c70f57463960540dc08e589fa8c113c` |
| 106 | `theorem` | [ret_eq_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/ret-eq-some.md) | 539 | `result-track:dbfaa6dd1eb981a5d737a347d00421d6e7e52f0c25fcc890bf83993571c7e0ac` |
| 107 | `theorem` | [map_eq_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/map-eq-map.md) | 543 | `result-track:263f53d5258fa7ae4e5f4e0efc13f93e7fa7fa3a80876697d2510e2b6af21ff2` |
| 108 | `theorem` | [bind_eq_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/bind-eq-bind.md) | 547 | `result-track:1c945d7e00ad325b16a82c814e69fbcb3fdf570676fdff5e815c48973ebb76ec` |
| 109 | `theorem` | [bind_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/bind-le.md) | 550 | `result-track:cd292b241d5d74bbb2172a1ed79a9b660707096c38b603bc8a389faf421f8eb8` |
| 110 | `def` | [restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/restrict.md) | 568 | `declaration-track:051d3670ddce1c22b101600734c556ceaa2c991da91e5cc35ee6bfc026c67f5b` |
| 111 | `theorem` | [mem_restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/mem-restrict.md) | 572 | `result-track:b77925aa8a16f26030f2cd9522a8367d8141794e0680c8d7690ac6f28e365a9c` |
| 112 | `def` | [unwrap](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/unwrap.md) | 580 | `declaration-track:fdb3db4510cc71beb498b886fe42cf5e9ed07717791144cd7e2cde8d12980278` |
| 113 | `theorem` | [assert_defined](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/assert-defined.md) | 583 | `result-track:591bb0ee07194209d1a13c1aa9f9aa5a192d9b0103b00223e860daf2ac64bcf2` |
| 114 | `theorem` | [bind_defined](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/bind-defined.md) | 586 | `result-track:8ef3b88032a9d985ec5ae20a2cb0f21f762177eff669ad710f024007ecf09b42` |
| 115 | `theorem` | [bind_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/bind-dom.md) | 591 | `result-track:2c575d56089488a50b722a2720c65eb649f4bc8e30d61c3c02018ac9ce3fa21e` |
| 116 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 604 | `declaration-track:cdc4f20db22e3d19a676040976f142066aab9f84b5789d3ef3a83830a297aa69` |
| 117 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 607 | `declaration-track:cff5f09f0492c6cec6a5757a34f4ef339601ac102c8e871bedf211409f5a16a8` |
| 118 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 610 | `declaration-track:893e8fa1b144396868b673ee9903271dd6b3c3d50dcc1b24aecdf1f2639cbdb4` |
| 119 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/instance.md) | 613 | `declaration-track:0819d7dcc35de60411ae03163d6b46a0580c14cd030a5b6f0b89d1e78079b04a` |
| 120 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/instance-source-edition-16.md) | 615 | `declaration-track:d6628e776c90667edb4650ec8b45654a9293237b2144679672a4e98fa95bcafb` |
| 121 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 617 | `declaration-track:b31c8a7a0380fbaefe9b332eeab22d2d40592eb4d3013f84f06190ce0001d2dd` |
| 122 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 619 | `declaration-track:b74fb790402641ef62a891c2be5840f8b8e29c092f378607e1ba8d79d04437ec` |
| 123 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 621 | `declaration-track:7893235240b1ad0b0ccf67420e73fa9aaa92e9daa48b3ac7a8993c02927fae58` |
| 124 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 623 | `declaration-track:b4a9b08af823acf5e08e08cfbd431bf4e2fa2fc369f53b402594291f7aa95c27` |
| 125 | `theorem` | [mul_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/mul-def.md) | 628 | `result-track:593af07d7f600ebe82b27e7754be4c75c6ac5bde4cbc5c849936ed345415a497` |
| 126 | `theorem` | [one_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/one-def.md) | 631 | `result-track:ecf9b38c881a1cdb7161e33183f2631da39efaf90e6a87bae2d5f08d31cd94db` |
| 127 | `theorem` | [inv_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/inv-def.md) | 634 | `result-track:3ced0f05a8dce960429947893c4670f4994df96b1788115ab92d4ed664d25fed` |
| 128 | `theorem` | [div_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/div-def.md) | 637 | `result-track:4ba56a3ee9e2b0e7d09ccd51dba9f72ac43fc40ac3b304390b95b1a07c59b8ec` |
| 129 | `theorem` | [mod_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/mod-def.md) | 639 | `result-track:cbb342499cf512bda20a9a09f0f6d7017738de6a21ef70add7701cd9a0b9232f` |
| 130 | `theorem` | [append_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/append-def.md) | 640 | `result-track:2a8ad4d395d282c732159307f17d35915d25a9995a90322ab51f68c7d3bf8ebc` |
| 131 | `theorem` | [inter_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/inter-def.md) | 641 | `result-track:36c9e85dc9b0d3ef548dc29151564dff101387208142a623c959b0ac4505ac53` |
| 132 | `theorem` | [union_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/union-def.md) | 642 | `result-track:f2199753eb1d157ba3c6bf0675b85c939300b061ac46a57f3c4107c10da739e6` |
| 133 | `theorem` | [sdiff_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/sdiff-def.md) | 643 | `result-track:d8682b1417fec599807a3020d36460b697941275c4f1af1523603183aef4c676` |
| 134 | `theorem` | [one_mem_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/one-mem-one.md) | 648 | `result-track:e4564a371d435f1a7eb8f7abe685f6b07e8ac4d813558f128a6ba517fea432ac` |
| 135 | `theorem` | [mul_mem_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/mul-mem-mul.md) | 652 | `result-track:e9fb218cfc29c48214241f770a0ae2f9e14247399423ad5c95446acaeb8858c5` |
| 136 | `theorem` | [left_dom_of_mul_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/left-dom-of-mul-dom.md) | 656 | `result-track:eaec50836522c3ca6afe844b6fd61bd75d230181f74296ca16e873e6b27d12f7` |
| 137 | `theorem` | [right_dom_of_mul_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/right-dom-of-mul-dom.md) | 659 | `result-track:cb69f61f0748d7c4c04037475173e052150bdc68336663011600d9b4b450e3d1` |
| 138 | `theorem` | [mul_get_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/mul-get-eq.md) | 662 | `result-track:ce273d34385e45a35ac9bd08b0b0c6f7d076d2f5729ac7b32f1dbedebbee2041` |
| 139 | `theorem` | [some_mul_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/some-mul-some.md) | 666 | `result-track:f561f67d55af35033f5ee8d56493eb4119363fca4a503c5104c0a69ef5e51b08` |
| 140 | `theorem` | [inv_mem_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/inv-mem-inv.md) | 669 | `result-track:736a0021a897c657a99c5d799afb8052cc55775922a7fe9319713e6ac8fbe7c2` |
| 141 | `theorem` | [inv_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/inv-some.md) | 673 | `result-track:1b3c7b24beb4246e957ba32190f9bb414a8fd0440a61697c2857b63374926c2f` |
| 142 | `theorem` | [div_mem_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/div-mem-div.md) | 677 | `result-track:c63b97cf0a5ae169ba8b1ca2fe11c68d8ead0d65dea0e9aeb79f5008119e2361` |
| 143 | `theorem` | [left_dom_of_div_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/left-dom-of-div-dom.md) | 681 | `result-track:f8504b9e4a6d9a0c4e2368de51efd2c5355bd74acac1b5eeebfe107abad6cae0` |
| 144 | `theorem` | [right_dom_of_div_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/right-dom-of-div-dom.md) | 684 | `result-track:7a7cd31969e2c36e064025929cb4fad56f868753018dc3936a767b7b9850a508` |
| 145 | `theorem` | [div_get_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/div-get-eq.md) | 687 | `result-track:b4bd52e65372b49285597d506bc5065e032f5a13761963c5279d98ac6e3bd3ad` |
| 146 | `theorem` | [some_div_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/some-div-some.md) | 692 | `result-track:ba9500e25164baa34aa64c96bf1cb90e5d8084f5e6dba630e6c0b53bd20acbed` |
| 147 | `theorem` | [mod_mem_mod](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/mod-mem-mod.md) | 694 | `result-track:9c2b0ece7dbf2500d7e8d8113b2ab6e39cc486b49f30f4926fb6f3bfd2268b36` |
| 148 | `theorem` | [left_dom_of_mod_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/left-dom-of-mod-dom.md) | 697 | `result-track:9ad3933cf578169d9dd560d8f1f9e8380ea58c0991da32d42b4661117490bb73` |
| 149 | `theorem` | [right_dom_of_mod_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/right-dom-of-mod-dom.md) | 699 | `result-track:d18eb244edd552038fd4f175327ad3ee02aa4ef2b61c4f1131995bee964c325a` |
| 150 | `theorem` | [mod_get_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/mod-get-eq.md) | 702 | `result-track:46d1d489baa6c86eec0646b0ae6e08205b2b25cab1398e16120f65730a99eefd` |
| 151 | `theorem` | [some_mod_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/some-mod-some.md) | 706 | `result-track:f7ef1bab86279c76a4448263b7f6656e950413e6b237a6fa95705e0159425f15` |
| 152 | `theorem` | [append_mem_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/append-mem-append.md) | 708 | `result-track:f435d29fe84c9924ca39eda1032aa5958295993df917f5142c604e6dd0b6150a` |
| 153 | `theorem` | [left_dom_of_append_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/left-dom-of-append-dom.md) | 711 | `result-track:21ca36f9ee4296fc1edc7f2fa5af74b0a80c20162f33a51d9ce10f3dffc11cd7` |
| 154 | `theorem` | [right_dom_of_append_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/right-dom-of-append-dom.md) | 713 | `result-track:367ffbab6793c78ed1b999075f59e2e0eaec956449a8af841f0497d58ffd773e` |
| 155 | `theorem` | [append_get_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/append-get-eq.md) | 716 | `result-track:8afc2642b3763430906d1e352d3c36645217a901fabe2e455248c947a5fb28d5` |
| 156 | `theorem` | [some_append_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/some-append-some.md) | 720 | `result-track:8de6b2518cb86c2b8e7548694b8aba37d012a10ff92fb3c18a55e4dd4227cf3f` |
| 157 | `theorem` | [inter_mem_inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/inter-mem-inter.md) | 723 | `result-track:f6962cf395b86324b713fda348549a9c541915e1ae841cb8ff6be395d245c414` |
| 158 | `theorem` | [left_dom_of_inter_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/left-dom-of-inter-dom.md) | 726 | `result-track:198a26d70e6929ab812b384092536d99beae584b3f78af7be63ebd6bd2872d8c` |
| 159 | `theorem` | [right_dom_of_inter_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/right-dom-of-inter-dom.md) | 728 | `result-track:4b606f5c95fa10db0ab8046d02f5cfc15b65219d7a0afd991e1ea374198b317e` |
| 160 | `theorem` | [inter_get_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/inter-get-eq.md) | 731 | `result-track:afb9e9de4be8f8e64e9e0ffa0c60358e495eb0f0e746ee07d9e4e1059e49d881` |
| 161 | `theorem` | [some_inter_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/some-inter-some.md) | 735 | `result-track:76ff890e635955bf9abf0a776e97438989f35f3c134293f516d9354b4351a647` |
| 162 | `theorem` | [union_mem_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/union-mem-union.md) | 738 | `result-track:0e04ea7f4970216f4e235f65f8fd37b98343be868d1c22a59984fd80e4e1b723` |
| 163 | `theorem` | [left_dom_of_union_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/left-dom-of-union-dom.md) | 741 | `result-track:a3306c06d8059bfb7ec1676606e4dbfe9656bc7055234a0b0cf840a912b2a92a` |
| 164 | `theorem` | [right_dom_of_union_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/right-dom-of-union-dom.md) | 743 | `result-track:314c8171e408cb9a9fb06fb1a751f915f2089399fac3dfab0d46e9cbcf33db34` |
| 165 | `theorem` | [union_get_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/union-get-eq.md) | 746 | `result-track:31c1b5dda2eb8df3a15d902602d785f506c0cfac639ec11ca9ea08cf81163131` |
| 166 | `theorem` | [some_union_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/some-union-some.md) | 750 | `result-track:66c8f0cad5e78d27eb5f156fdebfa55bbbe9d37b773d0675b9add480d0c7f7c9` |
| 167 | `theorem` | [sdiff_mem_sdiff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/sdiff-mem-sdiff.md) | 752 | `result-track:03da74f745fb88c35fb3d5eaf5f526402cb9285fb4a780f251971dc6b7ec773e` |
| 168 | `theorem` | [left_dom_of_sdiff_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/left-dom-of-sdiff-dom.md) | 755 | `result-track:cec095cfbb8c5f2436208cd81e0001b2188b0607707dfdc64610fd3ae0d3f1b3` |
| 169 | `theorem` | [right_dom_of_sdiff_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/right-dom-of-sdiff-dom.md) | 757 | `result-track:1a0576d9366501a338ac3417009c18b79eb8b6d26383b3a5bda4f0db4ecf2795` |
| 170 | `theorem` | [sdiff_get_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/sdiff-get-eq.md) | 760 | `result-track:7791c16d9a425133e4ce1d29ae1b1f602deca3a400e836d93cdef41c0e83f21e` |
| 171 | `theorem` | [some_sdiff_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNamespacedPublic.lean/declarations/some-sdiff-some.md) | 764 | `result-track:c8951e6c284e660a492e4f055c606fe7b0ead25f3ccf352729d4232b971370ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dfebb62f6b27e349213b5e37a2001ec7693b25e6298a51a86f77d0b579582f1d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant1057a348fae2c865662b7ec17933161fa8b71b9ea7e2facf05daceca0eff48ea.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant1057a348fae2c865662b7ec17933161fa8b71b9ea7e2facf05daceca0eff48ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
