# Verification target: Fejer IKnow This Is Dirty But It Typechecks Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05981873a9aec6e28dbb56a9d9fb76c5e5eaa1c4",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variante62c61fe6b322e5b90dfbf186262620355e4fc399e37a0d2595af7e2bcf9ed74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05981873a9aec6e28dbb56a9d9fb76c5e5eaa1c4`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variante62c61fe6b322e5b90dfbf186262620355e4fc399e37a0d2595af7e2bcf9ed74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variante62c61fe6b322e5b90dfbf186262620355e4fc399e37a0d2595af7e2bcf9ed74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 35; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hardy_s](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/hardy-s.md) | 61 | `declaration-track:63e731c90a74e5f739ea97e90482cc5fdcd07a0b6625cae1b7655c0877c0d15f` |
| 2 | `def` | [hardy_sigma](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/hardy-sigma.md) | 66 | `declaration-track:5c7b3a3ca2ed689424d99a681c7f954ec8732d7ed5da0f3a67e38d8247902e08` |
| 3 | `def` | [hardy_sigma_delayed](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/hardy-sigma-delayed.md) | 71 | `declaration-track:6e1ce74a1769c0e322fea1b6192ef66954b07f0d2d9660722b87b778622ffc5f` |
| 4 | `theorem` | [hardy_sigma_delayed_eq](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/hardy-sigma-delayed-eq.md) | 76 | `result-track:c701cc0af4409c8871b9cda20e80f08fbdf021e00a9974d519135d388d340c0f` |
| 5 | `theorem` | [hardy_sigma_delayed_tendsto](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/hardy-sigma-delayed-tendsto.md) | 91 | `result-track:356d3f05e11559a65fc9244b1c8cf7f9afa39ba4b36a404a3222c989d826380b` |
| 6 | `theorem` | [hardy_sigma_delayed_sub_s_eq](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/hardy-sigma-delayed-sub-s-eq.md) | 136 | `result-track:38b1843b087a40b09af1571fd16d7b66ce0a5707428b3c651bcb70afcf56286b` |
| 7 | `theorem` | [hardy_sigma_delayed_bound](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/hardy-sigma-delayed-bound.md) | 160 | `result-track:f56fa5ca47ea27cb2485e6cb3546862585131bab56568e1cf6bc8d53a835c61a` |
| 8 | `lemma` | [k_n_properties](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/k-n-properties.md) | 185 | `result-track:8d2416e75b8ebf590355c4db83a58e4a264f64f94dd977b44df64ce70f6a617c` |
| 9 | `def` | [hardy_k](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/hardy-k.md) | 196 | `declaration-track:1ace30d582baa6ae7ade86aa9401ea60c542303daf38456ee86c35ce73fe9554` |
| 10 | `lemma` | [hardy_diff_bound](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/hardy-diff-bound.md) | 201 | `result-track:bfbe8b0a542dee5843a73435e98733a48d98b9ae026ee7d040b4386a7a25d1e8` |
| 11 | `lemma` | [tendsto_of_approx_aux](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/tendsto-of-approx-aux.md) | 223 | `result-track:dbd7d9fa275202ebc5dc772adec635b88de6bf1e18c83f56acf8f233a1c23bc5` |
| 12 | `lemma` | [hardy_k_ratio_bounded](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/hardy-k-ratio-bounded.md) | 234 | `result-track:ea5511ec521f01192c1902ac69a803bba61e7fa7aef0b3d57d78d76cb2d00116` |
| 13 | `theorem` | [hardy_tauberian](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/hardy-tauberian.md) | 250 | `result-track:d3d35ccb4e692e9611dd5ca742f8f33ecce28b00be81979a0f8411d16cae1e7b` |
| 14 | `theorem` | [hardy_tauberian_theorem](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/hardy-tauberian-theorem.md) | 269 | `result-track:92b88266638770654148cda2804b0ba1f7e62f3eae8dcc9584552da8a73c4524` |
| 15 | `def` | [dirichlet_kernel](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/dirichlet-kernel.md) | 292 | `declaration-track:1319a00dcd881161c93f4e596b45cbf91b037b79d65108061b59d1537faf1ff9` |
| 16 | `def` | [fejer_kernel](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-kernel.md) | 295 | `declaration-track:50ca85299e38e80e06879aafda109b4726a31322badf8b6993e1b16951944d19` |
| 17 | `def` | [fourier_coeff_cos](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fourier-coeff-cos.md) | 301 | `declaration-track:2209c67d8d1b4de39cc480273e195b8f401f3db6046d832d6e76e43720212e4f` |
| 18 | `def` | [fourier_coeff_sin](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fourier-coeff-sin.md) | 304 | `declaration-track:4a2ff1b693426af0bb3948ffb2a4d41d4c5fc5603dec40754c9478396dbc71ad` |
| 19 | `def` | [fourier_partial_sum](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fourier-partial-sum.md) | 307 | `declaration-track:175c894b53269d9e915105d60047cb1f8d23c6bc1decb1407baba7ad6076b3ba` |
| 20 | `def` | [fejer_sum](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-sum.md) | 314 | `declaration-track:2d47543f3be4d4b3ca74cce27784ca78f7dcab8124535a8ecd9bef8b112fbfe2` |
| 21 | `theorem` | [fourier_partial_sum_eq_integral](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fourier-partial-sum-eq-integral.md) | 320 | `result-track:3120f553812f6aa172307ec58a07288e1082d98a05ff23c1877e3652e589f426` |
| 22 | `theorem` | [fejer_sum_eq_integral](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-sum-eq-integral.md) | 345 | `result-track:47641999c370f4f292c342aeef0e58fba7bf7a27adfb9320abc677298eb70682` |
| 23 | `theorem` | [dirichlet_kernel_closed_form](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/dirichlet-kernel-closed-form.md) | 365 | `result-track:f6afabc3da71a5b385a62f199f311273cdd7cdf4f44fbfdeef0f2d00f532f58f` |
| 24 | `theorem` | [fejer_kernel_closed_form](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-kernel-closed-form.md) | 378 | `result-track:00dc0fdec4a123dc77bf257f8032b01f7a4e0af3a6d7921da29ec32e8edbf240` |
| 25 | `theorem` | [fejer_kernel_nonneg](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-kernel-nonneg.md) | 397 | `result-track:902a76e535a264cda93fa140c30df59892b9c8e08be970f8d0208359917488fd` |
| 26 | `theorem` | [fejer_kernel_even](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-kernel-even.md) | 408 | `result-track:c12fdd4cb7a272a9fd0f18437e13d3eb118b192b29429c3a3291a4bd98a124e2` |
| 27 | `theorem` | [fejer_kernel_integral_one](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-kernel-integral-one.md) | 414 | `result-track:48851515e3db584c4b9a979aebaed1f979eece52439fe1d4b5b38a3d17230b13` |
| 28 | `theorem` | [fejer_kernel_le_linear](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-kernel-le-linear.md) | 433 | `result-track:ca6aa28978318d3149a24ff1ae009b3040da7bf66540c080d512071fc865ffbe` |
| 29 | `theorem` | [fejer_kernel_le_quadratic](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-kernel-le-quadratic.md) | 445 | `result-track:7989601bbabaf93c80e4b6d9763d63f970f4e84ce4977bff6c2f60d6fbe49da2` |
| 30 | `theorem` | [fejer_kernel_uniform_limit_zero](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-kernel-uniform-limit-zero.md) | 462 | `result-track:a6bf0cc3a62de2c216c38cc3b00af91c838dc86489fee8b55805e57194a44b9f` |
| 31 | `theorem` | [uniform_continuity_shift](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/uniform-continuity-shift.md) | 486 | `result-track:236df50c9192b5f212a4234814b0e88357eabb301b7fe6dfe1b1016c497bee99` |
| 32 | `theorem` | [convolution_change_variables](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/convolution-change-variables.md) | 511 | `result-track:4789a7047aa3bed5a7fe4c9200ad2d27f758d338f9a1fcad2c9fe40acd4e1be6` |
| 33 | `theorem` | [integral_periodic_shift](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/integral-periodic-shift.md) | 520 | `result-track:21acac3d96195883b25c0212a0b76e4ffcc3a5207972103b3d771fef0b4d6c39` |
| 34 | `theorem` | [fejer_sum_eq_integral_alt](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-sum-eq-integral-alt.md) | 604 | `result-track:869de663ebcf76de61edaf1bc39171718811efe38079ab5d92452a70674932e8` |
| 35 | `theorem` | [fejer_integrand_periodic](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-integrand-periodic.md) | 628 | `result-track:935aa67d2fd1f87421b4dad8f9cef1cad6dacba79e91893313448b93d758593d` |
| 36 | `theorem` | [fejer_sum_eq_integral_alt_v2](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-sum-eq-integral-alt-v2.md) | 641 | `result-track:10200fe85d2ca4cd366dd21d9590daea1ff50ed8d606ac78a8e9bf0c5f36709c` |
| 37 | `theorem` | [fejer_sum_sub_f_eq_integral](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-sum-sub-f-eq-integral.md) | 649 | `result-track:3c174cd730a57e4d466ad40eebf1b0156cd64a7068cad2bde2a8ca9f70e3a75a` |
| 38 | `theorem` | [fejer_sum_sub_f_eq_integral_v2](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-sum-sub-f-eq-integral-v2.md) | 704 | `result-track:fd2490253da26e06949b28aeba16c2b035fbfef6df72816c23e31a8aa5a1d264` |
| 39 | `theorem` | [integral_periodic_modulus_shift](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/integral-periodic-modulus-shift.md) | 712 | `result-track:e5fcb3c983995f87aae0a8345363b8c54a306cdaefe8bc526cc9a589b6badfa6` |
| 40 | `theorem` | [fejer_tail_convergence](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-tail-convergence.md) | 722 | `result-track:4ad5506b28dacdab80b4e44ff0e31f25cca4f0ec5104e5f2abe8b4a8cad5a64f` |
| 41 | `theorem` | [fejer_kernel_tail_mass_vanishes](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-kernel-tail-mass-vanishes.md) | 879 | `result-track:6b9b482f38f672134efe2b1bebbf523f2b41931bcea2d84ea16e4aa0e76492c9` |
| 42 | `lemma` | [fejer_central_bound](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-central-bound.md) | 903 | `result-track:68073a29d342de1023d14361b3b672a8c7bd337ddfe0058b481e2eb8d6eef5b4` |
| 43 | `lemma` | [fejer_integration_domain_split](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-integration-domain-split.md) | 937 | `result-track:401953f5ea562874df55cfed57d31898a63b0d1f0b512d06157877565a37dbab` |
| 44 | `lemma` | [fejer_integrand_integrable](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-integrand-integrable.md) | 944 | `result-track:96c8c0ae0eb574d9904498835005b112d03cda5e49ed2f808ad4094edfdb4ce3` |
| 45 | `def` | [fejer_tail_set](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-tail-set.md) | 994 | `declaration-track:5068ba51f685c5c12ac543314dea94d63cf75435a02928766b6c31862a1e34e9` |
| 46 | `lemma` | [fejer_sum_diff_eq_set_integral](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-sum-diff-eq-set-integral.md) | 999 | `result-track:a22d49e36c43b09655a85d2ae25e41ce22ad85636a2fda7d7a915ba97591db0b` |
| 47 | `lemma` | [ae_disjoint_central_tail](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/ae-disjoint-central-tail.md) | 1009 | `result-track:e229b87d274b5d42909b00822f1b0e08af166c94d053254f2a03cb9a52d25076` |
| 48 | `def` | [fejer_diff_integrand](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-diff-integrand.md) | 1019 | `declaration-track:6ea8256d425959fabda2cc4f0c53fb3a0c2ed5b8b29c74769e501f51c04fc297` |
| 49 | `lemma` | [set_integral_union_ae_split](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/set-integral-union-ae-split.md) | 1025 | `result-track:3474bed00ed73cdf95f0c4660c36210166c98adbd68f8c9fbfd7d0bb5a15ae0c` |
| 50 | `lemma` | [interval_integrable_subinterval](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/interval-integrable-subinterval.md) | 1043 | `result-track:212d43fd23b9208c099ef73b62228116872efbc11fc51691956fc3d9d38eb3b6` |
| 51 | `lemma` | [fejer_sum_diff_bound_split](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-sum-diff-bound-split.md) | 1053 | `result-track:ffcbbb38fb6a7cd6d47b2d33867fbfbb76a7a7a9ce26cd9b0c949d7ed5333fd2` |
| 52 | `theorem` | [fejer_theorem_uniform_on_I](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-theorem-uniform-on-i.md) | 1088 | `result-track:8ea10e842c665fe4806f5ecc75721b33e642263cb352114dcecf76fd5f2ec16a` |
| 53 | `lemma` | [fejer_kernel_integral_half_range](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-kernel-integral-half-range.md) | 1127 | `result-track:cc1bf46fa81c432dc95b5f2dca6cb47740ac42112f8c7016dbeedfde52175f3b` |
| 54 | `theorem` | [fejer_sum_at_jump_eq_integral](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-sum-at-jump-eq-integral.md) | 1147 | `result-track:1e933da84b21c14e235593ac578859f406662a4d73258b2418385ae57ab78245` |
| 55 | `lemma` | [fejer_kernel_integral_limit_zero](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-kernel-integral-limit-zero.md) | 1516 | `result-track:930c2ea7d48679dfb00da5aac6256e4b1297826b8f5d5708ffc5fab0f58e175d` |
| 56 | `lemma` | [integrable_shifted_periodic](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/integrable-shifted-periodic.md) | 1627 | `result-track:4e8a560debd1c1f694ec94ac97af8c20704e8090894b227b29ef743d80d76d7b` |
| 57 | `theorem` | [fejer_theorem_at_jump](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-theorem-at-jump.md) | 1662 | `result-track:fcf197fd988bbe21137fc71f357aea149277eebc5d3a82e274fa1136c7385983` |
| 58 | `lemma` | [fejer_sum_periodic](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-sum-periodic.md) | 1758 | `result-track:a36f8b06c2954c09f9cefb417d371bcbe8af85e266ca42770b3f842d41f2dfea` |
| 59 | `theorem` | [fejer_theorem_uniform_on_R](../../../../MeasureAndIntegration/FejerIKnowThisIsDirtyButItTypechecksNamespaced.lean/declarations/fejer-theorem-uniform-on-r.md) | 1766 | `result-track:b4b4f367a0c4bd61a9a078ecd6f6889ac2076e070b35a7748cfae603dd5d2a25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0842f534a76391523015abaf6ebb58c3c91a5cf299d0e92316877bb57e291a82 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variante62c61fe6b322e5b90dfbf186262620355e4fc399e37a0d2595af7e2bcf9ed74.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variante62c61fe6b322e5b90dfbf186262620355e4fc399e37a0d2595af7e2bcf9ed74.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
