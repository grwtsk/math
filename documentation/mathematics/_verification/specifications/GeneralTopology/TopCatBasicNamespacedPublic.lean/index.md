# Verification target: Top Cat Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea6df0c45a175a9486863caed944bd205e68ec93",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea6df0c45a175a9486863caed944bd205e68ec93`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean.json)

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
| 1 | `structure` | [TopCat](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/topcat.md) | 40 | `declaration-track:983180b99b7ec1686cf1dc409bfc497ba17f690c3626365497db6a51bbc8b8d0` |
| 2 | `def` | [TopCat.delabOf](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/topcat-delabof.md) | 55 | `declaration-track:eb57f95973e99d1fe5c0db9e7b778fe5f890bc1a5a4e10a83cd9aa719aec035f` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 65 | `declaration-track:286a7956fdeb320d91a065410731bcd16284c19a43ced8273bf32537efcf0f97` |
| 4 | `lemma` | [coe_of](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/coe-of.md) | 70 | `result-track:534df595546fe41fadb9c786d3caf5bed40b8a723381f2286e59af1ff02e6d80` |
| 5 | `lemma` | [of_carrier](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/of-carrier.md) | 73 | `result-track:df9c812ed9c1dc7472ad2f313877fded734a453236c4893c484b90d4dd770a1b` |
| 6 | `structure` | [Hom](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/hom.md) | 78 | `declaration-track:0c7e3e667a93283540103fdc8701e8815e237bc5be43080e1582d8b06f3728f2` |
| 7 | `instance` | [(anonymous)](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 83 | `declaration-track:4d365a1a70893594a206204a7c9c88ad8103ceb51ab513a97b22021bc01a894a` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/instance.md) | 88 | `declaration-track:0472111874a27b464f4750cb07a480b6b8eb45f8b638e5f87ffbee983bfdc575` |
| 9 | `abbrev` | [Hom.hom](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/hom-hom.md) | 93 | `declaration-track:b542e15b5a5b739e99cdc4c633a9e1632e4539c4b369548bbc0b4d28ffa81e3e` |
| 10 | `abbrev` | [ofHom](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/ofhom.md) | 97 | `declaration-track:3ae87675492386a15e6558320b7fcc3b7c9be1dee0b4fa15615f40a50a93b71c` |
| 11 | `def` | [Hom.Simps.hom](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/hom-simps-hom.md) | 101 | `declaration-track:12d767833ac455f4f5bff10ea73621a485909bc2d4c013e40dc1ede836ea1df7` |
| 12 | `lemma` | [hom_id](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/hom-id.md) | 111 | `result-track:e4a83736a87e0b3b364b31ba06f604191c255b7597674d3539b5410e48742d67` |
| 13 | `theorem` | [id_app](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/id-app.md) | 114 | `result-track:62cf221ca867f7dc0c3913b6ee06054d0a57af98638d11b2df73cfc69b8eaa33` |
| 14 | `theorem` | [coe_id](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/coe-id.md) | 116 | `result-track:e320f6aaad40f4798983323eee160a901554930d4b2543ab14cad15a80e8a816` |
| 15 | `lemma` | [hom_comp](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/hom-comp.md) | 119 | `result-track:4831a1c572eb217a2dfb200755b1098ae6fa2691026bb2adbcec292ac8a52867` |
| 16 | `theorem` | [comp_app](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/comp-app.md) | 123 | `result-track:6f1d106f377429958cc3621819344ca3d1535eb6f6336384ac0da1731e9ec7ec` |
| 17 | `theorem` | [coe_comp](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/coe-comp.md) | 126 | `result-track:a9823be7445e04f1dfc4cb822cd3a387f2a247e9b424311d4046fff9c758cbc3` |
| 18 | `lemma` | [hom_ext](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/hom-ext.md) | 130 | `result-track:355c034084cb67ae35ab3ee5346e03b5603112198b3d9b725a5e888750f7d30b` |
| 19 | `lemma` | [ext](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/ext.md) | 134 | `result-track:5994ada63ec70e71b883f6799450a0cc753b2d5283ff2b65edf574ab8d1469f5` |
| 20 | `lemma` | [hom_ofHom](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/hom-ofhom.md) | 138 | `result-track:234c788bbfb7c7df48466e9982e7be3b5e149ac6bb1554850942e98e96afd4ad` |
| 21 | `lemma` | [ofHom_hom](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/ofhom-hom.md) | 142 | `result-track:00b84af671f668a31fde4afc6870caf03a3f3a58d05203de09c157ac8c01553b` |
| 22 | `lemma` | [ofHom_id](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/ofhom-id.md) | 146 | `result-track:2a3d43bd4c5f8e6aef603eb511712f607bdbf7e5f256ca7d647277bac8db3e48` |
| 23 | `lemma` | [ofHom_comp](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/ofhom-comp.md) | 149 | `result-track:7e20c77b7c3b9e9c288a54003677c18483d20923c59e463aa255b4612ae4ac97` |
| 24 | `lemma` | [ofHom_apply](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/ofhom-apply.md) | 154 | `result-track:7b1fe65e01f68e7d2502161d72a5b7be893d1750df8eb339a902e4c694598663` |
| 25 | `lemma` | [hom_inv_id_apply](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/hom-inv-id-apply.md) | 157 | `result-track:84cb61dd5425536496de27cf1acaee04b265920ac864670ba342f83664746057` |
| 26 | `lemma` | [inv_hom_id_apply](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/inv-hom-id-apply.md) | 160 | `result-track:fc70824ec4bd02d6906c08434b9d036477b7b7c458fc9e14cd7985a1148b2804` |
| 27 | `def` | [Hom.equivContinuousMap](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/hom-equivcontinuousmap.md) | 165 | `declaration-track:97008717ee02264e8b60a67ae6dbcd8588e93ae56957da6b8028b2c63a22d584` |
| 28 | `theorem` | [coe_of_of](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/coe-of-of.md) | 174 | `result-track:dc91bf5fcad01f5f516c355a219c21e7401f79a9516b34f3cd96c73491e267e7` |
| 29 | `instance` | [inhabited](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/inhabited.md) | 184 | `declaration-track:adac1b6f1401c21964c6eb70483c5e307f96fae245f41ed6697d6c951307a91b` |
| 30 | `def` | [discrete](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/discrete.md) | 188 | `declaration-track:846228692d4c2b2f8a73ff0fce61174a32e6122339dd5332dbe32a077a6636fa` |
| 31 | `instance` | [(anonymous)](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 192 | `declaration-track:d61929feeeb2fe52f40282b86ab2f5dd6affefb592aff2c3dc5d5c13ca63f2d6` |
| 32 | `def` | [trivial](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/trivial.md) | 196 | `declaration-track:e0fee9d0be02157b5eea0f16dbfa81082f72449f5650b25504b7ef66c826aaa8` |
| 33 | `def` | [isoOfHomeo](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/isoofhomeo.md) | 202 | `declaration-track:ae26ab38ff806165f6cd6566a0247419a6e837467b73b8f2805c9faa02ca2ff4` |
| 34 | `def` | [homeoOfIso](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/homeoofiso.md) | 208 | `declaration-track:6473650bb1bfdb9ebd6c4f137bddeaea8be7dca5f1e758e05c8d2bc023fdade7` |
| 35 | `theorem` | [of_isoOfHomeo](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/of-isoofhomeo.md) | 217 | `result-track:7a577eaae4e2599c01425f6b52f8094fb3eef63c983ec053bac9d95b442c2e68` |
| 36 | `theorem` | [of_homeoOfIso](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/of-homeoofiso.md) | 222 | `result-track:cdf17cd7c93c92ea4c1141046e8dfe1da1cf6a71802d9679c825c84669799152` |
| 37 | `lemma` | [isIso_of_bijective_of_isOpenMap](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/isiso-of-bijective-of-isopenmap.md) | 226 | `result-track:8b897e8df29cb70c7deefabcd48561e3b61a0cdba35b409c8dc4b86144b0cfff` |
| 38 | `lemma` | [isIso_of_bijective_of_isClosedMap](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/isiso-of-bijective-of-isclosedmap.md) | 232 | `result-track:2823c8841ab21f9aebe27efd54395efe5fed8f1c72c03361ab1457d96bcd220a` |
| 39 | `lemma` | [isIso_iff_isHomeomorph](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/isiso-iff-ishomeomorph.md) | 238 | `result-track:ae6a3cfe38e40df124a26cc3a3e0221e0fb23dfb07be780a21cbdbf9732a5979` |
| 40 | `theorem` | [isOpenEmbedding_iff_comp_isIso](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/isopenembedding-iff-comp-isiso.md) | 243 | `result-track:2f8e28c847a66374fac6c99fe031252769fe80116049c6d3c16ca93e87e6c2f9` |
| 41 | `theorem` | [isOpenEmbedding_iff_comp_isIso'](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/isopenembedding-iff-comp-isiso-source-edition-2.md) | 248 | `result-track:dc4ab118682599eebb4a5039ccc9fe6c6c332113837b1a55af53db7631419b18` |
| 42 | `theorem` | [isOpenEmbedding_iff_isIso_comp](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/isopenembedding-iff-isiso-comp.md) | 253 | `result-track:ad405ac18cd7fd708c762ad06b2be29e995e1b138b252a64defdf01811a48745` |
| 43 | `theorem` | [isOpenEmbedding_iff_isIso_comp'](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/isopenembedding-iff-isiso-comp-source-edition-2.md) | 262 | `result-track:ec2e0cccb17203f859e05a6954981d19836ec8b78d15c1c3de303fec8e3d4cb0` |
| 44 | `abbrev` | [isEmbedding](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/isembedding.md) | 268 | `declaration-track:d7ca516de84e22664b86b461cba036ece4dd125cbaffe57ac37db3e71d60c63b` |
| 45 | `lemma` | [isEmbedding_iff](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/isembedding-iff.md) | 272 | `result-track:91fb88012ac8da50fd9ba4f15dab67e14879e0b568b39ee360b5f85b7665e670` |
| 46 | `def` | [const](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/const.md) | 276 | `declaration-track:5a0604eca170198fb313a5f6be79a517220b70d347a65aafb2c35034597ceb9d` |
| 47 | `lemma` | [const_apply](../../../../GeneralTopology/TopCatBasicNamespacedPublic.lean/declarations/const-apply.md) | 280 | `result-track:5fd21d67c97585bab6b15681fe9d7e7d78ed39866771a478acc0b8530b29071d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=05762fdb619c0e7dfb90168c07a816fdf20faa38a803ef2f74c49b3703e44d61 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant40ee97a417f42943423f0c9197b085efaad36272764fbd4b3dafc93a7fccf353.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
