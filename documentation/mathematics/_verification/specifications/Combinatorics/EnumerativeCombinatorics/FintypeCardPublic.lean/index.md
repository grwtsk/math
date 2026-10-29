# Verification target: Fintype Card Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f59efd09968716b3727825b05027f6fdee9e5dc8",
  "lexical_observation_count": 94,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Varianta77eb573a459ee525cfb4ac753dd05968ef2cc831d7549dc4e9036c7a90a1f00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f59efd09968716b3727825b05027f6fdee9e5dc8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Varianta77eb573a459ee525cfb4ac753dd05968ef2cc831d7549dc4e9036c7a90a1f00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Card/Varianta77eb573a459ee525cfb4ac753dd05968ef2cc831d7549dc4e9036c7a90a1f00.lean.json)

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
| 1 | `def` | [card](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/card.md) | 40 | `declaration-track:b873dfcf4f7ba7195901a3417502a9e5a94a9100fd8e64e3528970c15547f6ac` |
| 2 | `theorem` | [subtype_card](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/subtype-card.md) | 43 | `result-track:b229cb22d66d011f5a1d51a8734e7d7fad11b431926e6754eac7717135dfd55a` |
| 3 | `theorem` | [card_of_subtype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/card-of-subtype.md) | 47 | `result-track:fe020cd7a853de83e1c67cdd27744794d01babac90db65bba58a322733f612f6` |
| 4 | `theorem` | [card_ofFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/card-offinset.md) | 53 | `result-track:07fe60cfcae14cadd6b230357ed5205e60f1b5620980d25ea98315e85fcdb49a` |
| 5 | `theorem` | [card_of_finset'](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/card-of-finset.md) | 57 | `result-track:2da1a0e3fbe9861a2d00eea099aaba773e9c5f6ee721baa3f7541c66bfef8b8b` |
| 6 | `theorem` | [ofEquiv_card](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/ofequiv-card.md) | 64 | `result-track:6551898815d75ed59cec4926ea639dc349b6df3bbb1686c9662738e6142d8123` |
| 7 | `theorem` | [card_congr](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/card-congr.md) | 67 | `result-track:4d9253870f20142fc9bc8c093a23b437a4fbf93f4f1b89ca855de03bd85edb48` |
| 8 | `theorem` | [card_congr'](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/card-congr-source-edition-2.md) | 71 | `result-track:6523fb561e5619b9df004021e3d0242775dd1683b981e356c9795df41882c15a` |
| 9 | `theorem` | [card_ofSubsingleton](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/card-ofsubsingleton.md) | 77 | `result-track:8f3512b8b9cb584b1f735ea55502af39fb924406f042606959590283ba6bacae` |
| 10 | `theorem` | [card_unique](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/card-unique.md) | 81 | `result-track:a94411a7c9055c78787134404dd391aa5805c2129eabf33db0dc67adde8e0fda` |
| 11 | `theorem` | [card_ofIsEmpty](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/card-ofisempty.md) | 86 | `result-track:d323c274a913f6a60d3f436e9a3e01224b9f1bd13613a880f370c4e4a474b653` |
| 12 | `theorem` | [toFinset_card](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/tofinset-card.md) | 98 | `result-track:94dcb923cba698f040fc5df2ed6ca442bd325e154032bd52ae1312cc89ce4dae` |
| 13 | `theorem` | [Finset.card_univ](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/finset-card-univ.md) | 104 | `result-track:3e8020fbaa06f7392a76ab0d637f6ca80a9a31b74ca6ea14315ce496aa88e436` |
| 14 | `theorem` | [Finset.eq_univ_of_card](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/finset-eq-univ-of-card.md) | 106 | `result-track:99929a7063d9ad45410acf366a2f4be296116d61994c2a04b5d5617263cf0140` |
| 15 | `theorem` | [Finset.card_eq_iff_eq_univ](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/finset-card-eq-iff-eq-univ.md) | 110 | `result-track:0918b4c048931daa70a1aeb736c64835bc99efdc92550892ace60b0480921ef8` |
| 16 | `theorem` | [Finset.card_le_univ](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/finset-card-le-univ.md) | 115 | `result-track:ee9d4b1a1f4073090302f8397cc9d346c71716720dc8b859ef29519a1a5a0203` |
| 17 | `theorem` | [Finset.card_lt_univ_of_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/finset-card-lt-univ-of-notmem.md) | 118 | `result-track:8d11df7cd88aece248f14b720e0328d0801a16d0b87636baa55f6a00e9c740c0` |
| 18 | `theorem` | [Finset.card_lt_iff_ne_univ](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/finset-card-lt-iff-ne-univ.md) | 122 | `result-track:ea4b69463c5596a377a029bb3f1e1131adea8b9969ee22b1af9586eb8f75b813` |
| 19 | `theorem` | [Finset.card_compl_lt_iff_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/finset-card-compl-lt-iff-nonempty.md) | 126 | `result-track:943884c98040d6d19711a766bc24c475d302974045fb1c0a1cd800e75ab10d61` |
| 20 | `theorem` | [Finset.card_univ_sdiff](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/finset-card-univ-sdiff.md) | 130 | `result-track:976656a857e78433d52d5ca78bcad011582bc613eb3573308ad7a0b830adfd2d` |
| 21 | `theorem` | [Finset.card_compl](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/finset-card-compl.md) | 135 | `result-track:fd8184d6565640b6df762a3424e94cf5447953dd3e397df2ff3b5d09f84b3dfe` |
| 22 | `theorem` | [Finset.card_add_card_compl](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/finset-card-add-card-compl.md) | 139 | `result-track:d861c1435880e47979bf2185171f208e9863970098ebd40d422aa97f4e509d58` |
| 23 | `theorem` | [Finset.card_compl_add_card](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/finset-card-compl-add-card.md) | 144 | `result-track:b84cf2ae736082a23bd2eb0bfa9a1fbcb23bf1bc401573121ab6e93db4299604` |
| 24 | `theorem` | [Finset.compl_eq_of_disjoint_of_card_add_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/finset-compl-eq-of-disjoint-of-card-add-eq.md) | 148 | `result-track:d05363ad79f42b2b1333de1d82a2b983be5f2feb6cb08d45a2f6a4a1c7ffdcb6` |
| 25 | `theorem` | [Fintype.card_compl_set](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fintype-card-compl-set.md) | 156 | `result-track:894a66679bb519944ebe5d3612fbe1461083642035ccd52beabafca00657187f` |
| 26 | `theorem` | [Fintype.card_subtype_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fintype-card-subtype-eq.md) | 160 | `result-track:4c7fcf042bbd4944b5b2d4f02778ca2f848a5c898460d64c80b59225aa69eb1a` |
| 27 | `theorem` | [Fintype.card_subtype_eq'](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fintype-card-subtype-eq-source-edition-2.md) | 164 | `result-track:4f85019b4bacb091a164b8f67d1db55b952a29dfb0565a4f4871204d6d6a966d` |
| 28 | `theorem` | [Fintype.card_empty](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fintype-card-empty.md) | 168 | `result-track:34599f5f771cf214e7e120abee96144374234d61f2a89910eaebc120c6a6eb5b` |
| 29 | `theorem` | [Fintype.card_pempty](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fintype-card-pempty.md) | 171 | `result-track:8212a7fd7a52378faff63db373158994c633996e7df8d32a455190f7d87dbfb2` |
| 30 | `theorem` | [Fintype.card_unit](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fintype-card-unit.md) | 174 | `result-track:e9138d3fdb8a78f8340918d6ba1c3bb169a72d07cb58d0f293df463546180269` |
| 31 | `theorem` | [Fintype.card_punit](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fintype-card-punit.md) | 178 | `result-track:ec3d40714141402ef7d8544924f95c0876951a88a2beddfb654b730b7179b4d7` |
| 32 | `theorem` | [Fintype.card_bool](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fintype-card-bool.md) | 182 | `result-track:db261da479348cd4b83b42a9b34b18effce73ced8997f0dc81a517a605ad0369` |
| 33 | `theorem` | [Fintype.card_ulift](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fintype-card-ulift.md) | 186 | `result-track:080bdac0634ee545ad11060313e340a87ae1ac1cffec91b053998714e05c8ad6` |
| 34 | `theorem` | [Fintype.card_plift](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fintype-card-plift.md) | 190 | `result-track:f873c08fd8a6c39921d06450be9f8400ddaca62459b341f79dbb11e4e012305d` |
| 35 | `theorem` | [Fintype.card_orderDual](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fintype-card-orderdual.md) | 194 | `result-track:a212c0e0b611fab3efdeba3d32bef830dfdcd6851f33db868104784e26785cc4` |
| 36 | `theorem` | [Fintype.card_lex](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fintype-card-lex.md) | 198 | `result-track:79cf8a588009f3193d1aebf37dea8e0f5d4ce978f9d60c22de13e7b2fc4a1788` |
| 37 | `theorem` | [Fintype.card_setUniv](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fintype-card-setuniv.md) | 203 | `result-track:a9b612425aec607d4770f4dd38ef5e05f46ac1fd93c117d5772060a7d3664ffd` |
| 38 | `theorem` | [Fintype.card_subtype_true](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fintype-card-subtype-true.md) | 209 | `result-track:7d9036869d4242f9e4a0f13de681e774ae69a88f80ff13c886e41b1ffe4ba6f5` |
| 39 | `def` | [Fintype.sumLeft](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fintype-sumleft.md) | 217 | `declaration-track:eaa36f7bd11eebb0752668a1e4024aa89cc854db3b2f29abaf780ec8c4c76bef` |
| 40 | `def` | [Fintype.sumRight](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fintype-sumright.md) | 223 | `declaration-track:3ed4885ac81cd94c40338b228f53d820754c30310c514dfec3ba12863250a009` |
| 41 | `theorem` | [Finite.exists_univ_list](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/finite-exists-univ-list.md) | 226 | `result-track:314c10a646ae4c129fedae9b0f3589a671d93ef1171d0f4a550b917cd8c4207e` |
| 42 | `theorem` | [List.Nodup.length_le_card](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/list-nodup-length-le-card.md) | 232 | `result-track:69583891fa1aa8edfbe856e04cb1c782ebdd8bfe69f39e34d15791e69c55a576` |
| 43 | `theorem` | [card_le_of_injective](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/card-le-of-injective.md) | 240 | `result-track:d4201fb7efde10b2ab65e3c3e627dc42bb77a8ed21bee34f6ad5234a1ca1d6b3` |
| 44 | `theorem` | [not_injective_of_card_lt](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/not-injective-of-card-lt.md) | 243 | `result-track:923ec2ba2bbc16cf48bfb2fd7fa648a732d101978fe608b8725e61c0504b8214` |
| 45 | `theorem` | [card_le_of_embedding](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/card-le-of-embedding.md) | 247 | `result-track:ac65109b9512905b8d36b6adb2fc6b28964ab68eac2c0cd215bbf15b930981fe` |
| 46 | `theorem` | [card_lt_of_injective_of_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/card-lt-of-injective-of-notmem.md) | 250 | `result-track:9e9bd1f159792fd0e15c4d55e98372007c451260a451e9652d3f6229c08b4b27` |
| 47 | `theorem` | [existsUnique_notMem_image_of_injective_of_card_eq_add_one](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/existsunique-notmem-image-of-injective-of-card-eq-add-one.md) | 260 | `result-track:05ab41f5a0f2340d62352796b09c785b88c1d3a5135e25d105eeae4fcc3a8ea3` |
| 48 | `theorem` | [card_lt_of_injective_not_surjective](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/card-lt-of-injective-not-surjective.md) | 265 | `result-track:636e191fa19dd5f84cbac25195ce0f1fea81ab7dfa7af873622499ae29da4c06` |
| 49 | `theorem` | [card_le_of_surjective](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/card-le-of-surjective.md) | 270 | `result-track:1705f960116faac584a0255c494d2eda748710568187b20ffad481bcba58b34e` |
| 50 | `theorem` | [card_range_le](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/card-range-le.md) | 274 | `result-track:d9f74443b13dee63f5dcc618427b7c4fde04f5fb6c6d01826273cb4aceea9534` |
| 51 | `theorem` | [card_range](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/card-range.md) | 278 | `result-track:0d7527caa42250ec76b2c7a6eef947e2a4babc75f55b7b028cd15fef49c1310e` |
| 52 | `theorem` | [card_eq_zero_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/card-eq-zero-iff.md) | 282 | `result-track:ec1f67f6c0d6eae7e8f68a40aac999ef44e476c267d1bc9b00c8bd0fa3513188` |
| 53 | `theorem` | [card_eq_zero](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/card-eq-zero.md) | 285 | `result-track:06ae97e737cae0b0a14b1e2b14684212f6341b89d7ecba64f14fa17f1ef17e3d` |
| 54 | `def` | [cardEqZeroEquivEquivEmpty](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/cardeqzeroequivequivempty.md) | 291 | `declaration-track:c7493eb5eca81d1b874f918ae8b081f4af18e803233e125e8aa14e6283f55a22` |
| 55 | `theorem` | [card_pos_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/card-pos-iff.md) | 294 | `result-track:54e379e1a6d336bd3a4c3821a4add27f1629ca12b8e5e523a04c7fc3ff149189` |
| 56 | `theorem` | [card_pos](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/card-pos.md) | 297 | `result-track:1413a12ae5fd6d3d488de4ba4a79d1c844ff4a7f47226942a7f73eb51538b898` |
| 57 | `theorem` | [card_ne_zero](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/card-ne-zero.md) | 301 | `result-track:6f8d011969e4ee69566a0a69e41e6a5f24e821ade1d93731a77d67ad6dedd520` |
| 58 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/instance.md) | 304 | `declaration-track:57baf2a3ef632a5cb4b816c98f8b32184602e9f65caf0cd91f9f3330780617ec` |
| 59 | `theorem` | [existsUnique_iff_card_one](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/existsunique-iff-card-one.md) | 306 | `result-track:3f44f17d6a959f0d6bdf6700f3c5a086c06ad900d08f09f2fb079ec4123041ca` |
| 60 | `theorem` | [two_lt_card_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/two-lt-card-iff.md) | 313 | `result-track:5fd929b24cf1aa8c47e45aafe676675571fb6be8a7fc06cbf4b36301b316da37` |
| 61 | `theorem` | [card_of_bijective](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/card-of-bijective.md) | 316 | `result-track:cac244ec97fd4abe807b12843b35626267b7135311284018a47866447031c118` |
| 62 | `theorem` | [surjective_of_injective](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/surjective-of-injective.md) | 325 | `result-track:7e13802a5ee981fe6ec29adb76744bc36d9f44af0b64efa82134a0d01b02d8c5` |
| 63 | `theorem` | [injective_iff_surjective](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/injective-iff-surjective.md) | 336 | `result-track:c3e298c3db543ce8d5af2a64038468d886a9fbb4c6312dde24bea427067af8b2` |
| 64 | `theorem` | [injective_iff_bijective](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/injective-iff-bijective.md) | 342 | `result-track:3703ac6318c00847f00b0b389eef9e439a3b66ef7773f50b32d6dd4a34970c56` |
| 65 | `theorem` | [surjective_iff_bijective](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/surjective-iff-bijective.md) | 345 | `result-track:4e8019e333cec6b0a41f90bfee9fc9543121c34f3ef5701c31db99d478f192e7` |
| 66 | `theorem` | [injective_iff_surjective_of_equiv](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/injective-iff-surjective-of-equiv.md) | 348 | `result-track:d2bb5ea273f05c83290301686a80d22a9a903064529c5d57526c1eb8e80c4d43` |
| 67 | `theorem` | [Fintype.card_coe](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fintype-card-coe.md) | 366 | `result-track:f5f190d06809a9fc3e45ac6b55f78e37a55b3d195fd9d82ff55aa10d5120d610` |
| 68 | `lemma` | [Finset.exists_superset_card_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/finset-exists-superset-card-eq.md) | 370 | `result-track:37e86e9880f4b91a9cddcfac4a88860167bd422f7566ed13712fa6606c5b6287` |
| 69 | `theorem` | [Fintype.card_prop](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fintype-card-prop.md) | 375 | `result-track:8d6c16be3872b53ca6693e4db834814e644d51ea2aa71271eaa918fe0b5a364c` |
| 70 | `theorem` | [set_fintype_card_le_univ](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/set-fintype-card-le-univ.md) | 378 | `result-track:8e08f686eaa7ef0bbe5b48f1d613df61bebe0704ed82f3467392afa57dd302c2` |
| 71 | `theorem` | [set_fintype_card_eq_univ_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/set-fintype-card-eq-univ-iff.md) | 382 | `result-track:d462d1aca7d09cf734bca306f5d9bbb12a1001a1b6ed496efd6cef2ccd116938` |
| 72 | `theorem` | [Fintype.card_subtype_le](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fintype-card-subtype-le.md) | 386 | `result-track:97a0bb13fe3966d4e384d9e451f1a3b0f1aac0caabcf9899c706f960e334576a` |
| 73 | `lemma` | [Fintype.card_subtype_lt](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fintype-card-subtype-lt.md) | 390 | `result-track:f286d5236aaf7d8dad2c9ffba445d73a47f6c61a6c401e8c21a59b647af06e6b` |
| 74 | `theorem` | [Fintype.card_subtype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fintype-card-subtype.md) | 395 | `result-track:d95e0ff3ee8427db97664a34687e7aad3b4ef06c214b8576c9c0b76b05748126` |
| 75 | `theorem` | [Fintype.card_subtype_compl](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fintype-card-subtype-compl.md) | 401 | `result-track:f79ff9b074266de831844027670124539c09c8794c001be4daa0a5900a116060` |
| 76 | `theorem` | [Fintype.card_subtype_mono](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fintype-card-subtype-mono.md) | 410 | `result-track:99a125fac4c6c9ce124342fd1107eb3ebfcf6db6c0473dd5ee3aa32dd0ae4f3e` |
| 77 | `theorem` | [Fintype.card_compl_eq_card_compl](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fintype-card-compl-eq-card-compl.md) | 415 | `result-track:b40e025d4a745fe05fa15604c32358512a45dc59ceb35e607b624a3eaee70f77` |
| 78 | `theorem` | [Fintype.card_quotient_le](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fintype-card-quotient-le.md) | 422 | `result-track:0ce9bd9152d48fb4b0ad1903cff47bc712314911a8dd2570de3b7d838cc1b613` |
| 79 | `theorem` | [univ_eq_singleton_of_card_one](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/univ-eq-singleton-of-card-one.md) | 426 | `result-track:a3ce293bed3037094dcdb14bbd53ad542760832296099aae1a746e54dfb808a1` |
| 80 | `theorem` | [wellFounded_of_trans_of_irrefl](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/wellfounded-of-trans-of-irrefl.md) | 436 | `result-track:e72c2f8f00da7406b515bc4f5e162bf014f194c6823b6abb22d8a29bd78208bc` |
| 81 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/instance-source-edition-2.md) | 450 | `declaration-track:e329e59e02cff2cb9256b2eb5af5b0e9308264493d677d51b2faa7065da7243d` |
| 82 | `instance` | [Bool.instWellFoundedLT](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/bool-instwellfoundedlt.md) | 457 | `declaration-track:ef301a3c8bc0fded2a90c08de399ba4463909d8c4334ea7b49ad81d92d5ace55` |
| 83 | `instance` | [Bool.instWellFoundedGT](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/bool-instwellfoundedgt.md) | 458 | `declaration-track:0746605333dd91573658d0c714c211c780d1b0edf24c68d7ce1a35e0cee02657` |
| 84 | `instance` | [Prop.instWellFoundedLT](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/prop-instwellfoundedlt.md) | 459 | `declaration-track:628882d87d45b688a0cbe0407b75c8f7bacdd0334565a3b406941020f0f3b979` |
| 85 | `instance` | [Prop.instWellFoundedGT](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/prop-instwellfoundedgt.md) | 460 | `declaration-track:cd1d764d68aff5076101e24dfbaa4d940a582dfdaa3710e615702af17c52a0cb` |
| 86 | `def` | [truncOfCardPos](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/truncofcardpos.md) | 466 | `declaration-track:b767578969055e4c58f249013f3860522effe43d88a87fb7d98122cb0342cc38` |
| 87 | `theorem` | [Fintype.induction_subsingleton_or_nontrivial](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fintype-induction-subsingleton-or-nontrivial.md) | 480 | `result-track:f08e991439bda365bf265045a2271568cdf8fbcce0a51ef445edae782d9c98b2` |
| 88 | `theorem` | [Fintype.card_fin](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fintype-card-fin.md) | 497 | `result-track:2c10758cf0cffe0a948684258b1b5638b3529938c5ed5a2a4210d5c401ad4065` |
| 89 | `theorem` | [Fintype.card_fin_lt_of_le](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fintype-card-fin-lt-of-le.md) | 500 | `result-track:1b7e9411283b36fd2c314356cebe5f25027d3367eb1b9bbb5acba054cc502c6f` |
| 90 | `theorem` | [Finset.card_fin](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/finset-card-fin.md) | 507 | `result-track:7d60560dc00d9e2afaa3fb2adff8cfd52857c357e07a573ae736d15e2e763c83` |
| 91 | `theorem` | [fin_injective](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fin-injective.md) | 511 | `result-track:5c758d4376880c823ec6ce94c1d5fa093ea964845d43a3e470be726c28e5ee7b` |
| 92 | `theorem` | [Fin.val_eq_val_of_heq](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fin-val-eq-val-of-heq.md) | 514 | `result-track:e516c127927fa373a4348e042290f2516bdaa33e7321b262df8851aef77bb0d9` |
| 93 | `theorem` | [Fin.cast_eq_cast'](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/fin-cast-eq-cast.md) | 519 | `result-track:b5f796df0ab9e71245d56162f3b6e3bc3d4f317643ec1bbf602965dae8f549c4` |
| 94 | `theorem` | [card_finset_fin_le](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeCardPublic.lean/declarations/card-finset-fin-le.md) | 524 | `result-track:bd9de4ea5c1915017c644b50e837a171f0d3f8e27d6b01f22c3bcb1f83684afd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc710b1c18a2a064ad8ab436a38006576950018699ed38fde66f19b337198aef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Varianta77eb573a459ee525cfb4ac753dd05968ef2cc831d7549dc4e9036c7a90a1f00.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Card/Varianta77eb573a459ee525cfb4ac753dd05968ef2cc831d7549dc4e9036c7a90a1f00.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
