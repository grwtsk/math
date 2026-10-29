# Verification target: Ideal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ad3931d2343e472abed14022abdd8cbff5662fd",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Ideal/Variantc7af1a3fa53b6337299479675161decd7b56f046f7670cf86926f2cb2a9676ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ad3931d2343e472abed14022abdd8cbff5662fd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Ideal/Variantc7af1a3fa53b6337299479675161decd7b56f046f7670cf86926f2cb2a9676ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Ideal/Variantc7af1a3fa53b6337299479675161decd7b56f046f7670cf86926f2cb2a9676ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Submodule` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LieIdeal](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/lieideal.md) | 42 | `declaration-track:c2cac6fbfd6286853270b02e994a1186a19682a505d37d4e07962f51a9748351` |
| 2 | `theorem` | [lie_mem_right](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/lie-mem-right.md) | 45 | `result-track:c05cb3fd6a0706000587d7c2f4cea1c346f0475341ebd9057cdf265192177fa3` |
| 3 | `theorem` | [lie_mem_left](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/lie-mem-left.md) | 48 | `result-track:4fde1c34137c6abb1be18d2db54deb7bf2bb017de8a0db279d464678c048233c` |
| 4 | `def` | [LieIdeal.toLieSubalgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/lieideal-toliesubalgebra.md) | 52 | `declaration-track:4d59149c89000b8e0241578bd11afece073e20f9a0bd8e931bea20844bf69f79` |
| 5 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/instance-source-edition-3.md) | 57 | `declaration-track:98a8711da7f261366804d621df5a6b6dfde68d420bb14ceaf84ae5c6b9837d74` |
| 6 | `theorem` | [LieIdeal.coe_toLieSubalgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/lieideal-coe-toliesubalgebra.md) | 61 | `result-track:1455ef6f5a31a9d10f7a1884a887dd3bfbf10e25bc644daea42dd01c7863ce2a` |
| 7 | `theorem` | [LieIdeal.toLieSubalgebra_toSubmodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/lieideal-toliesubalgebra-tosubmodule.md) | 68 | `result-track:3b8099878f4576bd5e19ead5a7d83e259b680cbf9a843b95387b0daa1ed9a0d4` |
| 8 | `instance` | [LieIdeal.lieRing](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/lieideal-liering.md) | 79 | `declaration-track:7514e8ffe974a5fadaf784bf9850f0f47249d9a6a907a7c75b7fb2b7de02ad7b` |
| 9 | `instance` | [LieIdeal.lieAlgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/lieideal-liealgebra.md) | 83 | `declaration-track:0edf99d9a096716d06fbd873e3c7422b6632576a910e70926524c9286205b110` |
| 10 | `instance` | [LieIdeal.lieRingModule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/lieideal-lieringmodule.md) | 87 | `declaration-track:cf4b15db1833c2207dff051454357cf61487a654b57dd9c4214bcda55cf09d01` |
| 11 | `theorem` | [LieIdeal.coe_bracket_of_module](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/lieideal-coe-bracket-of-module.md) | 92 | `result-track:f5765c07d7299243d5b72b723c1fed69c4e3d874033a2c0902607d4f42f336b5` |
| 12 | `instance` | [LieIdeal.lieModule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/lieideal-liemodule.md) | 98 | `declaration-track:d916a22ccf72c4837331d9e93e67e0cf646ec39e69dee081405f43a3bba3a3f8` |
| 13 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/instance-source-edition-2.md) | 101 | `declaration-track:82d22a0cd4690286e8257aa091860e217ef2f9d5f73ccfdf03b2db0405cdccc3` |
| 14 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/instance.md) | 104 | `declaration-track:474c5e4d463b8926c0a06eaa7e0f9101dd65ad1d97ac4508e4609c63085805a8` |
| 15 | `theorem` | [exists_lieIdeal_coe_eq_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/exists-lieideal-coe-eq-iff.md) | 115 | `result-track:cab12e0b478cff97fd14be9dc865d49259e9c1969d04d6a4a937a90815b57f5b` |
| 16 | `theorem` | [exists_nested_lieIdeal_coe_eq_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/exists-nested-lieideal-coe-eq-iff.md) | 120 | `result-track:fd8edd598f53287ce870e0740beaef920337a54528c9dacc8840c7057d0a4d63` |
| 17 | `theorem` | [top_toLieSubalgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/top-toliesubalgebra.md) | 144 | `result-track:57ffb1287bbb83e4215c74cfa4db127f97838666b5a1572ab3cefc4b870c77c1` |
| 18 | `def` | [map](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/map.md) | 154 | `declaration-track:1a9e51a62b6eb851d1f021242a5f4b2557106965142c737cf1c04f220ca54e12` |
| 19 | `def` | [comap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/comap.md) | 161 | `declaration-track:6307959bb958ef4f48e28bcc1344d42ad854cf0c9e82b3a37c01f92e15c181c4` |
| 20 | `theorem` | [map_toSubmodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/map-tosubmodule.md) | 172 | `result-track:be261ca65fdb7f1a48bced8be23146712ab9d445d610e3b90a6f95bc5d7e823b` |
| 21 | `theorem` | [comap_toSubmodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/comap-tosubmodule.md) | 179 | `result-track:e0da555937c36879a3120104f0bcad7863e1cc849dd173f8d857eccea8adb014` |
| 22 | `theorem` | [map_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/map-le.md) | 185 | `result-track:9c250d38dc6c22327a8610c4322443933fb039beba8a4e20535f0cb248e6be60` |
| 23 | `theorem` | [mem_map](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/mem-map.md) | 190 | `result-track:35df95c7734d63033e312fd3b09238987e23a21464bdf9e0f74e16b9ed9c4b3a` |
| 24 | `theorem` | [mem_comap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/mem-comap.md) | 196 | `result-track:eb63f444e907e67677c388f67997229e236982d9bee07980bcaa22a83c1cc9ec` |
| 25 | `theorem` | [map_le_iff_le_comap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/map-le-iff-le-comap.md) | 199 | `result-track:12be345338e36a97b0c412a55ee6de48ec561c0802fcb7ce6e25bea1051a9852` |
| 26 | `theorem` | [gc_map_comap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/gc-map-comap.md) | 204 | `result-track:b5695d9e208fb657bd2737a7dae58e53aab5ea85ab967f83893ec0e7f7c7c94d` |
| 27 | `theorem` | [map_sup](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/map-sup.md) | 207 | `result-track:d85c7b1ae9b8a07d580c45af5823b80a9a3328b45cdd42c946264785cae726e0` |
| 28 | `theorem` | [map_comap_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/map-comap-le.md) | 210 | `result-track:7cf0f7fca0e0d08394d1e82484a6a8eb1e40774f77fe65a4482c995c0d8d27ea` |
| 29 | `theorem` | [comap_map_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/comap-map-le.md) | 213 | `result-track:ef9d3063862cf21eb240db3a3e2d5a9cb088ca5fd2dec8ee6cf1488c08f62dc7` |
| 30 | `theorem` | [map_mono](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/map-mono.md) | 216 | `result-track:0e3ec568dba69e268049d30a15c8725318b6ec1f1a361f97c7a9b7952bbe99df` |
| 31 | `theorem` | [comap_mono](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/comap-mono.md) | 221 | `result-track:e08812e67f2f8d76008c886c7491abecd5d53ef24e9473e7d718d2a8736f8be7` |
| 32 | `theorem` | [map_of_image](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/map-of-image.md) | 226 | `result-track:9812ae07310276d1727741a1ec47e424b065c1f8d4c36fcaea039f4e0db72790` |
| 33 | `instance` | [subsingleton_of_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/subsingleton-of-bot.md) | 246 | `declaration-track:d7184de503c00cf7194d32c1295f4a390e82ff93b65db08d439f1e7da30cd124` |
| 34 | `def` | [ker](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/ker.md) | 260 | `declaration-track:ce1b9d2a00d3f05307c031ce740d7dc71a80576230b99c348fbb4db178ec2d18` |
| 35 | `def` | [idealRange](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/idealrange.md) | 264 | `declaration-track:77cf0451682dba06a4d825b5e53e81bef738657eace9807822001299c728e049` |
| 36 | `theorem` | [idealRange_eq_lieSpan_range](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/idealrange-eq-liespan-range.md) | 267 | `result-track:766c0df9f8abd941590bcc1beb2f37d9f7aa6333233741c31094c04f07a53ed6` |
| 37 | `theorem` | [idealRange_eq_map](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/idealrange-eq-map.md) | 270 | `result-track:1321b72c12320a7acbea9ad1b6ebc4567c04754aa8418b3b1ba23ac70a990fb6` |
| 38 | `def` | [IsIdealMorphism](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/isidealmorphism.md) | 276 | `declaration-track:4767e69a9ceae2f10a8ac63a57048a0e73e630fc0da4d94cb7456b409cfc328d` |
| 39 | `theorem` | [isIdealMorphism_def](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/isidealmorphism-def.md) | 279 | `result-track:70d861c0905acad90c3b376f5746107ea68e3a686a8aede064ed18d0ea837f03` |
| 40 | `theorem` | [IsIdealMorphism.eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/isidealmorphism-eq.md) | 283 | `result-track:9c57d349eefabeabdac3ff24d2b85f75409a490edb3fae68bf909c414acc0be7` |
| 41 | `theorem` | [isIdealMorphism_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/isidealmorphism-iff.md) | 285 | `result-track:c497c66d4be9eea474ead3b43b70b8a8fe9f5304443a2f2940440dc6bc753cd5` |
| 42 | `theorem` | [range_subset_idealRange](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/range-subset-idealrange.md) | 295 | `result-track:0b3ad5e93951560bd613c1e36de11aa3dfb53549168e04cbc18596db7ae76bd5` |
| 43 | `theorem` | [map_le_idealRange](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/map-le-idealrange.md) | 298 | `result-track:01236baea5abd083489eab2474d4db4eb035ac6541659fdb49a634cc1cfc058d` |
| 44 | `theorem` | [ker_le_comap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/ker-le-comap.md) | 302 | `result-track:6a297e1207da094223380687999b298c39bce9e9cb1d6ab40942c2d6ac8cfa6d` |
| 45 | `theorem` | [ker_toSubmodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/ker-tosubmodule.md) | 306 | `result-track:c3e40eb637410c88a786302e363a35be0f273329fa1e00d49d28286ebcd44d2b` |
| 46 | `theorem` | [mem_ker](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/mem-ker.md) | 313 | `result-track:3094eeb3721a2e5020fcb3eaf2183a923d5392e0469f1d5cdec96313209fff7e` |
| 47 | `theorem` | [mem_idealRange](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/mem-idealrange.md) | 317 | `result-track:4614bc37869a9b75804a1e34f2a759b964f8fe11e0ee9cc43f89d973a548ba87` |
| 48 | `theorem` | [mem_idealRange_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/mem-idealrange-iff.md) | 322 | `result-track:b2509299a0e7419b8865a1fb62b1f661246cfd0a4fffba3b7ae59959d2c4f076` |
| 49 | `theorem` | [le_ker_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/le-ker-iff.md) | 327 | `result-track:432181a79de6b275d3857e9a8f849cdf64ae41c80ffd3ac24151794737cbb023` |
| 50 | `theorem` | [ker_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/ker-eq-bot.md) | 332 | `result-track:615e3ded798723d37332a938a83a69112a727c86e75fefec1369a3fae194fe38` |
| 51 | `theorem` | [range_toSubmodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/range-tosubmodule.md) | 337 | `result-track:5afc40b6761f044b3fd945e6052b306aa5ff44fb2434d5324e3c23784d9061aa` |
| 52 | `theorem` | [range_eq_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/range-eq-top.md) | 342 | `result-track:d2aae8c52b4e8da3a72afcf9c0323691e62e44f91c0a248a082554e61312953e` |
| 53 | `theorem` | [idealRange_eq_top_of_surjective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/idealrange-eq-top-of-surjective.md) | 347 | `result-track:62232195ec5761335d1f822ad8db70f09a88a436727c66ed3b931efaacae3fbe` |
| 54 | `theorem` | [isIdealMorphism_of_surjective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/isidealmorphism-of-surjective.md) | 355 | `result-track:8bfa1686a663fba1b1c33011ac9ce7ef791c737196ec158a40c9c94d63e3da23` |
| 55 | `theorem` | [map_eq_bot_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/map-eq-bot-iff.md) | 366 | `result-track:5114b0cae4ab8a8df4609bfa063787de86052990b31663e2d0e118f18c1cf2b2` |
| 56 | `theorem` | [coe_map_of_surjective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/coe-map-of-surjective.md) | 370 | `result-track:50c6888226e70d42c044694cad61aaa4fd7d4c174eac71844684556911a8e12d` |
| 57 | `theorem` | [mem_map_of_surjective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/mem-map-of-surjective.md) | 385 | `result-track:2c0dc0804157d162b25d22ca5d45c219f5a70bcf7e8da81f5dc20533ab91d94f` |
| 58 | `theorem` | [bot_of_map_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/bot-of-map-eq-bot.md) | 392 | `result-track:e76a4c151958485150a282fe3428d44909f7911f1274fa336772bef0c43ca333` |
| 59 | `def` | [inclusion](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/inclusion.md) | 399 | `declaration-track:b9815244ef824999e495f652d68d65fc90bb1b4ae27d8d40bdc97ae50d45629a` |
| 60 | `theorem` | [coe_inclusion](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/coe-inclusion.md) | 404 | `result-track:65afe233f65b02d549e7b4090cedb4df04ac63885f164f03fc946c060f02625d` |
| 61 | `theorem` | [inclusion_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/inclusion-apply.md) | 407 | `result-track:33c0f4262381c5da818531ede78748404965cfcb4ac2bf118309a9232bd30af2` |
| 62 | `theorem` | [inclusion_injective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/inclusion-injective.md) | 411 | `result-track:95f02d14eebabe830088463490e50346ad7059b6534491c4aa9f3c5516bb64c4` |
| 63 | `theorem` | [map_sup_ker_eq_map](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/map-sup-ker-eq-map-source-edition-2.md) | 416 | `result-track:a7ab4a5357171c3f638ba88855950228d1ef2d7302cadd3da08c74662a0bfda4` |
| 64 | `theorem` | [map_sup_ker_eq_map'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/map-sup-ker-eq-map.md) | 428 | `result-track:1d1459b63c86fb78550e98475a0c553112694611202c8897aa286141f1d73a7c` |
| 65 | `theorem` | [map_comap_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/map-comap-eq.md) | 433 | `result-track:01e0800a4560003b41acb5ab9637f5d123b2741bba26067ba93dc2087c759811` |
| 66 | `theorem` | [comap_map_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/comap-map-eq.md) | 441 | `result-track:c4d87215f74688eda18faef43e4168555e2d2da574b7ba6107fcb47f0f93b73c` |
| 67 | `def` | [incl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/incl.md) | 449 | `declaration-track:ecfd6b2d5b693f84ef55189a8578ca004892d25a026a41125dc9af7771dd9a05` |
| 68 | `theorem` | [incl_range](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/incl-range.md) | 453 | `result-track:7684e1d02de0a39b4fd1b7c6e99acbcfda9d15ce61cba7ad9b9ea65f8106ccc5` |
| 69 | `theorem` | [incl_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/incl-apply.md) | 457 | `result-track:4ef1545fde3eff7fe5e311b7b21cde397269869b00d0db6815ce38f398826e00` |
| 70 | `theorem` | [incl_coe](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/incl-coe.md) | 461 | `result-track:5403225ef194245c58641b1b698042eabe755e629b5ec84b40f644761f5084e6` |
| 71 | `lemma` | [incl_injective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/incl-injective.md) | 464 | `result-track:f42b6edc53f26537696165aa13e3048f9510a6f7560315eb9b982da6d936d1d4` |
| 72 | `theorem` | [comap_incl_self](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/comap-incl-self.md) | 468 | `result-track:70bada7bf471af40d9b06ed940fdd63aacce3c21c9131a124e557334601490c4` |
| 73 | `theorem` | [ker_incl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/ker-incl.md) | 471 | `result-track:0b5fefc3fa47f94ea463ab087de775d7b2542bf816f75422033d63808b3d9cea` |
| 74 | `theorem` | [incl_idealRange](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/incl-idealrange.md) | 474 | `result-track:a2f5fa44668cece4193a746b052296743eab5b11f54c3b624163e010d3fca784` |
| 75 | `theorem` | [incl_isIdealMorphism](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/incl-isidealmorphism.md) | 480 | `result-track:85ecb682be352f2c8843efca61c66b9539107b6ef51538d8449cd6c2eb460b1e` |
| 76 | `def` | [LieIdeal.topEquiv](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/lieideal-topequiv.md) | 498 | `declaration-track:13f28fd4524173bcd6b7cbe3d09614e3e5f5553e4262dd2005b68b78413ec629` |
| 77 | `theorem` | [LieIdeal.topEquiv_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Ideal.lean/declarations/lieideal-topequiv-apply.md) | 501 | `result-track:a6538a3c9f9c4b9e56c22750edd51e542f40c1f065f50e3bd6937d970a489763` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce1351d1550e1ea84898b32910d8ff5eac205bdc5b0408092585a18215fe7f3a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Ideal/Variantc7af1a3fa53b6337299479675161decd7b56f046f7670cf86926f2cb2a9676ef.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Ideal/Variantc7af1a3fa53b6337299479675161decd7b56f046f7670cf86926f2cb2a9676ef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
