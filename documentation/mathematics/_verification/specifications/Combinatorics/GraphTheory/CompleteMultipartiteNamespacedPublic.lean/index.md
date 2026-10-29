# Verification target: Complete Multipartite Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f2513dbc8ad1126b4caebad3dbee329fd3412e6",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantc5c6f47a6e34b7ae025b176506e8ec087e87c9a25d05a05c849845dbd72232aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f2513dbc8ad1126b4caebad3dbee329fd3412e6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantc5c6f47a6e34b7ae025b176506e8ec087e87c9a25d05a05c849845dbd72232aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantc5c6f47a6e34b7ae025b176506e8ec087e87c9a25d05a05c849845dbd72232aa.lean.json)

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
| 1 | `def` | [IsCompleteMultipartite](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/iscompletemultipartite.md) | 75 | `declaration-track:e5e6d9dd9b235f01a8afa24ed388378a9feaeee65115d82cabd74b5fb94e15a0` |
| 2 | `theorem` | [IsCompleteMultipartite.top](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/iscompletemultipartite-top.md) | 77 | `result-track:22cf6d1eac42d695282a503f1a46ba648ac0cf7604b04129d198ab65e5c14647` |
| 3 | `theorem` | [IsCompleteMultipartite.bot](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/iscompletemultipartite-bot.md) | 80 | `result-track:e29f9a0210cf3cae5b1032af8085fc5ea903da77f2a777af8d7b88f8ce3e2614` |
| 4 | `theorem` | [IsCompleteMultipartite.completeBipartiteGraph](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/iscompletemultipartite-completebipartitegraph.md) | 85 | `result-track:b818558c90c662020b9bbe60189d8a94f2702fd389b106b6141a1563dd15374c` |
| 5 | `lemma` | [IsCompleteMultipartite.induce](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/iscompletemultipartite-induce.md) | 89 | `result-track:d1d8b13510e67895fe8383b88c76ad5eeb5aacb3d9afc589032de8f5a3389960` |
| 6 | `def` | [IsCompleteMultipartite.setoid](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/iscompletemultipartite-setoid.md) | 94 | `declaration-track:44885e9f7f94e249171b399d20e4d53a540078a7b7f59b207950cf3445f39af7` |
| 7 | `lemma` | [completeMultipartiteGraph.isCompleteMultipartite](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/completemultipartitegraph-iscompletemultipartite.md) | 97 | `result-track:55ab677846bfc4e945b6d7597aebb3b526ae182dd16d433f2227c7a12a1069cd` |
| 8 | `def` | [IsCompleteMultipartite.iso](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/iscompletemultipartite-iso.md) | 103 | `declaration-track:f8752e2c0af4d8062d598954267065669863e2a858fb90324c5b6c3b4ffb0251` |
| 9 | `lemma` | [isCompleteMultipartite_iff](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/iscompletemultipartite-iff.md) | 114 | `result-track:120c0bf06583b09774d645f3c9f7e4668f842080f5f295fa979d56e3fca93d7d` |
| 10 | `lemma` | [IsCompleteMultipartite.colorable_of_cliqueFree](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/iscompletemultipartite-colorable-of-cliquefree.md) | 123 | `result-track:68ea42d2b079c6f06f641863abbb461e0ee443fb4399f2106ea8bbe1c374b625` |
| 11 | `structure` | [IsPathGraph3Compl](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/ispathgraph3compl.md) | 135 | `declaration-track:0a4ba704b3010961a6244c30cdbbf6fe39ebad9a20f8cf8d5e69cd7a1e5055e5` |
| 12 | `lemma` | [ne_fst](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/ne-fst.md) | 145 | `result-track:d2d8bd9fe8d6731c78683ed2894503c679257b27fdaa2d7c31d2bb74ed0d2abf` |
| 13 | `lemma` | [ne_snd](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/ne-snd.md) | 149 | `result-track:ab2e3624de3691804f794f4785a1e0b230a09bc248653d059d8f8a97db381921` |
| 14 | `lemma` | [fst_ne_snd](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/fst-ne-snd.md) | 153 | `result-track:f38410f6da3ced2bf3631a7bada8084c78ed0b8cecd558d2f7d112a1bc43839c` |
| 15 | `lemma` | [symm](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/symm.md) | 155 | `result-track:356f923d5061f80f7f0622f6c8f207c3dca2bfe6c3e9032b6afd3c1ab7823ee3` |
| 16 | `lemma` | [exists_isPathGraph3Compl_of_not_isCompleteMultipartite](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/exists-ispathgraph3compl-of-not-iscompletemultipartite.md) | 161 | `result-track:ee0dde396d1f1ee8711efcbe3e7beaf3c8fa015f4e0741058cc068de322ad412` |
| 17 | `lemma` | [not_isCompleteMultipartite_iff_exists_isPathGraph3Compl](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/not-iscompletemultipartite-iff-exists-ispathgraph3compl.md) | 169 | `result-track:40fba3d39ecec0cf7b48bdbb6a8ab30ba276385ba07e3e21759454929fabb3c7` |
| 18 | `def` | [IsPathGraph3Compl.pathGraph3ComplEmbedding](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/ispathgraph3compl-pathgraph3complembedding.md) | 177 | `declaration-track:c32a990715bcd7b611c019b7db67fcc8878cfc6c9eb813228a3bb93d1a87b14f` |
| 19 | `def` | [pathGraph3ComplEmbeddingOf](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/pathgraph3complembeddingof.md) | 201 | `declaration-track:ac7fc78254c8ca41c57a763ee2c8bc14b457154662623b310d2a0fda7b56edd0` |
| 20 | `lemma` | [not_isCompleteMultipartite_of_pathGraph3ComplEmbedding](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/not-iscompletemultipartite-of-pathgraph3complembedding.md) | 206 | `result-track:569248593d1bf7b1ea051940e8c7cddff7181cfe37601696fe935119769f9b83` |
| 21 | `theorem` | [IsCompleteMultipartite.comap](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/iscompletemultipartite-comap.md) | 214 | `result-track:e14ceac1733476bba8aa07421f4dc5e382d9d72166088972e687e36b9274d407` |
| 22 | `abbrev` | [completeEquipartiteGraph](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/completeequipartitegraph.md) | 231 | `declaration-track:77c8161d2f032c5b873cc96fcba24e9dc7031878cb0b08a34f343142dea59da0` |
| 23 | `lemma` | [completeEquipartiteGraph_adj](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/completeequipartitegraph-adj.md) | 234 | `result-track:b62b1fac12491e63ca24e6d46fd1c27faa3a314a24236939c2bdb741acdb0dab` |
| 24 | `def` | [completeEquipartiteGraph.completeMultipartiteGraph](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/completeequipartitegraph-completemultipartitegraph.md) | 242 | `declaration-track:bb5f56c14d1aaa663661fbc259b7b90420c1ead62042b28d1ed1e1a44f83a59c` |
| 25 | `def` | [completeEquipartiteGraph.turanGraph](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/completeequipartitegraph-turangraph.md) | 250 | `declaration-track:0df198c80302eb81c14f5d6d33709b56fd3311bd55e0d54280b88da3e5e562e4` |
| 26 | `lemma` | [completeEquipartiteGraph_eq_bot_iff](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/completeequipartitegraph-eq-bot-iff.md) | 280 | `result-track:c6210c46c30ef8bc0244681b5e16b4a4446cf3111e808f5fd8b914b49fc116d2` |
| 27 | `theorem` | [completeEquipartiteGraph.isCompleteMultipartite](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/completeequipartitegraph-iscompletemultipartite.md) | 293 | `result-track:ed8a36ccd04f5781fa884a361c94d22c54169cbb3e2b926daef4d503b209282a` |
| 28 | `theorem` | [neighborSet_completeEquipartiteGraph](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/neighborset-completeequipartitegraph.md) | 304 | `result-track:c57e8d582354c02d0e25bf2722752f113d60f80f32e635312965e8bafbd42893` |
| 29 | `theorem` | [neighborFinset_completeEquipartiteGraph](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/neighborfinset-completeequipartitegraph.md) | 308 | `result-track:fdb16339e8161cdf7b4300c2a89cd96e4b2a09707e16e8f10c9e644751a6c92f` |
| 30 | `theorem` | [degree_completeEquipartiteGraph](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/degree-completeequipartitegraph.md) | 312 | `result-track:998b79ddb511c61167cc22f27e8f65d237a42b3f66edab9087249ed786ce54e8` |
| 31 | `theorem` | [card_edgeFinset_completeEquipartiteGraph](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/card-edgefinset-completeequipartitegraph.md) | 317 | `result-track:d6d9a5f07b7e2e5b429ea1f22bfdbe325fe36ed8b0939fad8d3cebe177dbb421` |
| 32 | `theorem` | [isContained_completeEquipartiteGraph_of_colorable](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/iscontained-completeequipartitegraph-of-colorable.md) | 332 | `result-track:4d8806f9768d0ee884af8e0cb58a5fba915a394fc1eb6b1683d6752d04a482ec` |
| 33 | `structure` | [CompleteEquipartiteSubgraph](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/completeequipartitesubgraph.md) | 365 | `declaration-track:d101c999e5964a7ea92cca50b0b7357becaf4fd36080b9d2862d2b083e853fdc` |
| 34 | `theorem` | [nonempty_of_eq_zero_or_eq_zero](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/nonempty-of-eq-zero-or-eq-zero.md) | 380 | `result-track:682ff0810011aaf40e538817c09ba4ea3c9dbb417a6889a7a44ca799a2f840b4` |
| 35 | `theorem` | [disjoint](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/disjoint.md) | 385 | `result-track:27ff7553b05b54cfe008faa546dfed06c52549beba297e77ecfabde1a3f45051` |
| 36 | `def` | [verts](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/verts.md) | 390 | `declaration-track:6758d82012078a1d6298491f52b91e388c87382ef179d0a714f32f6defb8d82d` |
| 37 | `lemma` | [verts_eq_biUnion](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/verts-eq-biunion.md) | 395 | `result-track:7d473dd7a350f2ab2156cf7efaa4c06cafb1b4ba574fb709f18f4a2fd4176a7d` |
| 38 | `theorem` | [card_verts](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/card-verts.md) | 399 | `result-track:ba1992d4f31a2156c910e113790ae42c2c84401f61fd19b4ab5d0c0b7b20b6dc` |
| 39 | `def` | [toCopy](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/tocopy.md) | 405 | `declaration-track:1b129cdf769e27b4623ff48d82a63a387e2e1253f1f0773b1f0fd3408a3dab3c` |
| 40 | `def` | [ofCopy](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/ofcopy.md) | 434 | `declaration-track:75399d173dec724d6bd5399f4d343971794088776aecb8045d7c31a6e81d2287` |
| 41 | `theorem` | [completeEquipartiteGraph_isContained_iff](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/completeequipartitegraph-iscontained-iff.md) | 468 | `result-track:e333c801e4bc204bcdb006ad39305f971ce39a6b3f3652d30769c2541c0c6b82` |
| 42 | `theorem` | [completeEquipartiteGraph_succ_isContained_iff](../../../../../Combinatorics/GraphTheory/CompleteMultipartiteNamespacedPublic.lean/declarations/completeequipartitegraph-succ-iscontained-iff.md) | 475 | `result-track:fc09e09ba59137462030a96f54075e9b834bd5b28b933c60eef5585af5f52631` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=62bd8046567a192bf7965aaa2c142e34efa68e484e84b436a1bf76f6189e89c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantc5c6f47a6e34b7ae025b176506e8ec087e87c9a25d05a05c849845dbd72232aa.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variantc5c6f47a6e34b7ae025b176506e8ec087e87c9a25d05a05c849845dbd72232aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
