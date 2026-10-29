# Verification target: Pullback Carrier Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50f49d3f9d8021d6e1e3b37570beff003876f333",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/PullbackCarrier/Variante3c061291a22dd9ede323727ecc143f8718155a7db892fcd502d9510b3aa4aa9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50f49d3f9d8021d6e1e3b37570beff003876f333`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/PullbackCarrier/Variante3c061291a22dd9ede323727ecc143f8718155a7db892fcd502d9510b3aa4aa9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/PullbackCarrier/Variante3c061291a22dd9ede323727ecc143f8718155a7db892fcd502d9510b3aa4aa9.lean.json)

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
| 1 | `structure` | [Triplet](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/triplet.md) | 49 | `declaration-track:ab54659f92e4d65a23f1d54074abc2ec74568ad881ebb30137cc11edc54ba7f6` |
| 2 | `lemma` | [ext](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/ext.md) | 64 | `result-track:c6cb7dd308c8394a319b6acc9387e8959c5cb711cc8621f1733cdddb0b297e20` |
| 3 | `def` | [mk'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/mk.md) | 69 | `declaration-track:18a976eed02862e398f461f5c1f50d48c1b1a7a3735a0fb435826f61eeebd4d5` |
| 4 | `def` | [tensor](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/tensor.md) | 77 | `declaration-track:949decef6023321861664ae49bab7968e40cdaeeff6c95eaec373f6afa981c83` |
| 5 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 81 | `declaration-track:9be70c027a8997cde88754517ae489a7e9b94c3d411c079b90efe9ea5cc0f156` |
| 6 | `def` | [tensorInl](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/tensorinl.md) | 87 | `declaration-track:ac5e9145559853232e8f6095566d5555fa247a3dd8fa450acc177cf4987e4b64` |
| 7 | `def` | [tensorInr](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/tensorinr.md) | 91 | `declaration-track:c57824b758c00fcc8914daebe038290ab0f9460891dfbd9854ef399c26f1f338` |
| 8 | `lemma` | [isPullback_SpecMap_tensor](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/ispullback-specmap-tensor.md) | 93 | `result-track:a70e9c3cff270183ec0ef4f4d26425a6505dfa3430f0a54c338ec2af4c227370` |
| 9 | `def` | [tensorCongr](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/tensorcongr.md) | 103 | `declaration-track:f8afb28daf8c4bad1763d4693528590297fd7b52734de8aa3a7f208df31e52c1` |
| 10 | `lemma` | [tensorCongr_refl](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/tensorcongr-refl.md) | 108 | `result-track:437ec732ff5cceb37b9f9fef8f56164f69ef8084510c854d730369cbc6dd171c` |
| 11 | `lemma` | [tensorCongr_symm](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/tensorcongr-symm.md) | 112 | `result-track:363b03fe70e37d5e28dd208136c906289e90a623770b5b3c615915cdc354dbf9` |
| 12 | `lemma` | [tensorCongr_inv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/tensorcongr-inv.md) | 116 | `result-track:dabe8d88b8acc4473b34a308af675c14f1778886e1496357a95ac2d57c485898` |
| 13 | `lemma` | [tensorCongr_trans](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/tensorcongr-trans.md) | 120 | `result-track:4de4ff3ecd6f87f9658015b83bf1a99681357bfb3d9b2a0fc42b13d039bd8bab` |
| 14 | `lemma` | [tensorCongr_trans_hom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/tensorcongr-trans-hom.md) | 127 | `result-track:55df7682c8063988e286c6d9bbff73ded7e93072d91b885be9815ecb8d3ec04b` |
| 15 | `lemma` | [SpecMap_tensorInl_fromSpecResidueField](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/specmap-tensorinl-fromspecresiduefield.md) | 138 | `result-track:6be771bbc37f8d31a4ae7cc4afb94e26b467b58c02e0811fbe11f2e0f97e0a73` |
| 16 | `def` | [SpecTensorTo](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/spectensorto.md) | 149 | `declaration-track:57415c01c8e5ae43f6c8582300b5e1c6ba90b99ce8083f342e6ab58f938f3781` |
| 17 | `lemma` | [fst_SpecTensorTo_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/fst-spectensorto-apply.md) | 156 | `result-track:0e4c512dd516e61ef041fc9f3290f5c66cc30706ad720c46009393bf045c2127` |
| 18 | `lemma` | [snd_SpecTensorTo_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/snd-spectensorto-apply.md) | 164 | `result-track:e1558a05059a01b45b1541cb914850c4a20bfba1c105f3811cd74a206b13be5d` |
| 19 | `lemma` | [specTensorTo_fst](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/spectensorto-fst.md) | 171 | `result-track:87a5c42c3dd5ab8ad3fa7c76d4d57f982b7f41e7ebbfc1a48adbfa4f078cd9d6` |
| 20 | `lemma` | [specTensorTo_snd](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/spectensorto-snd.md) | 176 | `result-track:4e6a013eb00b6c0d1d15434a51d6e390c333235ec01ba763a9f6225ceae93569` |
| 21 | `def` | [ofPoint](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/ofpoint.md) | 183 | `declaration-track:2a74d4b68c14a3dfee39710b7e47742d965cd582b6d08cfb5f2c61af601ac0c0` |
| 22 | `lemma` | [ofPoint_SpecTensorTo](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/ofpoint-spectensorto.md) | 188 | `result-track:e2fb8963fd3477d9b167dae3b8a6191f43f276cb9ddd2eeab404b4f09c58c75d` |
| 23 | `lemma` | [residueFieldCongr_inv_residueFieldMap_ofPoint](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/residuefieldcongr-inv-residuefieldmap-ofpoint.md) | 196 | `result-track:9f98cd6dff9644985c402380dbcef015b0d1a5af81620f4271e8c562dc2edb17` |
| 24 | `def` | [ofPointTensor](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/ofpointtensor.md) | 204 | `declaration-track:5c9c4ee3b6659dfe4e08521aff25e6f1a78dc93160183d72135b69afe2ef4e4d` |
| 25 | `lemma` | [ofPointTensor_SpecTensorTo](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/ofpointtensor-spectensorto.md) | 213 | `result-track:c4594c60c1c4862da85a625b9ce44db91bc7c91704c4047f90d5d4f609832ddc` |
| 26 | `def` | [SpecOfPoint](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/specofpoint.md) | 228 | `declaration-track:f0d9263794f97b2dd741a6ef8e3993584a072d31ffddc155f1db74f77d9e4d43` |
| 27 | `lemma` | [SpecTensorTo_SpecOfPoint](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/spectensorto-specofpoint.md) | 233 | `result-track:5adb53967a6e2b2bbc9a89e7bbb27a3f950537cc3a6605f78beb1ba0c6dc7f6b` |
| 28 | `lemma` | [tensorCongr_SpecTensorTo](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/tensorcongr-spectensorto.md) | 238 | `result-track:4fedfb7c7b3d08d0e7120c3945e7e35fe68451346bdf2ac5d7c7d87a5f46068a` |
| 29 | `lemma` | [Triplet.Spec_ofPointTensor_SpecTensorTo](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/triplet-spec-ofpointtensor-spectensorto.md) | 243 | `result-track:1fe09f0684c4b4ff3420731c087b59439d809fe1449be37cd47211cf82c11a49` |
| 30 | `lemma` | [carrierEquiv_eq_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/carrierequiv-eq-iff.md) | 257 | `result-track:8a24fa87ac2f5e4378ccb7647c3845f954eaf0c482cb25e519493eea1d30b526` |
| 31 | `def` | [carrierEquiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/carrierequiv.md) | 273 | `declaration-track:980c9df46310b97f06c856dda626b12725574c89b8b72d39348cbba11766f8fd` |
| 32 | `lemma` | [carrierEquiv_symm_fst](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/carrierequiv-symm-fst.md) | 289 | `result-track:f7b25593e0bbe88c58ffbbbb105ff96a8e765e7d46ce6354074a161c987d983c` |
| 33 | `lemma` | [carrierEquiv_symm_snd](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/carrierequiv-symm-snd.md) | 294 | `result-track:8006f55a25e908f65972669c8516234b7a2b39dfa4404d4019b6fcd1af0c98b2` |
| 34 | `lemma` | [Triplet.exists_preimage](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/triplet-exists-preimage.md) | 301 | `result-track:b8a32a0ed7338b3b8c777d0dd3333c0d4567617cc40ec88a7605b0a16641c40f` |
| 35 | `lemma` | [exists_preimage_pullback](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/exists-preimage-pullback.md) | 312 | `result-track:63ea39f770dbc470117d201029a379b089c0e4d8f02886aae153b2a7cdbcaa09` |
| 36 | `lemma` | [Pullback Carrier Namespaced Public](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/isempty-pullback-iff.md) | 316 | `result-track:925a0641c740d61e86bd560ba91f0e2ed50bad36d905abc03c5a4de834f53f4a` |
| 37 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 325 | `declaration-track:5f578f0d685ecf38b0f5994249c0e2e4e886a37d4461e0b0deb2eb6b521cf551` |
| 38 | `lemma` | [range_fst](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/range-fst.md) | 334 | `result-track:1a76350e23443c281bb7c7e5f2ed70a0c32013dfda375118e996e67e88b429a3` |
| 39 | `lemma` | [range_snd](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/range-snd.md) | 343 | `result-track:aec1c9c30f7287f05694115db52b97b47aa14561cbd74fc7b083f5c9e1d2eb99` |
| 40 | `lemma` | [range_fst_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/range-fst-comp.md) | 352 | `result-track:df3bd784ac75c8414e761a694b8aa977c8c2495ba837ab9bd6d459b1444ef1c8` |
| 41 | `lemma` | [range_snd_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/range-snd-comp.md) | 356 | `result-track:7f1382c1790c20c74d9782536be2c78a76e239db823e2ec82102e5c9daf28bde` |
| 42 | `lemma` | [range_map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/range-map.md) | 361 | `result-track:982bef301d65195a424b7950363022965b583d1c3b6e16d8bb53aa5be87037b0` |
| 43 | `instance` | [isJointlySurjectivePreserving](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/isjointlysurjectivepreserving.md) | 390 | `declaration-track:6032be9dc17006e6cffe27c489aff3871d25b4cfc7244d7bb417e18c83f1a36e` |
| 44 | `lemma` | [pullbackComparison_forget_surjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/pullbackcomparison-forget-surjective.md) | 397 | `result-track:db875a28717572e4af1c9eaa92911108493571cae331e8ad62de032661bdda00` |
| 45 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/instance.md) | 409 | `declaration-track:0bf894e8507dff6b7b8617c568434111ed1e6bd036b604dcaba610e0732313c3` |
| 46 | `lemma` | [exists_preimage_of_isPullback](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/exists-preimage-of-ispullback.md) | 417 | `result-track:1077d6d9c448262c231d8307f979ddc54078ccbaf1bbbae0980dd6ef88ca9d00` |
| 47 | `lemma` | [image_preimage_eq_of_isPullback](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/image-preimage-eq-of-ispullback.md) | 426 | `result-track:fe84c655aa37d0fb18a741c44c4bc5ff20cfef2c469994fc26fb5f3261ea26e1` |
| 48 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 442 | `declaration-track:32db8302d2e78d90b093304970f8052868ca3de93609ea7ce9eadf0b16f86c4e` |
| 49 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 449 | `declaration-track:187c435095903ac1533dc82d0137a0584b4353ac2a8db379c8dcba2000ed396a` |
| 50 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PullbackCarrierNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 454 | `declaration-track:f44ad467a1c018f16911786ebd4396bdb985af51ca55b03e7bdc0777fd08e02e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4eaff5aafcde9651ea77ff0c2e47de1031e0ef45d826df4750459ede7f46c8ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/PullbackCarrier/Variante3c061291a22dd9ede323727ecc143f8718155a7db892fcd502d9510b3aa4aa9.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/PullbackCarrier/Variante3c061291a22dd9ede323727ecc143f8718155a7db892fcd502d9510b3aa4aa9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
