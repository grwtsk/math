# Verification target: Bornology Basic Namespaced Nonempty Of Not Is Bounded

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5bcabb11a441aa9c4f45028f07cb321c7f82c5af",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant82abc116fc8797df29c7afdb370ef7a755153bd2b169c2685740f6bc7471efe8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/index.md) · [Full source](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5bcabb11a441aa9c4f45028f07cb321c7f82c5af`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant82abc116fc8797df29c7afdb370ef7a755153bd2b169c2685740f6bc7471efe8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant82abc116fc8797df29c7afdb370ef7a755153bd2b169c2685740f6bc7471efe8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Cofinite` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Bornology](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/bornology.md) | 55 | `declaration-track:fc761e97f059b415d26253392d148876b14e556613ba5420914f2863c88f6c17` |
| 2 | `def` | [Bornology.cobounded](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/bornology-cobounded.md) | 69 | `declaration-track:d2753aca3458cde057bc5705a2185948192b748c683c4c8d1639357e14f601ff` |
| 3 | `lemma` | [Bornology.le_cofinite](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/bornology-le-cofinite.md) | 73 | `result-track:9c6a4457b0bc6b6a6962e7b76aa48749810f26b979972006224c1f31d3c99f8b` |
| 4 | `lemma` | [Bornology.ext](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/bornology-ext.md) | 79 | `result-track:6f5cbfad1a89b58e21572fec8f96d1bbe6e599aa2877c30442a8692828952f3b` |
| 5 | `def` | [Bornology.ofBounded](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/bornology-ofbounded.md) | 89 | `declaration-track:2bf9008b932114b4966f995232cae446cfd09f67e43eac3b1371952bb35e751f` |
| 6 | `def` | [Bornology.ofBounded'](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/bornology-ofbounded-source-edition-2.md) | 100 | `declaration-track:441f6339337e2d4c4d13770e9b2009ac24619c3cc8a24ba5498ce35b75c9fa0a` |
| 7 | `def` | [IsCobounded](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/iscobounded.md) | 116 | `declaration-track:2d2d439a54c9fe5f51b7bd8fc585791980e0c776da8d438805f3437128990003` |
| 8 | `def` | [IsBounded](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/isbounded.md) | 120 | `declaration-track:8abe4569bc7ae577c44054d6233afa4ed97f3643023bbaa278841cf3aa745763` |
| 9 | `theorem` | [isCobounded_def](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/iscobounded-def.md) | 125 | `result-track:eb5394989d8523840fdb8f3f8ce4dd33bef37357e4ef9e8f13a278eba897e180` |
| 10 | `theorem` | [isBounded_def](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/isbounded-def.md) | 128 | `result-track:78e1f410946d280993f4b92a184ea710767cdeed105cff04f27e4795775e3c3e` |
| 11 | `theorem` | [isBounded_compl_iff](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/isbounded-compl-iff.md) | 132 | `result-track:f28b0bd248b2bd336dbaa21c9d24bb0d34ad33ab8dbf87c29c38920ff39315ee` |
| 12 | `theorem` | [isCobounded_compl_iff](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/iscobounded-compl-iff.md) | 136 | `result-track:6a845d2ce7d7deb983d4b044fc593214151040f052d443aa6bbb6cf2cd57ac48` |
| 13 | `theorem` | [isBounded_empty](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/isbounded-empty.md) | 144 | `result-track:ac70f975cfd7bfe8d0a2aafbae9e7d42cb8603198ccca2141e11696b8c3f5f64` |
| 14 | `theorem` | [nonempty_of_not_isBounded](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/nonempty-of-not-isbounded.md) | 148 | `result-track:196098f14cd721fa55b1cb7b43fce235aa548eb4d3b01672a41e8b48b779d2a1` |
| 15 | `theorem` | [isBounded_singleton](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/isbounded-singleton.md) | 154 | `result-track:5a460d01dc6af05e46fa94a66534688264216d1b5443164e5e53cd628dd170a2` |
| 16 | `theorem` | [isBounded_iff_forall_mem](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/isbounded-iff-forall-mem.md) | 158 | `result-track:18c7f77d8075f032d5a9341b041dbb817e6e147edfd0e460a0355b09e5312921` |
| 17 | `theorem` | [isCobounded_univ](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/iscobounded-univ.md) | 164 | `result-track:dd6cc5c9493689f25b8db13caf123d90c039dcbd2835e87799a173d5339e3c13` |
| 18 | `theorem` | [isCobounded_inter](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/iscobounded-inter-source-edition-2.md) | 168 | `result-track:aee52f3176ec70b83a47bdcf0ffca8e4ca057ec3da6c35f80acfe28888ee79eb` |
| 19 | `theorem` | [IsCobounded.inter](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/iscobounded-inter.md) | 171 | `result-track:387dfa6643fc92480c907d1e21a94f6950b301d6d263b560f2e3bb88698dfe4e` |
| 20 | `theorem` | [isBounded_union](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/isbounded-union.md) | 175 | `result-track:4169951f196fcb3ed01a352b448eb8dc3a11949a4f80a31de325eb63ac7cb755` |
| 21 | `theorem` | [IsBounded.union](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/isbounded-union-source-edition-2.md) | 178 | `result-track:e5cbd46fb7b5c094ea7e40b99ec979511f80aae189c31e93117c9f5bfa1a1725` |
| 22 | `theorem` | [IsCobounded.superset](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/iscobounded-superset.md) | 181 | `result-track:508b1b19411c9b57f5d182222560994b4f897fbdd02ddc18bf08ae24f07f858e` |
| 23 | `theorem` | [IsBounded.subset](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/isbounded-subset.md) | 184 | `result-track:b93114958ed30fbd16c446e907f550a4a67e580638a1ab6f6fd87e1578cb118b` |
| 24 | `theorem` | [sUnion_bounded_univ](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/sunion-bounded-univ.md) | 188 | `result-track:460395420303efe7cced0ce14626ea61e3bda31f3cce8a24d5176b6ddf8df191` |
| 25 | `theorem` | [IsBounded.insert](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/isbounded-insert.md) | 191 | `result-track:0f7d7ba122579cb7f9415b7654606197de71190456ef5a48efe39d699d3be536` |
| 26 | `theorem` | [isBounded_insert](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/isbounded-insert-source-edition-2.md) | 195 | `result-track:d064da8a1a7f720bdb5bf8d2e12601f28967bcca0703c4a46e97d2d8ef2afbac` |
| 27 | `theorem` | [comap_cobounded_le_iff](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/comap-cobounded-le-iff.md) | 198 | `result-track:7a24cfb3dc7ad68780e8de9ad40ada7441a67e4d12a1434bdcae1c4236879b41` |
| 28 | `theorem` | [ext_iff'](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/ext-iff.md) | 209 | `result-track:94d34dec675f60dac593cb5dbc1a426d1e462fe219c5d0de2cdc45f73531c47b` |
| 29 | `theorem` | [ext_iff_isBounded](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/ext-iff-isbounded.md) | 213 | `result-track:2e4c53b4136caa378bad316a5431c8713cfe2a14f18ce0e96392dc744f6a6c6e` |
| 30 | `theorem` | [isCobounded_ofBounded_iff](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/iscobounded-ofbounded-iff.md) | 219 | `result-track:0eae441fe60871e51d24b4787c16caece2a83c910d56b793ceac0d273267aaf6` |
| 31 | `theorem` | [isBounded_ofBounded_iff](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/isbounded-ofbounded-iff.md) | 223 | `result-track:c92264b0dc27068256f26cc0d226d0f1b299cacdc696bc43f8d3a43c64a723c9` |
| 32 | `theorem` | [isCobounded_biInter](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/iscobounded-biinter.md) | 229 | `result-track:fbbac3a060bd6b52aad2930f88c5b5cb05d277dcde91e71173409dd7ddac6926` |
| 33 | `theorem` | [isCobounded_biInter_finset](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/iscobounded-biinter-finset.md) | 234 | `result-track:9aeaeb18e78f1360eeeee44372fcf870756b5ce01764fbd6f8957f045bcf7f1f` |
| 34 | `theorem` | [isCobounded_iInter](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/iscobounded-iinter.md) | 239 | `result-track:4b3d0366899d5039950d66f97dc7fb410a61501ad14fe3cf98435b9f26f53829` |
| 35 | `theorem` | [isCobounded_sInter](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/iscobounded-sinter.md) | 243 | `result-track:4c80569de379141f2abbd73343f06224c3811966d9fa4303d8fc93c624fbf3d7` |
| 36 | `theorem` | [isBounded_biUnion](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/isbounded-biunion.md) | 247 | `result-track:44c6d2a6588cbe7f1074414a189447fc6e759ff1ccc01e12280a6d04dc3e5395` |
| 37 | `theorem` | [isBounded_biUnion_finset](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/isbounded-biunion-finset.md) | 251 | `result-track:774fdd5aeb20d33c015c48eec95326710f76ae7cd2bcb0746b6ab5a5e1819db1` |
| 38 | `theorem` | [isBounded_sUnion](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/isbounded-sunion.md) | 255 | `result-track:20a341a76a2f9bf88bb2278b9844cbddafc03d3e6b3b28dc398475a24615a10c` |
| 39 | `theorem` | [isBounded_iUnion](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/isbounded-iunion.md) | 259 | `result-track:78134ec83dd6149dccbbd954a634562e59d11043b90fe01f243072527589a3b9` |
| 40 | `lemma` | [eventually_ne_cobounded](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/eventually-ne-cobounded.md) | 263 | `result-track:7d7a0093c248656786a284f74653ebcd5d3a9c6c03d2987bb317fd775ba80134` |
| 41 | `theorem` | [Filter.HasBasis.disjoint_cobounded_iff](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/filter-hasbasis-disjoint-cobounded-iff.md) | 270 | `result-track:5eb583ff06ceaa5a9ae551c6aa135fc8f80fdf6b856bd9903119dc9336277382` |
| 42 | `theorem` | [Set.Finite.isBounded](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/set-finite-isbounded.md) | 275 | `result-track:5118d393a911533af3a7ace9f97945d0103fffc22459cad33dac3517bd49ed09` |
| 43 | `lemma` | [Filter.Tendsto.eventually_ne_cobounded](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/filter-tendsto-eventually-ne-cobounded.md) | 278 | `result-track:ac87df21270c6dd4a1ad6efbe3992611a083c9c7b78d7135bad8c860e03ea36a` |
| 44 | `instance` | [(anonymous)](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/instance-source-edition-2.md) | 282 | `declaration-track:fe8e2b4e2f2378dff33d4f020e4cc3d301e651c9f38855b9129bc4f2e5bce0b2` |
| 45 | `abbrev` | [Bornology.cofinite](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/bornology-cofinite.md) | 286 | `declaration-track:254ff3d11d54fb35234bee427bcca65a990f8d7c7c5870ed352e6af58ba9724e` |
| 46 | `class` | [BoundedSpace](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/boundedspace.md) | 291 | `declaration-track:93af4852558c171c5174ad88dbb0dbd20867d1e191b5f76478f17315c1792cf1` |
| 47 | `instance` | [(anonymous)](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/instance.md) | 296 | `declaration-track:92393aa5a161f8b90987ca33759416690cf2c82aa80b3fe585ef65599d3bc9fe` |
| 48 | `theorem` | [isBounded_univ](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/isbounded-univ.md) | 304 | `result-track:052330e178df9985bf199db97a40fbf2707fa6e0c1dcaf631ea0d95b46943caa` |
| 49 | `theorem` | [cobounded_eq_bot_iff](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/cobounded-eq-bot-iff.md) | 307 | `result-track:f1f3db3c44da0d2106fb7d42a683d1265baba624e91683dd98f12967afc36b74` |
| 50 | `theorem` | [IsBounded.all](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/isbounded-all.md) | 312 | `result-track:34386f348233e72eae7e12cd1a6e8aaf05ba5c382e07e49459d53d9272b05dd1` |
| 51 | `theorem` | [IsCobounded.all](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/iscobounded-all.md) | 315 | `result-track:8da103c9f7e0337a71d26153859ea0534a0611697bc76a964b0d5223c9f5e3f1` |
| 52 | `theorem` | [cobounded_eq_bot](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/cobounded-eq-bot.md) | 321 | `result-track:6aa67aaa6759f21eb07bca56738bcd1e349410e285f87c6ff6b4e642da33d502` |
| 53 | `instance` | [instBornology](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/instbornology.md) | 329 | `declaration-track:5ec1ebe45396f2f350c828dc154a680a8572ac82ccfe50fb6df667962778a8ea` |
| 54 | `lemma` | [isCobounded_preimage_ofDual](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/iscobounded-preimage-ofdual.md) | 331 | `result-track:d0726f3f70dc4fe6f2c4948494508f966d5c718479d8357c25e5f22aa939f60b` |
| 55 | `lemma` | [isCobounded_preimage_toDual](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/iscobounded-preimage-todual.md) | 334 | `result-track:6973a58359e6c85dc8d7f9e122480e41a3d96ef82fda54331162a846b8db29dc` |
| 56 | `lemma` | [isBounded_preimage_ofDual](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/isbounded-preimage-ofdual.md) | 337 | `result-track:77e549df4853185cb5c0bae3743b80791c2a5f56ca3f5387d6f45384d62e9859` |
| 57 | `lemma` | [isBounded_preimage_toDual](../../../../GeneralTopology/BornologyBasicNamespacedNonemptyOfNotIsBounded.lean/declarations/isbounded-preimage-todual.md) | 340 | `result-track:03fe03ad436ede571fa5de66dcb89a086b9ba933b6e629e656bdcb7a9da91cdd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=657cd080dd4d8169e5247b17508fc6259a396e840c76b493f552c5fe50245330 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant82abc116fc8797df29c7afdb370ef7a755153bd2b169c2685740f6bc7471efe8.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Basic/Variant82abc116fc8797df29c7afdb370ef7a755153bd2b169c2685740f6bc7471efe8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
