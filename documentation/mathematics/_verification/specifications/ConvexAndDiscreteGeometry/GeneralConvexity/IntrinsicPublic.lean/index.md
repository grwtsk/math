# Verification target: Intrinsic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae0676343f5d915d5c15cec6b4a26d15f573a5f7",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Intrinsic/Variant3651c554bde0865ce8faba56e6019d6c3ac7e0bdc83f3851a3bf764db50f092b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae0676343f5d915d5c15cec6b4a26d15f573a5f7`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Intrinsic/Variant3651c554bde0865ce8faba56e6019d6c3ac7e0bdc83f3851a3bf764db50f092b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Intrinsic/Variant3651c554bde0865ce8faba56e6019d6c3ac7e0bdc83f3851a3bf764db50f092b.lean.json)

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
| 1 | `def` | [intrinsicInterior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicinterior.md) | 61 | `declaration-track:a14f4cacae8a0bca959f5305b001165a2bfad1354402760d706529b4e7f67e72` |
| 2 | `def` | [intrinsicFrontier](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicfrontier.md) | 65 | `declaration-track:2b01bdaf60c63f200977d7453880135f271810e2d780f74ba2862b0d842b4636` |
| 3 | `def` | [intrinsicClosure](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicclosure.md) | 69 | `declaration-track:3c6903ac7cc5ed82b1c0e73e5149ddef0020f6a537687625c0c0fc025ea68a2a` |
| 4 | `theorem` | [mem_intrinsicInterior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/mem-intrinsicinterior.md) | 75 | `result-track:5fdebced57434d32391292b55001eed280abfd8f73245d45142467194fa764dd` |
| 5 | `theorem` | [mem_intrinsicFrontier](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/mem-intrinsicfrontier.md) | 80 | `result-track:c643cb7e783642729f293e83d5685c5c5fb454d6de85a127847f7e2a04e1c845` |
| 6 | `theorem` | [mem_intrinsicClosure](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/mem-intrinsicclosure.md) | 85 | `result-track:f66e26f586cbab5a55dafdffe1d476ffddedc80712864284c05e0659024f8f6a` |
| 7 | `theorem` | [intrinsicInterior_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicinterior-subset.md) | 89 | `result-track:52a9aabb83f1c5bfe0f75f68904f55572ec4cf8c0c4368a99121558312644741` |
| 8 | `theorem` | [intrinsicFrontier_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicfrontier-subset.md) | 92 | `result-track:87bc0b281d61a4220c576708f978a27b9b32340cb492a5f4633d8adad1741c3b` |
| 9 | `theorem` | [intrinsicFrontier_subset_intrinsicClosure](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicfrontier-subset-intrinsicclosure.md) | 95 | `result-track:b6b2f77d7fb8fce497db9cefb8dfd3ef9a7e5321091e0df8a61f56e32d1e7161` |
| 10 | `theorem` | [subset_intrinsicClosure](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/subset-intrinsicclosure.md) | 98 | `result-track:4515322ae0b3dfa2c9478a23a4c26b7d1b47bb235befb843a168c0da7e834312` |
| 11 | `theorem` | [intrinsicInterior_empty](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicinterior-empty.md) | 102 | `result-track:8d929cd963b048efdb3b61b4a98e8ac980733cfbcc6f18b64e7f538867fb26fb` |
| 12 | `theorem` | [intrinsicFrontier_empty](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicfrontier-empty.md) | 105 | `result-track:332f8981d5e72a8c362d12d9d5fcba74947c68308df3a3b23eea314003cc785e` |
| 13 | `theorem` | [intrinsicClosure_empty](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicclosure-empty.md) | 108 | `result-track:3fe7f19020a89c8431984722fab1f56b23f8a5b3f29eadc408d043fbf6e49121` |
| 14 | `theorem` | [intrinsicClosure_nonempty](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicclosure-nonempty.md) | 111 | `result-track:b3141269bdaf9774fad533fcb31f47c4532fb813309c99da40edfbba67496b3a` |
| 15 | `theorem` | [intrinsicInterior_singleton](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicinterior-singleton.md) | 118 | `result-track:63f050d6d13c68667052f1389bfbc609d81f2f0a5b2364971568e56e41c2e2ad` |
| 16 | `theorem` | [intrinsicFrontier_singleton](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicfrontier-singleton.md) | 123 | `result-track:cccdc185679ff1424b39df4606f7f1d1acbcf00aab95cc25b3f4e8ad43b03bf7` |
| 17 | `theorem` | [intrinsicClosure_singleton](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicclosure-singleton.md) | 127 | `result-track:59df8b2ee122779a76a8e4dc045682586df870beeb7dbf631c51dfed30c206c6` |
| 18 | `theorem` | [intrinsicClosure_mono](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicclosure-mono.md) | 136 | `result-track:31d784cb5d6eea8f15b32c90371c8034b517769922d0c04c99b38c5b36310f02` |
| 19 | `theorem` | [interior_subset_intrinsicInterior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/interior-subset-intrinsicinterior.md) | 142 | `result-track:8d8cd5c6797f72499f5d221eecb422a3485e45510e99f626b36ad89ad1fa00e7` |
| 20 | `theorem` | [intrinsicClosure_subset_closure](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicclosure-subset-closure.md) | 146 | `result-track:c4248ba748f0e515098b2d36b9b5996e31e716f047aa565a51261a60e8823a04` |
| 21 | `theorem` | [intrinsicFrontier_subset_frontier](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicfrontier-subset-frontier.md) | 149 | `result-track:3d52e40176091f47679190e00efae7c58314ab636f2995f5156dd298897d13db` |
| 22 | `theorem` | [intrinsicClosure_subset_affineSpan](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicclosure-subset-affinespan.md) | 152 | `result-track:eab1f457380711682a1bdfc5f45b66de8571fcc53125c05a7c7e00f0a4aa438c` |
| 23 | `theorem` | [intrinsicClosure_sdiff_intrinsicFrontier](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicclosure-sdiff-intrinsicfrontier.md) | 156 | `result-track:68d665a52504c776ffd9e23e7c46b82fd65b8240fe1d49492b914a40f71587f4` |
| 24 | `theorem` | [intrinsicClosure_sdiff_intrinsicInterior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicclosure-sdiff-intrinsicinterior.md) | 165 | `result-track:113cc9bdf476ccdd9950620171be7da0d7249fc8b1ee6904366b2ee874315c68` |
| 25 | `theorem` | [intrinsicInterior_union_intrinsicFrontier](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicinterior-union-intrinsicfrontier.md) | 173 | `result-track:680e9e4bd05a73cecef0f8903404b62c48f1d7de6a69223cb3977bba6fd64cb0` |
| 26 | `theorem` | [intrinsicFrontier_union_intrinsicInterior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicfrontier-union-intrinsicinterior.md) | 179 | `result-track:d63d2004b6c4a1133c4ed55c3dce443f95fa82088464e7f05b6b7d06a3e410b5` |
| 27 | `theorem` | [isClosed_intrinsicClosure](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/isclosed-intrinsicclosure-source-edition-2.md) | 183 | `result-track:2083f7dfc9ad3f052112372b00abe163af04d1628823febcec37724f89a2d72a` |
| 28 | `theorem` | [isClosed_intrinsicFrontier](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/isclosed-intrinsicfrontier.md) | 187 | `result-track:8d901218a8276ee3bbc59c5eeecab95e460e2bce6b8abb6df3078dbffa445e5f` |
| 29 | `theorem` | [affineSpan_intrinsicClosure](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/affinespan-intrinsicclosure.md) | 192 | `result-track:5177f81689443f665ec2a76d10472b9442888d8e5289f2ef6ce477128c1a6fa0` |
| 30 | `theorem` | [IsClosed.intrinsicClosure](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/isclosed-intrinsicclosure.md) | 197 | `result-track:10694ac0d080c0bb31cd425a6b9ace4b59b9579b39ec9b330965797dd13a9b18` |
| 31 | `theorem` | [intrinsicClosure_idem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicclosure-idem.md) | 203 | `result-track:358865dcffa82dae8a52d134cee15bb582ecac09a79ea2da91ac5c70d0668361` |
| 32 | `theorem` | [intrinsicClosure_eq_closure_inter_affineSpan](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicclosure-eq-closure-inter-affinespan.md) | 212 | `result-track:e6a9dccb60088ae2ec4248c6c2e33aec132fa8421f4fd39212d661f93b9a5b7a` |
| 33 | `theorem` | [intrinsicInterior_prod_eq](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicinterior-prod-eq.md) | 220 | `result-track:a230b4e8abf0a61a4827e71b35e43ead5c8db5b46bad1b25f0d1241448143404` |
| 34 | `theorem` | [preimage_image_eq_of_homeomorph_affineSpan](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/preimage-image-eq-of-homeomorph-affinespan.md) | 237 | `result-track:432ef34e0f0e0795c469fb000a51803548a3587f811dffc51651dece6ea3b71b` |
| 35 | `theorem` | [intrinsicInterior_image_of_homeomorph_affineSpan](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicinterior-image-of-homeomorph-affinespan.md) | 255 | `result-track:965046cf0c2d415ef5805d175168eedbe8266a68dfff5e6a59fdcb5b3b6846b1` |
| 36 | `theorem` | [intrinsicFrontier_image_of_homeomorph_affineSpan](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicfrontier-image-of-homeomorph-affinespan.md) | 267 | `result-track:7e73dc7b1191759aea6f227bf0fab3b269403c4ce5c56634ad5a40df718e71e9` |
| 37 | `theorem` | [intrinsicClosure_image_of_homeomorph_affineSpan](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicclosure-image-of-homeomorph-affinespan.md) | 279 | `result-track:348fe23f592812926407147c8afa8368528d1003cf9016fb7ea04e0be70a9cf2` |
| 38 | `theorem` | [intrinsicInterior_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicinterior-image-source-edition-3.md) | 298 | `result-track:e46a5ac7cfa488db9aed7874f3e9e4208d49b526285b0328588a38b3caf3c1bf` |
| 39 | `theorem` | [intrinsicFrontier_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicfrontier-image.md) | 306 | `result-track:6ff658ede4f7445ef4581c303f47a07a4554485d65d669d3b5dd4047115dff44` |
| 40 | `theorem` | [intrinsicClosure_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicclosure-image.md) | 314 | `result-track:0d04abe6c2f7440ea308f4459369acda3e072f2698a1238838a7c978807302af` |
| 41 | `theorem` | [intrinsicInterior_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicinterior-image-source-edition-2.md) | 330 | `result-track:642d38c9f0351327b82ebc7eed8d502079fdf6ed0c79a02c225340112f3b9cb7` |
| 42 | `theorem` | [intrinsicFrontier_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicfrontier-image-source-edition-2.md) | 339 | `result-track:c90b36da0ed3a5af3f706d1e0450a373a7e692777c63e70c3bc42de640d8cf38` |
| 43 | `theorem` | [intrinsicClosure_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicclosure-image-source-edition-3.md) | 348 | `result-track:95de81f28c331d1940f655adecead48caa8054cfcdb179e72a1d8cb5adf40e3b` |
| 44 | `theorem` | [intrinsicInterior_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicinterior-image.md) | 376 | `result-track:0e10b507cdc133baab843e1d83c2ae03b9cac09124c032a8c0cfaa4ff983b948` |
| 45 | `theorem` | [intrinsicFrontier_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicfrontier-image-source-edition-3.md) | 381 | `result-track:ed6ba40393004f157b71636e96c51df1c50bde8fbecc85786a77f82387423290` |
| 46 | `theorem` | [intrinsicClosure_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicclosure-image-source-edition-2.md) | 386 | `result-track:76fb75ca033b2f94df98685b113bbc0745905110bedbac41adb4865c40fd4263` |
| 47 | `theorem` | [intrinsicClosure_eq_closure](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicclosure-eq-closure.md) | 398 | `result-track:13756aecdff1e9bc80b6b826a56643f63633fc16f0de950b5b040c55399bdcd0` |
| 48 | `theorem` | [closure_sdiff_intrinsicInterior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/closure-sdiff-intrinsicinterior.md) | 415 | `result-track:fd7d69c6a0a803af4002b6645f3bb1b7a292ae6dfe3ef51c851e3bac24e4c859` |
| 49 | `theorem` | [closure_sdiff_intrinsicFrontier](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/closure-sdiff-intrinsicfrontier.md) | 423 | `result-track:c0ce6621f3251f645c4858dfe8f0ca851e05f79e9aef972bd672cb43b492d941` |
| 50 | `theorem` | [Convex.intrinsicClosure](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/convex-intrinsicclosure.md) | 437 | `result-track:67ff742f370e973b2cf0e677fa35736cee0ccd109864e35193780d8868b74770` |
| 51 | `theorem` | [aux](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/aux.md) | 443 | `result-track:ee1a0943e22ddcdb55ca5d3159a4dd5984de943e411dbffdad44baa772db80bf` |
| 52 | `theorem` | [Set.Nonempty.intrinsicInterior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/set-nonempty-intrinsicinterior.md) | 450 | `result-track:110fbd38e11de179730e338b0a3937ce24bf3415fd31b050e9e0884c08ad8ca8` |
| 53 | `theorem` | [intrinsicInterior_nonempty](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/declarations/intrinsicinterior-nonempty.md) | 463 | `result-track:ced99c388646e9518953662c50e929ccf2b9ebb23e3fa753920c9bb1eba73d1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ac82d90b7940a638d67a5207abfd3b8480610bc093f21e30e6d47a51092473d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ConvexGeometry/Intrinsic/Variant3651c554bde0865ce8faba56e6019d6c3ac7e0bdc83f3851a3bf764db50f092b.lean","GRWTSK/_verification/specifications/Geometry/ConvexGeometry/Intrinsic/Variant3651c554bde0865ce8faba56e6019d6c3ac7e0bdc83f3851a3bf764db50f092b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
