# Verification target: Chain Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c23e7fa7242e8185f792c69469a411c8b0999b1e",
  "lexical_observation_count": 83,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chain/Variant1777b9a4e11b60c9cb0d792a449a8d66916a7256bd584cb9f5b070c12335a4f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c23e7fa7242e8185f792c69469a411c8b0999b1e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chain/Variant1777b9a4e11b60c9cb0d792a449a8d66916a7256bd584cb9f5b070c12335a4f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chain/Variant1777b9a4e11b60c9cb0d792a449a8d66916a7256bd584cb9f5b070c12335a4f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isChain_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-nil.md) | 44 | `result-track:d3fde33b134be7bf17238ce367c4b29d7db48b731bca00a3ee1b4cbc298b65e0` |
| 2 | `theorem` | [isChain_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-singleton.md) | 45 | `result-track:99b10c4c9c8de8b4097b59970b24d33395d88f54691d00951f8bf30ac675d25a` |
| 3 | `theorem` | [isChain_cons_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-cons-iff.md) | 47 | `result-track:28f5d3167b58f3dbc41a6a2ced3abf0c2aeacd1ce4ed684a97de47dd08efee61` |
| 4 | `theorem` | [IsChain.imp_of_mem_tail_imp](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-imp-of-mem-tail-imp.md) | 55 | `result-track:848d727bfab3a78d1b866c193132c38abea368f1e052f23e2e1931c58978906d` |
| 5 | `theorem` | [IsChain.imp_of_mem_imp](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-imp-of-mem-imp.md) | 59 | `result-track:195bd0131faa8c093b292d0620a458dc6c813308cae899f4f6ee251efb9efeab` |
| 6 | `theorem` | [IsChain.iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-iff.md) | 63 | `result-track:57a339076ec386495072a1d3827d07bd1273b0c73c559c1da46844309cd8a1f9` |
| 7 | `theorem` | [IsChain.iff_of_mem_imp](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-iff-of-mem-imp.md) | 67 | `result-track:a64d824e65253566c4113e3f60e01f753b472c145a70dc045ddbf0bdd9a6fad2` |
| 8 | `theorem` | [IsChain.iff_of_mem_tail_imp](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-iff-of-mem-tail-imp.md) | 71 | `result-track:d7968add0429d9fe97fe5acc097e89235ebbf23e780b5b6f38310708e7916721` |
| 9 | `theorem` | [IsChain.iff_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-iff-mem.md) | 76 | `result-track:9cfa69a59967db9a28fb41f07aeaabc3bc37e681dd4eacd29eeeb74ae5a45c70` |
| 10 | `theorem` | [IsChain.iff_mem_mem_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-iff-mem-mem-tail.md) | 80 | `result-track:867f0e99c851d25b6403442c7e98734c145162b9c0f25c095a758cef4f75225a` |
| 11 | `theorem` | [isChain_pair](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-pair.md) | 84 | `result-track:456b8b15a2f9fe00131a218c40ae65e4c44542359e316e48f50d06764f6fcda0` |
| 12 | `theorem` | [isChain_isInfix](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-isinfix.md) | 87 | `result-track:7238443b8b0b7a7f3915b6a81d1272dadacd281a666c1419f194e34638473e49` |
| 13 | `theorem` | [isChain_split](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-split.md) | 93 | `result-track:87ae8b4597a4281bce91f4d97bc0a13622269c19622e4ab83e56d00011e58641` |
| 14 | `theorem` | [isChain_cons_split](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-cons-split.md) | 97 | `result-track:a65bb69e968fcc5c32ed108472b3076d424f794f036f1d76b68bdc50a9b2567f` |
| 15 | `theorem` | [isChain_append_cons_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-append-cons-cons.md) | 102 | `result-track:84194f770501a7147473182c9bae1f58743156f85ceb637f440e12568bfd63be` |
| 16 | `theorem` | [isChain_cons_append_cons_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-cons-append-cons-cons.md) | 107 | `result-track:69d31507cb2ede4355d519a8f73128986543f34086bf8b69900487125a59acea` |
| 17 | `theorem` | [isChain_iff_forall_rel_of_append_cons_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-iff-forall-rel-of-append-cons-cons.md) | 112 | `result-track:ba893139a4e75659c897bbf63c103a90491d00f3d8623c6bd097a7fc3739eb5c` |
| 18 | `theorem` | [isChain_iff_forall₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-iff-forall.md) | 122 | `result-track:3952c7c2ca1427c089f3ef8e8f6a869a65fed9f8f72f00c25c3aadfb4782cd52` |
| 19 | `theorem` | [isChain_cons_iff_forall₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-cons-iff-forall.md) | 126 | `result-track:56c1bcba6ebd7660dca5435a9f2c2319c35bfc59081e348a1cdc90797cd3d920` |
| 20 | `theorem` | [isChain_cons_append_singleton_iff_forall₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-cons-append-singleton-iff-forall.md) | 129 | `result-track:67468ab47ae33f53e4d0748f5e345342ef952d7238f9593bd5c7c7397e0edc38` |
| 21 | `theorem` | [isChain_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-map.md) | 133 | `result-track:06a2e574b22a68228df3e07a766e84dea9eab333d20cc5ee54eb67af493494b8` |
| 22 | `theorem` | [isChain_of_isChain_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-of-ischain-map.md) | 137 | `result-track:aa47dc5bd3fbd9f2967cc3a28d44d38ede78b4ed3472b7b4ab97995c5f3f3ebc` |
| 23 | `theorem` | [isChain_map_of_isChain](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-map-of-ischain.md) | 141 | `result-track:52d44c246a5110d4cff6250df3f13c19493b3ad73a515edbb6d79d72fb82fd51` |
| 24 | `theorem` | [isChain_cons_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-cons-map.md) | 145 | `result-track:d2a8368de9e31d6b3e4f3b2345bca7b6cfd392984100f5b5d118cda32b9f49b4` |
| 25 | `theorem` | [isChain_cons_of_isChain_cons_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-cons-of-ischain-cons-map.md) | 149 | `result-track:fdcbb6184aab3e3edb4ffa62fdf4a0e85c68bcff2e8364f88048f180a35912e0` |
| 26 | `theorem` | [isChain_cons_map_of_isChain_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-cons-map-of-ischain-cons.md) | 154 | `result-track:4faafc5fabe9255de0d427259b5d6275d41d391cb4ae6c8f7f7d0dd186503846` |
| 27 | `theorem` | [isChain_pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-pmap.md) | 159 | `result-track:f904ed4fb3b559a41d20d55c103504d257970d58cd341690b2a0b7bd5b57cc71` |
| 28 | `theorem` | [isChain_pmap_of_isChain](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-pmap-of-ischain.md) | 164 | `result-track:80c9f2e5a8fc6681336ff6a60dd29291d9e8b19fe9e480c7aaee10e764a40d54` |
| 29 | `theorem` | [isChain_of_isChain_pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-of-ischain-pmap.md) | 169 | `result-track:34416190210337a0be7d1f531916e0d678d2c39eb089e423ca8e337db9a784b5` |
| 30 | `theorem` | [isChain_cons_pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-cons-pmap.md) | 174 | `result-track:d2cfbe158335ad085c57dfece1d5d2646117351071e330e54657e79df0765965` |
| 31 | `theorem` | [isChain_cons_pmap_of_isChain_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-cons-pmap-of-ischain-cons.md) | 179 | `result-track:04b7aedd45f2ff2e294b088a1aa09600c17c15a45f6e777946f46563014aef39` |
| 32 | `theorem` | [isChain_cons_of_isChain_cons_pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-cons-of-ischain-cons-pmap.md) | 184 | `result-track:a4e740f0d9d0c3fe66227435a72b3f33e1b5ade08502991d594f48ec5650a6f7` |
| 33 | `theorem` | [IsChain.sublist](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-sublist.md) | 189 | `result-track:cf9ae4a5c4460811bf9b7b316c7bdacb759e626c1be57030f2c4d58c1520a2fc` |
| 34 | `theorem` | [IsChain.rel_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-rel-cons.md) | 194 | `result-track:652476c9bbb9b83e9d5849d4804d6174ba5baa623299fe183c1d168880b00587` |
| 35 | `theorem` | [IsChain.tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-tail.md) | 199 | `result-track:97715e065b09c62184ac234a940fd504b0165a3972900f72af1cf66e544a5e50` |
| 36 | `theorem` | [IsChain.rel_head?](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-rel-head.md) | 204 | `result-track:a7783811315efc1d3065748529960e3d852a793b0527799db5628317a00dc008` |
| 37 | `theorem` | [IsChain.rel_getLast_dropLast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-rel-getlast-droplast.md) | 208 | `result-track:45b79671f2b6d5caaa267232286ef25a3de4bb0e3ec4c6ef248a628793f7c40c` |
| 38 | `theorem` | [IsChain.cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-cons.md) | 214 | `result-track:4cfab9f1f873296cfa39d564527d8c76f7dcbbf09420a51f8fa5dc8cbcd2b30b` |
| 39 | `lemma` | [IsChain.cons_of_ne_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-cons-of-ne-nil.md) | 219 | `result-track:8b62f28674b7d76238a6df19f1429ca36904035b99de0d6f77a88ebb3e71d57e` |
| 40 | `theorem` | [isChain_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-cons-source-edition-2.md) | 223 | `result-track:87063af419e54d06c6bc55c97ac24564ae9246098dc67721f610dca94451fd23` |
| 41 | `theorem` | [isChain_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-append.md) | 226 | `result-track:4ba421a5fb0e45a9441f784c60e1179af871ffabab5629042a9778fd5112d126` |
| 42 | `theorem` | [IsChain.append](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-append-source-edition-2.md) | 236 | `result-track:6780fea7288644a770025551e8eded508dd94f22d88543a42ba9bef3360a4356` |
| 43 | `theorem` | [IsChain.left_of_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-left-of-append.md) | 240 | `result-track:06e117bb11d8b77b12338a84c662b0baa6bde5f9c72a3066b80ef776fe50d048` |
| 44 | `theorem` | [IsChain.right_of_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-right-of-append.md) | 243 | `result-track:4e4091012a273b511de71881c987993dd8f6f3664df82f772e735b59a74e6bf1` |
| 45 | `theorem` | [IsChain.rel_getLast_head_of_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-rel-getlast-head-of-append.md) | 246 | `result-track:de1700e708d473dc73573d1d53e89b517ca58b9c2baa9b95adec1a94c25c4bba` |
| 46 | `theorem` | [IsChain.infix](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-infix.md) | 252 | `result-track:95a96bd56c2d15d2978c2d49cb1987171860f0c53b1b811af37efd58aa5a40f3` |
| 47 | `theorem` | [IsChain.suffix](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-suffix.md) | 256 | `result-track:066f8ea71057bb9cbc5ffa350123392fdd92e9191052c63236ad346be0f7d97b` |
| 48 | `theorem` | [IsChain.prefix](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-prefix.md) | 259 | `result-track:5a063ba6b0391b91a7a2c4c89a830ad49d20736c58403764d4bd3e55acf6ef9f` |
| 49 | `theorem` | [IsChain.drop](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-drop.md) | 262 | `result-track:d8dd55226fee2ac7f877d89cddcfc2b5e568f65d03e3fce44dc27fb8a4021e76` |
| 50 | `theorem` | [IsChain.dropLast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-droplast.md) | 265 | `result-track:2e8bacf3546b31966dd90371996dc5e8037c28d34fa9cf8bc5fbff3815b676b1` |
| 51 | `theorem` | [IsChain.take](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-take.md) | 268 | `result-track:aedc5f1512ca761a6ae2f8bc03da8bb2c8ce3e0a41194e3bef48ed51104f91c4` |
| 52 | `theorem` | [IsChain.imp_head](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-imp-head.md) | 271 | `result-track:4fb789e65acab884f553422fb249f3747fcf12b7c39871e8af7d47796cb5ebe1` |
| 53 | `theorem` | [exists_not_getElem_of_not_isChain](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/exists-not-getelem-of-not-ischain.md) | 275 | `result-track:310362097a9f8073604ed2d2f79a21345d78b68d6daf81d832aad0509df48e1f` |
| 54 | `theorem` | [isChain_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-reverse.md) | 278 | `result-track:31f65727448d3f61606af1bf7a5816934a1dedef0142bed7b1fe091439d8b378` |
| 55 | `theorem` | [IsChain.append_overlap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-append-overlap.md) | 288 | `result-track:5c9e23df751ff6047846abf418954830043cb324eabe92aecd9c330c168bc098` |
| 56 | `lemma` | [isChain_flatten](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-flatten.md) | 293 | `result-track:63c3a6937c154a17aa4b52d8a8454f23ec43b930f8474a787dd0e04ddc4723db` |
| 57 | `theorem` | [isChain_attachWith](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-attachwith.md) | 305 | `result-track:0742287b23f4475b1fdef358395a89c284448fa1fa616af10e56ca58d3bf984a` |
| 58 | `theorem` | [isChain_attach](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-attach.md) | 310 | `result-track:f416fe4b47de95380d5cffa0b107f71c402ac4b54f59b981ac8be43847d049fe` |
| 59 | `theorem` | [exists_isChain_cons_of_relationReflTransGen](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/exists-ischain-cons-of-relationrefltransgen.md) | 317 | `result-track:504fad764a3f06189166c1b5c8b1f4abc892c213e654714bbc67b832be907f62` |
| 60 | `theorem` | [exists_isChain_ne_nil_of_relationReflTransGen](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/exists-ischain-ne-nil-of-relationrefltransgen.md) | 329 | `result-track:33b7086071eb1394e58c5d8c738ec9fbc436f4ae334d075fcd34323a44e619c4` |
| 61 | `theorem` | [IsChain.induction](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-induction.md) | 337 | `result-track:f077045d20ac0259d5ac3ca8a2d6aec58e940edaa259154d1f08ab5fe95a4368` |
| 62 | `theorem` | [IsChain.cons_induction](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-cons-induction.md) | 346 | `result-track:414dc24baa4b85df29808c4f53d33c411582055cb6e6a25e2e3e2bd0b12bff8e` |
| 63 | `theorem` | [IsChain.concat_induction](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-concat-induction.md) | 350 | `result-track:31bc8a1605cdada50d10d2428c710b1e14ad9b27c69c16c01faf49eefb8aef62` |
| 64 | `theorem` | [IsChain.concat_induction_head](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-concat-induction-head.md) | 356 | `result-track:859524bc1c9776ee51e82230e674f6dd3137502807c37d1581b12972c546c11b` |
| 65 | `theorem` | [IsChain.backwards_induction](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-backwards-induction.md) | 365 | `result-track:a02caf2e8b2e51cc9faddefe35a6bc58596d1ca228c82b2c342e7608495881a7` |
| 66 | `theorem` | [IsChain.backwards_concat_induction](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-backwards-concat-induction.md) | 376 | `result-track:7f3c5eea09a56361452a861648015ac222ffd45f821dc25fb40782162e9bec8f` |
| 67 | `theorem` | [IsChain.backwards_cons_induction](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-backwards-cons-induction.md) | 380 | `result-track:e660ee0803dcf7f41d23e743223bf532d2e7517ecc6b74f52e41c720d9af4c74` |
| 68 | `theorem` | [IsChain.backwards_cons_induction_head](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-backwards-cons-induction-head.md) | 390 | `result-track:b84fb42ea5dde278499a1baa9a4b17457c974b2bbbe0c1e21979ed901ea2dc0f` |
| 69 | `theorem` | [relationReflTransGen_of_exists_isChain](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/relationrefltransgen-of-exists-ischain.md) | 399 | `result-track:4db2e4c66cecc52ebb56f303ae9de762b0cf83272f9df7c7a8223a8df038f8c1` |
| 70 | `theorem` | [relationReflTransGen_of_exists_isChain_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/relationrefltransgen-of-exists-ischain-cons.md) | 408 | `result-track:1d5936e973f1439d89af41f7b64c1dfba8ef0b437eef043823e3a9fee9a0e01c` |
| 71 | `theorem` | [IsChain.cons_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-cons-of-le.md) | 413 | `result-track:90762a9b528ea60f9264eb06653be71fd22adc56b4f6ad89b7e02c62df5fcfd3` |
| 72 | `lemma` | [IsChain.isChain_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-ischain-cons.md) | 432 | `result-track:1b32953217242286da08fffc61a1ae9a8e0d075f55b31b0423a7e598475eac19` |
| 73 | `lemma` | [IsChain.iterate_eq_of_apply_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-iterate-eq-of-apply-eq.md) | 436 | `result-track:9a8bd86bbb1e0162d03863e11aff6d6bf15aa688285330a5179bfb0f4024524b` |
| 74 | `theorem` | [isChain_replicate_of_rel](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-replicate-of-rel.md) | 446 | `result-track:f25e3f5e09cc8a07600147b8a86d02244d7f50a044e1cd8dc3455a3783ede622` |
| 75 | `theorem` | [isChain_eq_iff_eq_replicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-eq-iff-eq-replicate.md) | 449 | `result-track:382810c0b1964d6b18c9f7f28e25ce90f7e284ccd63e287c824f277531190637` |
| 76 | `theorem` | [isChain_cons_eq_iff_eq_replicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/ischain-cons-eq-iff-eq-replicate.md) | 456 | `result-track:3997125e4f76fd06e16826bc17197612e358d2a2d3fb7c3e5ea7a8c2d399f09a` |
| 77 | `theorem` | [WellFoundedRelation.asymmetricₙ](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/wellfoundedrelation-asymmetric.md) | 462 | `result-track:8a34d041421d63abe0022d77fe0ead5ad9d0aaaee8e9079d37db72b83384a0de` |
| 78 | `theorem` | [WellFounded.asymmetricₙ](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/wellfounded-asymmetric.md) | 471 | `result-track:bad306274bd0084cfbba31653d85e9435559d84572de8269f01995d586c3783a` |
| 79 | `theorem` | [WellFounded.listPairwise_reverse_compl](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/wellfounded-listpairwise-reverse-compl.md) | 475 | `result-track:7538bfdaa470813977d872e520fea60ef395bf2c0d640e62284ddf08ea93e496` |
| 80 | `abbrev` | [List.chains](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/list-chains.md) | 487 | `declaration-track:0af23935f62b23f1189f04e634ee04a41103bcf13da8a98c95b1a8e1396ba581` |
| 81 | `abbrev` | [List.lex_chains](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/list-lex-chains.md) | 490 | `declaration-track:a7b5b15d7a30121c5df4fe3143d9c2ee38163eafe8ee617d1d88fbc2145c38d9` |
| 82 | `theorem` | [Acc.list_chain'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/acc-list-chain.md) | 496 | `result-track:cf2ed88de5f28cbb70673582afe48af003ca06eca871119d20380007e52f2a06` |
| 83 | `instance` | [WellFounded.list_chain'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/declarations/wellfounded-list-chain.md) | 527 | `declaration-track:2d5e883b6549e85a593a8a09d6d44cd3b3afdf6fadaaf9bb58897fbd2ea93e6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=311b836500601a90ae20ee3270abd7a068da9ff326c87e0b5a3febe7ea6d6e94 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chain/Variant1777b9a4e11b60c9cb0d792a449a8d66916a7256bd584cb9f5b070c12335a4f6.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chain/Variant1777b9a4e11b60c9cb0d792a449a8d66916a7256bd584cb9f5b070c12335a4f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
