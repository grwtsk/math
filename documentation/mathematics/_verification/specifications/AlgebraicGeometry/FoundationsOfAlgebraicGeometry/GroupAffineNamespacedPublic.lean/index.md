# Verification target: Group Affine Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c89cab024b6b5c100409aae7fac759074d703051",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Affine/Variant388ebdeaa7e275be0fee7b7bc051b3f97f8c19cb5934a5863fbe0fefd12ac808.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c89cab024b6b5c100409aae7fac759074d703051`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Affine/Variant388ebdeaa7e275be0fee7b7bc051b3f97f8c19cb5934a5863fbe0fefd12ac808.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Affine/Variant388ebdeaa7e275be0fee7b7bc051b3f97f8c19cb5934a5863fbe0fefd12ac808.lean.json)

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
| 1 | `def` | [algSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/algspec.md) | 81 | `declaration-track:62b889d3386115353431b8ea3572abfc3632537e608be4846e70930bfea38780` |
| 2 | `def` | [algΓ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/alg.md) | 86 | `declaration-track:8b3e8cab62165e2eeeb23330f8c742f32739f3ad6680f08ca1b9775a20988bd2` |
| 3 | `instance` | [preservesLimitsOfSize_algSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/preserveslimitsofsize-algspec.md) | 90 | `declaration-track:3dcc7e7f8d714f52f7aab82c12b0c5d1bcc16ccd35c1552209e08b8381d357c6` |
| 4 | `instance` | [preservesColimitsOfSize_algΓ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/preservescolimitsofsize-alg.md) | 95 | `declaration-track:e7c8345faca91e9fd32b799bd3a1e02cdc71b3b5db92e8e1f5db9a16a066c1d3` |
| 5 | `lemma` | [algSpec_obj_hom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/algspec-obj-hom.md) | 98 | `result-track:8c6bdaf7475f502d1cded471404cadfd1238a807714af2579899a9de74c3d82c` |
| 6 | `lemma` | [algSpec_map_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/algspec-map-left.md) | 101 | `result-track:69b463a5daaa5c80c142c7bdd9480030e4d5997b2edfc12b49ffa2dc7f5bc2cd` |
| 7 | `lemma` | [preservesTerminalIso_algSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/preservesterminaliso-algspec.md) | 104 | `result-track:f5486ae2f0e5a2f76d916bcd2fecccd043acfce54fb46c06639b8007b9bd5020` |
| 8 | `lemma` | [preservesTerminalIso_algSpec_inv_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/preservesterminaliso-algspec-inv-left.md) | 108 | `result-track:b4f1220f42b7181aaf9ca1bbe7ba8b82c29fe3be212d642ea8f71a6a5f0e4d96` |
| 9 | `lemma` | [prodComparison_algSpec_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/prodcomparison-algspec-left.md) | 113 | `result-track:efd2b8652f8ba7c4f55f0cd456ba7eb9d8c10b1a4a2845f3891e98fa6740c36e` |
| 10 | `lemma` | [prodComparisonIso_algSpec_inv_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/prodcomparisoniso-algspec-inv-left.md) | 117 | `result-track:660626513b5a548189eccc6c372dd06a29bf1ef4c46ab684ec898bf7abea09e4` |
| 11 | `instance` | [braidedAlgSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/braidedalgspec.md) | 130 | `declaration-track:6675bdc58aff9b578838f261e3eaeeb0580874981a9c523257432fb16360c858` |
| 12 | `lemma` | [ε_algSpec_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/algspec-left-source-edition-2.md) | 145 | `result-track:7842cbd345f37ac9a953f10153174675b4822486be2ff16181f939562235bdf3` |
| 13 | `lemma` | [η_algSpec_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/algspec-left-source-edition-3.md) | 146 | `result-track:8175024452e0158acb8fc65a939edf7f3b8446356f15e1cfc6a15d3e84679fee` |
| 14 | `lemma` | [δ_algSpec_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/algspec-left.md) | 148 | `result-track:25c78ac182da7d7681fee22a4d9909706be2761f4706b145e0f889e6d27e84e8` |
| 15 | `lemma` | [μ_algSpec_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/algspec-left-source-edition-4.md) | 151 | `result-track:d1069c8cd317bc4ec0c95096b391ae2d67f95163c3915ca88bf58d4993030bd0` |
| 16 | `instance` | [algSpec.instFull](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/algspec-instfull.md) | 155 | `declaration-track:a583af6044781d86d1aa96d67a3fa94a2913f308fc15c70ad45b243a386e8988` |
| 17 | `instance` | [algSpec.instFaithful](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/algspec-instfaithful.md) | 160 | `declaration-track:9dabc90d8b8fcf0600f566e1fba40f75d8591c1d5d20c4376f5f829d28e5a772` |
| 18 | `def` | [algSpec.fullyFaithful](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/algspec-fullyfaithful.md) | 165 | `declaration-track:05c127716c8c373b980918e0b1f9b93092e7924fe7597af8fb0ca27509fe87f2` |
| 19 | `abbrev` | [bialgSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/bialgspec.md) | 171 | `declaration-track:c8e0ff7bae7beb18ff3e240a4fc8b385add2277d655b13123674ea4b635c4a3c` |
| 20 | `instance` | [bialgSpec.instFull](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/bialgspec-instfull.md) | 175 | `declaration-track:67386fb6bf7f96e099b33c17cad0701f17006a420ab42d28740dcb2d6db0cc9b` |
| 21 | `instance` | [bialgSpec.instFaithful](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/bialgspec-instfaithful.md) | 178 | `declaration-track:5432f7a4ebbe7c6883237b067d9a38ec4b9fc284d8db6b4b4164ec98379654c1` |
| 22 | `def` | [bialgSpec.fullyFaithful](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/bialgspec-fullyfaithful.md) | 181 | `declaration-track:88d09f9ba2a83f17f83e25abfd59799929a59917ff496bdee156e6dc3f9045b2` |
| 23 | `abbrev` | [hopfSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/hopfspec.md) | 186 | `declaration-track:7f40ead071ee255368d77337a6638e6924ac6092fbe05b660cf5534a9fccc8e8` |
| 24 | `instance` | [hopfSpec.instFull](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/hopfspec-instfull.md) | 190 | `declaration-track:44d9167d0202539989fa563acba6290b3697ebfd8038acbb8b70d7633edc43bf` |
| 25 | `instance` | [hopfSpec.instFaithful](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/hopfspec-instfaithful.md) | 193 | `declaration-track:6fa616a2cd19fb1fa6224d8af65c4a80a749eff277697a367a9e690212366e7c` |
| 26 | `def` | [hopfSpec.fullyFaithful](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/hopfspec-fullyfaithful.md) | 196 | `declaration-track:fc0d5d34018507dcb8d11ed672017f8f63b22438cf8d2a65f2ed755ab90e345b` |
| 27 | `instance` | [specOverSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/specoverspec.md) | 208 | `declaration-track:cdfae6db9cf472c4231b8ca8ef8f5d5f0347ae4d28e7aef5664e799a754fa1e5` |
| 28 | `instance` | [locallyOfFiniteType_specOverSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/locallyoffinitetype-specoverspec.md) | 211 | `declaration-track:e011a3307e315a0d4b93932849c880ab350ca4919c265f605a58e1df240e3098` |
| 29 | `instance` | [instMonObjSpecAsOverSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/instmonobjspecasoverspec.md) | 218 | `declaration-track:174a1b5c97e44b0a978a910950931fd9a289d4be27d4c3014d2db8b3863686bc` |
| 30 | `lemma` | [one_spec_asOver_spec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/one-spec-asover-spec.md) | 223 | `result-track:d27c75099bb30f1b1b8c7c5868a22cd14d5f34e1c575df44fd657ded2d8afa7c` |
| 31 | `lemma` | [one_spec_asOver_spec_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/one-spec-asover-spec-left.md) | 230 | `result-track:2e1ae1fc9552b88235bbc81281c14dd0d3e9644790edd8eeec353c5fe803c981` |
| 32 | `lemma` | [mul_spec_asOver_spec_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/mul-spec-asover-spec-left.md) | 234 | `result-track:a2844bd02d3c64a5139f0fa2f39ac599a20f30b47ba1bffa9a905a1f1f6a42c4` |
| 33 | `instance` | [isCommMonObj_spec_asOver_spec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/iscommmonobj-spec-asover-spec.md) | 240 | `declaration-track:da6d41965bad6acecca9d68f7749c81ac33efc99295f3aeae406597fa801858d` |
| 34 | `instance` | [instGrpObjSpecAsOverSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/instgrpobjspecasoverspec.md) | 264 | `declaration-track:10a6398a7f76256c58c5996b98ce91411e3627ecb28cc0454f411df135392b4e` |
| 35 | `instance` | [instCommGrpObjSpecAsOverSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/instcommgrpobjspecasoverspec.md) | 268 | `declaration-track:85f0e90d3461eff89a49dfb0d12773181dd375538d7292174bf162a57c9ffac9` |
| 36 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 271 | `declaration-track:cb0ab975afc9f47358a65a915698794cc68d34119e23f337cba1aa100062b42b` |
| 37 | `def` | [Spec.mapMulEquiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/spec-mapmulequiv.md) | 278 | `declaration-track:6422231ac14571943733b0a65b5a69a071d9f10b1e391e8a00ab05134aa7a4c8` |
| 38 | `def` | [algΓAlgSpecAdjunction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/alg-algspecadjunction.md) | 309 | `declaration-track:c30191dc50bc74baf2a0459829b05a9c5d4a6d294136c95ca0f856d9c42a3d81` |
| 39 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 320 | `declaration-track:5d2b321973254fc1bd932f60cfb604b128900ad5f3e03098d0fbf1b471b8802d` |
| 40 | `lemma` | [algebraMap_presheafObj](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/algebramap-presheafobj.md) | 324 | `result-track:4e25215deea7bf37fc665216e638bce4fe0653d8d162907934ecb65191498351` |
| 41 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 330 | `declaration-track:67a35a4263887df0b650610b8214f44266a52694f406b725ee3ca1e353801b0a` |
| 42 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 332 | `declaration-track:1c27b63db2214a4526715afb9fec05c1f8b4e69464b3b9c3af391b94cade21b4` |
| 43 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 336 | `declaration-track:2123bc538e1e540807452d577f76fe418778613ea026aa0a2ee1dcf4b277723c` |
| 44 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 345 | `declaration-track:55c857e81ad9aae0892fdfcbf7d2126fc0182840698963aaed518923ac12d693` |
| 45 | `def` | [pullbackSpecIso'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/pullbackspeciso.md) | 363 | `declaration-track:9ea755a823584c201ba37b880d260536c0a0f349c1fd82e8d2535078e92a4b50` |
| 46 | `lemma` | [pullbackSpecIso'_symmetry](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/pullbackspeciso-symmetry.md) | 368 | `result-track:137b5a397b74577f8ab128440cb8d1cfcf53709de2bf665b71c5efab21458183` |
| 47 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/instance.md) | 388 | `declaration-track:106828dc14c51fb679f135da2605b89618c706935c5bf0e4479292a2799f91a9` |
| 48 | `lemma` | [μ_pullback_left_fst](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/pullback-left-fst.md) | 399 | `result-track:a7405067f80aeb90a4e4f34eb6cfe3e13ad176d29e41c4369847e871c2671a7e` |
| 49 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 432 | `declaration-track:9c7008271eda19d3778ddae794b7eca0df3e8b43a92a5318a0b545efa5969a05` |
| 50 | `lemma` | [essImage_algSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/essimage-algspec.md) | 479 | `result-track:5744e9e99bf695147bde5a95c665b791b1473dff098b5ce6e029c7f5736f0bfa` |
| 51 | `lemma` | [essImage_bialgSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/essimage-bialgspec.md) | 485 | `result-track:57f41bdcea442636592590cb2fe31571b47a3a607e4873027bca76258f118ba2` |
| 52 | `lemma` | [essImage_hopfSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/GroupAffineNamespacedPublic.lean/declarations/essimage-hopfspec.md) | 491 | `result-track:b5b9428f57717fca3d5c0c80642af029cc69431b0d23325ea065833132ac4184` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef98b5d9a5734ee7ac7368fe0d53e78cd7699104709a02ff60766b07caa375e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Affine/Variant388ebdeaa7e275be0fee7b7bc051b3f97f8c19cb5934a5863fbe0fefd12ac808.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/Affine/Variant388ebdeaa7e275be0fee7b7bc051b3f97f8c19cb5934a5863fbe0fefd12ac808.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
