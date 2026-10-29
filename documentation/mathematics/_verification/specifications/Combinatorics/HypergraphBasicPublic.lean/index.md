# Verification target: Hypergraph Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87a8e79eea4e86cd35cd1a4438204b2712c60f19",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5d68c77656475010afd99d157953afeacd23b4a2ad93b861202600a4f63408d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/HypergraphBasicPublic.lean/index.md) · [Full source](../../../../Combinatorics/HypergraphBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87a8e79eea4e86cd35cd1a4438204b2712c60f19`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5d68c77656475010afd99d157953afeacd23b4a2ad93b861202600a4f63408d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5d68c77656475010afd99d157953afeacd23b4a2ad93b861202600a4f63408d0.lean.json)

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
| 1 | `structure` | [Hypergraph](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/hypergraph.md) | 73 | `declaration-track:be93d2001923bc1851429e24ad9f957cef353d382ab638ead39e1ce8a3e03c63` |
| 2 | `lemma` | [subset_vertexSet_of_mem_edgeSet](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/subset-vertexset-of-mem-edgeset.md) | 97 | `result-track:b081ee0f301bc6d2b9de9a40a3f1236f026732b5823a6409e4f601fae6d41c4e` |
| 3 | `lemma` | [edgeSet_subset_powerset_vertexSet](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/edgeset-subset-powerset-vertexset.md) | 102 | `result-track:cb1f3414929a49d923c16344586d598ebf1bda938774c6facb994bb705b915bd` |
| 4 | `lemma` | [mem_vertexSet_of_mem_edgeSet](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/mem-vertexset-of-mem-edgeset.md) | 105 | `result-track:9f91e07961d153a5482584a333817e92af99342559dd0c90243bfbdaf6398616` |
| 5 | `lemma` | [edgeSet.ext_iff](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/edgeset-ext-iff.md) | 108 | `result-track:800fbf9f02a6de34f7cf92e46ce8884b4bdd6c40301b49b17269983f0d5b017f` |
| 6 | `lemma` | [sUnion_edgeSet_subset_vertexSet](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/sunion-edgeset-subset-vertexset.md) | 111 | `result-track:82db25a531f05b034f710c9f3fa7c635dc6e83027afaad8b3817771352a110ea` |
| 7 | `def` | [Adj](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/adj.md) | 124 | `declaration-track:1dfb72fa6047d6090336fc28c8d2d1adce174db1de27de89b03b91901dded8e8` |
| 8 | `lemma` | [Adj.symm](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/adj-symm.md) | 127 | `result-track:38cf99f3c00c3e2d69ef85be4b34cecabed2320e2c81de265fe8260187c0e2db` |
| 9 | `lemma` | [adj_comm](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/adj-comm.md) | 129 | `result-track:40d1b3d6b4d806a81214705507f40075254df3ba09e99459711a2f40f609ebd7` |
| 10 | `def` | [EAdj](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/eadj.md) | 136 | `declaration-track:fac0c822fef1deb952576621d75b2da3fdd38076793badcb361d79c889c14893` |
| 11 | `lemma` | [EAdj.exists_vertex](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/eadj-exists-vertex.md) | 139 | `result-track:7708ea591cd26ffcaeda2b9bf095cb2ac26f7f44a5ccf45b05208673f88312cc` |
| 12 | `lemma` | [EAdj.symm](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/eadj-symm.md) | 143 | `result-track:defbce3c4ae9da2ef977db11eb36f53dcdea617a8e24d4172e35d2d36be39b56` |
| 13 | `lemma` | [EAdj.inter_nonempty](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/eadj-inter-nonempty.md) | 145 | `result-track:54d32393d438775d043adc5d3e514e00201af5a57bd211ef581e60ef1a7d287d` |
| 14 | `lemma` | [eAdj_comm](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/eadj-comm.md) | 148 | `result-track:b0ae847383c657db3523cb4b0ca26ce9444aab08c98071f64bf26fa2ea631115` |
| 15 | `def` | [image](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/image.md) | 156 | `declaration-track:1e3107366925df9d494e7253ae3825d571465ffc730736fbdf195070941ccdc4` |
| 16 | `lemma` | [mem_edgeSet_image](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/mem-edgeset-image.md) | 163 | `result-track:cbfe3c8616ec2aa3e5c38f2f18843426eaea5cf1e3151c7d318b41bcc639fc6e` |
| 17 | `lemma` | [image_mem_edgeSet_image](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/image-mem-edgeset-image.md) | 166 | `result-track:1eab7bb43b8f6e42e087e215375da4883d7419346dca17cf0dbd7dde55597b3d` |
| 18 | `lemma` | [image_image](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/image-image.md) | 169 | `result-track:cdf49509301d5d6d0004c84bc37339fbc01573da1e61e747b7d123bc5ba3cf18` |
| 19 | `def` | [IsIsolated](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/isisolated.md) | 175 | `declaration-track:56529193d504e9ae0c0d5cf85f2d0231a282d41efd8fdc1d67d0ac69d2ed0ff9` |
| 20 | `lemma` | [sUnion_edgeSet_eq_vertexSet_iff_all_vertex_not_isolated](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/sunion-edgeset-eq-vertexset-iff-all-vertex-not-isolated.md) | 177 | `result-track:77c637e6468016ec65cc4a74d55c5d6cd59f290d51c96d241ac7922535e0cb18` |
| 21 | `def` | [IsLoop](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/isloop.md) | 183 | `declaration-track:1e89195696134c846ebe89db6ae0ff239d1ce5ef11338a48339bdf85baea9d44` |
| 22 | `lemma` | [isLoop_iff_mem_edgeSet_and_singleton](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/isloop-iff-mem-edgeset-and-singleton.md) | 185 | `result-track:30131db71480169c1b5de990892724248a4b0bc3fa9639ab866530a1a61f1eee` |
| 23 | `lemma` | [isLoop_iff_mem_and_ncard_one](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/isloop-iff-mem-and-ncard-one.md) | 187 | `result-track:40f72392776de156cf449713357b15558a02b895e1116e331368e687aeec67bb` |
| 24 | `lemma` | [IsLoop.ncard_one](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/isloop-ncard-one.md) | 190 | `result-track:55a1f06b635b8bc99e1ca363a8ea466afa4cfc3ea7bbb45228c207ae3ad9296f` |
| 25 | `def` | [IsNonempty](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/isnonempty.md) | 194 | `declaration-track:4b07ed18a9c92c85b4173adf154732c72bd5623bf364d23c673042cbf5e58018` |
| 26 | `instance` | [(anonymous)](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/instance.md) | 198 | `declaration-track:52217046716935864dd42cca4696d2094d5d057f611a05bd56aa5e4b42d58402` |
| 27 | `lemma` | [IsNonempty.of_nonempty_vertexSet](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/isnonempty-of-nonempty-vertexset.md) | 204 | `result-track:4e3b53483ea9b91bc7fa82490e36ed8768d13e7ab6ae99e7234f4050a1330973` |
| 28 | `lemma` | [IsNonempty.of_nonempty_edgeSet](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/isnonempty-of-nonempty-edgeset.md) | 208 | `result-track:0c85427ac143274119b09305f45b42f42a9cb61247cd2c39c8122be1ca38054e` |
| 29 | `theorem` | [ne_bot_iff](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/ne-bot-iff.md) | 212 | `result-track:94ae69db9d8cd119605370f388355dd83c0436d54029461da88f455af9cdaa60` |
| 30 | `theorem` | [not_isNonempty_iff](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/not-isnonempty-iff.md) | 219 | `result-track:f90446de08507c0fea86639da70dfda32af4bd3db16c600586a1e39a1c988348` |
| 31 | `lemma` | [eq_bot_or_isNonempty](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/eq-bot-or-isnonempty.md) | 223 | `result-track:fabb3ad57e7723981a3137ad66d1d0dcf99b76fc14e3fa8f32df30ba3af87e0a` |
| 32 | `def` | [IsTrivial](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/istrivial.md) | 236 | `declaration-track:22b175709cde9d30154a4c4e81410ff89b48b6652707d46085a2d72f65bf136d` |
| 33 | `def` | [trivialOn](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/trivialon.md) | 241 | `declaration-track:730b14c2b13fe2d1e63b351f2de448127207d82deecdc4159e2e0566f75a4dee` |
| 34 | `lemma` | [IsTrivial.trivialOn](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/istrivial-trivialon.md) | 246 | `result-track:37f19732072ea381f89b0fb78ad95e905169aeb5be2cea2bf2a2cbce9e35988d` |
| 35 | `lemma` | [IsTrivial.isNonempty](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/istrivial-isnonempty.md) | 250 | `result-track:3d592a7a6b20c75fc4e85f88dd8dfd859256ddfcb69ec2d1bb9937df234bdd7c` |
| 36 | `lemma` | [IsTrivial.not_mem_edgeSet](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/istrivial-not-mem-edgeset.md) | 253 | `result-track:0e7b9d67f8caf8e4e31f4d9a19697afaffaeb0e414ad5e58acb774f6afeaf443` |
| 37 | `def` | [IsComplete](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/iscomplete.md) | 257 | `declaration-track:90ffc9c5cd1ce8c575ff7ca1e3ee4b9f5f29be49366ae2bb31dd67abef373a23` |
| 38 | `def` | [completeOn](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/completeon.md) | 262 | `declaration-track:3a668b8ca7508cb2547ffc96407ad08db8850a40a9e1c6c68d22331b2a6e0304` |
| 39 | `lemma` | [mem_completeOn](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/mem-completeon.md) | 267 | `result-track:ef7a7a2920059fae58a12f8a8ffc733e7e87bb04edc5de478cd09a878aeb749a` |
| 40 | `lemma` | [IsComplete.mem_iff](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/iscomplete-mem-iff.md) | 269 | `result-track:ceecdec451bf6f01656f27b506123ba6b2b585afb58e09bb448cf8ae8ef8ab5c` |
| 41 | `lemma` | [IsComplete.completeOn](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/iscomplete-completeon.md) | 272 | `result-track:c773ade7de42bafdda8dda4ffeb58d033bca662c91745274cf1153ffd57df74e` |
| 42 | `lemma` | [IsComplete.isNonempty](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/iscomplete-isnonempty.md) | 274 | `result-track:7c32034ab095a73912ec2f432d114133090e33a7b725ba5844a8afa620229646` |
| 43 | `lemma` | [IsComplete.not_isTrivial](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/iscomplete-not-istrivial.md) | 277 | `result-track:407769cdb4d8b81a077d0ae3ceb46562019dc720b5df1b236cd16dab413b30cb` |
| 44 | `lemma` | [not_isTrivial_completeOn](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/not-istrivial-completeon.md) | 281 | `result-track:a4ae7e3fd431ccfbd8a99f0ead7f2ca3d6e0272adfd3262870b969a2a8a2088b` |
| 45 | `def` | [IsLinear](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/islinear.md) | 285 | `declaration-track:fdf8012548ee1b81e3dbaa4d6fed60f1b280dca1a63a9b731c7850bd2bf9681d` |
| 46 | `lemma` | [isLinear_def](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/islinear-def.md) | 288 | `result-track:9f9872d1e4c6431e5ff9d5112dab334ae74abe570b5aacf2e3434a6063eff28f` |
| 47 | `lemma` | [IsLinear.inter_subsingleton](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/islinear-inter-subsingleton.md) | 291 | `result-track:f11c728f079183d942903431e57044228894a8f3514de07c5e0178aa09a34d29` |
| 48 | `theorem` | [IsTrivial.isLinear](../../../../Combinatorics/HypergraphBasicPublic.lean/declarations/istrivial-islinear.md) | 296 | `result-track:afbf721f89035273efc0daa9eafde3f487723119e5850b73ed97f7fb823c9e6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9be9b8afff10a423a9b4028d3d98c94be0e19e7f17c77e8c2065e42c2a24ab0a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5d68c77656475010afd99d157953afeacd23b4a2ad93b861202600a4f63408d0.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5d68c77656475010afd99d157953afeacd23b4a2ad93b861202600a4f63408d0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
