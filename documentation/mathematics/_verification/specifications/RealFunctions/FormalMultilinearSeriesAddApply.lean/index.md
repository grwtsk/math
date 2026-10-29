# Verification target: Formal Multilinear Series Add Apply

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af68052e1ba0514a9c88a9797fef131f9c5d5a31",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/index.md) · [Full source](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af68052e1ba0514a9c88a9797fef131f9c5d5a31`.

Source path: `GRWTSK/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Multilinear.Curry` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FormalMultilinearSeries](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/formalmultilinearseries.md) | 43 | `declaration-track:d6bc98fbe74321d470037f738bc3ef77ba0afaed42b972c95fc922eeef4d4cc7` |
| 2 | `instance` | [(anonymous)](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/instance-source-edition-2.md) | 51 | `declaration-track:cee5010268723920d53bf73bcd86769b2e3e085df23e833b3a2fffa01434b5d3` |
| 3 | `instance` | [(anonymous)](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/instance-source-edition-3.md) | 54 | `declaration-track:d16910c8997189f01c004b9581aff28debcdad52b54ca3e234665423afc91e74` |
| 4 | `instance` | [(anonymous)](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/instance-source-edition-4.md) | 59 | `declaration-track:e7e1daf57ab2874a4125cd6ee23ef8ddde43602eb4bfc8542f17d808dd4d2949` |
| 5 | `theorem` | [zero_apply](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/zero-apply.md) | 68 | `result-track:f8425626e8166010f92a51c45dae85119704f1853b06739e6a2b365d5d190587` |
| 6 | `theorem` | [add_apply](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/add-apply.md) | 71 | `result-track:622fa14a321c6a8dbf1d131e6a2845b0ee57a313c3d6f239c5eb2d3749471726` |
| 7 | `theorem` | [smul_apply](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/smul-apply.md) | 74 | `result-track:b9efee1f319cca422911315db68032d84c8adb3b42acbc519ed661527f78450e` |
| 8 | `theorem` | [ext](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/ext.md) | 78 | `result-track:7629b01de991d900d653be0ee373f7517cb747817c3952767f278c8ecebcba4c` |
| 9 | `theorem` | [ne_iff](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/ne-iff.md) | 81 | `result-track:c2d3d83acdbc071d0fb02fd06aabf655a3c1e5175a2b2d8dbdac9e90e488612d` |
| 10 | `def` | [prod](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/prod.md) | 86 | `declaration-track:30908253c7c891ff3eb9a7e87fa238bad0ee0de6f7c0ea2b2f3898aeacea51fa` |
| 11 | `def` | [pi](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/pi.md) | 92 | `declaration-track:579dde11df29ad05da752675d2be5f5c9b5915a65ff907e37aff86bb29f9a2b0` |
| 12 | `def` | [removeZero](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/removezero.md) | 100 | `declaration-track:32a4dea0b48bc57259e3c0f390aae037c52d6f0a11d3761f0541d5867a1cd665` |
| 13 | `theorem` | [removeZero_coeff_zero](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/removezero-coeff-zero.md) | 105 | `result-track:82d9cee95ce8ce89033659476fe7b86c193677c5e3db2360e1a72a1433f6b7b9` |
| 14 | `theorem` | [removeZero_coeff_succ](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/removezero-coeff-succ.md) | 109 | `result-track:1db5e809ea405e22c83bc0b867fdb3d7af3c1d3028ca38d30efbf4f35cf228f4` |
| 15 | `theorem` | [removeZero_of_pos](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/removezero-of-pos.md) | 113 | `result-track:db4fc3e6fb8ab70ce6e2258c197ff82d9ee3585c4e1b6dc4758a2a218260b475` |
| 16 | `theorem` | [congr](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/congr.md) | 120 | `result-track:cd10acae899baa303b0f02b37af390cf756479e241af3478fdc7f80225215d28` |
| 17 | `lemma` | [congr_zero](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/congr-zero.md) | 127 | `result-track:dc7e01ad9fd0b7cba8d74041d12abdfc517cedd9d5b46d5d49119182ca5281c9` |
| 18 | `def` | [compContinuousLinearMap](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/compcontinuouslinearmap.md) | 133 | `declaration-track:a9ac44b6bbe922e0abb01c32cf1590967720721c8ca6b1ca5702fc7a41022bf9` |
| 19 | `theorem` | [compContinuousLinearMap_apply](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/compcontinuouslinearmap-apply.md) | 137 | `result-track:f2ab5d4dc45fa5092fe1ef6e342061bd81aca9b4ba499af52e4a957a09c6f1f6` |
| 20 | `def` | [restrictScalars](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/restrictscalars.md) | 147 | `declaration-track:9df2dd51b115bcce53ae25f1d1b67329f4a9eb5fd95d65f48997ab227d05a597` |
| 21 | `instance` | [(anonymous)](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/instance.md) | 159 | `declaration-track:75a1a4a7f56073989a8a40145be4cecc10a882330602ef523880af3ea0b04bd0` |
| 22 | `theorem` | [neg_apply](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/neg-apply.md) | 163 | `result-track:6986022cbf2ecb69046a3c542c84417001d24a41a9ba1b7d70eda131180e71dd` |
| 23 | `theorem` | [sub_apply](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/sub-apply.md) | 166 | `result-track:5ee3d6968831e922852ba8df0ee97247efe81821a69715ca52f560d3d4f1b9f9` |
| 24 | `def` | [shift](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/shift.md) | 182 | `declaration-track:f74a93ae9f22ebba29e9e5a38db3cc9fe95ace68b3e59ffefe23770bdf0ca99b` |
| 25 | `def` | [unshift](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/unshift.md) | 187 | `declaration-track:d4e0911cb57371e1154d6cbcf55deeecc604047bb89876dacbf15b33f55bd19e` |
| 26 | `theorem` | [unshift_shift](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/unshift-shift.md) | 191 | `result-track:35dc488c178604c134159b6825108637dffa36d76bf4ec3da70d63319d47a54c` |
| 27 | `def` | [compFormalMultilinearSeries](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/compformalmultilinearseries.md) | 211 | `declaration-track:c08f27e63bc82040c7ba843bf7ab2944767e45038844dee7041432cfcb13be02` |
| 28 | `theorem` | [compFormalMultilinearSeries_apply](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/compformalmultilinearseries-apply-source-edition-2.md) | 215 | `result-track:af94ff0eb1d4b8d4b7164fea4a84209a660fc5ed3d0b07a75fe18a8531eab8b2` |
| 29 | `theorem` | [compFormalMultilinearSeries_apply'](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/compformalmultilinearseries-apply.md) | 219 | `result-track:0259f7856476d98a31afb253f6c8a984d7ba5bc0dccb0eec9c4ba57af3a65597` |
| 30 | `def` | [toFormalMultilinearSeries](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/toformalmultilinearseries.md) | 233 | `declaration-track:06bb3ec0030730733dffc1e626b314b33fb190fec44979a84362d7147f3785af` |
| 31 | `def` | [order](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/order.md) | 254 | `declaration-track:a3f549b3c31f6ebfbaa2985aa1ec051bd8348c4e842f6c11c092cccdecd93018` |
| 32 | `theorem` | [order_zero](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/order-zero.md) | 258 | `result-track:3a979d996e6ff8e24d2f4215c13dbbc04616b701edeef1f2b1c7304e7dbc62dd` |
| 33 | `theorem` | [ne_zero_of_order_ne_zero](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/ne-zero-of-order-ne-zero.md) | 260 | `result-track:f130a9887c61b7b5d478360f84f272b397ab5eec2c698125e2c34d5c297a6bee` |
| 34 | `theorem` | [order_eq_find](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/order-eq-find.md) | 262 | `result-track:18ddd1e6b9a03fba805263df5b6fac06e7068686dead2346f6ab02689a501fc7` |
| 35 | `theorem` | [order_eq_find'](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/order-eq-find-source-edition-2.md) | 265 | `result-track:876cdc46614b38461937a5b0bf0da2f19b5b56cbe50a6e68197b3ab6e488ae9c` |
| 36 | `theorem` | [order_eq_zero_iff'](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/order-eq-zero-iff.md) | 269 | `result-track:06bce644c3eba6e56e5540bd53d30b823329a324638029427d71e868feede2ce` |
| 37 | `theorem` | [order_eq_zero_iff](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/order-eq-zero-iff-source-edition-2.md) | 273 | `result-track:8c8d7ed04905f09631a8b1dabfb263714fe93bc03070d91f8496955241432a02` |
| 38 | `theorem` | [apply_order_ne_zero](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/apply-order-ne-zero.md) | 276 | `result-track:2a628a5e677d12c2f039628cc2858f1cc3e12bfc0717a9dd48f4a5c6e1157387` |
| 39 | `theorem` | [apply_order_ne_zero'](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/apply-order-ne-zero-source-edition-2.md) | 279 | `result-track:bf8f21ed78c0f2835b9d1eb82d96bbdaf92e9ac576eb2643d7ca7447c1750024` |
| 40 | `theorem` | [apply_eq_zero_of_lt_order](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/apply-eq-zero-of-lt-order.md) | 282 | `result-track:77e4bbdd37da30e6be92c758ad2d81378a8e574ff7fa709cff7c5d557cdc0d2d` |
| 41 | `def` | [coeff](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/coeff.md) | 293 | `declaration-track:7c77fa755cb04bc0c3cb9d6450030a6475b53e7165c0a032b22efb634d5eb508` |
| 42 | `theorem` | [mkPiRing_coeff_eq](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/mkpiring-coeff-eq.md) | 296 | `result-track:f78e367a37cddee605cc8b180203410bf515cb96ae872721340396038c002851` |
| 43 | `theorem` | [apply_eq_prod_smul_coeff](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/apply-eq-prod-smul-coeff.md) | 301 | `result-track:79d7e3c5a512ff82a5488d8d5bcbc7721be37f0f5c0bb608d385542297fa9b08` |
| 44 | `theorem` | [coeff_eq_zero](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/coeff-eq-zero.md) | 305 | `result-track:f5a4cb3d6be2a8d3af06863bc41e10c4a8fa1cba17281e493c755e262ba69705` |
| 45 | `theorem` | [apply_eq_pow_smul_coeff](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/apply-eq-pow-smul-coeff.md) | 308 | `result-track:b24942c150abe2c8c3e2eb89a5f7249f84bf96161ddda5fbbcc6e4ba54d928b0` |
| 46 | `theorem` | [norm_apply_eq_norm_coef](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/norm-apply-eq-norm-coef.md) | 311 | `result-track:f4080087b1316e3a0c88a8aa419b7461530f4763466c7c3850ce7da8a23f2906` |
| 47 | `def` | [fslope](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/fslope.md) | 323 | `declaration-track:11343330e6b79a3053d526838f2dfc63d306f4df4d23fbfc44f4b3866ab2d070` |
| 48 | `theorem` | [coeff_fslope](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/coeff-fslope.md) | 327 | `result-track:fd4e2e31bb70291705dae03ba8f1522c0a7f42dd68306fb9a6c2a84d4ec46d5d` |
| 49 | `theorem` | [coeff_iterate_fslope](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/coeff-iterate-fslope.md) | 333 | `result-track:eeefc8d09b4cc989b40ceb239ef38931f55c0291798aa2561121a64edf878cb3` |
| 50 | `def` | [constFormalMultilinearSeries](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/constformalmultilinearseries.md) | 347 | `declaration-track:80ebb19e54997e6dcdc918e145ad97b192aef3908702610e48dcf4268bbeb0d1` |
| 51 | `theorem` | [constFormalMultilinearSeries_apply](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/constformalmultilinearseries-apply.md) | 355 | `result-track:f228819a5db46b1e7c7f91669208aba01587b57f52bdf0df2609019e1dc9e10e` |
| 52 | `lemma` | [constFormalMultilinearSeries_zero](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/constformalmultilinearseries-zero.md) | 361 | `result-track:78e23ddddc75ef8ff86e0bbe4c8424e93bba07f61ff8d07144881900cd35cc57` |
| 53 | `def` | [fpowerSeries](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/fpowerseries.md) | 383 | `declaration-track:98588c32e13b2a0feab5b692bd8853687883250155fc778fb7468b9e02be9959` |
| 54 | `theorem` | [fpowerSeries_apply_zero](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/fpowerseries-apply-zero.md) | 389 | `result-track:0010ae429fc5fa8a3193111b2f2e61aa13d103781d42ef71dacc2fe49951b43d` |
| 55 | `theorem` | [fpowerSeries_apply_one](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/fpowerseries-apply-one.md) | 394 | `result-track:72ce96b9d574a77cf5569ad48341554715f6f923986af1ef308cd59a324313d4` |
| 56 | `theorem` | [fpowerSeries_apply_add_two](../../../../RealFunctions/FormalMultilinearSeriesAddApply.lean/declarations/fpowerseries-apply-add-two.md) | 399 | `result-track:4318281ddd02061a4498c6a298aac937314d66d150be34d0f123ad8894c246b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f725391f73690109904b725901355169c8df3f127b349325da88729d427d23e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean","GRWTSK/_verification/specifications/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
