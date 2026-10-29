# Verification target: Valuation Subring Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a1dc16d035228ee54f8800c43593ecd83fd59de",
  "lexical_observation_count": 152,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ValuationSubring/Variant8ea01d3177b05deacb4eda7421f2531b08baf96562729bcdb391e2b89b4edaf4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a1dc16d035228ee54f8800c43593ecd83fd59de`.

Source path: `GRWTSK/Algebra/ValuationSubring/Variant8ea01d3177b05deacb4eda7421f2531b08baf96562729bcdb391e2b89b4edaf4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ValuationSubring/Variant8ea01d3177b05deacb4eda7421f2531b08baf96562729bcdb391e2b89b4edaf4.lean.json)

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
| 1 | `structure` | [ValuationSubring](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/valuationsubring.md) | 41 | `declaration-track:0cb6a78db02ef03880105b51bf23ee39534b935625cce0014007ba242997cfe5` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/instance-source-edition-13.md) | 49 | `declaration-track:ee0575a347963d56dc34ce670afc0a27d979addf373d7f38eb2fe5190cf3d95c` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/instance.md) | 56 | `declaration-track:060ddcd30e6e68a5ac990ca02df49fb6dd049a9fe267ff933569a893a76bd240` |
| 4 | `theorem` | [mem_carrier](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/mem-carrier.md) | 58 | `result-track:296d1c4f640167974926fa083d7263880760d71d0da538cdd9776c0c7462b2a3` |
| 5 | `theorem` | [mem_toSubring](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/mem-tosubring.md) | 61 | `result-track:71c638418c0e2423dfa4fe577121b3cc51a4aa8cc1334261dc4fa0993e39cb53` |
| 6 | `theorem` | [ext](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/ext.md) | 64 | `result-track:a7209ffaf63bab844689a071eca77d31db738d1d4173386e726523bfecc92c45` |
| 7 | `theorem` | [zero_mem](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/zero-mem.md) | 66 | `result-track:8a9e141fe26f8776ac82466bddf33234026f33dc2c9d256efe714ab097d3bd37` |
| 8 | `theorem` | [one_mem](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/one-mem.md) | 68 | `result-track:fc326c410d09aa0fd8ff0037249790c9f77bb245792b6f49dca3392696169a99` |
| 9 | `theorem` | [add_mem](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/add-mem.md) | 70 | `result-track:618e6ec59747f3e0535c21dd2447f4c7fdf30973c2149046198bae1f2f06be43` |
| 10 | `theorem` | [mul_mem](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/mul-mem.md) | 72 | `result-track:42a1b5e26583e00785a87b5a5154c43e660b79a4ab8aaff793d0a45f5d395d2e` |
| 11 | `theorem` | [neg_mem](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/neg-mem.md) | 74 | `result-track:89c53d53c29e7bbffa3b305da89279be261bd3d26a2dd511202d1e4789c47a8e` |
| 12 | `theorem` | [mem_or_inv_mem](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/mem-or-inv-mem.md) | 76 | `result-track:750b1a3c72d8b4d3c17610b7ea877a661645bf1a0a7a74bb464f6a31d8027f0d` |
| 13 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/instance-source-edition-10.md) | 78 | `declaration-track:c7e6cbc536192337eb47c5841ed9485c0b45fadb9d5b16fd08a430620c92cdad` |
| 14 | `theorem` | [toSubring_injective](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/tosubring-injective.md) | 85 | `result-track:3b435650a6684fea585645821b2de65c06d38d91a7622e1fdfa30046bca03e99` |
| 15 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/instance-source-edition-14.md) | 88 | `declaration-track:fa2f339d9a1f727d4baa9b4ab79edf744ff0333ccecf85b0b6fd966b14ce1a21` |
| 16 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/instance-source-edition-2.md) | 90 | `declaration-track:0cf9f53aae24b1604336a5c3c05cd1c0f8f50cfb43c7057b2c51e87daaadc19a` |
| 17 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/instance-source-edition-3.md) | 92 | `declaration-track:137d15e7a612035da708a37b0f9d723ab17f84b63107adb8eac4d1a72a4a4ae8` |
| 18 | `theorem` | [toSubring_top](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/tosubring-top.md) | 96 | `result-track:6eeab31cfa43e11855200fea796a6ee9ea4fca5e5e1fe36eade681c35cd18c75` |
| 19 | `theorem` | [mem_top](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/mem-top.md) | 99 | `result-track:2554c8d6e4581dfdd4b0b6226fe7a8bb141de1e5aa338d853785854129091c0e` |
| 20 | `theorem` | [le_top](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/le-top.md) | 102 | `result-track:1c1db7ac7f0e7695319d2af623db614279b1e32fcc7b78974e7d1ece8233bcaa` |
| 21 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/instance-source-edition-11.md) | 106 | `declaration-track:d259649301fdc12e136f04190ff263aa46a1dd5d5fc07df195f89a9fb941fd61` |
| 22 | `theorem` | [top_coe_div](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/top-coe-div.md) | 109 | `result-track:3f6a95c41c9e44e9cb0622dfb345f89f13e4dd83bff0c0c0348a13dce00bfb18` |
| 23 | `theorem` | [top_coe_inv](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/top-coe-inv.md) | 114 | `result-track:9d0e5230de0beecc2689b0699cbe6ed2a08fc7059276edccd7292892211a9310` |
| 24 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/instance-source-edition-12.md) | 118 | `declaration-track:dfce48fbaa9d683a803d7861f23f28ac2929510d3893ea19d455bb3438ec5220` |
| 25 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/instance-source-edition-5.md) | 121 | `declaration-track:44e583993bcd177590f4d874d8634a4e87b82a789f5b08d5b9041b14769aa295` |
| 26 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/instance-source-edition-6.md) | 124 | `declaration-track:65696110b20e16f9e4ea5be68c007cf0c2370fc923f4abd4135b46d8a20341d7` |
| 27 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/instance-source-edition-4.md) | 146 | `declaration-track:343140c675752ccb9e334bcd926dccb7c796650116eade05f3410a7afb17a054` |
| 28 | `instance` | [isLocalRing](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/islocalring.md) | 148 | `declaration-track:1f9dd76959b60f30e91338e098f34431567d4bcf849f8fb71d660dc304f9344c` |
| 29 | `theorem` | [algebraMap_apply](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/algebramap-apply.md) | 151 | `result-track:b1f165bd0e4b7cf706eb524aedb3985c0593286df20de7798909f6034c29b88e` |
| 30 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/instance-source-edition-9.md) | 153 | `declaration-track:c617bcf2af91aa7eccecf85cf9c8a2659dff395e3b496825ec1f1246e24ad4d3` |
| 31 | `def` | [ValueGroup](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/valuegroup.md) | 165 | `declaration-track:c0b2420961d28d5c5adc84060542dc7161ed2574a3f970184cdda04347ddb20f` |
| 32 | `def` | [valuation](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/valuation.md) | 170 | `declaration-track:73f95de268881de0a2bdc2d04ac53b081c3b4caff8a63b2520fcbbe0b4edceac` |
| 33 | `instance` | [inhabitedValueGroup](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/inhabitedvaluegroup.md) | 173 | `declaration-track:3f44d56044358c5e8be427d59c6221f5068b15059e842a57665b8ec668be7e26` |
| 34 | `theorem` | [valuation_le_one](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/valuation-le-one.md) | 175 | `result-track:e8fc6090180aab06f5bdfda1773184c9ce176a449a5b28c3ad3b2e49712117b9` |
| 35 | `theorem` | [mem_of_valuation_le_one](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/mem-of-valuation-le-one.md) | 178 | `result-track:a3e9469a8e9afb086a5e57993ecec2bad77769b3d0768c505e3af3efb82b566f` |
| 36 | `theorem` | [valuation_le_one_iff](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/valuation-le-one-iff.md) | 183 | `result-track:ad90c926800f39978c4af42f03c097f273177c061db40995e573a3b96c96f8fa` |
| 37 | `theorem` | [valuation_eq_iff](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/valuation-eq-iff.md) | 186 | `result-track:97bf444a05b40f3337c7adfc2c529a6b0e7dbf668abcf9a43c38387b1a6331bb` |
| 38 | `theorem` | [valuation_le_iff](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/valuation-le-iff.md) | 189 | `result-track:c48be9a75b27f013344e7e867428c06d8238eab5774372816e8462fd67768e18` |
| 39 | `theorem` | [valuation_surjective](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/valuation-surjective.md) | 192 | `result-track:ff8213ca72756c42a1d21b6ef4bb0ceb79c6239ef7b130710289d8c5e2b9c4cd` |
| 40 | `theorem` | [valuation_unit](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/valuation-unit.md) | 195 | `result-track:0a5f37dd986141c1928b9529df3663bf430c20fc93ffc907c00a1d2b7b758c03` |
| 41 | `theorem` | [valuation_eq_one_iff](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/valuation-eq-one-iff.md) | 198 | `result-track:274551907ca5e36ab063138ede122436751f28da0101407c0e79d3b7feffcf9a` |
| 42 | `theorem` | [eq_top_iff](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/eq-top-iff.md) | 210 | `result-track:8de38c1dedf9c60e089d7173597de6fe6fb21b0f0c4e830720a6f32f81b30121` |
| 43 | `theorem` | [valuation_lt_one_or_eq_one](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/valuation-lt-one-or-eq-one.md) | 213 | `result-track:7853302eef17010f8f4388a772f354fb75738540df7970b937e562a31c24f349` |
| 44 | `theorem` | [valuation_lt_one_iff](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/valuation-lt-one-iff.md) | 216 | `result-track:5a3ece6c378777fb1be78c615db5bd85967186eff289cf7ee74e033dc89814ef` |
| 45 | `def` | [ofSubring](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/ofsubring.md) | 223 | `declaration-track:4dfcd40d7987bd68581060809ad47e049638b09afefda320a88eaf0e01c78634` |
| 46 | `theorem` | [ofSubring_toSubring](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/ofsubring-tosubring.md) | 227 | `result-track:ee2bad9203b71ce81c78ae5f6376ed376966d9c251699169a20c56f32a56cc59` |
| 47 | `theorem` | [mem_ofSubring](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/mem-ofsubring.md) | 231 | `result-track:50c0714c6ab17708f0003dbd01ff0f77319e2c264d36f382c329230911adf4a6` |
| 48 | `def` | [ofLE](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/ofle.md) | 236 | `declaration-track:91f203363f2d48315f7bddefaafb172b71b4d9769340bd0dffed0800b644aefe` |
| 49 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/instance-source-edition-8.md) | 241 | `declaration-track:8135eb46820b07b4bb1eeb06934cec288fcac6cc6e0a8b0c70c50ff11b4a8ebb` |
| 50 | `def` | [inclusion](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/inclusion.md) | 249 | `declaration-track:1e1fed5783d5693c77b4e407cb384f90986b064856bb9213d1b69fcd7720882b` |
| 51 | `def` | [subtype](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/subtype.md) | 253 | `declaration-track:b8a79589b4867e710fc3fb0759140677e69ddb80b1405e437886e84a955327b2` |
| 52 | `lemma` | [subtype_apply](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/subtype-apply.md) | 257 | `result-track:fb6b6ffd8f898b347081d8f36fa5893a484eb8248553eb0ca599f482517a001c` |
| 53 | `lemma` | [subtype_injective](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/subtype-injective.md) | 260 | `result-track:5e43b3c4daa8fadf2232bff3b4d69550335b6d004ac14c29b8a43da4ab1767a4` |
| 54 | `theorem` | [coe_subtype](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/coe-subtype.md) | 265 | `result-track:19a65fc5ad6c0b3980f399dacb9e7a418d7dc87659d6dace91b81d669a029491` |
| 55 | `def` | [mapOfLE](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/mapofle.md) | 269 | `declaration-track:e3ced0e315d9b15ea8e66033fbc02fa24d9c66d3e82950191c4f8d5be1f637b8` |
| 56 | `theorem` | [monotone_mapOfLE](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/monotone-mapofle.md) | 276 | `result-track:d27ebe0a8658ddb1d91d292c159b2b8ea2b02709b452b11aab8e1ab60a847714` |
| 57 | `theorem` | [mapOfLE_comp_valuation](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/mapofle-comp-valuation.md) | 280 | `result-track:d95bf5cb917e386c0b408ed29831207ccb06855deb8117819782376e7dd5c262` |
| 58 | `theorem` | [mapOfLE_valuation_apply](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/mapofle-valuation-apply.md) | 284 | `result-track:2211b0848fcf8c4b348a99d5ca7e3f156d578dc0914412b24c13a370a3da8f33` |
| 59 | `def` | [idealOfLE](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/idealofle.md) | 288 | `declaration-track:c0b8b55aea9a364f5cb1b7cee9c7f627aa9d69c3e3d5e748154809ebbde39697` |
| 60 | `theorem` | [idealOfLE_self](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/idealofle-self.md) | 291 | `result-track:4ca4dbf9b110129ef0b73539821317c1bd77ac936cf1a8b74842b3fd1306d892` |
| 61 | `theorem` | [idealOfLE_top](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/idealofle-top.md) | 294 | `result-track:218868a301b1f532dee6e426e2ffa70f435bf1edcf9d3a87a339ce701fffca9d` |
| 62 | `instance` | [prime_idealOfLE](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/prime-idealofle.md) | 298 | `declaration-track:7621f05bbc4a25684e5d745ac90fb358c7bf8384f89c0a8ed1e4a1c49ed5c283` |
| 63 | `def` | [ofPrime](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/ofprime.md) | 302 | `declaration-track:18e6ed1d64c61ad21bc8c2ab2527e027398203a9b40cc3739e55e52e0cce0274` |
| 64 | `instance` | [ofPrimeAlgebra](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/ofprimealgebra.md) | 308 | `declaration-track:360d711443df7817ab4581068cdfc8cd2d93e19849bde57c502d1206cc2cde5a` |
| 65 | `instance` | [ofPrime_scalar_tower](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/ofprime-scalar-tower.md) | 312 | `declaration-track:381d84a3e8a6dacc10fd513afd9036e0266b649a7ebad9c6e4dc7134e7a1b20e` |
| 66 | `instance` | [ofPrime_localization](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/ofprime-localization.md) | 318 | `declaration-track:e7ee93d31dba5adc160d9a56e1b13693d463573a9dfbd58ebbf8f14927200ab3` |
| 67 | `theorem` | [le_ofPrime](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/le-ofprime.md) | 323 | `result-track:965b343f16fee2fd9824cbe59a6fe4a1062c267b275bd44a71d7ad1d1ec73c85` |
| 68 | `theorem` | [ofPrime_valuation_eq_one_iff_mem_primeCompl](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/ofprime-valuation-eq-one-iff-mem-primecompl.md) | 326 | `result-track:0c92d69e0acd6a03ec9a35fe0b85e5693727f38a2d43109e8f427bff2e56a812` |
| 69 | `theorem` | [idealOfLE_ofPrime](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/idealofle-ofprime.md) | 331 | `result-track:1c691fecfa50f7f79f7661638ffd12ab96849e6c9bc7ef4ca815d618c418aef3` |
| 70 | `theorem` | [ofPrime_idealOfLE](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/ofprime-idealofle.md) | 338 | `result-track:ffeb55f6e4c55daba7d83a3aead2c9f36352d39b398144d8f305d2a123dffc59` |
| 71 | `theorem` | [ofPrime_bot](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/ofprime-bot.md) | 360 | `result-track:f318697c108cdd403e90ff0e044b4be0bf34969278e54a484d6c3eaf2a12e0b3` |
| 72 | `theorem` | [ofPrime_top](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/ofprime-top.md) | 363 | `result-track:3a3642db6ff05e53649f485d40f8e1e6a056de794976fe962baeb98835a1c32d` |
| 73 | `theorem` | [ofPrime_le_of_le](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/ofprime-le-of-le.md) | 365 | `result-track:332f00a39de63fd79a80d2886bc4ac8ac7cec4a4b1ac54f7550b29aaceaa1454` |
| 74 | `theorem` | [idealOfLE_le_of_le](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/idealofle-le-of-le.md) | 368 | `result-track:b2b843fcbddd23a12966736fa992118160ce09a7a00176089a7d40fd2f780e78` |
| 75 | `def` | [primeSpectrumEquiv](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/primespectrumequiv.md) | 378 | `declaration-track:07b1e779c3c150064078685a9a9748839a1e1b9c94c44b93b011741d2e229afb` |
| 76 | `def` | [primeSpectrumOrderEquiv](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/primespectrumorderequiv.md) | 386 | `declaration-track:8d51ea697c9e6c338abc3d604d2d34612f9cbcc87a697593081866bbfdde7be9` |
| 77 | `instance` | [le_total_ideal](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/le-total-ideal.md) | 394 | `declaration-track:48216b62e0c81298a4779db87d8869e7d3d105aa35be9151d4b4198310674ef0` |
| 78 | `instance` | [linearOrderOverring](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/linearorderoverring.md) | 400 | `declaration-track:9c7d94c40a729666a5fc7b273b676a5dc6b5dbccf0d2c0e330db0a8ae614d465` |
| 79 | `theorem` | [eq_self_or_eq_top_of_le](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/eq-self-or-eq-top-of-le.md) | 410 | `result-track:466b6b889d32ab80fe95042ab68eeae6c23b56b71e8ea7bf70015d2b57d3de82` |
| 80 | `theorem` | [eq_of_le_of_ne_top](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/eq-of-le-of-ne-top.md) | 416 | `result-track:40347383ffd725d047b6e6b7d51086982e377312122f79b7cb9fb3fd8c34f651` |
| 81 | `theorem` | [eq_of_le_of_ne_self](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/eq-of-le-of-ne-self.md) | 419 | `result-track:5e1400124ce2709e65ef0e72e0d92cd881a9e1ca342da8325a1a66a682b5d3bb` |
| 82 | `theorem` | [eq_of_lt](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/eq-of-lt.md) | 422 | `result-track:ae218a52b83b0875195d398aa7931cfaffe05d4ed0092d83bad03de0ad3c3296` |
| 83 | `def` | [valuationSubring](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/valuationsubring-source-edition-2.md) | 440 | `declaration-track:ca4e2ed9bce0d6747820714eacb051a7fa6dee94d0b0aecbd7ee25d2003dd84c` |
| 84 | `theorem` | [mem_valuationSubring_iff](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/mem-valuationsubring-iff.md) | 448 | `result-track:b65af4852886a6f42821de94bf5dd16072c4a4ce44c2dc9ad6910225f5752e42` |
| 85 | `theorem` | [isEquiv_iff_valuationSubring](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/isequiv-iff-valuationsubring.md) | 450 | `result-track:75efac454dae9d621554144e3ffb8ddd1d223cc35634c00aeeed1a7cc20a1225` |
| 86 | `theorem` | [isEquiv_valuation_valuationSubring](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/isequiv-valuation-valuationsubring.md) | 459 | `result-track:c9a0f5ff25d75a3635fedab749242fd845cec97013e9c40736f0196cae6c52da` |
| 87 | `theorem` | [isNontrivial_valuation_valuationSubring_iff](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/isnontrivial-valuation-valuationsubring-iff.md) | 465 | `result-track:207e3a9d1c915d7e849542201d4e9ccb09bb2571899b811c4087174e54190156` |
| 88 | `lemma` | [valuationSubring.integers](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/valuationsubring-integers.md) | 469 | `result-track:5977d1ce72769d735734b41094f27478e886f644ea8b037a8904a4341e90298d` |
| 89 | `theorem` | [valuationSubring_eq_top_iff](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/valuationsubring-eq-top-iff.md) | 473 | `result-track:04cbdcc7762bf8102094794adaa8b5f9c140044b62feddf7f52bce481a7026cc` |
| 90 | `theorem` | [valuationSubring_valuation](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/valuationsubring-valuation.md) | 484 | `result-track:a3e4b103213c3e366c93946c05d11c59e99c47f0e63c7a57e45b860510a501af` |
| 91 | `theorem` | [integer_valuation](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/integer-valuation.md) | 487 | `result-track:a5802fa10f3b0c7e20198d7beb5c74e66f99a7a744644707989af88535763c94` |
| 92 | `def` | [unitGroup](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/unitgroup.md) | 493 | `declaration-track:cc4acc65ec8eeeb745c936d56b383dd65ecb69d5a2565199b149d047760eabaa` |
| 93 | `theorem` | [mem_unitGroup_iff](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/mem-unitgroup-iff.md) | 497 | `result-track:0af7113cb1106fe5819a23076d4dc6534154594c3f87ab64872da4605d497ff6` |
| 94 | `def` | [unitGroupMulEquiv](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/unitgroupmulequiv.md) | 500 | `declaration-track:760becf02468a9420748de81f1ff70527617bbed9025ec62f0c6355631cf1f8c` |
| 95 | `theorem` | [coe_unitGroupMulEquiv_apply](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/coe-unitgroupmulequiv-apply.md) | 510 | `result-track:83bbec3f080934364ad912fa50860138bc449188486bf988c9aa3b428d0d2a10` |
| 96 | `theorem` | [coe_unitGroupMulEquiv_symm_apply](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/coe-unitgroupmulequiv-symm-apply.md) | 514 | `result-track:d96445b4c0478f1d81c5eb3bd9138d5a1a4bdb3869a28647741abf85a4b15228` |
| 97 | `theorem` | [unitGroup_le_unitGroup](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/unitgroup-le-unitgroup.md) | 517 | `result-track:8542f2fe2dd38e634ffd78e8205a8df05d75c70c231f1d8e42c6b2f2de39c639` |
| 98 | `theorem` | [unitGroup_injective](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/unitgroup-injective.md) | 535 | `result-track:788751e6d24a154264562c9d3e5f9e279121f88dd0fcf450c75c8198cf2a7c2d` |
| 99 | `theorem` | [eq_iff_unitGroup](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/eq-iff-unitgroup.md) | 538 | `result-track:4cfa001a52d71e25ad0c098a8c49c1b66047aff7b9463b518df288bfb78c1163` |
| 100 | `def` | [unitGroupOrderEmbedding](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/unitgrouporderembedding.md) | 542 | `declaration-track:ce843c6818b5b822905ba18463ca0ab978bf8bc4daf7bfdc5ebbc79e7197891e` |
| 101 | `theorem` | [unitGroup_strictMono](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/unitgroup-strictmono.md) | 547 | `result-track:3e6f7a5a454b2372c313ef14db78c7429f52b9bc9d0640b6d6f7e465d3a5160c` |
| 102 | `def` | [nonunits](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/nonunits.md) | 555 | `declaration-track:7a282c17168ee86410c1b506a9974ab7963ea88460f9a45c468a2f42ce1904d2` |
| 103 | `theorem` | [mem_nonunits_iff](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/mem-nonunits-iff.md) | 563 | `result-track:59d7ec3d3df53bfee676012a39452f4019a7b92ebf9a2006b6da6d0462da6793` |
| 104 | `theorem` | [mem_nonunits_iff_or](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/mem-nonunits-iff-or.md) | 566 | `result-track:168e17fe1edac9e85db22e22a24e8d3f170a1e99b9fb0881685448e5678544e2` |
| 105 | `theorem` | [inv_mem_nonunits_iff](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/inv-mem-nonunits-iff.md) | 572 | `result-track:8823c065a3e94d23c9f9b47459bdf44a983ebddd56d53e9875b3c91af5f6b7f7` |
| 106 | `theorem` | [nonunits_le_nonunits](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/nonunits-le-nonunits.md) | 575 | `result-track:f2e07bac50a17774119483b679a5f121100a20c3726f8c52c23da18494b91a35` |
| 107 | `theorem` | [nonunits_injective](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/nonunits-injective.md) | 584 | `result-track:40cf0396ab9ab7441565efad6d21045b1d2d8fd34ec1e052f3ed0c910483634d` |
| 108 | `theorem` | [nonunits_inj](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/nonunits-inj.md) | 588 | `result-track:109285ef240e3e18d5c0879eca6bcc492c0c2e6b4fb85bfa36fc3141b8c34ddf` |
| 109 | `def` | [nonunitsOrderEmbedding](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/nonunitsorderembedding.md) | 592 | `declaration-track:d536ac835d5027b6c6c8087b44678c82e0b7435b0e5b3c84fde71b0400ceab58` |
| 110 | `theorem` | [coe_mem_nonunits_iff](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/coe-mem-nonunits-iff.md) | 604 | `result-track:c70fb2e1768130404cef44765987aa4296441938bec21016cca6f0c7fe09e3bc` |
| 111 | `theorem` | [nonunits_le](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/nonunits-le.md) | 607 | `result-track:772e3c75db86803e1f5d862d61fa0ac71a426819ceee874cece7da38e23b2b57` |
| 112 | `theorem` | [nonunits_subset](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/nonunits-subset.md) | 610 | `result-track:441e56e79d5361385986af0a4c52a5b8f00ea47b8655142cecdbd89722693408` |
| 113 | `theorem` | [mem_nonunits_iff_exists_mem_maximalIdeal](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/mem-nonunits-iff-exists-mem-maximalideal.md) | 618 | `result-track:d9d28367e3a6caf9d6e71c1d7cc4fa96acab5bea9a37e5cc1525427eb8fa3327` |
| 114 | `theorem` | [image_maximalIdeal](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/image-maximalideal.md) | 624 | `result-track:02bcec2d9dc86ab617c20eca3d4f827782f2a930cdcfc6a41a7e118591166836` |
| 115 | `def` | [principalUnitGroup](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/principalunitgroup.md) | 635 | `declaration-track:4c20c89299784ec292fe9b201691da8ebc2bcadd6438cf8ef93e7ec8317be616` |
| 116 | `theorem` | [principal_units_le_units](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/principal-units-le-units.md) | 654 | `result-track:ce9adcf035f8b797c91a797982bbf39795d5ab6526bb0687b09aa08585050ccb` |
| 117 | `theorem` | [mem_principalUnitGroup_iff](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/mem-principalunitgroup-iff.md) | 657 | `result-track:a9cd721a488140c6fa63747d08554752d223b982f4ead336db311d2684a5bcc5` |
| 118 | `theorem` | [principalUnitGroup_le_principalUnitGroup](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/principalunitgroup-le-principalunitgroup.md) | 661 | `result-track:1e71450dc607036ac83a987c9b0d16b0c5dc860fc8cac238f3f5805496536af0` |
| 119 | `theorem` | [principalUnitGroup_injective](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/principalunitgroup-injective.md) | 675 | `result-track:bc234a9961cda37e59590219540fcc883de36581747b60ed177ddfe708125c69` |
| 120 | `theorem` | [eq_iff_principalUnitGroup](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/eq-iff-principalunitgroup.md) | 679 | `result-track:81140a991b5e4d4cb7e06cee748e4326154c79ba156e0e6b2507c567aded411e` |
| 121 | `def` | [principalUnitGroupOrderEmbedding](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/principalunitgrouporderembedding.md) | 684 | `declaration-track:2c8819b0ea9e57b3b2db41d7ccf86751bce9877b263f58eee48fb6e4b1e188de` |
| 122 | `theorem` | [coe_mem_principalUnitGroup_iff](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/coe-mem-principalunitgroup-iff.md) | 689 | `result-track:2589f21465c8b9b4c04af3ec92f1e2c6ed36970c4e0a26eb7588494d5a497526` |
| 123 | `def` | [principalUnitGroupEquiv](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/principalunitgroupequiv.md) | 700 | `declaration-track:043faf016dd5263742b605cc38dee3d362425753d11e4c49e0b8bd67bc61cccf` |
| 124 | `theorem` | [principalUnitGroupEquiv_apply](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/principalunitgroupequiv-apply.md) | 713 | `result-track:a92b93e9aae0d3f36f64150a17ffd3e251215ea28dcb8618e192d5c9a2bbd65c` |
| 125 | `theorem` | [principalUnitGroup_symm_apply](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/principalunitgroup-symm-apply.md) | 717 | `result-track:710b536ee2796fdcd2e90d38120220c5d06bd583ee147a2bb61d59c9bc434c25` |
| 126 | `def` | [unitGroupToResidueFieldUnits](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/unitgrouptoresiduefieldunits.md) | 722 | `declaration-track:48172dadbde191036e807a193f3a2c0c630c9f799a9e09707ee2f4990682fc30` |
| 127 | `theorem` | [coe_unitGroupToResidueFieldUnits_apply](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/coe-unitgrouptoresiduefieldunits-apply.md) | 726 | `result-track:53f3e7b7cd64f1c10cec9e76159efc8370cdeb534bdc967f092cddf486d7e399` |
| 128 | `theorem` | [ker_unitGroupToResidueFieldUnits](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/ker-unitgrouptoresiduefieldunits.md) | 731 | `result-track:7f2e97ee2f99e71c8014757b1946e47e3cdbb36f7c1b3e5c8ace079c6f755d6e` |
| 129 | `theorem` | [surjective_unitGroupToResidueFieldUnits](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/surjective-unitgrouptoresiduefieldunits.md) | 739 | `result-track:31672a584cf4bccfd104600b907c5809cd634f4c78c911b3a4532841b074cdd9` |
| 130 | `def` | [unitsModPrincipalUnitsEquivResidueFieldUnits](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/unitsmodprincipalunitsequivresiduefieldunits.md) | 746 | `declaration-track:b49e5fb45378ca3d9829f3e718b06928eccde8080d5452b04d06f4aa1d750f8f` |
| 131 | `theorem` | [unitsModPrincipalUnitsEquivResidueFieldUnits_comp_quotientGroup_mk](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/unitsmodprincipalunitsequivresiduefieldunits-comp-quotientgroup-mk.md) | 751 | `result-track:b25a4c4608afdcf47bdb7ac65ac4f27575a0150e332b3616e70e0594760511ab` |
| 132 | `theorem` | [unitsModPrincipalUnitsEquivResidueFieldUnits_comp_quotientGroup_mk_apply](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/unitsmodprincipalunitsequivresiduefieldunits-comp-quotientgroup-mk-apply.md) | 757 | `result-track:955a04368ea5513e2aa5b67ced38d7f9bf2c8668bd27b8b6ee5206cf5b84d548` |
| 133 | `def` | [pointwiseHasSMul](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/pointwisehassmul.md) | 786 | `declaration-track:cef709cecc87440e5696b99fd96a175c05abb9d95158323c87a8da34981f319d` |
| 134 | `theorem` | [coe_pointwise_smul](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/coe-pointwise-smul.md) | 798 | `result-track:d209e8be13c8fa2b1ebaeee733f3486bb2b31acfaf0d825825b4e2c87a1a06fb` |
| 135 | `theorem` | [pointwise_smul_toSubring](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/pointwise-smul-tosubring.md) | 801 | `result-track:56d4b2cadabc7c49991baf49145f4bddfe22a18dc23566ef17e5b5dafd1f94af` |
| 136 | `def` | [pointwiseMulAction](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/pointwisemulaction.md) | 810 | `declaration-track:7c946a64ee3a920d26e4680dc1fae0b2fa90e0aa136d91a83ef6ab5ada5e0332` |
| 137 | `theorem` | [smul_mem_pointwise_smul](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/smul-mem-pointwise-smul.md) | 817 | `result-track:a3fc01dae0b8ff4a8a32ae47a5ea10451f9f88e654ee0b069ac444468b806f1f` |
| 138 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/instance-source-edition-7.md) | 820 | `declaration-track:662ca3248e37abed1d6ac27f72722317187d4fdba7db25449e53449fab9e3155` |
| 139 | `theorem` | [mem_smul_pointwise_iff_exists](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/mem-smul-pointwise-iff-exists.md) | 823 | `result-track:fd54ae4d5231ee20852a4f35b4c8e2fa92ef042f9ddd41e0013f353acc4b6c2a` |
| 140 | `instance` | [pointwise_central_scalar](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/pointwise-central-scalar.md) | 827 | `declaration-track:17a43f6eb6673fb0ca1afca76ef5d60b1e3004645364fb180cb15922a75e5787` |
| 141 | `theorem` | [smul_mem_pointwise_smul_iff](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/smul-mem-pointwise-smul-iff.md) | 832 | `result-track:b7c42a5bb48bd8af7e9199809d320147a4376548f6bdf630ca1734fcc1b6836e` |
| 142 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem.md) | 835 | `result-track:93281603ff4226e2065b24af1e1f7b09d3413e4373ce3bf93de405933dacaee6` |
| 143 | `theorem` | [mem_inv_pointwise_smul_iff](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/mem-inv-pointwise-smul-iff.md) | 838 | `result-track:1ad2e8261bf614fc0b5c1719ed41f3a755f2c05e896f3e2b7979bd95d2ec28f4` |
| 144 | `theorem` | [pointwise_smul_le_pointwise_smul_iff](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/pointwise-smul-le-pointwise-smul-iff.md) | 842 | `result-track:7d56757698903aff2f40087258333229bea492dd65836fb322ade0b3ee2dbad7` |
| 145 | `theorem` | [pointwise_smul_subset_iff](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/pointwise-smul-subset-iff.md) | 845 | `result-track:748f53f3693577090ed3e16cde9251fc70e4805ef0a94147ffb5382ca43d31ec` |
| 146 | `theorem` | [subset_pointwise_smul_iff](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/subset-pointwise-smul-iff.md) | 848 | `result-track:2c473a72f83aa90777dba8c0b3101a353f946c30966c6cc16d9a7d5f0442c743` |
| 147 | `def` | [comap](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/comap.md) | 858 | `declaration-track:9d21a1795655e5737b7872e9fbac79cdabbf53175c5aa8c28f1abb79a17134e7` |
| 148 | `theorem` | [coe_comap](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/coe-comap.md) | 862 | `result-track:b8630181f85c47c50f431374caed26017ad0668f57763d24a458eaf491f13165` |
| 149 | `theorem` | [mem_comap](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/mem-comap.md) | 865 | `result-track:b00f023af93a1f6414b669d27d66c53b1ec0a78616877609d0b845837f057b7f` |
| 150 | `theorem` | [comap_comap](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/comap-comap.md) | 868 | `result-track:f244a0d6bb4259b61660782342f10cb2440d73905dea50c0c47ba4a215f56ef2` |
| 151 | `theorem` | [mem_unitGroup_iff](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/mem-unitgroup-iff-source-edition-2.md) | 879 | `result-track:90f99e60436d2c6d76eb94da6b3149dbc9556ac31175a0a0391950b25a369fc5` |
| 152 | `theorem` | [mem_maximalIdeal_iff](../../../../CommutativeAlgebra/ValuationSubringPublic.lean/declarations/mem-maximalideal-iff.md) | 882 | `result-track:02e84b23f34ba507952c0d4fd6e568875af7d4816a88de4b9a689313d029dc5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f3ca1baa51963ded140498d455e2fa460ec8a167122185206c6953b77bb943b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/ValuationSubring/Variant8ea01d3177b05deacb4eda7421f2531b08baf96562729bcdb391e2b89b4edaf4.lean","GRWTSK/_verification/specifications/Algebra/ValuationSubring/Variant8ea01d3177b05deacb4eda7421f2531b08baf96562729bcdb391e2b89b4edaf4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
