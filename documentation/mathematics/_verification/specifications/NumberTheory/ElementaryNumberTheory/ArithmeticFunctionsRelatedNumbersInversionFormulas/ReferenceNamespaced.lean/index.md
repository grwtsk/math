# Verification target: Reference Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6e045884df9203c1f495c87f420c4a07a55f6ee",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Reference29/Variantf867fec88ac9ed82fc3a120b2e1a5555f679827c3e51fba593cd62fb68676d20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6e045884df9203c1f495c87f420c4a07a55f6ee`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Reference29/Variantf867fec88ac9ed82fc3a120b2e1a5555f679827c3e51fba593cd62fb68676d20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Reference29/Variantf867fec88ac9ed82fc3a120b2e1a5555f679827c3e51fba593cd62fb68676d20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceJointMangoldtWork` — import line 6; external provider; requires a separately pinned dependency.
- `SourceMixedCurvatureCross` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [errorExp](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/errorexp.md) | 50 | `declaration-track:7ca9ee4dffddfc5479a616ab5c3a7f3fd1a6b5818e138d6a9f8dbdbe3b2afaf5` |
| 2 | `def` | [cellKernel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/cellkernel.md) | 53 | `declaration-track:b99982ba0f3086a1db589191ace220ba013fe74f23c57b6f82e25fe16555d0b9` |
| 3 | `theorem` | [errorExp_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/errorexp-intervalintegrable.md) | 58 | `result-track:8ee7f0a876f8222b3ae9e252913d164cb085d2288352227865412f251739d9c7` |
| 4 | `theorem` | [source_tsupport_subset](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/source-tsupport-subset.md) | 73 | `result-track:b2fe4c81feb68059fc6674bfe3fb99211bad13a62f715e8bf36f908459c18b21` |
| 5 | `theorem` | [deriv_source_tsupport_subset](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/deriv-source-tsupport-subset.md) | 88 | `result-track:2962bc7ce04c346ad7ab815c4d238cfc2ab52813128c72b39e9faf07636025f3` |
| 6 | `theorem` | [row_vanishes_outside_time_box](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/row-vanishes-outside-time-box.md) | 92 | `result-track:666c5a94cbe06d91c7a4bb40658c4244d626a699fbe91d468fd63200e9a2c4d1` |
| 7 | `theorem` | [cellKernel_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/cellkernel-integrable.md) | 101 | `result-track:2352c0dd071dbebf9c62ccabfa310d35571f8201cce5f5822d75e53df21b66c2` |
| 8 | `theorem` | [cell_fubini_factorization](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/cell-fubini-factorization.md) | 171 | `result-track:f269d75ac4b92558ee81843e5dbe04a3194563dd50c2710bf1f277eda124b4ca` |
| 9 | `theorem` | [actual_source_cell_factorization](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/actual-source-cell-factorization.md) | 197 | `result-track:a6d1b5c63380e2e12b2620820cca330606ad371cc1c09b4defb29a522202ba54` |
| 10 | `theorem` | [actual_deriv_source_cell_factorization](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/actual-deriv-source-cell-factorization.md) | 210 | `result-track:b3a1b8bd067a9a9dd3039feaf95dc22db92bc8eeeb0295a89966240740941c73` |
| 11 | `theorem` | [reflected_mixed_kernel_eq_negative_products](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/reflected-mixed-kernel-eq-negative-products.md) | 224 | `result-track:1bd74e21b1c49771f87ba58c8cd610ab36bb11b7d1d48749ab5c8698b6373cdb` |
| 12 | `def` | [sourceColumn](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/sourcecolumn.md) | 238 | `declaration-track:f58be0a55faa5f10baf364df065e173c081599d0e856edfc09607d4bf611f5e1` |
| 13 | `def` | [sourceColumnTimeDeriv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/sourcecolumntimederiv.md) | 242 | `declaration-track:7cef7ff4e5deac6bdd8810a88a1fc75d72cdbbb17ca5d477920771ce65fced14` |
| 14 | `def` | [mixedDensity](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/mixeddensity.md) | 247 | `declaration-track:0bf6cb9ef65b4ea76b0ed62344a2710f167e818e8059a64f5ecb434742f704a2` |
| 15 | `def` | [cellInner](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/cellinner.md) | 252 | `declaration-track:815385fd2ea2b767f208fb4e2c6a87fb4e57e2b9f174b26f38f806c422b051ed` |
| 16 | `def` | [profileX](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/profilex.md) | 256 | `declaration-track:0386735a26444ce6151f4799fda74f8419be0b3aed3a4237ab03a71076c1b449` |
| 17 | `def` | [profileYCell](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/profileycell.md) | 260 | `declaration-track:da7907fdea5526dab85b4a9540d422cf21ad967824721518642ec957a0ff134d` |
| 18 | `theorem` | [profileX_integrand_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/profilex-integrand-intervalintegrable.md) | 264 | `result-track:7edccab766d05eede4c3e9d0c44ebeda30750ed934c8eb88ccef1f1000486782` |
| 19 | `theorem` | [profileYCell_integrand_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/profileycell-integrand-intervalintegrable.md) | 270 | `result-track:3805f9ea21e3ddd8c57194dc3021474760d135962a4db1e882c441e1f1da58ca` |
| 20 | `theorem` | [sourceColumn_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/sourcecolumn-hasderivat.md) | 285 | `result-track:350fe823507ef2d76db75937d8aac13f5825e430dd44cf34841158f8aff9c01e` |
| 21 | `theorem` | [column_derivative_algebra](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/column-derivative-algebra.md) | 295 | `result-track:32e3bd0f29672404080ace7d494d824fabb214154bc80a04633ce96216422f18` |
| 22 | `theorem` | [sourceColumnTimeDeriv_hasDerivAt_u](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/sourcecolumntimederiv-hasderivat-u.md) | 304 | `result-track:7d8cc101cb8956d43a5d376a853c6c311baad3f9562e8ae4580ecc5bb8053e57` |
| 23 | `theorem` | [mixedDensity_continuousOn_cell](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/mixeddensity-continuouson-cell.md) | 335 | `result-track:279f160edc762a990b622db4ae42ec88dcff73c915d752f622021a49c31e01be` |
| 24 | `theorem` | [sourceColumnTimeDeriv_sub_eq_neg_cell](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/sourcecolumntimederiv-sub-eq-neg-cell.md) | 351 | `result-track:023123a16e7a166880686257af53a5392c459391d6d72bc69015c73a3a0c03a9` |
| 25 | `theorem` | [source_products_eq_correlation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/source-products-eq-correlation.md) | 366 | `result-track:a9344c0f885dee122baffc389aca328cab5571aebd5879b23650550868ad3363` |
| 26 | `theorem` | [deriv_source_products_eq_neg_curvature](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/deriv-source-products-eq-neg-curvature.md) | 382 | `result-track:4c2a102760b5a834abb48d2b12ee119ddcbf339ef34faf99f76f0b86484de7ac` |
| 27 | `theorem` | [cellInner_eq_scalar_products](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/cellinner-eq-scalar-products.md) | 391 | `result-track:5479357be27337605b6ee5ffe9ae22bba242a221dd14ae2a2dc98d7806a58dd6` |
| 28 | `theorem` | [source_cellInner_intervalIntegrable_u](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/source-cellinner-intervalintegrable-u.md) | 401 | `result-track:a7f8ea3b6acbca10fb505e7e8a8fdfc38e77bb66a7a336dd49375507d6fe89bc` |
| 29 | `theorem` | [deriv_source_cellInner_intervalIntegrable_u](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/deriv-source-cellinner-intervalintegrable-u.md) | 423 | `result-track:5926c314207b6dfa54dee01baefc0b717bde53be41fd6aa6e91eff639010583b` |
| 30 | `theorem` | [error_column_difference_eq_two_cells](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/error-column-difference-eq-two-cells.md) | 446 | `result-track:63ce1f8cc0523cd5fd14940a76c21fbe56a89d532c021336daeaa43709851f47` |
| 31 | `theorem` | [cell_integral_intervalIntegrable_t](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/cell-integral-intervalintegrable-t.md) | 477 | `result-track:0d96943df39ed04553db6ae58d0fcb229df7210d46093d10a112ce183bd50472` |
| 32 | `theorem` | [profile_cell_product_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/profile-cell-product-integrable.md) | 489 | `result-track:3acdcbd13723e175c1c7065c241b935bb0765d74ae828f1b29050ae539d58c17` |
| 33 | `theorem` | [error_column_difference_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/error-column-difference-intervalintegrable.md) | 504 | `result-track:e8531aee45430c00b85d505a0251cb11e923debcabdbb8a9b45cecbf05ee4236` |
| 34 | `theorem` | [error_column_difference_integral_eq_profile_cells](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/error-column-difference-integral-eq-profile-cells.md) | 517 | `result-track:26e91863ebb528695cffc24fc41ca07868ff832b1867d408b93f361df88479d9` |
| 35 | `theorem` | [finite_profile_product_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/finite-profile-product-integral.md) | 545 | `result-track:d840ed376fb9ec84ca6e89c094863c76d8b1a7d3067b988cede8fe1d6b7e219b` |
| 36 | `theorem` | [finite_signed_column_work_factorization](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/finite-signed-column-work-factorization.md) | 566 | `result-track:1904b190c218e9a17c3938859b08f192b34888a081d0c06b6b4767a4f137e450` |
| 37 | `theorem` | [jointMangoldtErrorWork_eq_actual_bilinear_profiles](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/jointmangoldterrorwork-eq-actual-bilinear-profiles.md) | 618 | `result-track:0804ad9840144db4b148e18bf93699cf206a76e4aeb3730765c93639464acef7` |
| 38 | `def` | [actualTimeProfile](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/actualtimeprofile.md) | 674 | `declaration-track:5c2bc2a38f38f5ade681f50c2469ff11ee75e46b77a35dbf1137e3d5a48d8975` |
| 39 | `def` | [actualReflectedProfile](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/actualreflectedprofile.md) | 679 | `declaration-track:061628de0c6212a3dbddbb4985794378874216e5c747250a4d61aae9da54951b` |
| 40 | `def` | [actualMixedWorkDensity](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/actualmixedworkdensity.md) | 688 | `declaration-track:9bc663d36482c00af2de88e010fa4d977a99e3e9f842c2dc924c03f8633e306a` |
| 41 | `def` | [actualWorkWindow](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/actualworkwindow.md) | 695 | `declaration-track:24f9e7db4c4162b9733dc96de170c7ba4bc66931c1d6b136cb94568b4f333fd4` |
| 42 | `def` | [discreteOverlapWindow](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/discreteoverlapwindow.md) | 700 | `declaration-track:349e4a9d878eda66037af4b0a293daff8876fc447f6107304f4a8a1eddc26e67` |
| 43 | `def` | [actualWorkLeftStrip](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/actualworkleftstrip.md) | 705 | `declaration-track:e9dc289308a190c4a925e32daeda91dbaa29a8073d1ab849c0343a0d9a743e61` |
| 44 | `theorem` | [actual_cutoff_log_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/actual-cutoff-log-le.md) | 708 | `result-track:941c91722f9ef9261992b3486a617d797301351d19138446c1d5bb0d5e852fd2` |
| 45 | `theorem` | [profileX_zero_of_lt_lower](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/profilex-zero-of-lt-lower.md) | 714 | `result-track:9f57d1377b4a31d828891c32aaa99c5b371fa0bb02a9db62907456f75c170e36` |
| 46 | `theorem` | [profileYCell_zero_of_lt_right](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/profileycell-zero-of-lt-right.md) | 727 | `result-track:86fbf9c972554a9310e9950d980c6134ea5f5d5636dea137ae62af79bf98e035` |
| 47 | `theorem` | [actual_profile_product_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/actual-profile-product-integrable.md) | 742 | `result-track:3d676e6a14e1e0203bfff8cb641e7ffe97ce3643c6c384f18bcee4c8260598e4` |
| 48 | `theorem` | [actual_profile_product_zero_outside_window](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/actual-profile-product-zero-outside-window.md) | 770 | `result-track:2b719a6f04b1ca35a47b511e7ffbca2dce67bbe4a6495d4a8dca58a09bc45e8d` |
| 49 | `theorem` | [actualMixedWorkDensity_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/actualmixedworkdensity-integrable.md) | 794 | `result-track:9d140e9d4359196cecef15d8d5611f0ab42d1029fda08bfa6795834d00a50614` |
| 50 | `theorem` | [jointMangoldtErrorWork_eq_actual_density](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/jointmangoldterrorwork-eq-actual-density.md) | 804 | `result-track:4b6b97b673d9df5159affc3b444df1d2af5256901121c1e26290712fb9037849` |
| 51 | `theorem` | [actualMixedWorkDensity_zero_outside_window](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/actualmixedworkdensity-zero-outside-window.md) | 824 | `result-track:38fe133f27e88cfa74a326f34a78f534216e1d745ab32b12c3abc6016b50f035` |
| 52 | `theorem` | [jointMangoldtErrorWork_eq_actual_window_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/jointmangoldterrorwork-eq-actual-window-integral.md) | 833 | `result-track:a31c1e4ede2374b27525bb0be4a0352593cff83f999e8893991f6d5b62a73dbe` |
| 53 | `theorem` | [discreteOverlapWindow_subset_actualWorkWindow](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/discreteoverlapwindow-subset-actualworkwindow.md) | 841 | `result-track:637f3c72c6d722934131497d45936aefbbd3f03ebc81bd3b7bbd0bdd8835b884` |
| 54 | `theorem` | [actualWorkLeftStrip_eq_Ico_inter](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/actualworkleftstrip-eq-ico-inter.md) | 852 | `result-track:7663ce270d4bc0df1b58c9c77dddd70f1f094ec616f1dd51e0a30bf994935c3b` |
| 55 | `theorem` | [jointMangoldtErrorWork_eq_overlap_add_leftStrip](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/jointmangoldterrorwork-eq-overlap-add-leftstrip.md) | 869 | `result-track:b7fdf1aa65f398d9003a4d26eec2fbfcc72b9066ca5fc579002d7c5bdf92f1ef` |
| 56 | `theorem` | [strictColumnInterior_eq_baseline_sub_localized_work](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/strictcolumninterior-eq-baseline-sub-localized-work.md) | 883 | `result-track:34204341060262f012d4509f6385ff684024aadb4d00134849cdc134a3589d07` |
| 57 | `theorem` | [covariance_sub_main_eq_localized_work_with_endpoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReferenceNamespaced.lean/declarations/covariance-sub-main-eq-localized-work-with-endpoint.md) | 898 | `result-track:e30483a324f8cf6e9fc87245288d5f5540ce1237f78b02698940becf18a3280b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cba51de1e1ed0d6e145d4e234725e6c989a4ae9000adc6561c58eabb8d726d76 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Reference29/Variantf867fec88ac9ed82fc3a120b2e1a5555f679827c3e51fba593cd62fb68676d20.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Reference29/Variantf867fec88ac9ed82fc3a120b2e1a5555f679827c3e51fba593cd62fb68676d20.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
