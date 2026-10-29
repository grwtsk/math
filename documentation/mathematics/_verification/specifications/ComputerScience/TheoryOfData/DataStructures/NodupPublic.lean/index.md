# Verification target: Nodup Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5bf4c8c039f1f3a888a8360ebc3bb3f1a7d551fb",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Nodup/Variant28692ae2a68f3ba6e8a826bfe15cf3ef8397ff4f284347d0829872cd7056f81e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5bf4c8c039f1f3a888a8360ebc3bb3f1a7d551fb`.

Source path: `GRWTSK/Topology/GeneralTopology/Nodup/Variant28692ae2a68f3ba6e8a826bfe15cf3ef8397ff4f284347d0829872cd7056f81e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Nodup/Variant28692ae2a68f3ba6e8a826bfe15cf3ef8397ff4f284347d0829872cd7056f81e.lean.json)

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
| 1 | `theorem` | [Pairwise.nodup](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/pairwise-nodup.md) | 28 | `result-track:0b57b54f9a61ca1d399e6f49bb254d2c4013cae10c1462023afe1556ff88a8ad` |
| 2 | `theorem` | [rel_nodup](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/rel-nodup.md) | 33 | `result-track:957cb5dfadd7cf8ff3a2dab5a44352acdd1f46ddcf6fe41007351f9c56c0eb83` |
| 3 | `theorem` | [Nodup.cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-cons.md) | 39 | `result-track:09d9cb5ca0927f30978bfb9ea4966a4757aa7dfd56547b44e77e935d95aa1928` |
| 4 | `theorem` | [nodup_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-singleton.md) | 42 | `result-track:1d7675bf6be521c000f6f348942133547768aa5a119ee98ed402aee360a5dd7e` |
| 5 | `theorem` | [Nodup.of_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-of-cons.md) | 45 | `result-track:8de335ea4fae32892e8e5bea5515bd8faf000ef41fadb40e8eeda679df6206bf` |
| 6 | `theorem` | [Nodup.notMem](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-notmem.md) | 48 | `result-track:47c20af68ce98154e6436a50136e1bd1b7c84df662edf62a240940d6f6e3d919` |
| 7 | `theorem` | [not_nodup_cons_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/not-nodup-cons-of-mem.md) | 51 | `result-track:59f43ff9528048d618f9a8b4418759ecfb26be285da67c3665da376d1cc3459d` |
| 8 | `theorem` | [not_nodup_pair](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/not-nodup-pair.md) | 55 | `result-track:815ad894cf73b34aa27a83f716d5d34c1203898652d3bf98179acea1acd0caa3` |
| 9 | `theorem` | [nodup_iff_sublist](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-iff-sublist.md) | 58 | `result-track:4023fa3028b890bc0c7a9b0c1210015f9033c06098f4b242684f19c727601717` |
| 10 | `theorem` | [nodup_mergeSort](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-mergesort.md) | 67 | `result-track:80f75c29c3c2244f736ba0898d006c13080c2429b867453157d52ecb6df94b2b` |
| 11 | `theorem` | [nodup_iff_injective_getElem](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-iff-injective-getelem.md) | 72 | `result-track:2b1b2d65fa7061fa4584e50bec116dfd70615e0c95660f619bf3fd2093ae8573` |
| 12 | `theorem` | [nodup_iff_injective_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-iff-injective-get.md) | 83 | `result-track:529fc9d15507b2b0fca228c90dd23bd8596bcc22f18c09a66eec845f93fa572e` |
| 13 | `theorem` | [Nodup.injective_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-injective-get.md) | 86 | `result-track:ad55520bd4be9808b6724ddf7233002c906b39e71fbdc09db19c19b09e02cb14` |
| 14 | `theorem` | [_root_.Function.Injective.nodup](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/root-function-injective-nodup.md) | 89 | `result-track:bb2851b7ec8c0dc4a5eab790663592dd45954ecd92a6a84d874c0c9b050fcb34` |
| 15 | `theorem` | [Nodup.get_inj_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-get-inj-iff.md) | 92 | `result-track:b69d0a0a4e8c06b5836e29b3c852f6dbee2300334870971f3bf351473ef83df1` |
| 16 | `theorem` | [Nodup.getElem_inj_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-getelem-inj-iff.md) | 96 | `result-track:22892fa280e3769d0149c06cf22365fbfebe381c8db6c6dc78ded6482e36b1ba` |
| 17 | `theorem` | [nodup_iff_getElem?_ne_getElem?](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-iff-getelem-ne-getelem.md) | 102 | `result-track:5e0a2d26e940c0eb7cf2efb5887d9fb85b70f43a8165705883ab2e0d874ab4eb` |
| 18 | `theorem` | [Nodup.ne_singleton_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-ne-singleton-iff.md) | 106 | `result-track:95a1d693ac9794b2a121c5ca6888e5128c11c4717b49d23d02c5813b010e8bee` |
| 19 | `theorem` | [not_nodup_of_get_eq_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/not-nodup-of-get-eq-of-ne.md) | 120 | `result-track:86e20a9ca5a882b72cae9760eba3b34c8cfc88ece58a1ad6cb6a9b144cf64095` |
| 20 | `lemma` | [Nodup.head_eq_getLast_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-head-eq-getlast-iff.md) | 125 | `result-track:fee9619b0bf611f126e3487e2094e06a96608cf86bee673cc079c5cf650c9277` |
| 21 | `theorem` | [get_idxOf](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/get-idxof.md) | 131 | `result-track:84a92933f80f21019ff7b926ad45e18c5519263ffe95e309447c383f9508adfe` |
| 22 | `theorem` | [nodup_iff_count_le_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-iff-count-le-one.md) | 135 | `result-track:af7523fe3ef42f5447274554d29aae48d45517c1728dc38e846d8427ec835cbd` |
| 23 | `theorem` | [nodup_iff_count_eq_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-iff-count-eq-one.md) | 141 | `result-track:ceb8502e629930d5c5eabb135e7159076071c990a5c6733f3f5c8d317359ae25` |
| 24 | `theorem` | [get_bijective_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/get-bijective-iff.md) | 144 | `result-track:7696f3385473b7737d3a823c3e1c8b6e3e20ec294c19892f95d6c2a52cf23a3a` |
| 25 | `theorem` | [getElem_bijective_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/getelem-bijective-iff.md) | 150 | `result-track:065bc20cd608ce7d82df7c1841988466d7e53e80dd5af5b279e0aac8d3023920` |
| 26 | `theorem` | [count_eq_one_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/count-eq-one-of-mem.md) | 155 | `result-track:f9d2a6e554f52418b2840e1259330804edc1a891a6320cd837a8e6cb371b8de6` |
| 27 | `theorem` | [Nodup.of_append_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-of-append-left.md) | 159 | `result-track:65c8c8990c1bff18be5607e05bd3b1a77c45f85c0c7d64101e84a847c8384a80` |
| 28 | `theorem` | [Nodup.of_append_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-of-append-right.md) | 162 | `result-track:1753d2b8a4f1122b55cc731109492c9eafb57cde529461c14c802b5fbb697246` |
| 29 | `theorem` | [nodup_append'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-append-source-edition-2.md) | 167 | `result-track:661fb9dbcf417be160f6399e121651cc8292688e6a04c99ce40458c52bc46a03` |
| 30 | `theorem` | [disjoint_of_nodup_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/disjoint-of-nodup-append.md) | 171 | `result-track:1a4fc02c2ecdb5014edf588a6ab81de7a128689185be2aa6445f8417c9da4377` |
| 31 | `theorem` | [Nodup.append](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-append.md) | 176 | `result-track:2364eba76e951926300f318266d54db4f1a2076a4a22f54924846afb049f7443` |
| 32 | `theorem` | [nodup_append_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-append-comm.md) | 179 | `result-track:8204a44ec270a8775274bda33d50c0f691892c344834a2dd553aba62fc3e7f89` |
| 33 | `theorem` | [nodup_middle](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-middle.md) | 182 | `result-track:3635d4d7fbee709a6c30301b6eff48008a88e11387a5206f38e07d958f68737d` |
| 34 | `theorem` | [Nodup.of_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-of-map.md) | 187 | `result-track:f4278af23092acc90db5b2afe69cb8be91c352d3a8d372f911d90b96cc1777a0` |
| 35 | `theorem` | [Nodup.map_on](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-map-on.md) | 190 | `result-track:bfb44ee9296eed6d0679b747e4c5cdeca1fd9377d041e3cbb27b8c35e553913f` |
| 36 | `theorem` | [inj_on_of_nodup_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/inj-on-of-nodup-map.md) | 194 | `result-track:f2a2805b07a2ad4f43d66489f84be8d3a06d21b59b3d5ee0224e662c65caa7ca` |
| 37 | `theorem` | [nodup_map_iff_inj_on](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-map-iff-inj-on.md) | 207 | `result-track:87af13765f377c6b3572e8a6176c0549082f2e1269437695b7584a331dd2e4d7` |
| 38 | `theorem` | [Nodup.map](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-map.md) | 211 | `result-track:8e96e3fd403c8fbc4b8253e17b037b3c6e42c431c581bbda01b69e371be67f4c` |
| 39 | `theorem` | [nodup_map_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-map-iff.md) | 214 | `result-track:5f68d00118089f0227e0f433de46de119c026f1ba5ede82de92e8a19acfb7bdb` |
| 40 | `theorem` | [nodup_attach](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-attach.md) | 218 | `result-track:bfeeda912687a89f00e0573683c2b9b5007cf0183ff6bfcfafd50fc0aa8d2465` |
| 41 | `theorem` | [Nodup.pmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-pmap.md) | 224 | `result-track:a1722a195dc08ee62f90663e682831539f8dbb60b2b52ad47aa5a0e170df2161` |
| 42 | `theorem` | [Nodup.filter](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-filter.md) | 228 | `result-track:b1571ce9e0d4acddd85644e20eb914882c4a6e8b18ee54a0345ad8bdc98c5ca9` |
| 43 | `theorem` | [nodup_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-reverse.md) | 232 | `result-track:57a108c10a2bc09df0489516533920288adaf8422eed4000a8747274d9fd1773` |
| 44 | `theorem` | [nodup_concat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-concat-source-edition-2.md) | 235 | `result-track:aed3a763eabbbcde6fcd3ce9716f560f342fb7de8ba42206f36dd0322266843f` |
| 45 | `lemma` | [Nodup.tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-tail.md) | 239 | `result-track:862d2cd3bd008df8188931d009af7b0616f5f5ea9063cf761e22c04bd4b2326d` |
| 46 | `lemma` | [nodup_tail_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-tail-reverse.md) | 242 | `result-track:70134745f44460747c7ad20fc37b0a909408c6a828d3f484c1c0bb630b1f2f7d` |
| 47 | `lemma` | [Nodup.eq_of_head_mem_of_suffix](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-eq-of-head-mem-of-suffix.md) | 260 | `result-track:5b9379464f3aaf0b46429a9caf86d41ad3b728668fef5123f2b39999224ac0f1` |
| 48 | `lemma` | [Nodup.eq_of_getLast_mem_of_prefix](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-eq-of-getlast-mem-of-prefix.md) | 264 | `result-track:9915e7a4a5c96268700398ca12de2ab500066280106e35314ad04f3beffde52a` |
| 49 | `lemma` | [Nodup.prefix_of_head_mem_of_infix](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-prefix-of-head-mem-of-infix.md) | 268 | `result-track:d2809d5939d78bea0304e8785d9ee8cf0f4ed02491417a4e66827dfb8185a309` |
| 50 | `lemma` | [Nodup.suffix_of_getLast_mem_of_infix](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-suffix-of-getlast-mem-of-infix.md) | 272 | `result-track:08d80b64ff583f1d27af729fb58f9405e653d42a44d86d3cde7de1d79934bcc5` |
| 51 | `lemma` | [Nodup.eq_of_head_mem_of_getLast_mem_of_infix](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-eq-of-head-mem-of-getlast-mem-of-infix.md) | 276 | `result-track:40d50ff5e374f2ccf08dda02acb326914819d65dc4ed68bef55840a3752c7cf3` |
| 52 | `theorem` | [Nodup.erase_getElem](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-erase-getelem.md) | 280 | `result-track:173d57a10e3ecf0b8c6a231f0912333eb7687ca4292a51be36ea391cfa0e998f` |
| 53 | `theorem` | [Nodup.erase_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-erase-get.md) | 289 | `result-track:e8ebe0ac37c9514b82a392cda3666dd7258ea1ad2d5e2faa13cfee87371e94f2` |
| 54 | `theorem` | [Nodup.diff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-diff.md) | 293 | `result-track:903adfd49c3eb279e1177af123bd2706f7034bcbc16ec0b0af52cd7107fb7760` |
| 55 | `theorem` | [nodup_flatten](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-flatten.md) | 296 | `result-track:8b10a0c5e53ac07fda0422da8568191e7f07ad65aa8aead421f03feb49f40cd6` |
| 56 | `theorem` | [nodup_flatMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-flatmap.md) | 300 | `result-track:b78ca00c2859815692b5bfa5259bfe7fff726476a2bdce8001ffb35a3e1eb9cb` |
| 57 | `theorem` | [Nodup.product](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-product.md) | 308 | `result-track:6f0f6cd7c6af6e209b1403481f3a8b97eb5ab162ea6073b4f5dfa2434cb39eb1` |
| 58 | `theorem` | [Nodup.sigma](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-sigma.md) | 317 | `result-track:b551f5ef1b624ca648f555cb284eaa029d76a2038005f6b78bdba5e11a4b736f` |
| 59 | `theorem` | [Nodup.filterMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-filtermap.md) | 326 | `result-track:c408165dcdc2ff702091d8bcf7f33f843076c51e50c0b24aa0c177f460030afd` |
| 60 | `theorem` | [Nodup.concat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-concat.md) | 330 | `result-track:4f1e6dde9e3d6d25e40b9368b5f97f6e84439b0185a1c4c8296830db7f097152` |
| 61 | `theorem` | [Nodup.insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-insert.md) | 333 | `result-track:1f5762b557d5b7c67ba67bdf51d6a6ece8e08ec7b967d50ab64ea55add78d886` |
| 62 | `theorem` | [Nodup.union](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-union.md) | 337 | `result-track:7a493d9c4d8fa4782c09521c9a40a5b7bf9abc4aa83de735763a0c6068b0529c` |
| 63 | `theorem` | [Nodup.inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-inter.md) | 342 | `result-track:edc38e52c3747436abc89601cfde172198bb1cf0ddccfb9b23a261da03077b46` |
| 64 | `theorem` | [Nodup.sdiff_eq_filter](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-sdiff-eq-filter.md) | 345 | `result-track:dae2a35dbad59cc120cd657dd1dacf571dc725409c7701b7052fc031280bdce4` |
| 65 | `theorem` | [Nodup.mem_sdiff_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-mem-sdiff-iff.md) | 354 | `result-track:3acd8254ae078a74dde15895f764c7bd002fe635d8e399d69b9186e00c367cc5` |
| 66 | `theorem` | [Nodup.set](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-set.md) | 360 | `result-track:e3323b11183f259ba82471acf5acd7a59ac85745540d89c545d2e80417e3f61a` |
| 67 | `theorem` | [Nodup.map_update](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-map-update.md) | 370 | `result-track:3bca7450c1141b7c580c10d2055f626978c8dd1df18f5dc0642705649b9c7861` |
| 68 | `theorem` | [Nodup.pairwise_of_forall_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-pairwise-of-forall-ne.md) | 381 | `result-track:0fc4e168c1b955c8a66d46be8ccd5dc9d54fe95d3ac25a9b4e4dc56c406cd2ce` |
| 69 | `theorem` | [Nodup.take_eq_filter_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/nodup-take-eq-filter-mem.md) | 385 | `result-track:52fcd6d8f8a645b723d92284b1c7581adce5a6360e8f6e12cf05b6ae491fa1a2` |
| 70 | `theorem` | [Option.toList_nodup](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupPublic.lean/declarations/option-tolist-nodup.md) | 398 | `result-track:2283638777d60d84214fc2319054dbab407ccdf4c803d35829b2e7e499a77338` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=659a20e59b436e11b412c3fd8d6cad8098dcbcaf3dc1c756656470500ea77476 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Nodup/Variant28692ae2a68f3ba6e8a826bfe15cf3ef8397ff4f284347d0829872cd7056f81e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Nodup/Variant28692ae2a68f3ba6e8a826bfe15cf3ef8397ff4f284347d0829872cd7056f81e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
