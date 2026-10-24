# Verification target: GRWTSK.Topology.GeneralTopology.ReImTopology.Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32c4888415dc3fc8713186ea62211746563a985e",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32c4888415dc3fc8713186ea62211746563a985e`.

Source path: `GRWTSK/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.FiberBundle.IsHomeomorphicTrivialBundle` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isHomeomorphicTrivialFiberBundle_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/ishomeomorphictrivialfiberbundle-re--164b41fa38f290bbf8b522e4.md) | 41 | `result-track:164b41fa38f290bbf8b522e49ed3af41a9066d5126fdbce7a3dc2925f14654ca` |
| 2 | `theorem` | [isHomeomorphicTrivialFiberBundle_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/ishomeomorphictrivialfiberbundle-im--50cddde6c9b0dea0ac31116b.md) | 45 | `result-track:50cddde6c9b0dea0ac31116b9f399ca7f372cc39dc2fe03fa130c7f93584d98e` |
| 3 | `theorem` | [isOpenMap_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/isopenmap-re--4c5d2f3ad4cadf214c63f8aa.md) | 48 | `result-track:4c5d2f3ad4cadf214c63f8aa6bd1a6325f402c19dfc3b01adab26ddf9cf6c7b5` |
| 4 | `theorem` | [isOpenMap_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/isopenmap-im--c6e950de03fca72781590cb8.md) | 51 | `result-track:c6e950de03fca72781590cb834862a74b5140fb07be148d0e6ec8cfa30797e89` |
| 5 | `theorem` | [isQuotientMap_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/isquotientmap-re--e11fe5d16512e435fc2dd48b.md) | 54 | `result-track:e11fe5d16512e435fc2dd48b4272f3cb21263df68c67f59adaa8dc659450b50c` |
| 6 | `theorem` | [isQuotientMap_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/isquotientmap-im--f046528c248d4692670c830b.md) | 60 | `result-track:f046528c248d4692670c830b4080bc390a6388fde2440d55e5939b55adeee4c2` |
| 7 | `theorem` | [interior_preimage_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/interior-preimage-re--e8ee45190b2b016733bb0dda.md) | 66 | `result-track:e8ee45190b2b016733bb0ddaa1cb957b8de92b5583a49e992e6a40556e1834f6` |
| 8 | `theorem` | [interior_preimage_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/interior-preimage-im--753c5ac2b10356f73db4992e.md) | 69 | `result-track:753c5ac2b10356f73db4992e9210abca6b8e046a3659781b564962530d837b4b` |
| 9 | `theorem` | [closure_preimage_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/closure-preimage-re--7b8d941ddb36822e55a513ef.md) | 72 | `result-track:7b8d941ddb36822e55a513ef1bb7f7ce40ffc0d783c8d36ab68e785e2a547542` |
| 10 | `theorem` | [closure_preimage_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/closure-preimage-im--0d8bd2b455719426476fb61a.md) | 75 | `result-track:0d8bd2b455719426476fb61a7cde989e3d531b7822553bddd84a5399317900c3` |
| 11 | `theorem` | [frontier_preimage_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/frontier-preimage-re--56a52a2fcc30c3b1eb646c63.md) | 78 | `result-track:56a52a2fcc30c3b1eb646c63c7c4bb100e5035958a171437d839ee737cd5f582` |
| 12 | `theorem` | [frontier_preimage_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/frontier-preimage-im--33ce07d44362312622030cc3.md) | 81 | `result-track:33ce07d44362312622030cc348e666f6d8cf09d0cb16ada3269044420113e6d7` |
| 13 | `theorem` | [interior_setOf_re_le](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/interior-setof-re-le--f3573deea3bb8d8fd904df19.md) | 85 | `result-track:f3573deea3bb8d8fd904df19426e90c2c827add1457c2cbaec6e9c5888468986` |
| 14 | `theorem` | [interior_setOf_im_le](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/interior-setof-im-le--322988af5156e4ce48bdb13c.md) | 89 | `result-track:322988af5156e4ce48bdb13ce58a1d6702d2e4ef6be97ecd2f756f1ec35f484a` |
| 15 | `theorem` | [interior_setOf_le_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/interior-setof-le-re--54bea1df4afea0fd619cc7d0.md) | 93 | `result-track:54bea1df4afea0fd619cc7d04ec77cd304868b0d5a3e6c08a2773b0a5cb10695` |
| 16 | `theorem` | [interior_setOf_le_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/interior-setof-le-im--edca2829639939ce15c4e53b.md) | 97 | `result-track:edca2829639939ce15c4e53b419a9b4ca6f14381e8f8d9005a4320d0447ac015` |
| 17 | `theorem` | [closure_setOf_re_lt](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/closure-setof-re-lt--130fa46a9834bf155d8a089a.md) | 101 | `result-track:130fa46a9834bf155d8a089a9078b7df899e09319fd1d4e2b9dbc0aa35dadf9e` |
| 18 | `theorem` | [closure_setOf_im_lt](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/closure-setof-im-lt--7317e0a4639ff19a477d4aeb.md) | 105 | `result-track:7317e0a4639ff19a477d4aebc76c2ccfc38b35b3f363a7b827871ddbf9aa71e3` |
| 19 | `theorem` | [closure_setOf_lt_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/closure-setof-lt-re--db267c631c8677c3e56a1fe0.md) | 109 | `result-track:db267c631c8677c3e56a1fe0c603c1494474940026d951ec4a5176d2b02661f3` |
| 20 | `theorem` | [closure_setOf_lt_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/closure-setof-lt-im--ed1d792d89038ac6ef39ddca.md) | 113 | `result-track:ed1d792d89038ac6ef39ddca3e8ca0a04d2c33ee942af101e50c563f89812d30` |
| 21 | `theorem` | [frontier_setOf_re_le](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/frontier-setof-re-le--788a1f37a1846725b5d3f4bf.md) | 117 | `result-track:788a1f37a1846725b5d3f4bf93a11d6c10e411fd07ca45386a211e9b5d159b3c` |
| 22 | `theorem` | [frontier_setOf_im_le](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/frontier-setof-im-le--cdffccf2d5bd6a41dc580ac7.md) | 121 | `result-track:cdffccf2d5bd6a41dc580ac76a4d168c2c2b87d582618dc2ad928260c550d164` |
| 23 | `theorem` | [frontier_setOf_le_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/frontier-setof-le-re--20fc04a74439648e105e03a0.md) | 125 | `result-track:20fc04a74439648e105e03a021bd3112d288c144240ef1392271dc1d5250eaa0` |
| 24 | `theorem` | [frontier_setOf_le_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/frontier-setof-le-im--9e9c80434342eb8cf3d58f8b.md) | 129 | `result-track:9e9c80434342eb8cf3d58f8b863297b432798b83612d9e61d926d53273e433b9` |
| 25 | `theorem` | [frontier_setOf_re_lt](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/frontier-setof-re-lt--eaad3e2fe8f46f2c948554da.md) | 133 | `result-track:eaad3e2fe8f46f2c948554dab552626b7927e717fce133f9c4e65b155feca69f` |
| 26 | `theorem` | [frontier_setOf_im_lt](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/frontier-setof-im-lt--340b86fac2fd6cb0ffaa12ba.md) | 137 | `result-track:340b86fac2fd6cb0ffaa12bae819db084791f9be2bf83b760ff3aaf5ecaa07cc` |
| 27 | `theorem` | [frontier_setOf_lt_re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/frontier-setof-lt-re--76ccbb7a1b77d633d1a56500.md) | 141 | `result-track:76ccbb7a1b77d633d1a56500d963259b36f4c02ff03dd385e6008ee611613a88` |
| 28 | `theorem` | [frontier_setOf_lt_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/frontier-setof-lt-im--aca14ca2cefe2331f0562aa0.md) | 145 | `result-track:aca14ca2cefe2331f0562aa07c1607182ad3408686d758833f1710321cdf4aa2` |
| 29 | `theorem` | [closure_reProdIm](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/closure-reprodim--52c53f0bfc3bb08e26b22050.md) | 148 | `result-track:52c53f0bfc3bb08e26b22050e417af549c28f688f55856482733e59816562037` |
| 30 | `theorem` | [interior_reProdIm](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/interior-reprodim--aa7b63910206d194bbd1bf00.md) | 152 | `result-track:aa7b63910206d194bbd1bf00a4fbafaf8e66badc1f9eb7f2d628b8db6328600e` |
| 31 | `theorem` | [frontier_reProdIm](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/frontier-reprodim--d70904f96462741239c8b990.md) | 155 | `result-track:d70904f96462741239c8b9900c5ff3df7cc2dc8bd84d126659f0d9eef0dfc130` |
| 32 | `theorem` | [frontier_setOf_le_re_and_le_im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/frontier-setof-le-re-and-le-im--aa2972ef4055bf6f8c899f2c.md) | 160 | `result-track:aa2972ef4055bf6f8c899f2c67fbb3dd72ab4bb1b8bcd5411b28fb6918e14d5d` |
| 33 | `theorem` | [frontier_setOf_le_re_and_im_le](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/frontier-setof-le-re-and-im-le--930f4e3cacbcc12f17f1ea01.md) | 164 | `result-track:930f4e3cacbcc12f17f1ea016247d22e8a43ed5696359d4d041ca9000487fa2f` |
| 34 | `theorem` | [IsOpen.reProdIm](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/isopen-reprodim--84840a1ef2b244adea6e0f9d.md) | 175 | `result-track:84840a1ef2b244adea6e0f9dcd30bcbf0bff148b5009fe59acfbc848058d0f60` |
| 35 | `theorem` | [IsClosed.reProdIm](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/isclosed-reprodim--72608ad3b52c604cbd59d807.md) | 178 | `result-track:72608ad3b52c604cbd59d807f11195fd631cd3c9fc4400a5ce41d211724ce515` |
| 36 | `theorem` | [Bornology.IsBounded.reProdIm](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/bornology-isbounded-reprodim--ff1d0eeb2abbbb9d0b0a4ca3.md) | 181 | `result-track:ff1d0eeb2abbbb9d0b0a4ca335941954989058f8ba36cf971f38e5be648e512c` |
| 37 | `lemma` | [TendstoUniformlyOn.re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/tendstouniformlyon-re--9e0857e446b18430bc0d2b54.md) | 188 | `result-track:9e0857e446b18430bc0d2b54fbdb958bb06f60d10aaef7d4d9d5a3a6182340f3` |
| 38 | `lemma` | [TendstoUniformly.re](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/tendstouniformly-re--ee891839b0e0f78b8267d8b6.md) | 193 | `result-track:ee891839b0e0f78b8267d8b6925be8736ea898e5f47cb0e1079efa9ea2f652dd` |
| 39 | `lemma` | [TendstoUniformlyOn.im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/tendstouniformlyon-im--0d2a302cc6f145f457e4b2f9.md) | 198 | `result-track:0d2a302cc6f145f457e4b2f971fd60dde48a8a5ac76c473f261ce51827bbff6f` |
| 40 | `lemma` | [TendstoUniformly.im](../../../../../mathematics/Topology/GeneralTopology/ReImTopology/Variant77a88b3f06d101e8e78e6602ee5682af48e7b989514584d607cbe58d1d5facc5.lean/declarations/tendstouniformly-im--af57234af63733a6fbdaa027.md) | 203 | `result-track:af57234af63733a6fbdaa02744e8db94df5cd5079b83f683f336ac21aa18c3d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
