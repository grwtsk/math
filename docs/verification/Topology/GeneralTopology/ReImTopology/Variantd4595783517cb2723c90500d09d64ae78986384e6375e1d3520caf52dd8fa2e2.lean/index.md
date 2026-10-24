# Verification target: GRWTSK.Topology.GeneralTopology.ReImTopology.Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22204fc1e648b7d7c717cbb94bfe351875c8f178",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22204fc1e648b7d7c717cbb94bfe351875c8f178`.

Source path: `GRWTSK/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.FiberBundle.IsHomeomorphicTrivialBundle` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isHomeomorphicTrivialFiberBundle_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/ishomeomorphictrivialfiberbundle-re--62ac29e3dcbb090f174bee47.md) | 49 | `result-track:62ac29e3dcbb090f174bee47317b1146f9c8e2691efa4895f52f4286d7858214` |
| 2 | `theorem` | [isHomeomorphicTrivialFiberBundle_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/ishomeomorphictrivialfiberbundle-im--2e501b44318b899186d97018.md) | 53 | `result-track:2e501b44318b899186d97018dcaa5fc111dbe729c53de36aca8005d308cc21e6` |
| 3 | `theorem` | [isOpenMap_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/isopenmap-re--3bbcc2c19ab432b30cdbf996.md) | 56 | `result-track:3bbcc2c19ab432b30cdbf99688ae43aac41b2970c0b0e7cc652235f428e5011e` |
| 4 | `theorem` | [isOpenMap_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/isopenmap-im--bc6cc2dda522f4fe8dbe2183.md) | 59 | `result-track:bc6cc2dda522f4fe8dbe2183bfeb845d59ef32fa3cc4f81cf4482f92d6960649` |
| 5 | `theorem` | [isQuotientMap_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/isquotientmap-re--6c06ebdd2d7a8dbe6184d86d.md) | 62 | `result-track:6c06ebdd2d7a8dbe6184d86d0520de02a5bfb4b5b1218cd21f548f190bd0fa63` |
| 6 | `theorem` | [isQuotientMap_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/isquotientmap-im--09d8c35328d16679d17f29ad.md) | 68 | `result-track:09d8c35328d16679d17f29ad015ad0556e4f591d2a19eb5d2d1fe0ce4d595081` |
| 7 | `theorem` | [interior_preimage_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/interior-preimage-re--f7756c358b1c792be7a4bde9.md) | 74 | `result-track:f7756c358b1c792be7a4bde954c56cd1ca1c8951da9aee3b9cc5c5647225d711` |
| 8 | `theorem` | [interior_preimage_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/interior-preimage-im--1b64c1bda910ca6bc8c7ba02.md) | 77 | `result-track:1b64c1bda910ca6bc8c7ba02153ea6904c04858480b9f73b79d7c00e7a4738e2` |
| 9 | `theorem` | [closure_preimage_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/closure-preimage-re--3513754ea25ea2dbc3879fdd.md) | 80 | `result-track:3513754ea25ea2dbc3879fddd18abf7567b9e744e56009ddf178758b84ef13fb` |
| 10 | `theorem` | [closure_preimage_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/closure-preimage-im--ccdd9a45b4367b760f607ce9.md) | 83 | `result-track:ccdd9a45b4367b760f607ce9c65874dcab654a4caa4e63b75d2d92988990c035` |
| 11 | `theorem` | [frontier_preimage_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/frontier-preimage-re--fe5b8f888ff317e1cc6ab8ba.md) | 86 | `result-track:fe5b8f888ff317e1cc6ab8ba094ec335c532f6a5d910298378779617a3818fb9` |
| 12 | `theorem` | [frontier_preimage_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/frontier-preimage-im--850e341f9ec9e0bd17eeee40.md) | 89 | `result-track:850e341f9ec9e0bd17eeee40469093581107dbd4653e49f329a6972c89d08bd5` |
| 13 | `theorem` | [interior_setOf_re_le](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/interior-setof-re-le--13b14d2685dbb3d7cca73d7b.md) | 93 | `result-track:13b14d2685dbb3d7cca73d7b84a6e3c8a9b17a5dd726fb5ebbe019e939b086bd` |
| 14 | `theorem` | [interior_setOf_im_le](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/interior-setof-im-le--332ca392203591ba3a966b1f.md) | 97 | `result-track:332ca392203591ba3a966b1f235f02475e0476eb993bcf351f6a70334b005907` |
| 15 | `theorem` | [interior_setOf_le_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/interior-setof-le-re--f5c070e89845abef2ee9b673.md) | 101 | `result-track:f5c070e89845abef2ee9b673365d501bb3dd3054c9f0f236f0e4b062d3e24ac3` |
| 16 | `theorem` | [interior_setOf_le_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/interior-setof-le-im--c92ab3f9106e4eaf382d3e96.md) | 105 | `result-track:c92ab3f9106e4eaf382d3e964df327c68ba090d196f3e890d3c030beb218f264` |
| 17 | `theorem` | [closure_setOf_re_lt](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/closure-setof-re-lt--5fe65c475135c0360241c1bf.md) | 109 | `result-track:5fe65c475135c0360241c1bffc94e794f212ef1dc4246eadc31776a57d6476e3` |
| 18 | `theorem` | [closure_setOf_im_lt](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/closure-setof-im-lt--f390d115a1af321b7167f831.md) | 113 | `result-track:f390d115a1af321b7167f8312d0e7d7ee921b93351bcdebaa397dd5ddbee413c` |
| 19 | `theorem` | [closure_setOf_lt_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/closure-setof-lt-re--1f8b10f0c86114a4f21c1bad.md) | 117 | `result-track:1f8b10f0c86114a4f21c1bad97427e89d6f4385ea960c3f70f69170be039271e` |
| 20 | `theorem` | [closure_setOf_lt_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/closure-setof-lt-im--3d53143e03c3d63e9fd996da.md) | 121 | `result-track:3d53143e03c3d63e9fd996da6c809487a3769c9e73c289d21ee22b5bee3aa746` |
| 21 | `theorem` | [frontier_setOf_re_le](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/frontier-setof-re-le--ed77456de4b6c870d7b6db44.md) | 125 | `result-track:ed77456de4b6c870d7b6db44e9d9e92774ee0bc844525ef817cca127bf284bee` |
| 22 | `theorem` | [frontier_setOf_im_le](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/frontier-setof-im-le--d3a64e6f79b767759e5e4998.md) | 129 | `result-track:d3a64e6f79b767759e5e4998f8f05e16a68d7f3257258f1b27a8f8e636db8f6a` |
| 23 | `theorem` | [frontier_setOf_le_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/frontier-setof-le-re--656091e16fa90d8af5504ebd.md) | 133 | `result-track:656091e16fa90d8af5504ebd2ff334bd69644753d84f0d69cf9817e30e43a07f` |
| 24 | `theorem` | [frontier_setOf_le_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/frontier-setof-le-im--0f6136e8ff971ef5d2d9b776.md) | 137 | `result-track:0f6136e8ff971ef5d2d9b776bcfc44c3ed16a5e788fccd8c4ac0f137d853d782` |
| 25 | `theorem` | [frontier_setOf_re_lt](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/frontier-setof-re-lt--d6a2d6f069a60bf221b8da16.md) | 141 | `result-track:d6a2d6f069a60bf221b8da168b0a7898a6cb8d4ee8d4dd3c13f7f363ab69731b` |
| 26 | `theorem` | [frontier_setOf_im_lt](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/frontier-setof-im-lt--56658fc4f3b76c8bdfdd91b1.md) | 145 | `result-track:56658fc4f3b76c8bdfdd91b1a673c2162ee5fdd5e29a9015cca3a4e9252e6361` |
| 27 | `theorem` | [frontier_setOf_lt_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/frontier-setof-lt-re--c52354cf349233110c7dbf9d.md) | 149 | `result-track:c52354cf349233110c7dbf9d062469f291a016d6bba91643bb733e8cdad6c84b` |
| 28 | `theorem` | [frontier_setOf_lt_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/frontier-setof-lt-im--e72f9c2927ba06a8c49e911d.md) | 153 | `result-track:e72f9c2927ba06a8c49e911d9b2056cd108f1e2b491d91f93685cfc843cc3e6b` |
| 29 | `theorem` | [closure_reProdIm](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/closure-reprodim--e1354fb278a51d00ad13e960.md) | 156 | `result-track:e1354fb278a51d00ad13e9609929095a3486e2ed66ddd16c4a04d10dd6f9a060` |
| 30 | `theorem` | [interior_reProdIm](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/interior-reprodim--5549463be91b2ea1873be09f.md) | 160 | `result-track:5549463be91b2ea1873be09f990ae54940ca11127e0b86441b2e9fbeff5ed2f0` |
| 31 | `theorem` | [frontier_reProdIm](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/frontier-reprodim--f2608b73d87755d20d0f66ac.md) | 163 | `result-track:f2608b73d87755d20d0f66ac5f70ce743e81d38a0b5d799825aa2a7529ffb76c` |
| 32 | `theorem` | [frontier_setOf_le_re_and_le_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/frontier-setof-le-re-and-le-im--460ebe02b664577ad8e3b3b5.md) | 168 | `result-track:460ebe02b664577ad8e3b3b5e70c10e1e6bae422c13a9d9235167abbb8526a9e` |
| 33 | `theorem` | [frontier_setOf_le_re_and_im_le](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/frontier-setof-le-re-and-im-le--baf089c35c5cc898f117fa55.md) | 172 | `result-track:baf089c35c5cc898f117fa55b0ef1797e2bd961b02c71d8ff7a70338206b638e` |
| 34 | `theorem` | [IsOpen.reProdIm](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/isopen-reprodim--451250b58923f04a5833c6fa.md) | 183 | `result-track:451250b58923f04a5833c6fa8dea83f2012e1473630c86bad0a2b9e09683437e` |
| 35 | `theorem` | [IsClosed.reProdIm](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/isclosed-reprodim--fe432ba343b9b49852767d3d.md) | 186 | `result-track:fe432ba343b9b49852767d3dc87e0ce45a4fa1a4b9a17ba27f70e8122e4364d4` |
| 36 | `theorem` | [Bornology.IsBounded.reProdIm](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/bornology-isbounded-reprodim--a43d3f4ef5b76f5deb336bf4.md) | 189 | `result-track:a43d3f4ef5b76f5deb336bf425d796f443a4af5bd07fbcd5dee778726a1922cd` |
| 37 | `lemma` | [TendstoUniformlyOn.re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/tendstouniformlyon-re--6f4cec9f973fe948c5f1b2f1.md) | 196 | `result-track:6f4cec9f973fe948c5f1b2f15b4b4c9de6e929a008913340eee5716c6b9847df` |
| 38 | `lemma` | [TendstoUniformly.re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/tendstouniformly-re--28d8a7d0aa3907977d7ec80f.md) | 201 | `result-track:28d8a7d0aa3907977d7ec80f94def2c585cdb3d47674d170ba2d544892b2ab93` |
| 39 | `lemma` | [TendstoUniformlyOn.im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/tendstouniformlyon-im--26bd2474c2fa383fcc0aa09f.md) | 206 | `result-track:26bd2474c2fa383fcc0aa09f9ecef590f7e9da0c706b0b1493d078ba79af4de2` |
| 40 | `lemma` | [TendstoUniformly.im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variantd4595783517cb2723c90500d09d64ae78986384e6375e1d3520caf52dd8fa2e2.lean/declarations/tendstouniformly-im--ef7f3992790fb10997c154bd.md) | 211 | `result-track:ef7f3992790fb10997c154bd842daccb8687cbe0a7951f574e96e2ff6dc5a253` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
