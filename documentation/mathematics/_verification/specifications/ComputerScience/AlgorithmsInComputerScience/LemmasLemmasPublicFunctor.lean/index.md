# Verification target: Lemmas Lemmas Public Functor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f44f16e71c8796899279f3044e6d9eef0e852b5d",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb586d2cdc643d962df2ab3f6336403e7f5af48c84ecb07a382c97bd5e6781b7f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f44f16e71c8796899279f3044e6d9eef0e852b5d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb586d2cdc643d962df2ab3f6336403e7f5af48c84ecb07a382c97bd5e6781b7f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb586d2cdc643d962df2ab3f6336403e7f5af48c84ecb07a382c97bd5e6781b7f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Bootstrap` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Functor.monotone_map](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/functor-monotone-map.md) | 49 | `result-track:44b7ffcf53ebb7634d362d14bf71f5ecb92254454440556e57a9c8d9b8836525` |
| 2 | `theorem` | [Seq.monotone_seq](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/seq-monotone-seq.md) | 56 | `result-track:481bdf20b51f99c295c2d0e7f86f13eadf30b821739adf51ad0f081e2b3d7970` |
| 3 | `theorem` | [SeqLeft.monotone_seqLeft](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/seqleft-monotone-seqleft.md) | 68 | `result-track:3a39e8a2f39701f38b298948c17b57e46c8aae097b3165d9ec544328919426e1` |
| 4 | `theorem` | [SeqRight.monotone_seqRight](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/seqright-monotone-seqright.md) | 78 | `result-track:8e6063b9471b5ec3c189b73c1c77972dcdc57d9243a2aff2137e917ae87e05a3` |
| 5 | `theorem` | [monotone_bindM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-bindm.md) | 91 | `result-track:6b87fd531cbcc419d7721964e4efd93ff960c2f7e87625592307ecb13d70da61` |
| 6 | `theorem` | [monotone_mapM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-mapm-source-edition-2.md) | 98 | `result-track:7742969f0774cc03c5294bb46cbde87b767290e3fb0b1e68144f08a1b37ca8d4` |
| 7 | `theorem` | [monotone_elimM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-elimm.md) | 108 | `result-track:258354611a16e19cb20611dac956f122639d87731e414d01f1da9eaa2795567f` |
| 8 | `theorem` | [monotone_getDM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-getdm.md) | 124 | `result-track:7dffa6268942560e567a90163e5948ef904da8a61356f2d8ecbdaaaa71e535f5` |
| 9 | `theorem` | [monotone_mapM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-mapm-source-edition-3.md) | 136 | `result-track:80ff87e7d1bfc2c7fd9fa78aa7bad9a1ec93751da80e9fb626f8b5f8ba51849d` |
| 10 | `theorem` | [monotone_forM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-form.md) | 158 | `result-track:e75531c34bb993c0ef4126e7156b34c8896fd2eaa545bf95abf8290f04014fd3` |
| 11 | `theorem` | [monotone_filterAuxM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-filterauxm.md) | 171 | `result-track:8a32db217ebf9ee670af086ca24a719bc13349ceeccadc3ef309c124cd6e9b15` |
| 12 | `theorem` | [monotone_filterM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-filterm.md) | 186 | `result-track:1cee759cb4575a8e73d3134a0d6b1e7ab8f0312a8cfcf33a686fa5c272d6bfc8` |
| 13 | `theorem` | [monotone_filterRevM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-filterrevm.md) | 195 | `result-track:ad599ce4b6967a057a5785b61c8840059b0ba5b07f519770210bf53d1b51774d` |
| 14 | `theorem` | [monotone_foldlM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-foldlm.md) | 202 | `result-track:78732be4fa64e69e79bca334f2dbeb1f9aa85feddebc23358e06a1bea7556e11` |
| 15 | `theorem` | [monotone_foldrM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-foldrm.md) | 217 | `result-track:4aab3f5979583d0c4172e6a4bb5d46c6c6d28b292527e04296a62d09ad7b0f11` |
| 16 | `theorem` | [monotone_anyM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-anym-source-edition-2.md) | 230 | `result-track:f837e3143b3a772293a0ce9d273d6d45004fe3e55aa050713ca3a2318d2fb6c5` |
| 17 | `theorem` | [monotone_allM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-allm-source-edition-2.md) | 247 | `result-track:4d82f25f3fa76061eb95de185c1d775331e16a7fd88118bb041338f115cc8bae` |
| 18 | `theorem` | [monotone_findM?](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-findm-source-edition-2.md) | 264 | `result-track:c61f0897ae6ea22d0f686a1ef5e7c2c4060b5edc89ed1ee37f1b59d76a3eded6` |
| 19 | `theorem` | [monotone_findSomeM?](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-findsomem.md) | 281 | `result-track:2f439bccd953485c15ee1c4cdc38910f9c663c1e45db786abc20e8d842ad67f9` |
| 20 | `theorem` | [monotone_forIn'_loop](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-forin-loop-source-edition-2.md) | 297 | `result-track:ca65a9f5f165cb8f2ce69fa5eac1fd863742f404f1d7b651f337f09267502971` |
| 21 | `theorem` | [monotone_forIn'](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-forin-source-edition-4.md) | 316 | `result-track:e2aac0a60bc063521cdd0eb6d6f703a12ca8df27dc0d701ea16e52767a0ce96d` |
| 22 | `theorem` | [monotone_forIn](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-forin.md) | 323 | `result-track:5bc1cf86736d35938c88431fa6536c64f9e78b186aef65bbc4591de14a0f55a2` |
| 23 | `theorem` | [monotone_modifyM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-modifym.md) | 339 | `result-track:65714b67c514ef5085c0c09d72ca89bce1003ebda7c5bb6bb0e7eb2122f62373` |
| 24 | `theorem` | [monotone_forIn'_loop](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-forin-loop.md) | 350 | `result-track:adbbb263010aa0469df6cc8f3cda198d903afc34e7d95c16c56644afebcac05b` |
| 25 | `theorem` | [monotone_forIn'](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-forin-source-edition-2.md) | 369 | `result-track:9dfab9aeab4406b1294880141f54e1ef104ad990c977b679820e649f771da64d` |
| 26 | `theorem` | [monotone_forIn](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-forin-source-edition-3.md) | 377 | `result-track:a217d9290a91c7f86a671ce5dbbb8d54ef877ec10d95ffc9038fbc5a90111202` |
| 27 | `theorem` | [monotone_foldlM_loop](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-foldlm-loop.md) | 389 | `result-track:eab010fa71afaaf31e3fb8653737c560b419dae09fcaee933929ae29c6eedf9b` |
| 28 | `theorem` | [monotone_foldlM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-foldlm-source-edition-2.md) | 410 | `result-track:e631704c04de2d9a6c1bcf328a4aaf668806fe0fe26a7ac8eb97a26802757fa9` |
| 29 | `theorem` | [monotone_foldrM_fold](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-foldrm-fold.md) | 417 | `result-track:33680f887ace83825f0af12188d6038e088c1c896679a25cbb902735a532be19` |
| 30 | `theorem` | [monotone_foldrM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-foldrm-source-edition-2.md) | 441 | `result-track:6c393f33a19cb8ec1969d044a640ca0122d097b3da6556fb43efd687ae52e1e3` |
| 31 | `theorem` | [monotone_mapM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-mapm.md) | 454 | `result-track:22d9c876519911efbbe99c345391ca45231662aab8cd601c940130211894b136` |
| 32 | `theorem` | [monotone_mapFinIdxM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-mapfinidxm.md) | 474 | `result-track:ec7c82e009984f9c72a025c549651721a7697d8b5d59d25bdceaa0f614b78478` |
| 33 | `theorem` | [monotone_findSomeM?](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-findsomem-source-edition-2.md) | 492 | `result-track:d270c125b54a4fc8b998047ea2922ea5b67ea817d6df4b23a5e5b6d007e29a88` |
| 34 | `theorem` | [monotone_findM?](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-findm.md) | 509 | `result-track:2731772ee26d54cd87c25859245cef8494aefd5361ff484cba6668ab0fb853d6` |
| 35 | `theorem` | [monotone_findIdxM?](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-findidxm.md) | 527 | `result-track:edca4bd2dc20330afc673c5babd030a786a633b7e53e45a1996ae3d7510ff761` |
| 36 | `theorem` | [monotone_anyM_loop](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-anym-loop.md) | 545 | `result-track:0152abbfe6fea8d288cbec9e880092dcb901ab54d8ecc8d4cdf0fd4bb1a019ae` |
| 37 | `theorem` | [monotone_anyM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-anym.md) | 567 | `result-track:ec0378a776129d63f8e82ac5fc73536ea02870273f1a94360566ef18c2690424` |
| 38 | `theorem` | [monotone_allM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-allm.md) | 579 | `result-track:1eaa07e2116ab89d8033011ec454f1c3ff1f93eaed24c7552853d77306b632dc` |
| 39 | `theorem` | [monotone_findSomeRevM?](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-findsomerevm.md) | 595 | `result-track:d61617f4a15bde1a8cd8fc34753ab4a5a2f1389e145058fecff0b7cd4a8dc18d` |
| 40 | `theorem` | [monotone_findRevM?](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-findrevm.md) | 617 | `result-track:ecfcb27811441fe428a475ba1fed0b5d03389a044fb9bfae99336d11fa9241f9` |
| 41 | `theorem` | [monotone_array_forM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-array-form.md) | 631 | `result-track:3e71ed6bc38f260171e3dd2778b54283e15db799baebf77ab84666bf0b8ac216` |
| 42 | `theorem` | [monotone_array_forRevM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-array-forrevm.md) | 641 | `result-track:2d614b9d492a4fa8394e0695a91b6b76a0ecc4e3bd303b1593340cabf9538df2` |
| 43 | `theorem` | [monotone_flatMapM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-flatmapm.md) | 654 | `result-track:bb15ed685df6dd5297e7710135413c79c8727290ef4110d97e60eb035859c6e8` |
| 44 | `theorem` | [monotone_array_filterMapM](../../../../../ComputerScience/AlgorithmsInComputerScience/LemmasLemmasPublicFunctor.lean/declarations/monotone-array-filtermapm.md) | 670 | `result-track:8f8a14ead613c54de48b75799cf39e0f485b53cfe62ebf7a09d869e26724fec6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed261a7dbb8155a1244b6df35cd276f423bdddcd0bfc4692be922eb408074b83 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb586d2cdc643d962df2ab3f6336403e7f5af48c84ecb07a382c97bd5e6781b7f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb586d2cdc643d962df2ab3f6336403e7f5af48c84ecb07a382c97bd5e6781b7f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
