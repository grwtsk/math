# Verification target: List Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e1e712adf5d493f6cf0196450ccb2e810d4ae65",
  "lexical_observation_count": 99,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/List/Varianta5f4ddd8dfdb6bd4be8562098aff0f25f305688c5a9e9836688bf243639583a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e1e712adf5d493f6cf0196450ccb2e810d4ae65`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/List/Varianta5f4ddd8dfdb6bd4be8562098aff0f25f305688c5a9e9836688bf243639583a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/List/Varianta5f4ddd8dfdb6bd4be8562098aff0f25f305688c5a9e9836688bf243639583a9.lean.json)

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
| 1 | `def` | [prim](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/prim.md) | 47 | `declaration-track:2cf819c0aa411eaadad3bf7b2fee03c3801b059d8c6b0851f8a4cd4cd66da48d` |
| 2 | `theorem` | [list_casesOn'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-caseson-source-edition-2.md) | 49 | `result-track:7ece785c5d2150386ae25d3cb88c4e7ffde8b7ef215e57d850e9df8dcffa933a` |
| 3 | `theorem` | [list_foldl'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-foldl-source-edition-2.md) | 63 | `result-track:dc92f760ccb8b536d23cb5325ff9da876ab18aa76e7e5c2647d32a4fea39f32e` |
| 4 | `theorem` | [list_cons'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-cons.md) | 91 | `result-track:7133e6f04fb2b1c21741b21118c1f5d08cc9352dbc93ea4f9cc3a6950d34e540` |
| 5 | `theorem` | [list_reverse'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-reverse.md) | 96 | `result-track:312a5eee6ba4e87c474e8e826914c4abcbfe2565dc5570875115f2798d5f3eee` |
| 6 | `instance` | [list](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list.md) | 116 | `declaration-track:f2dbcd08628208e0d6a4f9ec00621957b137a100db6706a3fb5ea73b2a2de6c0` |
| 7 | `theorem` | [list_cons](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-cons-source-edition-2.md) | 150 | `result-track:b65a871b505909e974a277cf30046db28641a8c9632c5fca8043c071353f552d` |
| 8 | `theorem` | [list_casesOn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-caseson.md) | 153 | `result-track:77b52667cee1ae78981ede572413106999f9b8cf659d37f100314edcba243841` |
| 9 | `theorem` | [list_foldl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-foldl.md) | 159 | `result-track:8941bd55228ceea72a86907e9a050fd1901ebc7f1428a6120acad5162025ad8f` |
| 10 | `theorem` | [list_reverse](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-reverse-source-edition-2.md) | 164 | `result-track:3c6b397a190e206ada2d573fd45524a0fc9ce57eab4ecf906117879ab0bae769` |
| 11 | `theorem` | [list_foldr](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-foldr.md) | 167 | `result-track:fb45bcf404c3a69b839973d08e14cbc016f9a2c8847a2385106a1650e31698b9` |
| 12 | `theorem` | [list_head?](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-head.md) | 173 | `result-track:fcf694793937082422c14123a8020160e0ffb64cb586a1a6772f234cdfa468ce` |
| 13 | `theorem` | [list_headI](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-headi.md) | 177 | `result-track:550aa2af02e6a00575ff40ac7a114fcdbf51c30edf66b76d4347419db06b8800` |
| 14 | `theorem` | [list_tail](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-tail.md) | 180 | `result-track:20b0bc796d68aafb3a7b8e0e13c1254388e479082d11e986040966e4c24fe704` |
| 15 | `theorem` | [list_rec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-rec.md) | 183 | `result-track:3ef14d98d8bc123803cdd21fdc74252fe7d4e7b1a29fc70039de57d028d9c2fb` |
| 16 | `theorem` | [list_getElem?](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-getelem.md) | 195 | `result-track:ba727f1dbfcf9bf4f3cd3b9dad86a9db93c96f35ae7401e57884a99458a88071` |
| 17 | `theorem` | [list_getD](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-getd.md) | 220 | `result-track:5bb524ba8bbf648cbe3b35174ba40e30267b7b1897c02be98dde50b99fae9917` |
| 18 | `theorem` | [list_getI](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-geti.md) | 224 | `result-track:322f9684e5cde4d404186b7287f593ffd5c91081e92e2e428ca0531395f6e960` |
| 19 | `theorem` | [list_append](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-append.md) | 227 | `result-track:525e2e19a62ae2b860e2f0fccb4a1e9a06a63199507261a884a7d4b888681181` |
| 20 | `theorem` | [list_concat](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-concat.md) | 231 | `result-track:3ee47b545060b85a69fc6c70dc7636146327b2b887a57224125419911ea37553` |
| 21 | `theorem` | [list_map](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-map.md) | 234 | `result-track:7d0343cb235c585d6f9d7fb07d3239c1b23d76160fd12c5e04d1cf2a0209eec7` |
| 22 | `theorem` | [list_range](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-range.md) | 240 | `result-track:f9382bb1f46777e62bd1a1af516f6de71b6eb28684045fd1a5cc9615504416e1` |
| 23 | `theorem` | [list_flatten](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-flatten.md) | 244 | `result-track:1e83c362252232a31e6bf2405d3035c76b0bcebda6a75d17f51f04417afffbf4` |
| 24 | `theorem` | [list_flatMap](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-flatmap.md) | 248 | `result-track:502a972a778c4f5822e8897593d161a7ff32e54397cf5341577cc9a8fb3e50c6` |
| 25 | `theorem` | [optionToList](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/optiontolist.md) | 251 | `result-track:de98345e37eb5b9251961c4a28c48b44db41fc257ec391e81dbe7369a0865cd8` |
| 26 | `theorem` | [listFilterMap](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/listfiltermap.md) | 256 | `result-track:7042eea1597ab075791bf8f89be702d16da9aa045a67e91eb2f712b6afcd7ba7` |
| 27 | `theorem` | [list_length](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-length.md) | 263 | `result-track:d14511ba1bb056a19267de8eb928ea134b519f84d7a16922890dd75d096e6076` |
| 28 | `theorem` | [listFilter](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/listfilter-source-edition-2.md) | 268 | `result-track:93bce36c335e2ccb69b7b10be23b0ffa08d9260efc3afbd14222d973adaaa099` |
| 29 | `theorem` | [list_findIdx](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-findidx.md) | 274 | `result-track:9a5ce524fbdfabf130542f9bc873f5638d5e7d4cf190a537a852cec8566a864b` |
| 30 | `theorem` | [list_idxOf](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-idxof.md) | 280 | `result-track:209f716996c00753abcdd1ae7b11aca2338858823ccc8acfad09d590e3de5609` |
| 31 | `theorem` | [nat_strong_rec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/nat-strong-rec.md) | 283 | `result-track:7ca75c54a11d3a85678eb8f2786d71d0bc328164a919cda0f33e606c43ffd07c` |
| 32 | `theorem` | [listLookup](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/listlookup.md) | 301 | `result-track:da55e435d8926a8f6b02f719ec9e4f5282c3c500f332b5b8b51e1bf68c81cd6b` |
| 33 | `theorem` | [nat_omega_rec'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/nat-omega-rec.md) | 314 | `result-track:b91eed67f32c83bb9ee210ef8ab1d5424290b54c5e48a734f160ca6a33fff71f` |
| 34 | `theorem` | [nat_omega_rec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/nat-omega-rec-source-edition-2.md) | 375 | `result-track:ebe7f70dd41978e19ba4220bd456e8ffdb79e6977ae2593511039d949266e019` |
| 35 | `theorem` | [list_drop](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-drop.md) | 388 | `result-track:16025d8d9c70018fb93637fa3f009c0099e7ff7cef8ae1c316735213954433e4` |
| 36 | `theorem` | [list_take](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-take.md) | 392 | `result-track:77902f8b679944af83adf7cd7131f70c4ab3a636b7c1d3175ad2d53ff188fa63` |
| 37 | `theorem` | [list_takeWhile](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-takewhile.md) | 398 | `result-track:4ce3fea60d159d1a1a85de24ff934a3b2202bcb1e9445c5372c40d74c44b44bb` |
| 38 | `theorem` | [list_dropWhile](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-dropwhile.md) | 403 | `result-track:213b1cd2c41a81bdaaeed922e2f58d947a0669fcd699b64fcf155ea495714d59` |
| 39 | `theorem` | [list_modifyHead'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-modifyhead.md) | 408 | `result-track:c1ce830eff5d2c883002174b870d07d7583d6ced6fb5fc4ab8dac918a5f636db` |
| 40 | `theorem` | [list_modifyHead](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-modifyhead-source-edition-2.md) | 415 | `result-track:f69c62a8f0a0b7998d7ce8ef177fed3e614a72cb44f593debf8c0a545d1befdf` |
| 41 | `theorem` | [list_modify'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-modify-source-edition-2.md) | 419 | `result-track:f4cc32ed0571765a9e30d66993a048958a39e1c293b5b12ddfbad5a105199d3c` |
| 42 | `theorem` | [list_modify](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-modify.md) | 428 | `result-track:8f818370b1c382638d9f33c783462fe69058bdf498d46b8ff249ff9dd5d2a23d` |
| 43 | `theorem` | [list_set](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-set.md) | 433 | `result-track:586a5279ffb76f4939d0c67428602312c8d2007fed6643a3026e381e38e804ba` |
| 44 | `theorem` | [exists_mem_list](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/exists-mem-list.md) | 447 | `result-track:3122a2a0867466f766903611bc95e0d614bc7e2f98dce1e89b9572377c03cbb3` |
| 45 | `theorem` | [forall_mem_list](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/forall-mem-list-source-edition-2.md) | 452 | `result-track:9a4979ca9853821a1b93770856128bb0efafd1347bae0994a347f21059a26ac8` |
| 46 | `theorem` | [exists_lt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/exists-lt-source-edition-2.md) | 459 | `result-track:b511c607987b550d00d3393599c267d3a3c3f2198434c1673612cea714b9bb49` |
| 47 | `theorem` | [forall_lt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/forall-lt-source-edition-2.md) | 463 | `result-track:4300062851310e842bf4527596c24c5789f27685d60d117d66d9831e676ec9b8` |
| 48 | `theorem` | [listFilter_listRange](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/listfilter-listrange.md) | 467 | `result-track:df37432b57d89cdb73e0ac08b4fe5a226cc56055bffcc78c801d39e24704702b` |
| 49 | `theorem` | [listFilter](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/listfilter.md) | 486 | `result-track:42748f980847da18b3569f22d2ae60ea54f0bed0fcff705ed779626f3b6954d1` |
| 50 | `theorem` | [exists_mem_list](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/exists-mem-list-source-edition-2.md) | 495 | `result-track:4d3e487936dc6a4ae641515c6f76e0ea0cf716608dd5874ca544b77625979acc` |
| 51 | `theorem` | [forall_mem_list](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/forall-mem-list.md) | 503 | `result-track:82f0162e441216d3438b7877790648102964f30574a588af12f315c6c1296317` |
| 52 | `theorem` | [exists_lt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/exists-lt.md) | 513 | `result-track:0c1f50bbeedafc001009acac613b419d26765884d95e5b64ceaa6371a8f42bb6` |
| 53 | `theorem` | [forall_lt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/forall-lt.md) | 518 | `result-track:0e166f6b39d7061c1d589874083eac7430c98d1ba93cc098e71aa4633f37ee46` |
| 54 | `instance` | [vector](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/vector.md) | 529 | `declaration-track:3cca40f205a1b5bc18bb6596dca0271f554dd5d7638fd2acdec7f455f8060a80` |
| 55 | `instance` | [finArrow](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/finarrow.md) | 532 | `declaration-track:acf4b2ba5690fae0bb0c5028b6d63a02ec2b15c627882ce67a76658544b4d726` |
| 56 | `theorem` | [vector_toList](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/vector-tolist.md) | 542 | `result-track:1a796ebe1db5fbdec496436793076e6d92f237ff10ea87bac557ddc91108dde1` |
| 57 | `theorem` | [vector_toList_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/vector-tolist-iff.md) | 545 | `result-track:19d042b1234cb1897fabdb9dac1dbfd8338f389a3a1a36d604d6b61026abae4e` |
| 58 | `theorem` | [vector_cons](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/vector-cons.md) | 549 | `result-track:7203a91db8934b6531373026ed1e029c0dd4ae9ddb411b0055c05472775d6161` |
| 59 | `theorem` | [vector_length](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/vector-length.md) | 552 | `result-track:d4acb5e49e791d8b1a7142cdc732be4a2c6d5652ddcfeed0fbed8f8bda13771d` |
| 60 | `theorem` | [vector_head](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/vector-head.md) | 555 | `result-track:1518d137d9ed691f9ad66430f28d5b23d4c1ec0d95d2a37c42bc370d036632d3` |
| 61 | `theorem` | [vector_tail](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/vector-tail.md) | 558 | `result-track:df6d9c15f45863b46a6f71a26d44ed2e345b278ff2d099245384dd192a4583ea` |
| 62 | `theorem` | [vector_get](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/vector-get.md) | 561 | `result-track:cc2d84fc569932ce8fec0fac51b6b993ff04afad9249482be559566bbd42fcf2` |
| 63 | `theorem` | [list_ofFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/list-offn.md) | 566 | `result-track:e47eb861ef6cc7f68264bfea5b898331ecb9bfa40be6dd7c976122ca1b45c945` |
| 64 | `theorem` | [vector_ofFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/vector-offn-source-edition-2.md) | 572 | `result-track:7bcd0e6561c98cdb6b0d2f4bebfcfff15b4a92b0107dcb27b24cb6307326c8d3` |
| 65 | `theorem` | [vector_get'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/vector-get-source-edition-2.md) | 576 | `result-track:e857a87bdbd3daa3ba80baa38ff7375be507000979fd7b484c9318c8ec1dc68a` |
| 66 | `theorem` | [vector_ofFn'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/vector-offn.md) | 579 | `result-track:0f32864ff36decc35dc893211d61606ba63befd62e71ff72aa97572e049200eb` |
| 67 | `theorem` | [fin_app](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/fin-app.md) | 582 | `result-track:181f243ce9e17a59df96563a18e078e7c842b6467b929d3aaabbd1e6dc677c97` |
| 68 | `theorem` | [fin_curry₁](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/fin-curry-source-edition-2.md) | 585 | `result-track:fb6f0a8dc15e3b9c4a51b8997b060d4e22d4adb10791fd38041a575479f727e7` |
| 69 | `theorem` | [fin_curry](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/fin-curry.md) | 589 | `result-track:87ca7b57b87fbddb1fc2aebe23d1680e63843134ba66891bc1d0a339b0b6e3ea` |
| 70 | `inductive` | [Primrec'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/primrec.md) | 606 | `declaration-track:287102bb56206118a9ce1be434cf400966a49ebf6cecda379320594b4c633159` |
| 71 | `theorem` | [to_prim](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/to-prim.md) | 624 | `result-track:4cb365dd6c3734ca278fcf20b52f38198b357e17d8257e7a16478bdae7c63256` |
| 72 | `theorem` | [of_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/of-eq.md) | 638 | `result-track:9afb59e9eb7432ba0a89bbe86400fa26ceecc60f050f5f4fd213f5ad62e3d788` |
| 73 | `theorem` | [const](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/const.md) | 642 | `result-track:90cf6fd3d88c906cf85cc5975f9d2064f73f2a4836751552bac68297514723df` |
| 74 | `theorem` | [head](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/head.md) | 646 | `result-track:22460ab674357a2d8b1876446389af58ffd5d3df25950382fd73b0f5112a363b` |
| 75 | `theorem` | [tail](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/tail.md) | 649 | `result-track:f5ee8c9bb702059e0ffd083cc250507fe92483c858a77e0219282693eb66d846` |
| 76 | `def` | [Vec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/vec.md) | 654 | `declaration-track:61a0ba134ef83ee28000a0a5dc165d23f6501acf55263019aba39cf76a7940da` |
| 77 | `theorem` | [nil](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/nil.md) | 657 | `result-track:5c8ee22ce70989875e8301cc4f7258c7497e5f341edef2156a53cc7d8c58e8fe` |
| 78 | `theorem` | [cons](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/cons.md) | 659 | `result-track:7c995f9def93f4db37255c2c71ba2aeb03e826a9464f0be4adf383d76d7a3ab2` |
| 79 | `theorem` | [idv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/idv.md) | 662 | `result-track:ac11864f2ceb913d9f9bcf72a2039f30c9f9e63501898316fbe7e1c724794746` |
| 80 | `theorem` | [comp'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/comp-source-edition-3.md) | 665 | `result-track:7d562e2e7c6a4373f60829e4fb49519fba176545f6a3ce294796e32062ea55c5` |
| 81 | `theorem` | [comp₁](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/comp-source-edition-2.md) | 668 | `result-track:3a4338ba50ab1e586d52eab8ad180c7e14f1eb23f9987ed1778f86fdfbecf264` |
| 82 | `theorem` | [comp₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/comp.md) | 672 | `result-track:29f61a50f0e090b56f3c684752d566e3f1aa58c1c20b8baed976a0113db33cfd` |
| 83 | `theorem` | [prec'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/prec.md) | 676 | `result-track:5d43fe4d474afaa6142a6ceb1163c7d6e1913d80e68b6d3e7cb522ac207fc21d` |
| 84 | `theorem` | [pred](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/pred.md) | 680 | `result-track:1fced0a532b02763a803a22364a615266edff6bab50c7fea812f44d10dc48230` |
| 85 | `theorem` | [add](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/add.md) | 683 | `result-track:c9e995407baedb66a76a3be89d62753de9c5dc15fa8b4cf75ba186f46a04a623` |
| 86 | `theorem` | [sub](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/sub.md) | 687 | `result-track:61cc60c2848a7a6ac3d22745e35042b00602a6dab7b815541c5c53b67dd4fb30` |
| 87 | `theorem` | [mul](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/mul.md) | 693 | `result-track:4c5dc0f6f6db70ef9aea1a6e2a51f8ac7546097deb7892abc11b347420668723` |
| 88 | `theorem` | [if_lt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/if-lt.md) | 700 | `result-track:e324e84727d9db93eff20b0d8319feceed6ab1085132f83aca9d54235beef1c5` |
| 89 | `theorem` | [natPair](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/natpair.md) | 707 | `result-track:92684d9a2e526afafd2101b685c1cc680fd8f153f3181b1d33775c82b7a3b479` |
| 90 | `theorem` | [encode](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/encode.md) | 711 | `result-track:94c9e3936f4ede4f723c9f0c3fc148505433a546f55c97811ae43869672eed26` |
| 91 | `theorem` | [sqrt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/sqrt.md) | 716 | `result-track:aeed21b307ec03a1b86628fa0760956b173b96f15a0be992977c2c2b0cff91a6` |
| 92 | `theorem` | [unpair₁](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/unpair-source-edition-2.md) | 739 | `result-track:767e2d03799b5c13a6a0001beb871e14539aa2db3023c0bbd43a36ebe072f811` |
| 93 | `theorem` | [unpair₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/unpair.md) | 745 | `result-track:4527b54f2d0cd3e34694562e54d6dc51cdf957471f98b6596b582851c6551f69` |
| 94 | `theorem` | [of_prim](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/of-prim.md) | 751 | `result-track:796e3f59f6cf00b60f6099b26c1b3f6a407f097c05af47435e8fef10338e7888` |
| 95 | `theorem` | [prim_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/prim-iff.md) | 771 | `result-track:17f8c6c4266b3783025050c21fc5e48b5e6b24aa551134b18b25736a3bbbdc06` |
| 96 | `theorem` | [prim_iff₁](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/prim-iff-source-edition-2.md) | 774 | `result-track:a1913e6698d2002db23a44c1d4f0c407fb888087d3913f6fb68acd1aec8eb8c6` |
| 97 | `theorem` | [prim_iff₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/prim-iff-source-edition-3.md) | 779 | `result-track:c3560181c9408f4f1bb00ed625fd4b739b0685f2de0552bd932ebea4757754c2` |
| 98 | `theorem` | [vec_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/vec-iff.md) | 785 | `result-track:64ea8521304b61acd027ae72df65e6e1bc58a17ffb698a153c3db53f3b60ce5f` |
| 99 | `theorem` | [Primrec.nat_sqrt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListNamespacedPublic.lean/declarations/primrec-nat-sqrt.md) | 791 | `result-track:4902df61d6621584bfe782e3a64dd04bf5d4d9285489f02b50f10f9dc020a6da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=704982fbcebbc3526da903e45f01b15d090e50aab928c1452b6bc938f290c3a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/List/Varianta5f4ddd8dfdb6bd4be8562098aff0f25f305688c5a9e9836688bf243639583a9.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Computability/List/Varianta5f4ddd8dfdb6bd4be8562098aff0f25f305688c5a9e9836688bf243639583a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
