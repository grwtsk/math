# Verification target: Function Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f96a57d1735eca51c569b7d61324680304915de3",
  "lexical_observation_count": 126,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Function/Variante72cc95888264e1981603ef5e9f2f3657bf6f6b4cd1b5d1b89482537088db18c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f96a57d1735eca51c569b7d61324680304915de3`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Function/Variante72cc95888264e1981603ef5e9f2f3657bf6f6b4cd1b5d1b89482537088db18c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Function/Variante72cc95888264e1981603ef5e9f2f3657bf6f6b4cd1b5d1b89482537088db18c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ConvexOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon.md) | 60 | `declaration-track:b1a8a402918fac76102874fa2c6f312858c56a2f874292fe7298b0ab00797814` |
| 2 | `def` | [ConcaveOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon.md) | 66 | `declaration-track:55f544040bfff2e69beeac07dac74e208f75f71c7e3d260a5486b8cdb12d7da0` |
| 3 | `def` | [StrictConvexOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconvexon.md) | 72 | `declaration-track:1bcc44b4aa483676cc3e4a0f1641634c5250791e8cd2865b53181344ccab39f7` |
| 4 | `def` | [StrictConcaveOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconcaveon.md) | 78 | `declaration-track:0e9f38353ed1b558eee8e7e78f42b1c19ee51e7b157881471d2253189e90178a` |
| 5 | `theorem` | [ConvexOn.dual](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-dual.md) | 87 | `result-track:219107d3eee99d31019af56147dce4e7b051759c0c05a928115bc8080d5fbe46` |
| 6 | `theorem` | [ConcaveOn.dual](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-dual.md) | 90 | `result-track:4efb33bd9bfe2054fdcc909dea4dd2668821b97b68d106a863932fa01fdc798a` |
| 7 | `theorem` | [StrictConvexOn.dual](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconvexon-dual.md) | 93 | `result-track:aec79e03c30b695abe1d4f267788c4b6e9a05c4550c604039aa00b916417f42d` |
| 8 | `theorem` | [StrictConcaveOn.dual](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconcaveon-dual.md) | 96 | `result-track:4b625f73af4158c79080db6e817f60cfbe858d6a74e040cad6f2b38ad62f0510` |
| 9 | `theorem` | [convexOn_id](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-id.md) | 99 | `result-track:170e0529350567acb197a589915e22fe127a5ed696904305e5cedbb414ca1061` |
| 10 | `theorem` | [concaveOn_id](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-id.md) | 105 | `result-track:e9e72ff899b95b702878625228b3b7dc75f3b371281d478878cbfd4d7a04cb05` |
| 11 | `theorem` | [ConvexOn.subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-subset.md) | 111 | `result-track:9befa295c1ac4c4382a81bc37bd98d3bc8ba0dc3c2440e1b340bd30a2a6cefe7` |
| 12 | `theorem` | [ConcaveOn.subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-subset.md) | 116 | `result-track:6395ee6fbca1a06df7f3858dbd259a6450791abd397f5363998a0fb425cf6f24` |
| 13 | `theorem` | [StrictConvexOn.subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconvexon-subset.md) | 121 | `result-track:1ef8ecc8e479fbf42839fb88e47b094887410b4e3ec35dbc536942873edae9fc` |
| 14 | `theorem` | [StrictConcaveOn.subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconcaveon-subset.md) | 126 | `result-track:835776bbaffb0fb5d65252be998f2e279aacc7b41936a31d908d195aae34d32b` |
| 15 | `theorem` | [ConvexOn.comp](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-comp.md) | 131 | `result-track:6e681446e652b3afcff8087708eabeb62a30de8fd11a3f1a7729d315e5294037` |
| 16 | `theorem` | [ConcaveOn.comp](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-comp.md) | 140 | `result-track:8cc0cf9e72813f222ca02508ddceb681d7413154d169519947d2382805cda3ae` |
| 17 | `theorem` | [ConvexOn.comp_concaveOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-comp-concaveon.md) | 149 | `result-track:a91a372af9c841287df252ca4f8be489a71b25ae7b8dbede7a18038dfaf7ae7b` |
| 18 | `theorem` | [ConcaveOn.comp_convexOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-comp-convexon.md) | 154 | `result-track:f129a9e2974b0db2cb0b7873762d383fa0024459bea70922fdfbe89826bc0905` |
| 19 | `theorem` | [StrictConvexOn.comp](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconvexon-comp.md) | 159 | `result-track:c7d204d648a1e0ae60031296b556b83d61c4013172c2ee62c6d59ee53008be41` |
| 20 | `theorem` | [StrictConcaveOn.comp](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconcaveon-comp.md) | 168 | `result-track:b2ca1e0f62edd80d103aafb472a7c0f78c8f0202d7d54f8f1f68d8c7915c81a7` |
| 21 | `theorem` | [StrictConvexOn.comp_strictConcaveOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconvexon-comp-strictconcaveon.md) | 177 | `result-track:74708a986080589516d8577d884fb1749f2616e52349e0b8f827a9792b3c1e13` |
| 22 | `theorem` | [StrictConcaveOn.comp_strictConvexOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconcaveon-comp-strictconvexon.md) | 183 | `result-track:35781696fa95d6cb61e968913d6165b6916678935f207a04c911fba369db7e55` |
| 23 | `theorem` | [ConvexOn.add](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-add.md) | 195 | `result-track:da30c826a16d5de2140725b1c8a79d59c32c90a127d16eae9d7ab7c796f4e7d9` |
| 24 | `theorem` | [ConcaveOn.add](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-add.md) | 204 | `result-track:1d01b4010dd478a6b107a86c00254d2cd1fd0f5ef09f2740993f10caee6833c8` |
| 25 | `theorem` | [convexOn_const](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-const.md) | 214 | `result-track:29f604ccd9496abcee48beceacf55cd2567d8932b1228d9f268904af5a2f3f14` |
| 26 | `theorem` | [concaveOn_const](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-const.md) | 218 | `result-track:bb369262da0e1e03564b58bef131f3256e6c72393334da84d95b8e50ba98fb69` |
| 27 | `theorem` | [convexOn_of_convex_epigraph](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-of-convex-epigraph.md) | 222 | `result-track:3130ef569d4a13eee8cd0183fa9c525517d8b9491a2c9fdd8a5631b1cc30c233` |
| 28 | `theorem` | [concaveOn_of_convex_hypograph](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-of-convex-hypograph.md) | 228 | `result-track:a51852fa16a78fef7d192ebe8058ceb8a9d4c75ef66607367b204d0a562d60b5` |
| 29 | `theorem` | [ConvexOn.convex_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-convex-le.md) | 239 | `result-track:88c672ff528404ce1672205e0969e06539d8ae12d0fa7440984f74adc8301b29` |
| 30 | `theorem` | [ConcaveOn.convex_ge](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-convex-ge.md) | 249 | `result-track:cd49ce6eb67892018c597d61a42cff9853bc648bbebfe9d44ffcdd7d8c020126` |
| 31 | `theorem` | [ConvexOn.convex_epigraph](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-convex-epigraph.md) | 253 | `result-track:30d13cc8cf930cafa832bab16c70af24a61a8f573ae1898ca521e63bee00701b` |
| 32 | `theorem` | [ConcaveOn.convex_hypograph](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-convex-hypograph.md) | 262 | `result-track:8e7b8e212a14ce957e26da787c62612540207d0c44d401ff265d827736922dd5` |
| 33 | `theorem` | [convexOn_iff_convex_epigraph](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-iff-convex-epigraph.md) | 267 | `result-track:5e320a1ddff284b832cfde3e1321e741297a0cc1376a4ae30352728181f8b6af` |
| 34 | `theorem` | [concaveOn_iff_convex_hypograph](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-iff-convex-hypograph.md) | 272 | `result-track:53863d3477f84c3e07914cea426c89284f4051e42038a3a68779906e47a41503` |
| 35 | `theorem` | [ConvexOn.translate_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-translate-right.md) | 284 | `result-track:6b89e48a8b4a2769dfa919c5821b0e1e3d8df1a0ea7f7c68f7dd4514ed1501b7` |
| 36 | `theorem` | [ConcaveOn.translate_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-translate-right.md) | 295 | `result-track:450a1aaddd649919ded6010567b965ce9470425ca6bd1d07cb09944be0180a35` |
| 37 | `theorem` | [ConvexOn.translate_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-translate-left.md) | 301 | `result-track:97780cb5cbdef4b832bdab3ed975e24b3f139171963a3a57eb2a4a6090a5a802` |
| 38 | `theorem` | [ConcaveOn.translate_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-translate-left.md) | 307 | `result-track:cecea4401aa61355ad43b0dbdab4739c5d7bebdca9516927887f31f258816d24` |
| 39 | `theorem` | [convexOn_iff_forall_pos](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-iff-forall-pos.md) | 318 | `result-track:f578ace2c7b5a743b59d7b445fed93a194646fc76cc220e557aa705cc585ec80` |
| 40 | `theorem` | [concaveOn_iff_forall_pos](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-iff-forall-pos.md) | 335 | `result-track:e21f1838872c8a361ea88abee914bce7281c44bb49b881385d76bee52a347c00` |
| 41 | `theorem` | [convexOn_iff_pairwise_pos](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-iff-pairwise-pos.md) | 342 | `result-track:fead49c7a0959a7e4b36edd0be0366d0680a5dab71ed9ee7b32d3647f2ce8b81` |
| 42 | `theorem` | [concaveOn_iff_pairwise_pos](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-iff-pairwise-pos.md) | 356 | `result-track:1a8836cb1460891a61b94c517d6c3a709030e49a39ce8b8ad4af402d3c2c331c` |
| 43 | `theorem` | [LinearMap.convexOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/linearmap-convexon.md) | 365 | `result-track:9356e2bd3b6d2e8274ac9f30707855614b6f8e4759f596459b5c37abc0bce6e5` |
| 44 | `theorem` | [LinearMap.concaveOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/linearmap-concaveon.md) | 370 | `result-track:fe188660daa5521cdc897c59a08d2200c9174f2df45112d90fa844ec5cf55a31` |
| 45 | `theorem` | [StrictConvexOn.convexOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconvexon-convexon.md) | 374 | `result-track:1c09cdf68225bd343a995424cf2eaba274a40e8dad5ca71a71e2a7fdcdee1ca5` |
| 46 | `theorem` | [StrictConcaveOn.concaveOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconcaveon-concaveon.md) | 380 | `result-track:3876b7e062b77ddf2b1fc14dc1dd928746bf1480e802e0d8b86a8dbbf52a6958` |
| 47 | `theorem` | [StrictConvexOn.convex_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconvexon-convex-lt.md) | 389 | `result-track:dc0a0f8811563ccd173804c23e98593312c429d868e37db0c9390783724e70e8` |
| 48 | `theorem` | [StrictConcaveOn.convex_gt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconcaveon-convex-gt.md) | 400 | `result-track:95f15daa7daa71aa1d43c524af91cd2b3a972c1019e4b366c61b6a08e34160e5` |
| 49 | `theorem` | [LinearOrder.convexOn_of_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/linearorder-convexon-of-lt.md) | 416 | `result-track:baeffe2e7f6ed6ac2dbe21e064c028728423ae53b3dddbd6cdef1eb8160d474e` |
| 50 | `theorem` | [LinearOrder.concaveOn_of_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/linearorder-concaveon-of-lt.md) | 435 | `result-track:70c5a6d3a8865f48fa133c47447c0df5bf058e87f3e6e25ae9e7bcd4001b4069` |
| 51 | `theorem` | [LinearOrder.strictConvexOn_of_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/linearorder-strictconvexon-of-lt.md) | 446 | `result-track:8811d7282a3574ad62f5948a98ffb14d2650c13e4e3a9c007ce5e6b5e342c3c6` |
| 52 | `theorem` | [LinearOrder.strictConcaveOn_of_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/linearorder-strictconcaveon-of-lt.md) | 465 | `result-track:b88cce37169e6ebe9446f6080d8db540072fd2520c1fab35b46c2aff84d2817b` |
| 53 | `theorem` | [ConvexOn.comp_linearMap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-comp-linearmap.md) | 481 | `result-track:cfe323a39e811de4d554e8fc22faf2af7d2f77b9aa2b6324fa9b8c061f8b17b7` |
| 54 | `theorem` | [ConcaveOn.comp_linearMap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-comp-linearmap.md) | 490 | `result-track:5ff8ec14d6557bf86505c6fc04aa06a37a23149cfb4577529ec21cfcd5068f97` |
| 55 | `theorem` | [StrictConvexOn.add_convexOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconvexon-add-convexon.md) | 507 | `result-track:0a6fbce05f91d99f41d73d26f011fdc204f155055dce0138f7263d676fa3f464` |
| 56 | `theorem` | [ConvexOn.add_strictConvexOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-add-strictconvexon.md) | 516 | `result-track:7f9c438dba9800dbe256d3e48041d47ee703fa5f0e5a14baac33c52eb02901b5` |
| 57 | `theorem` | [StrictConvexOn.add](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconvexon-add.md) | 521 | `result-track:99a3dacf36f662d1f195348fbedeafb3d0ab67e665e048ad2849b24d1d8082a2` |
| 58 | `theorem` | [StrictConcaveOn.add_concaveOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconcaveon-add-concaveon.md) | 530 | `result-track:c5242c8f570cd1e18341207168e44b2fef178e60aeda5cc2ea049ef2505501f8` |
| 59 | `theorem` | [ConcaveOn.add_strictConcaveOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-add-strictconcaveon.md) | 535 | `result-track:6877371501c29fd1541e8a19161caa99c5b762ae00f361ed2573e7e0ea22ed0c` |
| 60 | `theorem` | [StrictConcaveOn.add](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconcaveon-add.md) | 540 | `result-track:79e216b5a15629834e0f7537b9d059bba894c3d3c34ee28bac5d32c7aef61c9e` |
| 61 | `theorem` | [ConvexOn.convex_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-convex-lt.md) | 551 | `result-track:43a6b77707a77db680f92d9c1302925d73d8bdc77804811226b2db2830e4d365` |
| 62 | `theorem` | [ConcaveOn.convex_gt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-convex-gt.md) | 562 | `result-track:df923bf10e71de9a29253fb0eb0e99bf6ac70fc69a1a9347fcf6f76fb6b90946` |
| 63 | `theorem` | [ConvexOn.openSegment_subset_strict_epigraph](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-opensegment-subset-strict-epigraph.md) | 566 | `result-track:fa27bb5b86638996f4007a9f933661b14f6a9703d6e6744c2d6fb5aa57499e6f` |
| 64 | `theorem` | [ConcaveOn.openSegment_subset_strict_hypograph](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-opensegment-subset-strict-hypograph.md) | 577 | `result-track:ac9bc2c69d0a8553aa5f7de7d142b58a8e81c2b12ca0de69498f60cd922c55ba` |
| 65 | `theorem` | [ConvexOn.convex_strict_epigraph](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-convex-strict-epigraph.md) | 583 | `result-track:23cdcda0faf4c148260b4c224dff4e977b67e32a018dbff5bbf6d950532c9f44` |
| 66 | `theorem` | [ConcaveOn.convex_strict_hypograph](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-convex-strict-hypograph.md) | 589 | `result-track:d476167583b4fc5449a40963d71d3dee2d4f4212ac431be17d5189c767281cdc` |
| 67 | `theorem` | [ConvexOn.sup](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-sup.md) | 604 | `result-track:ce23474f7b6f8964ba42f99c0d69cb492df0059151c043d8ceea84838a3a86f8` |
| 68 | `theorem` | [ConcaveOn.inf](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-inf.md) | 615 | `result-track:cf883ddbeb40140d3633c04ecc1ba783e69c1bd83e307844753750ca034332db` |
| 69 | `theorem` | [StrictConvexOn.sup](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconvexon-sup.md) | 620 | `result-track:cb0e8173a60b30546c31712cd38d67d40f6f2d4c1975d8cdf5455da4f315c184` |
| 70 | `theorem` | [StrictConcaveOn.inf](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconcaveon-inf.md) | 633 | `result-track:2355943db83b450bc9c8c5f96754eed9d061f867827f794b492a179348c0300a` |
| 71 | `theorem` | [ConvexOn.le_on_segment'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-le-on-segment-source-edition-2.md) | 639 | `result-track:c6c2e601641c2d0213dcb72582366d6180809567dc54748437b3a234744b99b5` |
| 72 | `theorem` | [ConcaveOn.ge_on_segment'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-ge-on-segment.md) | 651 | `result-track:c5cf5657c3b54a57224446affa79f1c2f72143809488ed32c2ec31ca870d7908` |
| 73 | `theorem` | [ConvexOn.le_on_segment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-le-on-segment.md) | 657 | `result-track:b1c97600f54c2fa1f8ba1a8d2ad99067474197b79efa61dbbc523512c8396d2c` |
| 74 | `theorem` | [ConcaveOn.ge_on_segment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-ge-on-segment-source-edition-2.md) | 664 | `result-track:df55c808b3cd0736802460c4c23e529c593ebc92a7a0cad2bc9ab40479aa5168` |
| 75 | `theorem` | [StrictConvexOn.lt_on_open_segment'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconvexon-lt-on-open-segment.md) | 671 | `result-track:feebd0c346949f3aac6d36671462ae00968818035df8258f09bba32764d57c80` |
| 76 | `theorem` | [StrictConcaveOn.lt_on_open_segment'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconcaveon-lt-on-open-segment.md) | 685 | `result-track:094fb425158c5b70e7704972b91a87944b3a81981560d8172c6fb42304dd6554` |
| 77 | `theorem` | [StrictConvexOn.lt_on_openSegment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconvexon-lt-on-opensegment.md) | 693 | `result-track:2ae8fb17db889263352ab7a22771371ab770557265dcc9b105fcbbbb2281a64b` |
| 78 | `theorem` | [StrictConcaveOn.lt_on_openSegment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconcaveon-lt-on-opensegment.md) | 701 | `result-track:d856f7571cb87a09bbaef445f14c6aebb6f5c01a93e4323511b5cddc53295932` |
| 79 | `theorem` | [ConvexOn.le_left_of_right_le'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-le-left-of-right-le-source-edition-3.md) | 716 | `result-track:ed3d3c071c5594d47b73e9b66d659f3c8d303bf8312fea30665d13b43b67e0f9` |
| 80 | `theorem` | [ConcaveOn.left_le_of_le_right'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-left-le-of-le-right-source-edition-3.md) | 728 | `result-track:ce917ea983b5039fd88fc7a16f6e4236fe460ea344bf7cad9e136e892b34d00d` |
| 81 | `theorem` | [ConvexOn.le_right_of_left_le'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-le-right-of-left-le.md) | 734 | `result-track:1bbe205f504b6bec747232283f0505473e6c530a3167bc5ca2282b8421220dab` |
| 82 | `theorem` | [ConcaveOn.right_le_of_le_left'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-right-le-of-le-left-source-edition-3.md) | 741 | `result-track:a922d135a8ee3ca49bcab4a9c93b1deb9c5b5f55a37f1c49cacfbd680efe541c` |
| 83 | `theorem` | [ConvexOn.le_left_of_right_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-le-left-of-right-le-source-edition-2.md) | 747 | `result-track:bce67e007817d6d4cfd23ea98f6c4a26020bb7d405332f9afa69d967e57665b2` |
| 84 | `theorem` | [ConcaveOn.left_le_of_le_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-left-le-of-le-right.md) | 753 | `result-track:b15fd4238f6c33de2e70d151c7e8c165bd7ef289d64a46ef68d90cd1fd789d92` |
| 85 | `theorem` | [ConvexOn.le_right_of_left_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-le-right-of-left-le-source-edition-2.md) | 758 | `result-track:47de3e2851ebf05b45b453a140af0f97d58d7ee2fa24b0bdebea699380351858` |
| 86 | `theorem` | [ConcaveOn.right_le_of_le_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-right-le-of-le-left-source-edition-2.md) | 764 | `result-track:2ebd9ad85e4324cd121b84fadd5dcb99a9aef30d536a083d5199193ce91073fe` |
| 87 | `theorem` | [ConvexOn.lt_left_of_right_lt'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-lt-left-of-right-lt.md) | 777 | `result-track:24f1e6d2861ec4303039d512cb5262bafa6b80d6804a274037284507313f3922` |
| 88 | `theorem` | [ConcaveOn.left_lt_of_lt_right'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-left-lt-of-lt-right-source-edition-2.md) | 789 | `result-track:6085e7a011889ee2c58e55544b47cee73168591aee502e9020262038134ef384` |
| 89 | `theorem` | [ConvexOn.lt_right_of_left_lt'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-lt-right-of-left-lt.md) | 795 | `result-track:1dbcb5e8c41ca2614b5a3d9946b715fa9416a739a623e2f8c1665212fe7e9435` |
| 90 | `theorem` | [ConcaveOn.lt_right_of_left_lt'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-lt-right-of-left-lt-source-edition-2.md) | 802 | `result-track:ff7f17acdaea955501fba425fb47dd7b1ea0e23abf620235787f4ed4ac91c426` |
| 91 | `theorem` | [ConvexOn.lt_left_of_right_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-lt-left-of-right-lt-source-edition-2.md) | 808 | `result-track:444347db393e5ddf99e34c8d9c5465f2320a277769056d08cca988e5dc0e51cd` |
| 92 | `theorem` | [ConcaveOn.left_lt_of_lt_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-left-lt-of-lt-right.md) | 814 | `result-track:1cf9eaba33dd1258edce08b958538d40dca21c41de17116bb9a30d3d02f348d1` |
| 93 | `theorem` | [ConvexOn.lt_right_of_left_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-lt-right-of-left-lt-source-edition-2.md) | 819 | `result-track:4a54810be10d7f6377e3f3566381cd8490ffa03d680d756893179c9ad2764c10` |
| 94 | `theorem` | [ConcaveOn.lt_right_of_left_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-lt-right-of-left-lt.md) | 825 | `result-track:cac24dfedbbab731185e2ae4cf1bf21ddf4f8764391236d809cf718964d53d4c` |
| 95 | `theorem` | [neg_convexOn_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/neg-convexon-iff.md) | 840 | `result-track:832edc814a81f31831c00496489ff85cd1edcacbb5f90d0f2a3ea64eb8fde0ce` |
| 96 | `theorem` | [neg_concaveOn_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/neg-concaveon-iff.md) | 855 | `result-track:10609a2160d5cace628b91609249f31cbec1abc056609aabeb2c2dc1f5d52dc8` |
| 97 | `theorem` | [neg_strictConvexOn_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/neg-strictconvexon-iff.md) | 861 | `result-track:2ee67e550a86d18a853a4f6f72cc6e5d083c8ac907d33c8ae0c1a93a7583b6ab` |
| 98 | `theorem` | [neg_strictConcaveOn_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/neg-strictconcaveon-iff.md) | 876 | `result-track:5a43954ea4118bd489b00a929b8b016af0ff7f12e5aa9188d9a0e32741954f07` |
| 99 | `theorem` | [ConvexOn.sub](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-sub.md) | 892 | `result-track:e1a163c29669f4d189fa79684d272dc8b35b8bbe50389b714f9925d438aaf070` |
| 100 | `theorem` | [ConcaveOn.sub](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-sub.md) | 896 | `result-track:65eb4449d9bd96647cdfc9a1f2eab466bbd2048561ef93f041e5acede421c741` |
| 101 | `theorem` | [StrictConvexOn.sub](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconvexon-sub.md) | 900 | `result-track:2ac490e1b0a9fbbedd47d0f67e3dede270a009a33ff8a3710245a6308b9e9503` |
| 102 | `theorem` | [StrictConcaveOn.sub](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconcaveon-sub.md) | 905 | `result-track:143d696adb9fa94f963788c512abd30f6e0216e102e0b7e5e032950c32e06bb0` |
| 103 | `theorem` | [ConvexOn.sub_strictConcaveOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-sub-strictconcaveon.md) | 910 | `result-track:f79b836e65f6bc48e96d9b7117cdee7a5feb3734a071d148baeba2a123c2cee6` |
| 104 | `theorem` | [ConcaveOn.sub_strictConvexOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-sub-strictconvexon.md) | 915 | `result-track:8c6e0e5f3242e0e9025456afe3a297b85793345f1a5e354e5e7003c4c369bd68` |
| 105 | `theorem` | [StrictConvexOn.sub_concaveOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconvexon-sub-concaveon.md) | 920 | `result-track:306d477766910ba8afdb4afa4209f102322a889e928bf7ef19ec2a179c1d5c10` |
| 106 | `theorem` | [StrictConcaveOn.sub_convexOn](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconcaveon-sub-convexon.md) | 925 | `result-track:72c2d46f662a7d0ca8e3dbd0a4f63084b0bf3106e0ec166710cc65fa4c91a16f` |
| 107 | `theorem` | [StrictConvexOn.translate_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconvexon-translate-right.md) | 940 | `result-track:57f7c947d7fd45c6205aeda1b35511ed4b3668070ce154e16eca70708ff39148` |
| 108 | `theorem` | [StrictConcaveOn.translate_right](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconcaveon-translate-right.md) | 950 | `result-track:50da18858de770fda1ba11742378567fd507db5974322ebdf129c848b15458fd` |
| 109 | `theorem` | [StrictConvexOn.translate_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconvexon-translate-left.md) | 956 | `result-track:cd68963b1af7a10f871d7e165fe85270beae6ada2a157a02f4508efc3b4c0e7a` |
| 110 | `theorem` | [StrictConcaveOn.translate_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconcaveon-translate-left.md) | 962 | `result-track:99f8e2a14f5a08e380405efb5f4cc7df36f016524e7407dfc09f13e212457fa2` |
| 111 | `theorem` | [ConvexOn.smul](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-smul.md) | 983 | `result-track:85e02884d4c206981d9ea2c33868b1e7c149b1706e802c150eb58aa9d9d6dc3c` |
| 112 | `theorem` | [ConcaveOn.smul](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-smul.md) | 991 | `result-track:9773903afc4bca72954ce01ddbd87aaf5bc98658d2bd8458ee96466512c2cc55` |
| 113 | `theorem` | [ConvexOn.comp_affineMap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-comp-affinemap.md) | 1015 | `result-track:57f361a09c5a8016a3c9080b4895dfb71d8a338b3c09a188d3e07ca792477469` |
| 114 | `theorem` | [ConcaveOn.comp_affineMap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-comp-affinemap.md) | 1025 | `result-track:6033946bddd3946998e9d7cf56ee8ca649eafc96678b1bab4390a8f9665c74e5` |
| 115 | `theorem` | [convexOn_iff_div](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-iff-div.md) | 1048 | `result-track:4c55184abd477b33f2ac5091c173357586b1cef76b239dc92d5b2f47ffe1641f` |
| 116 | `theorem` | [concaveOn_iff_div](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-iff-div.md) | 1060 | `result-track:6b359b182212fd6d412ac6d7b0e8df4adb64fd4f855cdc26d05f4eb45bf607eb` |
| 117 | `theorem` | [strictConvexOn_iff_div](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconvexon-iff-div.md) | 1067 | `result-track:33c69d7efcf8716b3b618bbb1d6f2a63003061b8b347bfb35e283276095c267c` |
| 118 | `theorem` | [strictConcaveOn_iff_div](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/strictconcaveon-iff-div.md) | 1080 | `result-track:8a738a6a518448c3e4825ce5486367e6498c420365bed02832234c70d74c9098` |
| 119 | `theorem` | [OrderIso.strictConvexOn_symm](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/orderiso-strictconvexon-symm.md) | 1098 | `result-track:bf54afe470d3964a64637007ad626c28d5fe1f72d0bd45e83328ea75a2330aeb` |
| 120 | `theorem` | [OrderIso.convexOn_symm](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/orderiso-convexon-symm.md) | 1108 | `result-track:af3042691436c49aa741778304eb0e1a060168e501d5672b2d4fbe8630137352` |
| 121 | `theorem` | [OrderIso.strictConcaveOn_symm](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/orderiso-strictconcaveon-symm.md) | 1117 | `result-track:8b58c476f1e68cf5083f6a035592b4324443a1f44738babdd6646bffb6ef33ff` |
| 122 | `theorem` | [OrderIso.concaveOn_symm](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/orderiso-concaveon-symm.md) | 1127 | `result-track:5cf1348a3e7d495d197e5285a73ef40cc2ebf8070142d8ffab89341887c1c9d6` |
| 123 | `theorem` | [ConvexOn.le_right_of_left_le''](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-le-right-of-left-le-source-edition-3.md) | 1143 | `result-track:7d6e3785475b175c8579147a57fdeac9321f59c2c64021341b23f761791987d5` |
| 124 | `theorem` | [ConvexOn.le_left_of_right_le''](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/convexon-le-left-of-right-le.md) | 1149 | `result-track:40e2cc6a2e0fda5fd8fefa359facbc91f6abac6594dbd24de57e24c033a3e605` |
| 125 | `theorem` | [ConcaveOn.right_le_of_le_left''](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-right-le-of-le-left.md) | 1155 | `result-track:1377577660262e1ba9618055708f62714fd02737388c64bf7e8ba5a2bb542eea` |
| 126 | `theorem` | [ConcaveOn.left_le_of_le_right''](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/FunctionNamespacedAligned.lean/declarations/concaveon-left-le-of-le-right-source-edition-2.md) | 1160 | `result-track:b5882182172d777a9714b0ac816d94eb144ff98415e57ac2352ceff6928ca226` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e2a36c9a4d0b015cf1ce73fca26c3771564fda8e39b6bba2758361c0cdaba53d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Function/Variante72cc95888264e1981603ef5e9f2f3657bf6f6b4cd1b5d1b89482537088db18c.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Function/Variante72cc95888264e1981603ef5e9f2f3657bf6f6b4cd1b5d1b89482537088db18c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
