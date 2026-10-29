# Verification target: Submersive Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "776ac658e62c6151c33aa6e39659c0cdd3af5890",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Submersive/Variant12e045ba367a79b52812cdc5d2c14b784319865bcd86298b6947d2d707b6cbc6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/SubmersivePublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/SubmersivePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `776ac658e62c6151c33aa6e39659c0cdd3af5890`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Submersive/Variant12e045ba367a79b52812cdc5d2c14b784319865bcd86298b6947d2d707b6cbc6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Submersive/Variant12e045ba367a79b52812cdc5d2c14b784319865bcd86298b6947d2d707b6cbc6.lean.json)

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
| 1 | `structure` | [PreSubmersivePresentation](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/presubmersivepresentation.md) | 69 | `declaration-track:e470a0f277b98a717c521a4673b1ea1ed696c00487c7432746dc521827ff774e` |
| 2 | `lemma` | [card_relations_le_card_vars_of_isFinite](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/card-relations-le-card-vars-of-isfinite.md) | 80 | `result-track:5b228dc8147875af1b102f8385f444974c3c86b56a99224ea017ea03d269eab2` |
| 3 | `abbrev` | [basis](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/basis.md) | 89 | `declaration-track:08bd87dad6947486333c26c8c345fa789c9840fed07bb4793f52e2e9506bdb67` |
| 4 | `def` | [differential](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/differential.md) | 103 | `declaration-track:7445dc40f4711054622fcc791c6b5e4d9f22cc90da228f800dca639a276a4264` |
| 5 | `def` | [aevalDifferential](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/aevaldifferential.md) | 108 | `declaration-track:71f791c55726f9eae60a39993c557aac5fea89cde8271d32b9ffb777396278f4` |
| 6 | `lemma` | [aevalDifferential_single](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/aevaldifferential-single.md) | 113 | `result-track:67d88276e5c3794975ff80cce338e3b8ff317da682b089a3be48b83857c42f65` |
| 7 | `def` | [jacobian](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/jacobian.md) | 120 | `declaration-track:0884d5469137a55f48f310bf78c2ef8652225984b83063e2f597760a68b33276` |
| 8 | `def` | [jacobiMatrix](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/jacobimatrix.md) | 133 | `declaration-track:c072c757e36fa206d7ea4c6f9b518ad51a986759dfa01ef4e179a036649e10c4` |
| 9 | `lemma` | [jacobian_eq_jacobiMatrix_det](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/jacobian-eq-jacobimatrix-det.md) | 136 | `result-track:2cd3062975119dc1cb42ee75f3e1f9f7c48e03fb48417931a09f0b82e0610883` |
| 10 | `lemma` | [jacobiMatrix_apply](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/jacobimatrix-apply.md) | 139 | `result-track:db040042714a4a26017d2e9a1b853dad1cb98c0e7f14995aec010cf79230826e` |
| 11 | `lemma` | [aevalDifferential_toMatrix'_eq_mapMatrix_jacobiMatrix](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/aevaldifferential-tomatrix-eq-mapmatrix-jacobimatrix.md) | 143 | `result-track:d6629efa4dd298b96e198c329a4fc6ab5548f85dee37c85e5bb73665a6bc418e` |
| 12 | `lemma` | [jacobian_eq_det_aevalDifferential](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/jacobian-eq-det-aevaldifferential.md) | 156 | `result-track:2f544a7fcb97254c6a1844b5cf5aa884f57863d5a8da4904dc11f1b9a83603e5` |
| 13 | `lemma` | [isUnit_jacobian_iff_aevalDifferential_bijective](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/isunit-jacobian-iff-aevaldifferential-bijective.md) | 162 | `result-track:f7b7f4b6ae652ba21d3de5e29529c43f87b37fa295d571d7407c1caa0e1f54ad` |
| 14 | `lemma` | [isUnit_jacobian_of_linearIndependent_of_span_eq_top](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/isunit-jacobian-of-linearindependent-of-span-eq-top.md) | 167 | `result-track:e79f2f35036573be486e3c179ab3bb69fa16dea6a7f63af85e53876959b0d75f` |
| 15 | `def` | [ofAlgEquiv](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/ofalgequiv-source-edition-2.md) | 183 | `declaration-track:8f95494cba3da970ddd29fdb0f595b98afabee9aa0a0660e310ebc445f153d0b` |
| 16 | `lemma` | [jacobiMatrix_ofAlgEquiv](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/jacobimatrix-ofalgequiv.md) | 191 | `result-track:58a169b6e9d917a856f0b10dee17cd5c0de8b587651281e262f1e3d0d6c95902` |
| 17 | `lemma` | [jacobian_ofAlgEquiv](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/jacobian-ofalgequiv.md) | 197 | `result-track:b8e6b3a69f925fd1649a3ad90db1b67315d459905d0d37dfb797f65a0d8fdefe` |
| 18 | `def` | [ofBijectiveAlgebraMap](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/ofbijectivealgebramap.md) | 210 | `declaration-track:2c0b0a4096c077573d234fcd579f6e5e06d1ad58f8e050c28e12b1260677fdd4` |
| 19 | `lemma` | [ofBijectiveAlgebraMap_jacobian](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/ofbijectivealgebramap-jacobian.md) | 217 | `result-track:8135ffb9154d85d96c10144785144115139891640e1e05cc51355b5c098925bf` |
| 20 | `def` | [mvPolynomial](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/mvpolynomial-source-edition-2.md) | 229 | `declaration-track:a79c2ad1155ba90471ec8b766c4a1a9d9b5c74c38c0d7100d8c0dff7a313383a` |
| 21 | `lemma` | [jacobian_mvPolynomial](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/jacobian-mvpolynomial.md) | 236 | `result-track:e7b2a7ceadcde8dab93151b0922364b26afa097bb4f9b0760ca92d034b1931af` |
| 22 | `def` | [localizationAway](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/localizationaway.md) | 247 | `declaration-track:1f59f76baf50974e05b9eae3e633a3c4134d59031c04b9699b484de88fbf12ef` |
| 23 | `lemma` | [localizationAway_jacobiMatrix](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/localizationaway-jacobimatrix.md) | 253 | `result-track:1b4ddc695e71859489a3096b98b1b1ce8a90686ee2af4180ca81fceb14548a02` |
| 24 | `lemma` | [localizationAway_jacobian](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/localizationaway-jacobian.md) | 260 | `result-track:78d2177595557c840bad503ff1cd1b28e0826fb9014a16fcc1559d1eb158da95` |
| 25 | `def` | [comp](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/comp-source-edition-2.md) | 274 | `declaration-track:da70b71f45e9a5d99442f224b987f16b485bb040d384b89f15818fd8648ed088` |
| 26 | `lemma` | [toPresentation_comp](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/topresentation-comp.md) | 280 | `result-track:b094db6d550daca99e1f98d565de12f646716a2332cd05a02da815405dc27287` |
| 27 | `lemma` | [toGenerators_comp](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/togenerators-comp.md) | 283 | `result-track:49230baee5835aab9a8740d533b147b60aae78afa539c49ce1ac999e37aa243e` |
| 28 | `lemma` | [dimension_comp_eq_dimension_add_dimension](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/dimension-comp-eq-dimension-add-dimension.md) | 287 | `result-track:187e4032f384bdcf456deb092a482b1a39b7d2233c7cbcb9a413568be6be1ae5` |
| 29 | `lemma` | [jacobiMatrix_comp_inl_inr](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/jacobimatrix-comp-inl-inr.md) | 313 | `result-track:fff3fe49d22eb132312452a108ff221bb75ae05dc5b0c8878ff914eb90968e6e` |
| 30 | `lemma` | [jacobiMatrix_comp_₁₂](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/jacobimatrix-comp.md) | 321 | `result-track:168dd72a83e0e0bb15b9fb4f53286efea8dabdf2975ba2b21653562d59573b5f` |
| 31 | `lemma` | [jacobiMatrix_comp_inl_inl](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/jacobimatrix-comp-inl-inl.md) | 328 | `result-track:d4353b7780529faa537eeabc40b61b862545bfb827fd1a1b3178ac5b4f4d9649` |
| 32 | `lemma` | [jacobiMatrix_comp_₁₁_det](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/jacobimatrix-comp-det.md) | 336 | `result-track:71316d9bfd63f8fa6ddf5a20e7d46cb6b2204747442dca7f91e8a920ecf96b98` |
| 33 | `lemma` | [jacobiMatrix_comp_inr_inr](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/jacobimatrix-comp-inr-inr.md) | 350 | `result-track:cd38b3140eefa984fb2957157e7b31d6a357a8df4c1e985a21d6c3a674a7b017` |
| 34 | `lemma` | [jacobiMatrix_comp_₂₂_det](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/jacobimatrix-comp-det-source-edition-2.md) | 358 | `result-track:84b422d7b8ef69d920cf9ad8460cfd314f0db0871275ff4d3d7049351905d995` |
| 35 | `lemma` | [comp_jacobian_eq_jacobian_smul_jacobian](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/comp-jacobian-eq-jacobian-smul-jacobian.md) | 383 | `result-track:2c367e4adabc35d56772fa9ed8a44b0cb56cf402d60f8a51999b1736e739b4fe` |
| 36 | `def` | [baseChange](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/basechange-source-edition-2.md) | 408 | `declaration-track:d8d3f01b0f60775e2291825f98b8715276103593672ac81a258a780de8687939` |
| 37 | `lemma` | [baseChange_toPresentation](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/basechange-topresentation.md) | 413 | `result-track:73177b1b87b53f9019e848661ca1f0ca5b5934fd07ed15c2668d602b41dae47f` |
| 38 | `lemma` | [baseChange_ring](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/basechange-ring.md) | 417 | `result-track:e73c6bb9a84c606547e685e72b93ec4302a28a5eca8643fb974b28368d6ae462` |
| 39 | `lemma` | [baseChange_jacobian](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/basechange-jacobian.md) | 420 | `result-track:85f3152d5f12a747d37fa02a8452ba3c90ce2cc80f6eac230c2f05958f427db3` |
| 40 | `def` | [reindex](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/reindex-source-edition-2.md) | 439 | `declaration-track:ba656c52b172526e5ee13a08b23c41e787c2bb27e869e8bf5009ec3de1f27931` |
| 41 | `lemma` | [jacobiMatrix_reindex](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/jacobimatrix-reindex.md) | 448 | `result-track:8c214dbab57edc936d0ff0a35ac7045b20189791786c556e4b2ba2845d8b91bf` |
| 42 | `lemma` | [jacobian_reindex](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/jacobian-reindex.md) | 457 | `result-track:addbcb6572507b9d0ecc828f3516ef0fc305958d805385599a6c35c97da63095` |
| 43 | `def` | [naive](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/naive.md) | 486 | `declaration-track:828a435ea2918d419c733496f9fe74c663c40b0f58c3783a6bac60e38807ea51` |
| 44 | `lemma` | [jacobiMatrix_naive](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/jacobimatrix-naive.md) | 495 | `result-track:07a044f5cce5d6806ac2d89ebd6db500f211fdc804f34d01b5a71ad306515619` |
| 45 | `structure` | [SubmersivePresentation](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/submersivepresentation.md) | 511 | `declaration-track:25b4821688f6de8fa6da74e020f569942c315ecf53006c6e373be98a98d4bd70` |
| 46 | `def` | [ofAlgEquiv](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/ofalgequiv.md) | 523 | `declaration-track:2450690a56980aed759692f3eed65d8bfbddd8b4c1903767478fa64c8729958f` |
| 47 | `def` | [ofBijectiveAlgebraMap](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/ofbijectivealgebramap-source-edition-2.md) | 532 | `declaration-track:f7fb901dc44a6996b8d40a0e8e9cbafbd1ce8fc0442038b09fe9737afdb8d5ec` |
| 48 | `def` | [id](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/id.md) | 540 | `declaration-track:600d1d82bf041bc4c3317c8070d464967fde577c42a67428aa83deed73ea459c` |
| 49 | `def` | [mvPolynomial](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/mvpolynomial.md) | 545 | `declaration-track:621a045784ba06f4ed94f520d24b380720e6ece7e5467feca029187d96f4bc20` |
| 50 | `def` | [comp](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/comp.md) | 556 | `declaration-track:286d8ec6972589bad83348129829cd38cab7d3c24d74b0be78c6219ea1cedcde` |
| 51 | `def` | [localizationAway](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/localizationaway-source-edition-2.md) | 570 | `declaration-track:7ac4613979b785470cb72e678130fbf8904e8fbb4c5103ae8cc121eff1d79b20` |
| 52 | `def` | [baseChange](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/basechange.md) | 585 | `declaration-track:348ea5aedf84b8d2906465bb017a577f5e7c6e0f1cbbe8f72769e6a0ddcce740` |
| 53 | `def` | [reindex](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/reindex.md) | 597 | `declaration-track:278f251ccd341c88a16813ac49514e75adac9c603a2fe51d06bc8dc18943d747` |
| 54 | `def` | [ofSubsingleton](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/ofsubsingleton.md) | 605 | `declaration-track:8e2aeed1563a5bd40d7fa299d269db7a02acc0b00e70efcd4ccec2c2f66e8485` |
| 55 | `def` | [aevalDifferentialEquiv](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/aevaldifferentialequiv.md) | 622 | `declaration-track:e0eb5a8eb599e6f8daef81b6df3100c0d09fa004d6f12a8d1b5199aa590c163e` |
| 56 | `lemma` | [aevalDifferentialEquiv_apply](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/aevaldifferentialequiv-apply.md) | 636 | `result-track:181d0c9b414e4152fd17121a1b5d0e9d2385704fe5faf145f4e8482cbd862e3e` |
| 57 | `def` | [basisDeriv](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/basisderiv.md) | 642 | `declaration-track:e8c9d48dc27f506b4fe64f5398701b8faa71af75a06044c2a060dfa38d9ac1d7` |
| 58 | `lemma` | [basisDeriv_apply](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/basisderiv-apply.md) | 646 | `result-track:01d28e0029066774e4b9ff5aafc3a4691620fe77f7c4f6c0827e953985d8ce76` |
| 59 | `lemma` | [linearIndependent_aeval_val_pderiv_relation](../../../../CommutativeAlgebra/SubmersivePublic.lean/declarations/linearindependent-aeval-val-pderiv-relation.md) | 651 | `result-track:ea55302fa8874bddfca0b5ab078152303459703d783cff8e168c66a89399f37d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=687cf2a210a14460e7ba812383300f121c05432c8804654243407ad77bc7099f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Submersive/Variant12e045ba367a79b52812cdc5d2c14b784319865bcd86298b6947d2d707b6cbc6.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Submersive/Variant12e045ba367a79b52812cdc5d2c14b784319865bcd86298b6947d2d707b6cbc6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
