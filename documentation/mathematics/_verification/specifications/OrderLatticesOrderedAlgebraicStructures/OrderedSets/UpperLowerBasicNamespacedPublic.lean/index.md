# Verification target: Upper Lower Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "620b049257a22f7b7edcd0cf2b8709231c4c33cc",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantacca9d55b1d7e0da6ed51a6a8173dc9e0b00118f64f3843ad6d53fc5a6badef9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `620b049257a22f7b7edcd0cf2b8709231c4c33cc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantacca9d55b1d7e0da6ed51a6a8173dc9e0b00118f64f3843ad6d53fc5a6badef9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantacca9d55b1d7e0da6ed51a6a8173dc9e0b00118f64f3843ad6d53fc5a6badef9.lean.json)

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
| 1 | `theorem` | [isUpperSet_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-empty.md) | 47 | `result-track:24e729ab62172639dc93ef85c146730447a7f13466361ac4e31485e6ecbf0441` |
| 2 | `theorem` | [isUpperSet_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-univ.md) | 50 | `result-track:ec9846e7356b0af0b400969a41fd07e00f398b84e130b7161815f38fe696d3ce` |
| 3 | `theorem` | [IsUpperSet.compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-compl.md) | 53 | `result-track:0d1a9278e7712969f124163f35026eb95206f0435b06917c99e2c080fdb65eff` |
| 4 | `theorem` | [isUpperSet_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-compl-source-edition-2.md) | 56 | `result-track:d0d40ef7dee08a0bf756f89903299068da9d84490a728e2c5d5e5bae47a7b7bc` |
| 5 | `theorem` | [IsUpperSet.union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-union.md) | 62 | `result-track:6103a0a2e0619946108caa645935067c3723d0b7a451d152682ffe3d0b10c177` |
| 6 | `theorem` | [IsUpperSet.inter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-inter.md) | 66 | `result-track:e5920645a1917037e7c1fe91ca295012f8de4f474e0e2e6cd21e16920abbce13` |
| 7 | `theorem` | [isUpperSet_sUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-sunion.md) | 70 | `result-track:526c8d5c696166bdbf35c22d132f993a0daeee34fab9fb876df73db109c75c81` |
| 8 | `theorem` | [isUpperSet_iUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-iunion.md) | 74 | `result-track:a80b7f811c4689a3aaa3325f318530af96ce797a822b52e58a9d2633c00e8e3c` |
| 9 | `theorem` | [isUpperSet_iUnion₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-iunion-source-edition-2.md) | 78 | `result-track:b76a07d185afb4283b781a1af94d40563e5a8bbf6f3ca236ec9368cccfa4af40` |
| 10 | `theorem` | [isUpperSet_sInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-sinter.md) | 83 | `result-track:514ca40fb250622b951429645fc3191bec11497d99973c35d52870651676836b` |
| 11 | `theorem` | [isUpperSet_iInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-iinter.md) | 87 | `result-track:141cdb771e71571f0ffacfd19be49bedc8bc2a50d34819f835abb9405038594d` |
| 12 | `theorem` | [isUpperSet_iInter₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-iinter-source-edition-2.md) | 91 | `result-track:55a67b9cc85aa2da5e3ebacbeaf6d0407773783cd5a3aafa99f55966435fd82c` |
| 13 | `theorem` | [isUpperSet_preimage_ofDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-preimage-ofdual-iff.md) | 96 | `result-track:8dca03c77c51194be84dae3199d19ccd660382412184b1ca3140ab23655ca2a8` |
| 14 | `theorem` | [isUpperSet_preimage_toDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-preimage-todual-iff.md) | 100 | `result-track:fba9b2741527530521f04760426c775b26f5008c3a772986479db9d63745409d` |
| 15 | `lemma` | [IsUpperSet.isLowerSet_preimage_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-islowerset-preimage-coe.md) | 107 | `result-track:45f5f04bcf3b8070198b0958d0f91f8ada0ba9d3a29a9628653a99c35c08f0a0` |
| 16 | `lemma` | [IsUpperSet.sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-sdiff.md) | 111 | `result-track:231cff5d626cccf0d329b739ce1064cf1b1e48b16a62b42d443478e79752f0e9` |
| 17 | `lemma` | [IsUpperSet.sdiff_of_isLowerSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-sdiff-of-islowerset.md) | 116 | `result-track:c05db52db238f384513f70c8271d23dabae913f9a0e576936cab3d0ae83f7f89` |
| 18 | `lemma` | [IsUpperSet.erase](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-erase.md) | 120 | `result-track:4640c453057228fc936c01a046378859f5c1778ad763bfd76e8a6258580896ae` |
| 19 | `theorem` | [isUpperSet_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-ici.md) | 129 | `result-track:6c724090ad8c27343ae71734d4fd981cbd9a22ef54d06ce91e31493f1ca1f5d9` |
| 20 | `theorem` | [isUpperSet_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-ioi.md) | 130 | `result-track:a6bd9e9fbc91f61a44430349b275f68ca0d801e0fa89bd66557cc8d32e372000` |
| 21 | `theorem` | [isUpperSet_iff_Ici_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-iff-ici-subset.md) | 133 | `result-track:abb5f6e881be75f9e5a068a47cb11a6e093743a103be0635a8f197551719c36e` |
| 22 | `theorem` | [IsUpperSet.Ioi_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-ioi-subset.md) | 139 | `result-track:fdac4d995959732c7b77c29921e9dd256ce60c9def0f5fe5cbdc00adb5506bf1` |
| 23 | `theorem` | [IsUpperSet.ordConnected](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-ordconnected.md) | 142 | `result-track:dd02e7012932f03177cb9955ab4c42a28d709632c735fc3feced8e55b5effa46` |
| 24 | `theorem` | [IsLowerSet.ordConnected](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/islowerset-ordconnected.md) | 147 | `result-track:22193e8cb6c303f0008e4afc52a55a27646cf2230f695801a3e4bd411ae178ec` |
| 25 | `theorem` | [IsUpperSet.preimage](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-preimage.md) | 151 | `result-track:d71fb28514ef2c3bab20620dd0e3a675dfff790433c7983588aca8d43408fd21` |
| 26 | `theorem` | [IsUpperSet.image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-image.md) | 155 | `result-track:c6e3391c14df5d96f464f3500f5e5a02997dcb48d333485165116f0f94dfdb6d` |
| 27 | `theorem` | [OrderEmbedding.image_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/orderembedding-image-ici.md) | 161 | `result-track:a05ee83108c4d1b50a7993af001153bf6463f6f0eda78edae2f71a6bee8c8761` |
| 28 | `theorem` | [OrderEmbedding.image_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/orderembedding-image-ioi.md) | 167 | `result-track:b50efb5e02ea4920b0b8fb771c4037cfd2062e1d3747a7452072c67aab135c76` |
| 29 | `theorem` | [Set.monotone_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/set-monotone-mem.md) | 173 | `result-track:d22c0be74af4d12216b432bba860b3c20eff4c62eb6ee8d50ac39c8f0a948161` |
| 30 | `theorem` | [Set.antitone_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/set-antitone-mem.md) | 177 | `result-track:2053914463f08fa71f955c1d263a0c3bb4519436043792d46b8ec662ff65e2d7` |
| 31 | `theorem` | [isUpperSet_setOfPred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-setofpred.md) | 181 | `result-track:565579c403f4a323b7f6b6aa2bf6b565c53f85a9a6431dd1c9e7e6e87ab0b143` |
| 32 | `theorem` | [isLowerSet_setOfPred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/islowerset-setofpred.md) | 187 | `result-track:6cc7a5ed6d0be2ec5c1cc3efa6456690a21b62d9f9a8c8a45221752cf3722dec` |
| 33 | `lemma` | [IsUpperSet.upperBounds_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-upperbounds-subset.md) | 193 | `result-track:c1fb9dcfd86410e4e0b8fbe2a6dbf7a5fb04cc807aeaf6e948ccae799b714269` |
| 34 | `theorem` | [IsLowerSet.top_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/islowerset-top-mem.md) | 201 | `result-track:76ea13694fe684890273465d74da6843ee959d5c3a59f82acd8a8b944b86a9cb` |
| 35 | `theorem` | [IsUpperSet.top_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-top-mem.md) | 205 | `result-track:9524509ca0889fb0a3673779d85396f53d30de857528bad4bc07898682148bd6` |
| 36 | `theorem` | [IsUpperSet.top_notMem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-top-notmem.md) | 209 | `result-track:d902dd674b0a7da275840be3d46ef581436a2f45593879e73859849558c8d80f` |
| 37 | `theorem` | [IsUpperSet.not_bddAbove](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-not-bddabove.md) | 219 | `result-track:aa1282c6591f4c71860fc1e59f1cd2a168a3c6e5a507ea9763b7400035e6b7a8` |
| 38 | `theorem` | [not_bddAbove_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/not-bddabove-ici.md) | 225 | `result-track:4442efcb12a432a5d56fb364427149489bee2e48d067cbdc10c9b4d71cf24ce7` |
| 39 | `theorem` | [not_bddAbove_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/not-bddabove-ioi.md) | 229 | `result-track:a28cd6cd435c26eeab1e6d3bed47b3a6568c3b6f70010bbc42c0c6aea92bb08f` |
| 40 | `theorem` | [isUpperSet_iff_forall_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-iff-forall-lt.md) | 241 | `result-track:089bd7cd18631ef15ce61b8b81630e233e12f40a96da757d1e8cf31988e89d4b` |
| 41 | `theorem` | [isUpperSet_iff_Ioi_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-iff-ioi-subset.md) | 245 | `result-track:6c2f235ea6db4670366df37c2f75bc9c24cb69a9047ef0db93c283777a0d1183` |
| 42 | `theorem` | [IsUpperSet.total](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-total.md) | 255 | `result-track:d0a33ab0a0e382ce4e62bf566bef4a552aa0acfcb85ad8adf6c2eb58692c9602` |
| 43 | `theorem` | [IsUpperSet.eq_empty_or_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/isupperset-eq-empty-or-ici.md) | 259 | `result-track:d38ea0208e6f8fa0dd687861333230bc579d46edd0edcd0da15133a5ccb99c44` |
| 44 | `theorem` | [IsLowerSet.eq_univ_or_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerBasicNamespacedPublic.lean/declarations/islowerset-eq-univ-or-iio.md) | 266 | `result-track:3028aa200b5732ddfe6a5be2107b072874aefceea1ee532bed97a9f07990e32b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c776137c41ce92458fe6f81fd515bbfa5725c539402081c925cbcf5499bd0b73 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantacca9d55b1d7e0da6ed51a6a8173dc9e0b00118f64f3843ad6d53fc5a6badef9.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantacca9d55b1d7e0da6ed51a6a8173dc9e0b00118f64f3843ad6d53fc5a6badef9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
