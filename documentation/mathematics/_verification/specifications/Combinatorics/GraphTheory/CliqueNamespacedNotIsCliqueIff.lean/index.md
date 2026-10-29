# Verification target: Clique Namespaced Not Is Clique Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5dc19580174aabe33fed24944c87b5ccf551fa74",
  "lexical_observation_count": 145,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant07172a59907e9145227e82435beb3cb55477263afe721c66a223d08a05ab31b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5dc19580174aabe33fed24944c87b5ccf551fa74`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant07172a59907e9145227e82435beb3cb55477263afe721c66a223d08a05ab31b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant07172a59907e9145227e82435beb3cb55477263afe721c66a223d08a05ab31b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Path` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Operations` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Pairwise` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pigeonhole` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Powerset` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Lattice` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsClique](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isclique.md) | 50 | `declaration-track:4a3fc4d4cbb0ff315a36df8898d74aa273cbfba30bc483c81e6cbb0a67e89193` |
| 2 | `theorem` | [isClique_iff](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isclique-iff.md) | 53 | `result-track:6f3e1e3c4376ad24d8d8f7e841f1b4a93d3f58aff172ceef1aeef155d95a33e8` |
| 3 | `lemma` | [not_isClique_iff](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/not-isclique-iff.md) | 56 | `result-track:189dbe4955b9501074ce7dd07bde24f245139662dbba8631efa41d4daa265945` |
| 4 | `theorem` | [isClique_iff_induce_eq](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isclique-iff-induce-eq.md) | 60 | `result-track:2ec9849d1a3d574df0b3ddbdcc363757eb0ab69e3314d660f7ffc9ecbc089f12` |
| 5 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/instance-source-edition-2.md) | 73 | `declaration-track:c1854c0b770278f4ebdc0b5ed6d599a1f4dfb09116cc2f86c2e23496007d964e` |
| 6 | `lemma` | [isClique_empty](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isclique-empty.md) | 78 | `result-track:0f673e2fef293114c7e5a9dcbcda15ed8dcb4a282126aca9b83fbe096baa9ba0` |
| 7 | `lemma` | [isClique_singleton](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isclique-singleton.md) | 80 | `result-track:eefc187a7fc651e720433f85542ce7a455ec2cd3d8b06c0b11eb74f4065e98da` |
| 8 | `theorem` | [IsClique.of_subsingleton](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isclique-of-subsingleton.md) | 82 | `result-track:58d4e66d653a5459617a4aaf0be1d33cc05d72ab5e44aa6817f8af209cdb8add` |
| 9 | `lemma` | [isClique_pair](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isclique-pair.md) | 85 | `result-track:f8503bc697b91f785c6172f9f5d4de0c2e0a00265adb405e9a5f72bb34fd32b5` |
| 10 | `lemma` | [isClique_insert](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isclique-insert-source-edition-2.md) | 88 | `result-track:990cf27d68986c4e2e390c8f961cbc1eb1df50869cbf90306ca594512a91ec4c` |
| 11 | `lemma` | [isClique_insert_of_notMem](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isclique-insert-of-notmem.md) | 91 | `result-track:3b6d0974131810175531f1e74d1bf84892ae3985564560ff6cb208a02b26fe2c` |
| 12 | `lemma` | [IsClique.insert](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isclique-insert.md) | 97 | `result-track:228e793ec660ca4f472cbf970f0bb971f5eaac4803935f0a27e5a76070548c71` |
| 13 | `theorem` | [IsClique.mono](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isclique-mono.md) | 100 | `result-track:560a061950654f5d50d646239a71639709361662358279c527e8d4d3a2ac107f` |
| 14 | `theorem` | [IsClique.subset](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isclique-subset.md) | 102 | `result-track:944b8942ecffb056a56992707c8c9492df0755bbefe56bc309e002bfbbada9ef` |
| 15 | `theorem` | [isClique_bot_iff](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isclique-bot-iff.md) | 105 | `result-track:0867d36106705d3c7c715f68c04e4d3cdea35b079562f8a0fbf7929584a5a745` |
| 16 | `theorem` | [IsClique.map](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isclique-map.md) | 110 | `result-track:712c902fef6364e0c8830642966e23deca30d4e5b25b9f7ba27c9ddbd6b2ace1` |
| 17 | `theorem` | [isClique_map_iff_of_nontrivial](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isclique-map-iff-of-nontrivial.md) | 114 | `result-track:60e103dadd2c4e891f5e084667d09b516c4f0cb1bd61bfbafd671a8208ec03b7` |
| 18 | `theorem` | [isClique_map_iff](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isclique-map-iff.md) | 127 | `result-track:62eb01f3edb8c008f4f22fdcf17da881d70ec9843649b5a484e221c97cad9dd2` |
| 19 | `theorem` | [isClique_map_image_iff](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isclique-map-image-iff.md) | 133 | `result-track:37a0ee255cba176ff77fa6cee900a57d5e5a765e3abda35de663123eb0b1b9fd` |
| 20 | `theorem` | [isClique_map_finset_iff_of_nontrivial](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isclique-map-finset-iff-of-nontrivial.md) | 142 | `result-track:11924dda8a23ea8dc4e5b78a7446201c1bef6abf43fb7e2309893c50c6b0edc9` |
| 21 | `theorem` | [isClique_map_finset_iff](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isclique-map-finset-iff.md) | 153 | `result-track:c12a1cdf30dcce17efadf137272dd6d6c6b6148ba259e7eaa7aaf52cea335da3` |
| 22 | `theorem` | [IsClique.finsetMap](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isclique-finsetmap.md) | 162 | `result-track:c8b1c7ba862dbcb2e010033a9839646956e2d8a97ec6c8c72d7175068fe3e51a` |
| 23 | `theorem` | [IsClique.of_induce](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isclique-of-induce.md) | 168 | `result-track:1b78cfb1401e0c88804b0eec321f1d13f26ff7aeac955daa140004e6592cf272` |
| 24 | `lemma` | [IsClique.sdiff_of_sup_edge](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isclique-sdiff-of-sup-edge.md) | 174 | `result-track:e2fd68b2f75d1dffeff6c83375a7ca25ac2a2b6ecbc0392d521efde2a8dd2d09` |
| 25 | `lemma` | [isClique_sup_edge_of_ne_sdiff](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isclique-sup-edge-of-ne-sdiff.md) | 180 | `result-track:281ac0e05269389e0568d4470cc04f8375e6d9e84d33f93221bd6307a5b4f1df` |
| 26 | `lemma` | [isClique_sup_edge_of_ne_iff](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isclique-sup-edge-of-ne-iff.md) | 189 | `result-track:ef5def13ada98b1cd303003994033cd5694dfbc17ada49bfd6fac47dacf6c845` |
| 27 | `structure` | [IsNClique](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isnclique.md) | 204 | `declaration-track:2d93e972705c8e7e42c5e8399d0707b28847072deb1d7480b1392e6c4f34eca5` |
| 28 | `theorem` | [isNClique_iff](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isnclique-iff.md) | 208 | `result-track:bec6ac6949e50b60495a18c474183d55986b200e0b4ab1c7b26bcea8dfba5739` |
| 29 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/instance.md) | 211 | `declaration-track:36a5d1ab5b1e26381db645ec1bc580854f090986c0e754010f0d543104b1b804` |
| 30 | `lemma` | [isNClique_empty](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isnclique-empty.md) | 217 | `result-track:30a5bd5d92e1e7cd3945a62e22b02647b3a704caea54974c9fbbe9403b625aa6` |
| 31 | `lemma` | [isNClique_singleton](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isnclique-singleton.md) | 220 | `result-track:56966a083224153a14ec609e0efb2612c549bcce0d191aab4a192f616b19c627` |
| 32 | `theorem` | [IsNClique.mono](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isnclique-mono.md) | 222 | `result-track:e1e7a715cd510dc6b0d5d1dff84e12826df11fbbf77e5de709ac8712b05cb4eb` |
| 33 | `theorem` | [IsNClique.map](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isnclique-map.md) | 226 | `result-track:6ce7e095d1ecc3046c988aea1d1e1b0ea87155918e50bcdec1b0fcb9a2ae9cca` |
| 34 | `theorem` | [isNClique_map_iff](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isnclique-map-iff.md) | 230 | `result-track:29f1fc8d572962c4fd1b5a33dc889acfe818f7154ee66f41cb2753968bd83349` |
| 35 | `theorem` | [isNClique_bot_iff](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isnclique-bot-iff.md) | 241 | `result-track:fff4c0c03e078f894e7f39ea76aea1ab7e1c08652fa59c522ec55934d9385567` |
| 36 | `theorem` | [isNClique_zero](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isnclique-zero.md) | 248 | `result-track:3f58836d37a590d6c74871c0f29d1d81416ca5b8448d8a0034b50db5f057111e` |
| 37 | `theorem` | [isNClique_one](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isnclique-one.md) | 252 | `result-track:79ff6dd73984796113b2e59e8d891458cc93ea0e679a31ca7481d1076e2cc478` |
| 38 | `theorem` | [IsNClique.insert](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isnclique-insert.md) | 259 | `result-track:606438204502502eca6e8342d8b4849e303c86eb7d6007d2f61ba7351a183f83` |
| 39 | `lemma` | [IsNClique.erase_of_mem](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isnclique-erase-of-mem.md) | 266 | `result-track:d21142ec67cb7a7dcdb1aa0de181177838af0e17679391a998da0d05e60615f8` |
| 40 | `lemma` | [IsNClique.insert_erase](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isnclique-insert-erase.md) | 271 | `result-track:85c99417794ba7deb39e04494eaaff27515073286a2a6538472aef5560acee45` |
| 41 | `theorem` | [is3Clique_triple_iff](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/is3clique-triple-iff.md) | 278 | `result-track:7209225623d5fb476b636f644a48697bd1b6251bb60b9e5062cea4214ff07d79` |
| 42 | `theorem` | [is3Clique_iff](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/is3clique-iff.md) | 283 | `result-track:82cb95a5989943c37bbf517d93190c55d00ae090dc1ec51c6c96c963e7fd5aef` |
| 43 | `theorem` | [is3Clique_iff_exists_cycle_length_three](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/is3clique-iff-exists-cycle-length-three.md) | 294 | `result-track:d8ad04547a523f338e556a7c78675addcb7fd5e0413213d04ff506f3cedcb3d4` |
| 44 | `theorem` | [IsNClique.of_induce](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isnclique-of-induce.md) | 304 | `result-track:aa43154a8d4c0f2ec67c13884cae5f75ce4bc3cb5f48a4ec16a5a060977f9dcb` |
| 45 | `lemma` | [IsNClique.erase_of_sup_edge_of_mem](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isnclique-erase-of-sup-edge-of-mem.md) | 311 | `result-track:68b86498e36063de80f500cda71830b4affc652f93e638002bcd7766a353146c` |
| 46 | `def` | [CliqueFree](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefree.md) | 326 | `declaration-track:f73071250756f2ba0817a5dffc579c78c3615816dcbf524f162261c3dea07ceb` |
| 47 | `theorem` | [IsNClique.not_cliqueFree](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isnclique-not-cliquefree.md) | 331 | `result-track:fe1f398660a840dc9f8625eab192cc096dbdaffcd2464a6c5a9384f02cf5c558` |
| 48 | `theorem` | [not_cliqueFree_of_top_embedding](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/not-cliquefree-of-top-embedding.md) | 334 | `result-track:07235854de1c6ce7ec4e4c482ba77ec5fa31c7aadb44283b352eb0ce66200729` |
| 49 | `def` | [topEmbeddingOfNotCliqueFree](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/topembeddingofnotcliquefree.md) | 347 | `declaration-track:cf1fc39307078b0d90307890bd6bc6797acfdc28bc63b3c004ebf70566db47e2` |
| 50 | `theorem` | [not_cliqueFree_iff](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/not-cliquefree-iff.md) | 358 | `result-track:342213e1d74811e5e8726d1acef83562abc4f0d8bc71dbf9567fd1f1878b74da` |
| 51 | `theorem` | [cliqueFree_iff](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefree-iff.md) | 361 | `result-track:c7d42465d33926814765a4a8d890afe95207965a7606b5aa050dccaab42663a1` |
| 52 | `theorem` | [not_cliqueFree_card_of_top_embedding](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/not-cliquefree-card-of-top-embedding.md) | 364 | `result-track:54e0f31abeed57dcb6d73c717e9fbbe68cda155dcd62f24e819cce8a279cc55a` |
| 53 | `lemma` | [not_cliqueFree_zero](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/not-cliquefree-zero.md) | 369 | `result-track:9619af32b11471623127581efdab5c088a4b9b8e955ebbbcc065732c814d2491` |
| 54 | `theorem` | [cliqueFree_bot](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefree-bot.md) | 373 | `result-track:e7ad018d59fe410a4e8ce0852080cd83ca96b18330c4b9ff8ed363e654c6c267` |
| 55 | `theorem` | [CliqueFree.mono](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefree-mono.md) | 378 | `result-track:8f39b24c7437bef09ac938810f32eb862cf427729036994c984be6e7a9c12c5f` |
| 56 | `theorem` | [CliqueFree.anti](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefree-anti.md) | 383 | `result-track:e521c7cc0df821879a368a4a17e2adb3b44dd97f148a16c01e5fff294da3c5b5` |
| 57 | `theorem` | [CliqueFree.comap](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefree-comap.md) | 387 | `result-track:a26d5d3b1c2715fd11241043388ca5d43cb269a8d3805d67d3254edff5285e2c` |
| 58 | `theorem` | [cliqueFree_map_iff](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefree-map-iff.md) | 391 | `result-track:94fa8f56696b3651862107af208382fd5455b4722ea4a67039861ed26a169f1b` |
| 59 | `theorem` | [cliqueFree_of_card_lt](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefree-of-card-lt.md) | 400 | `result-track:8a8f3980de8224230b1bece5942e3e7e8e4a108f3095c32683023c763912a22e` |
| 60 | `theorem` | [cliqueFree_completeMultipartiteGraph](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefree-completemultipartitegraph.md) | 407 | `result-track:0a77524a5fb119febf0734238bfdb03a16773d872b39c7ae92f98466310c4cab` |
| 61 | `def` | [topEmbedding](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/topembedding.md) | 421 | `declaration-track:37f37da0de4af476b57ffb83ef1fbbe86d1f32da5ca0a048d3a809210b509aba` |
| 62 | `theorem` | [not_cliqueFree_of_le_card](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/not-cliquefree-of-le-card.md) | 427 | `result-track:262aae2f2c61ee8e333eeb5baabae6dd4439da940598c1da8e6c7acf62ab2924` |
| 63 | `theorem` | [not_cliqueFree_of_infinite](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/not-cliquefree-of-infinite.md) | 432 | `result-track:344462068e4081bfeff793864a9fd3b9bf347945870c17b871d9f795dbd84ac4` |
| 64 | `theorem` | [not_cliqueFree_of_le_enatCard](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/not-cliquefree-of-le-enatcard.md) | 437 | `result-track:6458f6c9b7261306c77e1f4540b41951df0f11faae7a6802dfd02e2f653ea6d2` |
| 65 | `theorem` | [CliqueFree.replaceVertex](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefree-replacevertex.md) | 448 | `result-track:c79bf52261bfb390dec5da612e29e34d21302aa7a4c18f139299b1bc505bbd67` |
| 66 | `lemma` | [cliqueFree_one](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefree-one.md) | 472 | `result-track:df6c339373365758fb0899a40a2b927aecc4fa744521876182876c5bbde52940` |
| 67 | `theorem` | [cliqueFree_two](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefree-two.md) | 476 | `result-track:31bce77e8a9288300f9c7389591e2b2cb78d42da7eb3a7c3b85f0edbeaf6fd60` |
| 68 | `lemma` | [CliqueFree.mem_of_sup_edge_isNClique](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefree-mem-of-sup-edge-isnclique.md) | 484 | `result-track:d80f1315443c15791c795da40874ea3b9706604d8c92efbbe0e05bbebec5e7d4` |
| 69 | `theorem` | [CliqueFree.sup_edge](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefree-sup-edge.md) | 492 | `result-track:c233df3c8171a20f3f5ef15b5d0756f5085562197c1c148782813bdd94f47b51` |
| 70 | `lemma` | [IsNClique.exists_not_adj_of_cliqueFree_succ](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isnclique-exists-not-adj-of-cliquefree-succ.md) | 497 | `result-track:617e01c22ac768bb8c0a0524caf54bb67428854d826c8eb1a411632bca303221` |
| 71 | `lemma` | [exists_of_maximal_cliqueFree_not_adj](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/exists-of-maximal-cliquefree-not-adj.md) | 503 | `result-track:d591cdafa90ff1ab5bc5bd33b2949d928f79495db36d934ec77539d23f78e0aa` |
| 72 | `def` | [CliqueFreeOn](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefreeon.md) | 520 | `declaration-track:b71a6ed4b412149c0e76d4fd33d17a362f0a96c0db9ee71e3a96ae460d21348d` |
| 73 | `theorem` | [CliqueFreeOn.subset](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefreeon-subset.md) | 523 | `result-track:dabd180addaaa1a4cdd6a4176e91c5e71628741e06dad48ecdce8695e266fc8f` |
| 74 | `theorem` | [CliqueFreeOn.mono](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefreeon-mono.md) | 526 | `result-track:d98132392058334490c7347fd0fbdba84461f93752fe9e56ee1a88ac55d4ec26` |
| 75 | `theorem` | [CliqueFreeOn.anti](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefreeon-anti.md) | 531 | `result-track:69c71ebaee7aec6e19acf9fe4efedeaaec3ea345fae378d1018e36f6bb5eca1b` |
| 76 | `theorem` | [cliqueFreeOn_empty](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefreeon-empty.md) | 535 | `result-track:f403a0d65d063ccf996989b217005b7b7ebd96966d5bc2407f7c4c39a550cb39` |
| 77 | `theorem` | [cliqueFreeOn_singleton](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefreeon-singleton.md) | 539 | `result-track:f5c4cab0e35c075b072c664b78bb614e166a7371fdc38e701e955a146c76f1e2` |
| 78 | `theorem` | [cliqueFreeOn_univ](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefreeon-univ.md) | 544 | `result-track:840026871c8bb4b8e9e1d24b8d5473221ee54cc866a72a91f41a2405a411ba0b` |
| 79 | `theorem` | [CliqueFree.cliqueFreeOn](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefree-cliquefreeon.md) | 547 | `result-track:4bfe4b6b311757e55247fd69ab2aceaba575e3569c63580b733ad4fdeaf83b9c` |
| 80 | `theorem` | [cliqueFreeOn_of_card_lt](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefreeon-of-card-lt.md) | 550 | `result-track:96bf05153367ad1761dfd6ccd38ac06105173dd1af23b2ca62a2b5beb1c324b1` |
| 81 | `theorem` | [cliqueFreeOn_two](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefreeon-two.md) | 555 | `result-track:cea770cdc96828ca2004e60bb8ee0c3db25424a317abf193a13aa7078f37b7c6` |
| 82 | `theorem` | [CliqueFreeOn.of_succ](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefreeon-of-succ.md) | 565 | `result-track:c717a90c3f6151124f362eb7dd36ee3f80ac43cbcd2c2382c1965d73382ba6d4` |
| 83 | `def` | [cliqueSet](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliqueset.md) | 582 | `declaration-track:aec1362720c259d9beaf692b25d9937f0085f15234bcc793e4ab4139ecb0b31c` |
| 84 | `theorem` | [mem_cliqueSet_iff](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/mem-cliqueset-iff.md) | 588 | `result-track:3a28fb842350b1da3df7fca736507bd63e7d0c83060a28cb19d69246cb896030` |
| 85 | `theorem` | [cliqueSet_eq_empty_iff](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliqueset-eq-empty-iff.md) | 592 | `result-track:d1e4ee5905d703c6e76241fc74265e342093ade95b83fdb1134fd802ec615048` |
| 86 | `theorem` | [cliqueSet_mono](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliqueset-mono.md) | 598 | `result-track:4f3881abfbc377177de5c9f2fe5d65d2af84b678750bcdbb32cc83b8b6b5650f` |
| 87 | `theorem` | [cliqueSet_mono'](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliqueset-mono-source-edition-2.md) | 601 | `result-track:e991764aa9321d02f1556b78caa5e9b7f5dd9db1c95986c9192683e687d16cd3` |
| 88 | `theorem` | [cliqueSet_zero](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliqueset-zero.md) | 605 | `result-track:7ea27f3124af438f322e61443aae2b5215e5a1b64cc5c397aca9ffdc30a44658` |
| 89 | `theorem` | [cliqueSet_one](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliqueset-one.md) | 608 | `result-track:1c39b3712c747d951c4da2f4f4b1e47e398ac1af00a1f0e53663c91b2d70add0` |
| 90 | `theorem` | [cliqueSet_bot](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliqueset-bot.md) | 612 | `result-track:701fd358bf0dca9054197e7f4644c7635867c2f597103617b2cd9d4f737f25ce` |
| 91 | `theorem` | [cliqueSet_map](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliqueset-map.md) | 616 | `result-track:c2658eb8046ec1d7885296853c941ca52c06bf8a054877338abacc648907ae9c` |
| 92 | `theorem` | [cliqueSet_map_of_equiv](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliqueset-map-of-equiv.md) | 635 | `result-track:8a1461daee51b985d2e82ffe1da89b74a53fa7e0c8c4abc328255087cd63edd1` |
| 93 | `def` | [cliqueNum](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquenum.md) | 652 | `declaration-track:c9e50cb8b7aa8bb61ee547d13719c64d5e6d33107b082b34c7a32577d7669f39` |
| 94 | `lemma` | [fintype_cliqueNum_bddAbove](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/fintype-cliquenum-bddabove.md) | 654 | `result-track:5c987a76215d978ac63be4e4d414d9a2668b740a05930e8cd5a20474da8b27ee` |
| 95 | `lemma` | [IsClique.card_le_cliqueNum](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isclique-card-le-cliquenum.md) | 661 | `result-track:0da3487b890df31be7eb7d918fa7fd3f069597a28f040057ee600275652a518f` |
| 96 | `lemma` | [exists_isNClique_cliqueNum](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/exists-isnclique-cliquenum.md) | 666 | `result-track:e4f62585799014eabd217e1cf85641a720cc09d02b22557f3de5c5648aa1825c` |
| 97 | `structure` | [IsMaximumClique](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/ismaximumclique.md) | 671 | `declaration-track:cb86684da22f16d8a343e0b4b95cd92f2d4bc7036f12ba63bebeb4ff5329cace` |
| 98 | `theorem` | [isMaximumClique_iff](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/ismaximumclique-iff.md) | 675 | `result-track:965521b1b1fcc4f27b18fb9b9ba03265a4a3520e442b9ef4a053db60ae1a560b` |
| 99 | `theorem` | [isMaximalClique_iff](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/ismaximalclique-iff.md) | 680 | `result-track:4030c1c06cca8ccc7484ebb2eb70a861c5827649dc13892b689cd28c46a229e8` |
| 100 | `lemma` | [IsMaximumClique.isMaximalClique](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/ismaximumclique-ismaximalclique.md) | 684 | `result-track:6f00bfc6b4995d6a866dff8671ad33ac3a69bab85053326670d6031d155ff9a9` |
| 101 | `lemma` | [maximumClique_card_eq_cliqueNum](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/maximumclique-card-eq-cliquenum.md) | 696 | `result-track:dd0f2b69ba42a3b700c113a503ef49b20cea04c95b99fbf0878eca8dfb224611` |
| 102 | `lemma` | [maximumClique_exists](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/maximumclique-exists.md) | 702 | `result-track:da45ae6aa3bbede5624823218db00440a2e2dbd0d6d6eb35abebc9c725ef79cd` |
| 103 | `def` | [cliqueFinset](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefinset.md) | 716 | `declaration-track:5de0a2e057f160628753808eb1e6bf9a72e6c88887df36fe89f480f995b17d94` |
| 104 | `theorem` | [mem_cliqueFinset_iff](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/mem-cliquefinset-iff.md) | 720 | `result-track:e97900881a039c49d79b2b2908482cdb4ebd6102849d05776e884fff4600e065` |
| 105 | `theorem` | [coe_cliqueFinset](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/coe-cliquefinset.md) | 724 | `result-track:2006045efccfcb8ad24f3cc9a1bc37c78891b5cb03de30da697bdcc2d6036625` |
| 106 | `theorem` | [cliqueFinset_eq_empty_iff](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefinset-eq-empty-iff.md) | 730 | `result-track:45b3a86436a9ed28564bf6d4dadc43d37a90d7819bcf033c7329e269fc7b6b10` |
| 107 | `theorem` | [card_cliqueFinset_le](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/card-cliquefinset-le.md) | 735 | `result-track:a8bfbbed9970ec7f661d636557f4410d69ed30e06e475086bd29a565c5b7555b` |
| 108 | `theorem` | [cliqueFinset_mono](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefinset-mono.md) | 743 | `result-track:54ad375c7729a264f86830239fd50f2417cae7ba7a7e4735ea2139b999c1abc3` |
| 109 | `theorem` | [cliqueFinset_map](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefinset-map.md) | 749 | `result-track:b36e6fc6b9ab4e6ce00ea37226d717b55fbdc35999f6093e0053e4da51c7b4ce` |
| 110 | `theorem` | [cliqueFinset_map_of_equiv](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefinset-map-of-equiv.md) | 755 | `result-track:de3e565b513291c7726eae961d4a2a9706900e977a11bce79c51181b3a823e6b` |
| 111 | `abbrev` | [IsIndepSet](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isindepset.md) | 769 | `declaration-track:57d7d4418cc370e21b8b08e22d63c4128eb82bbb0a2e56a587ac4bd1f6e0d971` |
| 112 | `theorem` | [isIndepSet_iff](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isindepset-iff.md) | 772 | `result-track:9b2a83d48b4fd79bd8b618f5b8e9d2bd72c807fbccbc588358b5f8b5500a8980` |
| 113 | `theorem` | [isClique_compl](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isclique-compl.md) | 776 | `result-track:93805c4299a2b68bcd3deb02a331ad0a2e1c2665a1a2b5e521c050de8c653a46` |
| 114 | `theorem` | [isIndepSet_compl](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isindepset-compl.md) | 781 | `result-track:42941905da594407c52b1f2a858ed5416d6d8a9b8c05e83ae19a614aed4dac5b` |
| 115 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/instance-source-edition-4.md) | 785 | `declaration-track:fe2ff8957d1f8bf4608df7dab7b5f1984926fa88b948ff7bd7cfb44484f9a333` |
| 116 | `lemma` | [IsIndepSet.nonempty_mem_compl_mem_edge](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isindepset-nonempty-mem-compl-mem-edge.md) | 789 | `result-track:86d6e79e3a4a1ac56eb013a68259b34d77208bb5a243d063c434f00949fbf9c4` |
| 117 | `theorem` | [isIndepSet_neighborSet_of_triangleFree](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isindepset-neighborset-of-trianglefree.md) | 804 | `result-track:04c7cb12e3d04f069f7f41a165a1ca124d7ccf7e87571ccce3241341b9315e03` |
| 118 | `theorem` | [isIndepSet_induce](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isindepset-induce.md) | 816 | `result-track:90dadc68058a204b53d01107c956ad8434639a6e492f4f37d868e8b8e34490b0` |
| 119 | `structure` | [IsNIndepSet](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isnindepset.md) | 831 | `declaration-track:272bab88360e62fe22a61bc9f420258c6b67b31593c16d36ef7a819f1e9ca752` |
| 120 | `theorem` | [isNClique_compl](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isnclique-compl.md) | 836 | `result-track:eecd5703447bddbc6b26d76a9a74acd5ab712b4514ec99f59eb604684c08fbf0` |
| 121 | `theorem` | [isNIndepSet_compl](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isnindepset-compl.md) | 841 | `result-track:7dd741ac80a59bb454cb96cfe94f8062c6245bef64d59f49507b50141e277d5e` |
| 122 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/instance-source-edition-3.md) | 845 | `declaration-track:ca19d52912ce37ba3935d397f5ffce46159c5f5ee55b84c298874aa750ba8652` |
| 123 | `theorem` | [isNIndepSet_induce](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isnindepset-induce.md) | 851 | `result-track:ddbabbc9da29197417a91458bb62d0ed300bbfc71435061849fa8256f8553813` |
| 124 | `def` | [IndepSetFree](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/indepsetfree.md) | 866 | `declaration-track:a373a06468ab319005957746cf3333d9035879680ac48bbf08713eb27a998cd7` |
| 125 | `theorem` | [cliqueFree_compl](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquefree-compl.md) | 870 | `result-track:b4800c43998f2ffd002806b0a48635dacad5b93c32d5e718e055015bb773308b` |
| 126 | `theorem` | [indepSetFree_compl](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/indepsetfree-compl.md) | 874 | `result-track:d9563f27bcc35433a0d6418efdbf06fea66cdefca643eb1be2a9d2e9ceb124a2` |
| 127 | `def` | [IndepSetFreeOn](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/indepsetfreeon.md) | 878 | `declaration-track:4a5244a4f65fbbba859e54fdbc31800af7448f98a245aa7c6f7544637badf2b4` |
| 128 | `def` | [indepSetSet](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/indepsetset.md) | 891 | `declaration-track:9ca21dfe3dea9e0e9bcc364f5a876cf9d9aaeedf44282dbbd718f08b73871305` |
| 129 | `theorem` | [mem_indepSetSet_iff](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/mem-indepsetset-iff.md) | 897 | `result-track:9ec602b82ba3fc8bc7c8e2a00c04eb7c212d4fef592030829a28323948c37f70` |
| 130 | `def` | [indepNum](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/indepnum.md) | 910 | `declaration-track:c49a383965dbfbfd7bf52300bf3b70f8bdf0f0b076c75a0e78f860e2d3e9423a` |
| 131 | `lemma` | [cliqueNum_compl](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/cliquenum-compl.md) | 912 | `result-track:2c05f0605265fa14dc848717401a40d5719c70e5a449a30baf92e247f2a38674` |
| 132 | `lemma` | [indepNum_compl](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/indepnum-compl.md) | 915 | `result-track:69075e166209a64fafb86a85ce5402957c4f684146e3b70779b5576b59a2bf1d` |
| 133 | `theorem` | [IsIndepSet.card_le_indepNum](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/isindepset-card-le-indepnum.md) | 918 | `result-track:902fded3ed2ba76a6c0770ff11d5df237aa142922883f0c7d2b417cd9d15fd05` |
| 134 | `lemma` | [exists_isNIndepSet_indepNum](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/exists-isnindepset-indepnum.md) | 925 | `result-track:fa764cbe51f3f303d7ae39d17e1b7ab7836b05c7542f705a1b8716e8abd8754e` |
| 135 | `structure` | [IsMaximumIndepSet](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/ismaximumindepset.md) | 931 | `declaration-track:fa16e601e837cc8e713156e59d4321e8ce83ab246b50bf9e3a794c76c63c7feb` |
| 136 | `lemma` | [isMaximumClique_compl](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/ismaximumclique-compl.md) | 935 | `result-track:52c9f5caf3b9510353b681fa86678b10ae388c88b6ab5bdb367835d0403be6ce` |
| 137 | `lemma` | [isMaximumIndepSet_compl](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/ismaximumindepset-compl.md) | 939 | `result-track:593f5d8791bb75220dd98326c5ea9800151df49b520d94592186bd8163805105` |
| 138 | `theorem` | [isMaximalIndepSet_iff](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/ismaximalindepset-iff.md) | 944 | `result-track:2c5b1e2ac01ac57ce808ccbb6dd9b37414c1d4d40e2bb38d9b8eb1f939a95c7b` |
| 139 | `lemma` | [isMaximalClique_compl](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/ismaximalclique-compl.md) | 948 | `result-track:d9863af6fc2e585486090a1c805e2b6a6b6666207020701c7333411c7d871180` |
| 140 | `lemma` | [isMaximalIndepSet_compl](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/ismaximalindepset-compl.md) | 952 | `result-track:e079c2d6392962aca55b8086eeccb0ff8f880dee8fb4bca5d4e3abd8b3626dda` |
| 141 | `lemma` | [IsMaximumIndepSet.isMaximalIndepSet](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/ismaximumindepset-ismaximalindepset.md) | 956 | `result-track:c3791a34c70c254f2c2d0c5d241ffb1deeff573dfc68129b202a90cd131648fd` |
| 142 | `theorem` | [maximumIndepSet_card_eq_indepNum](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/maximumindepset-card-eq-indepnum.md) | 962 | `result-track:6caf6634d572422bc9ba5809170b1691033f59fea69da236e78d40450535335a` |
| 143 | `lemma` | [maximumIndepSet_exists](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/maximumindepset-exists.md) | 968 | `result-track:dca5fd30e3c8f14d3311c5562a63bcdf4c6239e61529a48d7830b241d5b73616` |
| 144 | `def` | [indepSetFinset](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/indepsetfinset.md) | 981 | `declaration-track:2e20b80399b1ede1f5d55b3867957769814e858a00bf01d9cebe5a70632f9d22` |
| 145 | `theorem` | [mem_indepSetFinset_iff](../../../../../Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/declarations/mem-indepsetfinset-iff.md) | 985 | `result-track:52fc5617182c630d541fe7fb71ea2c8752c542f11739e65b5f2fa2ab556a41fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f6875e40ea63ace6ff11a02256afe2150cd0a30034fbfdc91b453ba3eaa5b0e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant07172a59907e9145227e82435beb3cb55477263afe721c66a223d08a05ab31b1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant07172a59907e9145227e82435beb3cb55477263afe721c66a223d08a05ab31b1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
