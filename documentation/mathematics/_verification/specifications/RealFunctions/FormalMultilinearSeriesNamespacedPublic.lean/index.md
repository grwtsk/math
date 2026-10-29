# Verification target: Formal Multilinear Series Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2d630d011a7d11eb9d43b6ee852b5d31bfb5e41",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/FormalMultilinearSeries/Variant5debe19eb70a374cfee29def2dff501e012c2e353e87277fcf6f73603ff33d2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/index.md) · [Full source](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2d630d011a7d11eb9d43b6ee852b5d31bfb5e41`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/FormalMultilinearSeries/Variant5debe19eb70a374cfee29def2dff501e012c2e353e87277fcf6f73603ff33d2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/FormalMultilinearSeries/Variant5debe19eb70a374cfee29def2dff501e012c2e353e87277fcf6f73603ff33d2f.lean.json)

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
| 1 | `def` | [FormalMultilinearSeries](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/formalmultilinearseries.md) | 56 | `declaration-track:a4a4ad2c6264eecdea541ade7fbe9d09389432066f86b479615619b0b9344fa4` |
| 2 | `instance` | [(anonymous)](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 64 | `declaration-track:4425090e43a09aed503e94e1e233874e4fcea5f4a047cb6c4857b2a8b764ade6` |
| 3 | `instance` | [(anonymous)](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 71 | `declaration-track:35019a6899efcd327451d72ceb4c70c506a700fc7a2ee019a78e1f205baa6caa` |
| 4 | `instance` | [(anonymous)](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 80 | `declaration-track:c9898b7dc00c943a475ecf162e0dd52efee520745fb1048904db1e816d331185` |
| 5 | `theorem` | [zero_apply](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/zero-apply.md) | 89 | `result-track:b66dde375d1136e310a1c7af0b31c1bb084b6d46debbc631a1c61c2538bdd9b1` |
| 6 | `theorem` | [add_apply](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/add-apply.md) | 92 | `result-track:cd503b4e9bfdd2edea1f44e3940b4d06a348f5fdab7d7a0b2110dec6bc01ba7c` |
| 7 | `theorem` | [smul_apply](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/smul-apply.md) | 95 | `result-track:f312db84597645df3d51e1b58c4366907b1eab1496c84b2862a465b0eb010631` |
| 8 | `theorem` | [ext](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/ext.md) | 99 | `result-track:d6519d8c9c7cf7a8250a89e4b5fa12d24f786fa2445e16b136a761504fc3d37a` |
| 9 | `theorem` | [ne_iff](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/ne-iff.md) | 102 | `result-track:b5abd3984cf9a5fec3cafab330cf3df6f9812e03a337aa7d11ff6d46e50f015e` |
| 10 | `def` | [prod](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/prod.md) | 107 | `declaration-track:942e349d8b9f5be7ecd93eec07375ec5066d54295ac2e97fa7de80b1eba82f2b` |
| 11 | `def` | [pi](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/pi.md) | 113 | `declaration-track:50686c64fb96201dd886d7534a24a1a1e88fbb2a7bd234f550420f77a3810770` |
| 12 | `def` | [removeZero](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/removezero.md) | 121 | `declaration-track:d6a5f2b7648e7e704fb5bab29be49a3ccd33cd60d14b2d6b3dbfa7bbfa988fdd` |
| 13 | `theorem` | [removeZero_coeff_zero](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/removezero-coeff-zero.md) | 126 | `result-track:d9f2a31116b4ed59f967bfc5098b52213f8c23d5591df573a127b3a44cbc9147` |
| 14 | `theorem` | [removeZero_coeff_succ](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/removezero-coeff-succ.md) | 130 | `result-track:b97e0028f24de6541eff6844dbced9d39677e81b697558a7c16e27cfcd226961` |
| 15 | `theorem` | [removeZero_of_pos](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/removezero-of-pos.md) | 134 | `result-track:5fdd60e484169c6b5c3362596a67281c30acaa8e39b33bf08be343cb05870553` |
| 16 | `theorem` | [congr](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/congr.md) | 141 | `result-track:326a02806dcacc6548433d02f8bdb0ac1654d582a547f3f4fac3597ca64363a7` |
| 17 | `lemma` | [congr_zero](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/congr-zero.md) | 148 | `result-track:3455ed7f339618a726103dbfea5ffbd89734cbdadbb2c14f006f804062267a13` |
| 18 | `def` | [compContinuousLinearMap](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/compcontinuouslinearmap.md) | 154 | `declaration-track:9715d71b459c0349ce7c38e915710a5719a3edee7d83cdb708d221c2afbd7aa7` |
| 19 | `theorem` | [compContinuousLinearMap_apply](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/compcontinuouslinearmap-apply.md) | 158 | `result-track:4c21b931ffbe1319fb16e52de7ac503c0d7deab4904a659dd8b8bc3cdcd6d55c` |
| 20 | `theorem` | [compContinuousLinearMap_id](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/compcontinuouslinearmap-id.md) | 163 | `result-track:dde65d964cdf60a1b0fcbafdb42426d1bbf6bd498f3b1ab93825658b7636c89e` |
| 21 | `theorem` | [compContinuousLinearMap_comp](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/compcontinuouslinearmap-comp.md) | 167 | `result-track:6c592b7a427121b4d211eaf96a766dad8153dc90923f17623b4577bfe2dfac9e` |
| 22 | `def` | [restrictScalars](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/restrictscalars.md) | 179 | `declaration-track:9ce19f8ac5973ee4946e3c3ce05dc954a990aa8527bd48f99e0d295af7d9df23` |
| 23 | `instance` | [(anonymous)](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/instance.md) | 191 | `declaration-track:1ef5921699e8498a2968102dbdb78e40a6e9cd24f8bc3cb00d1b37bbb68a853d` |
| 24 | `theorem` | [neg_apply](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/neg-apply.md) | 195 | `result-track:bb6c652cfa6474bc97517de1883a5fd1a4c23d735e82f8c0a023e62d6b0d76cb` |
| 25 | `theorem` | [sub_apply](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/sub-apply.md) | 198 | `result-track:17d5f19d482231fc11f10c316acc4deb2f4cb973c7ad27a9803a08cef047a305` |
| 26 | `def` | [shift](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/shift.md) | 214 | `declaration-track:292aa8cf8ef39597b29fb9de427316df6a0da803255112608d16cfbb7531e199` |
| 27 | `def` | [unshift](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/unshift.md) | 219 | `declaration-track:067e36f9879c89bd524fe214b9e9233a81235604b8c05003a2090bf9c9bfab43` |
| 28 | `theorem` | [unshift_shift](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/unshift-shift.md) | 223 | `result-track:8fcbe9b3a6d78cc735755657516327c8b99cc23fcaf46a6bec39d46cff8f7c71` |
| 29 | `def` | [compFormalMultilinearSeries](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/compformalmultilinearseries.md) | 243 | `declaration-track:b02d22f1fd16c7024417e9504b62e816837bd19ef82ef47f6888fa01c63734d7` |
| 30 | `theorem` | [compFormalMultilinearSeries_apply](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/compformalmultilinearseries-apply-source-edition-2.md) | 247 | `result-track:d5c03ffef7570b0ecfe6b9a01a1e973a7568e4d5f5d1372bbf66fb6a10161834` |
| 31 | `theorem` | [compFormalMultilinearSeries_apply'](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/compformalmultilinearseries-apply.md) | 251 | `result-track:2737799debd5047a13f5b6e198eb39f772a621e39223b5c5628c99294005e282` |
| 32 | `def` | [toFormalMultilinearSeries](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/toformalmultilinearseries.md) | 265 | `declaration-track:3c551208de7f80eab10f7bc59a224eddca24d0f5f1670673f9b1fb23458d7458` |
| 33 | `def` | [order](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/order.md) | 286 | `declaration-track:1ffc8d92cde8ea1c3bd3481cdc5c1372349a64d399bf8aac1ae7d3be392d73c3` |
| 34 | `theorem` | [order_zero](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/order-zero.md) | 290 | `result-track:95e764146938ffcc9576003c12199d0bd45835184b033a00bad346ab24a612a1` |
| 35 | `theorem` | [ne_zero_of_order_ne_zero](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/ne-zero-of-order-ne-zero.md) | 292 | `result-track:183e07491065a99cc5e0a08f88956ffbaa4b214fe8ca7a82d3aa775fc3d1c2df` |
| 36 | `theorem` | [order_eq_find](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/order-eq-find.md) | 294 | `result-track:9ce483c8328450354ca285263f7a7ca7a1533ba24ddd5e3b2c692e60b57d8158` |
| 37 | `theorem` | [order_eq_find'](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/order-eq-find-source-edition-2.md) | 297 | `result-track:bc493ac946926b0eaf0ef94bc167438bf0172bb9ad4bbd4eae3c6df82106b1a1` |
| 38 | `theorem` | [order_eq_zero_iff'](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/order-eq-zero-iff-source-edition-2.md) | 301 | `result-track:fa605de91ef1a7a4177c92ead7e26d51a4036dd924a9cb8361bb6a9dabe41aaa` |
| 39 | `theorem` | [order_eq_zero_iff](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/order-eq-zero-iff.md) | 305 | `result-track:835fdb7227474eba40f8098dbfab1896e3f63cfcb20bf6d0d9245599026b18e4` |
| 40 | `theorem` | [apply_order_ne_zero](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/apply-order-ne-zero.md) | 308 | `result-track:a01841c20a10354b7e61a421f4899278851a2b9aa2730084f9e5f8086616e41e` |
| 41 | `theorem` | [apply_order_ne_zero'](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/apply-order-ne-zero-source-edition-2.md) | 311 | `result-track:d108bfb3ea8bb3269adb113b08c3527db5acfe95326585160ebd2513af7d04b0` |
| 42 | `theorem` | [apply_eq_zero_of_lt_order](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/apply-eq-zero-of-lt-order.md) | 314 | `result-track:a24ead5c1894051bc5017330b35c4d55058a0a59a34e1cc117a5f138aaffb900` |
| 43 | `def` | [coeff](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/coeff.md) | 325 | `declaration-track:169b94ebe1cc315ae77ae25fa08dfc36e63125169076929fdd47e6d79e73d166` |
| 44 | `theorem` | [mkPiRing_coeff_eq](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/mkpiring-coeff-eq.md) | 328 | `result-track:5b2a044ab5a7041cbe9797d3231c5e703a0d9872001ca789462cbfbf679c3723` |
| 45 | `theorem` | [apply_eq_prod_smul_coeff](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/apply-eq-prod-smul-coeff.md) | 333 | `result-track:689440a5a1bc66ba964e24a0a1ea8d64503b4750f2019d447a0518490af654ca` |
| 46 | `theorem` | [coeff_eq_zero](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/coeff-eq-zero.md) | 337 | `result-track:0492f74ce33c90e59a1cd16af1ce902402d078e236ad50bc889511c58fe6c69d` |
| 47 | `theorem` | [apply_eq_pow_smul_coeff](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/apply-eq-pow-smul-coeff.md) | 340 | `result-track:2cab83fe30d224b53f42a0a9329b5b8e5cf0f9971a172a1e5ea4a1e3298c4b6c` |
| 48 | `theorem` | [norm_apply_eq_norm_coef](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/norm-apply-eq-norm-coef.md) | 343 | `result-track:d624a4d40f80ce786f798469fea76cc271082f5ce1588622f93f476600e05528` |
| 49 | `def` | [fslope](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/fslope.md) | 355 | `declaration-track:dae98aae9cba27e82fbc28e013f15e2e4bd3dbecb66ff367d8d7ca7846e0bd71` |
| 50 | `theorem` | [coeff_fslope](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/coeff-fslope.md) | 359 | `result-track:0bb5fbfadf006f19d7c304d3b8c3bc04225235a9812319237c135f03b30ef8db` |
| 51 | `theorem` | [coeff_iterate_fslope](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/coeff-iterate-fslope.md) | 365 | `result-track:06259489f38a5d77f6f828ead49ee57700ec39f833171bd65d68fbb9e19a554d` |
| 52 | `def` | [constFormalMultilinearSeries](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/constformalmultilinearseries.md) | 379 | `declaration-track:cbbf021c41b1483dcaab4665716ff8869d78da7234fbf7a7ca8bc8b89e3adb04` |
| 53 | `theorem` | [constFormalMultilinearSeries_apply_zero](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/constformalmultilinearseries-apply-zero.md) | 387 | `result-track:89ad35c4f5c3d779bff69dcc5dffd1d01d42bfc3c57ed095436a9e89bd6d9a72` |
| 54 | `theorem` | [constFormalMultilinearSeries_apply_succ](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/constformalmultilinearseries-apply-succ.md) | 393 | `result-track:9fa43bd60a5a54ddc5e6729de6c61c069061115d93389ffbde495af5c9455745` |
| 55 | `theorem` | [constFormalMultilinearSeries_apply_of_nonzero](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/constformalmultilinearseries-apply-of-nonzero.md) | 398 | `result-track:8d57b5996907a50ffc556575da75b800c1b22137fd7baec312cd6168b444786b` |
| 56 | `lemma` | [constFormalMultilinearSeries_zero](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/constformalmultilinearseries-zero.md) | 404 | `result-track:b68fedaf0be955716055b65eb69a91d8160f33afc12131d4b42f2b86406b96d1` |
| 57 | `lemma` | [compContinuousLinearMap_zero](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/compcontinuouslinearmap-zero.md) | 411 | `result-track:3a8894c1ae837e8bb81e60f65da92b97ca95873d5d433668ad47908abec7fa82` |
| 58 | `def` | [fpowerSeries](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/fpowerseries.md) | 439 | `declaration-track:265f6534bbce220b6053df330becb74bd97329915e7788af9328a9e2e44aa3f8` |
| 59 | `theorem` | [fpowerSeries_apply_zero](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/fpowerseries-apply-zero.md) | 445 | `result-track:9876db9ef312ec3ced5c5f8db0925e6d696bdb789d3120984668fde33d54829c` |
| 60 | `theorem` | [fpowerSeries_apply_one](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/fpowerseries-apply-one.md) | 450 | `result-track:e9202a976c34ce47054cb2aa421c58b0a832cb0e71900f0f27e952476caaeec5` |
| 61 | `theorem` | [fpowerSeries_apply_add_two](../../../../RealFunctions/FormalMultilinearSeriesNamespacedPublic.lean/declarations/fpowerseries-apply-add-two.md) | 455 | `result-track:8a89590d9095b0c2db27525b1e8924ebb0fb15b42fd861aa99b7e561b81a239e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf0f140fad3ef324993a3cf8969d596ee7c80c2d40750df5283b957f6d2abe1d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/FormalMultilinearSeries/Variant5debe19eb70a374cfee29def2dff501e012c2e353e87277fcf6f73603ff33d2f.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/FormalMultilinearSeries/Variant5debe19eb70a374cfee29def2dff501e012c2e353e87277fcf6f73603ff33d2f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
