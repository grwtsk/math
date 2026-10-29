# Verification target: Equiv Namespaced Uniform Inducing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6105cb6031db6737da70092e5a0e79d5204428a2",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variant947f2adae9fb0541ef60ef5e413cf0a1214d54249381eb7ac4dddff052bc584e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/index.md) · [Full source](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6105cb6031db6737da70092e5a0e79d5204428a2`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variant947f2adae9fb0541ef60ef5e413cf0a1214d54249381eb7ac4dddff052bc584e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Equiv/Variant947f2adae9fb0541ef60ef5e413cf0a1214d54249381eb7ac4dddff052bc584e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.UniformEmbedding` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Pi` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [UniformEquiv](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/uniformequiv.md) | 44 | `declaration-track:6f762e7cd29b079ecd8d69ee9e1d1cde52d12d974802ba0bb80eb1e9e910b793` |
| 2 | `theorem` | [toEquiv_injective](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/toequiv-injective.md) | 59 | `result-track:ed7244a7cb3e765fa36ac881416b348919455e7d4739c734c71e9cde657fbda2` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/instance.md) | 63 | `declaration-track:34348a958d039c150fbca43b4a0e49554ea82b2108840a4ce4506de96e309899` |
| 4 | `theorem` | [uniformEquiv_mk_coe](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/uniformequiv-mk-coe.md) | 71 | `result-track:c4fb09667ef23c1f85f6361fd67b58f36cceabaeee6d2387244edd2b959da6ea` |
| 5 | `def` | [symm](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/symm.md) | 76 | `declaration-track:778d6c4676cd1892bc7a1eb7b67744a5367ae007d48808217bbd7517a3806b78` |
| 6 | `def` | [Simps.apply](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/simps-apply.md) | 85 | `declaration-track:10732d1728bad6a3377caedb903cfb5d889e095ddb2da63fd3648a481aef312c` |
| 7 | `def` | [Simps.symm_apply](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/simps-symm-apply.md) | 90 | `declaration-track:d6c70af9c819555782d1ee8d6e160b42a53c190cc0eead7600e9edde8a0cf15c` |
| 8 | `theorem` | [coe_toEquiv](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/coe-toequiv.md) | 97 | `result-track:ebdde1bb0cf126572f15ede98b24ff8edaa6fa6acea844340183832ed65247a2` |
| 9 | `theorem` | [coe_symm_toEquiv](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/coe-symm-toequiv.md) | 102 | `result-track:90799b30b2d7e86cc9e58581b26c0f1313f09559ee98517964578008c3c1fad9` |
| 10 | `theorem` | [ext](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/ext.md) | 107 | `result-track:274a4884676cdba0a34ceb7377845133997145db3cc252ccdc915ee8a51beaff` |
| 11 | `def` | [refl](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/refl.md) | 113 | `declaration-track:286e3e4ebeca6b4aa7e7188913329326e98b9dd52d14ce1b13da0e5aa8899697` |
| 12 | `def` | [trans](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/trans.md) | 121 | `declaration-track:cd485261ae7d446ee865c89df1a8bba5ebd94c3dbe71f38032324562c2072d4e` |
| 13 | `theorem` | [trans_apply](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/trans-apply.md) | 129 | `result-track:b8c97793ff35958f474d5110315b26a822b81757757fd6ed5869a83db1439a6c` |
| 14 | `theorem` | [uniformEquiv_mk_coe_symm](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/uniformequiv-mk-coe-symm.md) | 134 | `result-track:9c48a2f1c1a7257799b15cd656791ec9baa55238ce30e00f9640076dc9fb6d51` |
| 15 | `theorem` | [refl_symm](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/refl-symm.md) | 140 | `result-track:e6295f078df2f1ec0fde2dad3dcf03ce926ad72bd6d04dc845ce3007793441c6` |
| 16 | `theorem` | [uniformContinuous](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/uniformcontinuous.md) | 144 | `result-track:0f26ae9aebbdb8cd3672ff3839e75f9081b0ec46d34fccf4314457b58945a983` |
| 17 | `theorem` | [continuous](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/continuous.md) | 149 | `result-track:f96ebc1c7e86e0077fc7f17a67bb7ba7ab0305b3f7e0252a3ebcc61642eecd14` |
| 18 | `theorem` | [uniformContinuous_symm](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/uniformcontinuous-symm.md) | 153 | `result-track:c686d8b700d62c6724ebda3336b9c0eff1e3cea500ea08534919c8cec5a80107` |
| 19 | `theorem` | [continuous_symm](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/continuous-symm.md) | 159 | `result-track:a969418a0016052babe5028bbb7777d0041baf2773fdf3c4a72f81673c4daba3` |
| 20 | `def` | [toHomeomorph](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/tohomeomorph.md) | 165 | `declaration-track:0cc695de4d1407d94dfc0f6d5c4ffb0a2ebad19fda5f98c3fec3340f3129fc7f` |
| 21 | `lemma` | [toHomeomorph_apply](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/tohomeomorph-apply.md) | 171 | `result-track:b3c5f0d9cb30e92c2eb9573da5a91e1b20cf3fd3d111f0ddcd799e43c60c3c35` |
| 22 | `lemma` | [toHomeomorph_symm_apply](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/tohomeomorph-symm-apply.md) | 174 | `result-track:8d0c992fdbb068ef0a75fd3374aa14c05b6268e7e2c7648cbd683f07c5e95e4f` |
| 23 | `theorem` | [apply_symm_apply](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/apply-symm-apply.md) | 178 | `result-track:c211f8f8becb401853230cc6713b0bb8f14104f05f849741a3b494aef9a29888` |
| 24 | `theorem` | [symm_apply_apply](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/symm-apply-apply.md) | 183 | `result-track:be4f6c7077d9f2c46ae59eefa188224de7225b8e76782e671a92af7a2673f3fe` |
| 25 | `theorem` | [bijective](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/bijective.md) | 187 | `result-track:443634244dae870d3cac59a2b9650dde244f4aa3d0a1c978094782a67f593d47` |
| 26 | `theorem` | [injective](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/injective.md) | 191 | `result-track:82dde5290c1a71b16f3dd1ede3ebbb07aed643587231028861c2d944df16ebd0` |
| 27 | `theorem` | [surjective](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/surjective.md) | 195 | `result-track:a15d6ea4fb7e4526eb3a9343d1400326e4b930f4985d02aae6a0012b2a5f5104` |
| 28 | `def` | [changeInv](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/changeinv.md) | 200 | `declaration-track:c19df3ced10424916b89a1d5aece5fdfc929dab4b2f47ca9bdc0cf1c738406ce` |
| 29 | `theorem` | [symm_comp_self](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/symm-comp-self.md) | 214 | `result-track:575f21414997409a1d36a4243267e50fa2471b0e24346be048f5679281962dac` |
| 30 | `theorem` | [self_comp_symm](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/self-comp-symm.md) | 219 | `result-track:5fcc8648c6ead4cb24be9f8988455c4d327b8d286cec59645ce0f2a9cae93547` |
| 31 | `theorem` | [range_coe](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/range-coe.md) | 224 | `result-track:1671b00bed92efe7c3555fd0fca008729be7b4af4ec2185d83f943ac07075906` |
| 32 | `theorem` | [image_symm](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/image-symm.md) | 228 | `result-track:05aa27048f2c66cf24d4ab86ee609d86ab537cffdd898de98688d4b345f2c755` |
| 33 | `theorem` | [preimage_symm](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/preimage-symm.md) | 232 | `result-track:16fb5da45854149ba32c1b08a4fdc3960b7130d71399bd9d089e93a56b668881` |
| 34 | `theorem` | [image_preimage](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/image-preimage.md) | 237 | `result-track:b30425ab25f8bfb65376643acf82cc8ba2cbefbf297f30782bc98ddfa04de361` |
| 35 | `theorem` | [preimage_image](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/preimage-image.md) | 242 | `result-track:e46258a84ebf874698d253e7abba03fe7b090d7302171d7c87ca24c3ad431894` |
| 36 | `theorem` | [uniformInducing](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/uniforminducing.md) | 246 | `result-track:18931130eb4d1b6133a227f55756494a768575a0d196dd9ee405f93c5a942812` |
| 37 | `theorem` | [comap_eq](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/comap-eq.md) | 251 | `result-track:ad8496f0f6d264a259a7958b4bc5ca917b6013a08935d2ecc0482f5e82f25e2a` |
| 38 | `theorem` | [uniformEmbedding](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/uniformembedding.md) | 255 | `result-track:881d9e7ba9c015f05c023e8393e0161e945643ca04295ea8e02654dbef05c9ff` |
| 39 | `def` | [ofUniformEmbedding](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/ofuniformembedding.md) | 260 | `declaration-track:30520efd765c1d75ab9ec34975667322f3b95d03295464b3598800068a1d210a` |
| 40 | `def` | [setCongr](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/setcongr.md) | 271 | `declaration-track:f445a21c2ef4e933c94df32b652bc5d9f0c1edf7f59e5a9770dd719bd843226d` |
| 41 | `def` | [prodCongr](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/prodcongr.md) | 279 | `declaration-track:8306ae96a321df78e3c02a18242e83be4c8eb6bdae74d819c944d66aad8230f2` |
| 42 | `theorem` | [prodCongr_symm](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/prodcongr-symm.md) | 291 | `result-track:fe39915189f489d6804c323e87c101d9beabd6146c08d15f694bcb41ebb24d68` |
| 43 | `theorem` | [coe_prodCongr](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/coe-prodcongr.md) | 297 | `result-track:58ba854e00f51a16b8f298b3ac9160894201c6fada454bd23865b681ec6e5f20` |
| 44 | `def` | [prodComm](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/prodcomm.md) | 306 | `declaration-track:36613f51afae7281fce56d2b193b8a1ff7458a2979f389f4661713b2bc4b1362` |
| 45 | `theorem` | [prodComm_symm](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/prodcomm-symm.md) | 314 | `result-track:37adf1a4269f72e5000b020acfb43920213fab49d4e729a940d18e25dd1341fb` |
| 46 | `theorem` | [coe_prodComm](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/coe-prodcomm.md) | 319 | `result-track:0ef9cb74535a3772f7a2b6737eff0475a18d269fc28dc8e78a15474bf8ee90ea` |
| 47 | `def` | [prodAssoc](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/prodassoc.md) | 324 | `declaration-track:8ad49291c4f90b4f918ac5d01fc0205ca22d0cad466dce3a3e9939202c7ced29` |
| 48 | `def` | [prodPunit](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/prodpunit.md) | 338 | `declaration-track:4681ee138b6075c68e3f7199b0312a7f6aefd38b67d4748fe796bad96d5c98d3` |
| 49 | `def` | [punitProd](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/punitprod.md) | 345 | `declaration-track:88e35eb85b0532214a6f52f7d5e406655764c1b270757bd972dc313c2dfdb3a8` |
| 50 | `theorem` | [coe_punitProd](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/coe-punitprod.md) | 350 | `result-track:53901d14bf63e881ace8f022dc02b1c0d6dd48f01f09265e245134df5d5b7255` |
| 51 | `def` | [ulift](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/ulift.md) | 355 | `declaration-track:3b7b33f7ca1eab4fd1da6805bb9d961b42343f3f161f20d1b24cf068fcb7874d` |
| 52 | `def` | [funUnique](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/fununique.md) | 368 | `declaration-track:44e5c1565c073d5b3351df8997c612d704bb9dc93cf74919902adba71bf158e7` |
| 53 | `def` | [piFinTwo](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/pifintwo.md) | 377 | `declaration-track:ec7e52762e87c941899db211bb4480a06019210a0c6970b2768b2aae257d8258` |
| 54 | `def` | [finTwoArrow](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/fintwoarrow.md) | 388 | `declaration-track:d7cae942ed1684520c973db3c439910be15b9da377e33120e478c68513686bbb` |
| 55 | `def` | [image](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/image.md) | 394 | `declaration-track:3339de0597c72ba692a4379b1e5a63cb1fd6fd3307a84b1d374aa03c1ab7c9ea` |
| 56 | `def` | [Equiv.toUniformEquivOfUniformInducing](../../../../GeneralTopology/EquivNamespacedUniformInducing.lean/declarations/equiv-touniformequivofuniforminducing.md) | 406 | `declaration-track:1466334f3191a595d75d8ca951a4e6bf0f71ebc384c1df23477299d878e25dbc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=63a4e476a5975b94f42509072914094b6d450804298fd35391e14515ff426a6b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variant947f2adae9fb0541ef60ef5e413cf0a1214d54249381eb7ac4dddff052bc584e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/Equiv/Variant947f2adae9fb0541ef60ef5e413cf0a1214d54249381eb7ac4dddff052bc584e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
