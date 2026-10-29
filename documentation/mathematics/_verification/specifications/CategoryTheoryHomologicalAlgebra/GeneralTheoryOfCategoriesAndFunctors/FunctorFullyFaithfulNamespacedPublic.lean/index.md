# Verification target: Functor Fully Faithful Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09cb85f0b3c07ca1480ee5e4204db58bcfba2919",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant4ed8295f270bbb04e51c7651b6b621f21aacdb3a088e37530e96a464d49b1f5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09cb85f0b3c07ca1480ee5e4204db58bcfba2919`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant4ed8295f270bbb04e51c7651b6b621f21aacdb3a088e37530e96a464d49b1f5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant4ed8295f270bbb04e51c7651b6b621f21aacdb3a088e37530e96a464d49b1f5a.lean.json)

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
| 1 | `class` | [Full](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/full-source-edition-2.md) | 53 | `declaration-track:17d27635aa4a5005479b9e8192c1b2c9e6813e4462958de489ab4f9f049c3f76` |
| 2 | `class` | [Faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/faithful.md) | 60 | `declaration-track:b5ef490dea8e0866572c0c7b45a61bff20cd7c5ffd34b1eaaca12c80d11e9459` |
| 3 | `theorem` | [map_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/map-injective.md) | 70 | `result-track:36ae2ee6b0e561b8a970fcd5066aa186cef808c69b49af971b8f6eefb44f4148` |
| 4 | `lemma` | [map_injective_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/map-injective-iff.md) | 74 | `result-track:42f19d1d595e5e9c9226e49bf21e9ea0db89c2247a553ccc927b9cfc0e49989d` |
| 5 | `theorem` | [mapIso_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/mapiso-injective.md) | 78 | `result-track:f31c07fdca11e13f20f1ea64724d61f3db1f7d345638e1a500604f91022fd98d` |
| 6 | `theorem` | [map_surjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/map-surjective-source-edition-2.md) | 82 | `result-track:a21264caa5159209a660aa2feeba2a1fe5aa649bb51fdac134cdbbcc63f17b35` |
| 7 | `def` | [preimage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/preimage.md) | 88 | `declaration-track:5bcbc1a02866f1b4a0953f47cb5ea5bcfe50366ef3de03e6e146b333a79c23da` |
| 8 | `theorem` | [map_preimage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/map-preimage.md) | 95 | `result-track:83760f927ec36751f49de3ec47864572197ceec66a8739324c7d85097ef97fb5` |
| 9 | `theorem` | [preimage_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/preimage-id-source-edition-2.md) | 105 | `result-track:efc07111ead35349dfb595c6409485a7f99b279949f2c123c2ce73f7f7ce8337` |
| 10 | `theorem` | [preimage_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/preimage-comp-source-edition-2.md) | 109 | `result-track:fcf0dfc266114a1aba9edb242bdcfde726301c01604918b74b10dfbecaa93897` |
| 11 | `theorem` | [preimage_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/preimage-map.md) | 114 | `result-track:453dc8c126616d45d22cf7ae9adc5bd315f6054d98026eae63f80f8b74d80888` |
| 12 | `def` | [preimageIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/preimageiso.md) | 121 | `declaration-track:2dcad0f0305475a034512ee97a3bd6b5633622943576182fbda01f68647d50b9` |
| 13 | `theorem` | [preimageIso_mapIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/preimageiso-mapiso.md) | 129 | `result-track:ecca46f0ab44688c5c014a8aa652933078dca23bad4a538d2bf5686017416ce0` |
| 14 | `structure` | [FullyFaithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/fullyfaithful.md) | 138 | `declaration-track:ae87eb858f397a74018689c9ee2af4179dff19aedf26104ca3476f5131400a0f` |
| 15 | `def` | [ofFullyFaithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/offullyfaithful.md) | 152 | `declaration-track:922e1e8b99a4e3490f44023a938fe570891496193ef84ea916f3da4ad0e50235` |
| 16 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/id.md) | 159 | `declaration-track:dd027f524c475c4f15c38e91544d54d384302377bfd277b2915329fe3d6399a2` |
| 17 | `def` | [homEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/homequiv.md) | 169 | `declaration-track:6de758f8984d55f4715b24a7389096fb51fc5015b74d4a6b4d8227c92954b975` |
| 18 | `lemma` | [map_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/map-injective-source-edition-2.md) | 176 | `result-track:616e21232ebd2020b51cc74369a5c703726a07834366bd3bac0f970d5e64b625` |
| 19 | `lemma` | [map_surjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/map-surjective.md) | 179 | `result-track:9ec2bec721f69523536994c7244fff16ec73971a85b013850a9997200690d1f3` |
| 20 | `lemma` | [map_bijective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/map-bijective.md) | 183 | `result-track:931e4d005a12a46b6f98d3f185e287fdbbe1df7111784ca3392985c129cfaa0e` |
| 21 | `lemma` | [preimage_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/preimage-id.md) | 188 | `result-track:528f0f8e5f8aaf7dfa5bebe27b5c3f39103f127e7be6a79d8d8b8f65d0939338` |
| 22 | `lemma` | [preimage_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/preimage-comp.md) | 193 | `result-track:0b4a87e33954e5c2ed82092e87b71a9d786d33312ac267407582c041a4c740c6` |
| 23 | `lemma` | [full](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/full.md) | 197 | `result-track:0a12357cff5ca75f5f8bddcac70605ee25d6df289e48399de0b290f727d014ea` |
| 24 | `lemma` | [faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/faithful-source-edition-2.md) | 200 | `result-track:cff6da4c79bd02d5e1caf348dd2b25add40f8ea7603725ef6aef2cc63bb69669` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 203 | `declaration-track:604fa64b871d8d328e3a02d540037aa6514cd8248eb4c21403762394263ec2d1` |
| 26 | `def` | [preimageIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/preimageiso-source-edition-2.md) | 215 | `declaration-track:cc79c35cdc87cc4c9b85da9a488f2487b10d578d6cd5d25ca02ecf4f83975a7e` |
| 27 | `lemma` | [isIso_of_isIso_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/isiso-of-isiso-map.md) | 221 | `result-track:4ff60e3a1a5912968f6522b3a59592089117db6ccd624f0f9282376ec8c55818` |
| 28 | `def` | [isoEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/isoequiv.md) | 227 | `declaration-track:ad63bb120f112316a0c46baeec6c85c61cc7efd3e5df0eaeae31a0832241748d` |
| 29 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/comp.md) | 235 | `declaration-track:d55d3bed72e311fd8a138226f355c8e3863360210fad28c7420f6155e51b8c8f` |
| 30 | `def` | [ofIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/ofiso.md) | 239 | `declaration-track:ee50ba2a9a82b3a17e16c09d078776527cfe7c4394929ce00779e675cf17bd56` |
| 31 | `lemma` | [nonempty_iff_map_bijective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/nonempty-iff-map-bijective.md) | 246 | `result-track:e7b1a2e5b24b68302871a18ef6f25d0cf3e57b3831c48b50b3a4dea27eb84cda` |
| 32 | `def` | [ofCompFaithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/ofcompfaithful.md) | 254 | `declaration-track:8d2665c54908956757de6634029b159ad4372affadea60378da3d28eb13398b0` |
| 33 | `theorem` | [isIso_of_fully_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/isiso-of-fully-faithful.md) | 272 | `result-track:a582d158137c00fb8e86a2a9543d45066e3d2880a971f43cbeb93205f8942ae7` |
| 34 | `instance` | [Full.id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/full-id.md) | 286 | `declaration-track:21a44dc9a88e39c9cf3c0f0de9a88976797679cfba95180f1f02f793424d0842` |
| 35 | `instance` | [Faithful.id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/faithful-id.md) | 288 | `declaration-track:6bfbc0f38f09ff5aa9eb650d00d7ec022656604fa6d51d0cf82ead11571cf9d9` |
| 36 | `instance` | [Faithful.comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/faithful-comp.md) | 293 | `declaration-track:be281e9f72058e2ac543dbb46e780484afa4ece4ecd03fe2ec9e84697ded029d` |
| 37 | `theorem` | [Faithful.of_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/faithful-of-comp.md) | 296 | `result-track:278fa6be8c39a12e976830f293bbdb429e3e2928744793daae5a6a5df4cdf857` |
| 38 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/instance.md) | 300 | `declaration-track:5a1f73aaefe3e557eebd8698be2afe8fdb9266ebe5845fb87add945b06f1ed09` |
| 39 | `lemma` | [Full.of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/full-of-iso.md) | 307 | `result-track:d9145cb71f518e90d9271a3caeaff3c7bd9ce2aaf912241c8cd8e78778d9d352` |
| 40 | `theorem` | [Faithful.of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/faithful-of-iso.md) | 311 | `result-track:cf0988c7e152fa57c9228657cf66638161cbd88ad5157da3ebf0b37c62656473` |
| 41 | `theorem` | [Faithful.of_comp_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/faithful-of-comp-iso.md) | 319 | `result-track:daf3ab2078dc5df49a2acd94f5fcb40f8a1001ba890c96d60f3e0cba4107acdd` |
| 42 | `theorem` | [Faithful.of_comp_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/faithful-of-comp-eq.md) | 326 | `result-track:9fae7cc46e681091b29333fd8d95ace10c12ec0e89cbd7ed3a8f502fec6006cd` |
| 43 | `def` | [Faithful.div](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/faithful-div.md) | 333 | `declaration-track:470334c14d67f492dc24ec6df0dbe20d73d960c0198f1ddbad27e94a4474370a` |
| 44 | `theorem` | [Faithful.div_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/faithful-div-comp.md) | 347 | `result-track:8fee0ebf04d03b2acf8d690e90979d3d972fde409bfb91914d4eab72edb03396` |
| 45 | `theorem` | [Faithful.div_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/faithful-div-faithful.md) | 360 | `result-track:f7aaa175c06bc197e2b762277f373bc807cc1b28fcbeb350c2219f16cbab03a8` |
| 46 | `instance` | [Full.comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/full-comp.md) | 366 | `declaration-track:6e52050a939ceab49cbfc596851ed83f8e1b923f398bbb668b1d4a6e5275f16a` |
| 47 | `lemma` | [Full.of_comp_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/full-of-comp-faithful.md) | 370 | `result-track:56572b3d3c2a052c1a6dd816de0a4f6c72e2529bfc132fea669c66633f5d1f7e` |
| 48 | `lemma` | [Full.of_comp_faithful_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/full-of-comp-faithful-iso.md) | 374 | `result-track:eae055e3a76bd66b3bc6a432f5d012f4547a202f75566415617552f31584932e` |
| 49 | `def` | [fullyFaithfulCancelRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/fullyfaithfulcancelright.md) | 382 | `declaration-track:83182e47c2fa8044f8ce716e9967b1723e2615348279ad7362bc0f9166dc5faa` |
| 50 | `theorem` | [fullyFaithfulCancelRight_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/fullyfaithfulcancelright-hom-app.md) | 388 | `result-track:73323b07ab70e1b021237b1dde4c51db3b6fdd7227e2675f0f3957dc43cdf8b2` |
| 51 | `theorem` | [fullyFaithfulCancelRight_inv_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFullyFaithfulNamespacedPublic.lean/declarations/fullyfaithfulcancelright-inv-app.md) | 394 | `result-track:9fed8d432aad3db2c95f00eb54ceab965f9057a98e7d8e77a54a47a7576d627f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=731ca262f671cc481ae50c3db3934f915e16f19b72667ee9ada42daaa97903db -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant4ed8295f270bbb04e51c7651b6b621f21aacdb3a088e37530e96a464d49b1f5a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant4ed8295f270bbb04e51c7651b6b621f21aacdb3a088e37530e96a464d49b1f5a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
