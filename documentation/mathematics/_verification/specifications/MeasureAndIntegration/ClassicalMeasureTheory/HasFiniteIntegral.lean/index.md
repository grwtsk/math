# Verification target: Has Finite Integral

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b072b3587fca2e1914b5a5e40862a4b800054364",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/HasFiniteIntegral/Variantd6f07a4606a2d8e69cd01deca87a66ad49e5933f27d1ecb36373dd0dab32fad0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b072b3587fca2e1914b5a5e40862a4b800054364`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/HasFiniteIntegral/Variantd6f07a4606a2d8e69cd01deca87a66ad49e5933f27d1ecb36373dd0dab32fad0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/HasFiniteIntegral/Variantd6f07a4606a2d8e69cd01deca87a66ad49e5933f27d1ecb36373dd0dab32fad0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.StronglyMeasurable.AEStronglyMeasurable` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Lebesgue.DominatedConvergence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Lebesgue.Norm` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.WithDensity` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [lintegral_enorm_eq_lintegral_edist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/lintegral-enorm-eq-lintegral-edist.md) | 42 | `result-track:183a6f56ffcbb86c42d550a252e4453e27760e6afbdf60e91b269fc1ca2e86a9` |
| 2 | `theorem` | [lintegral_norm_eq_lintegral_edist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/lintegral-norm-eq-lintegral-edist.md) | 48 | `result-track:eecd707c4112927b7b2e67c197d6f5f10d35fad21d01f83fbc6e4a1d4734e32b` |
| 3 | `theorem` | [lintegral_edist_triangle](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/lintegral-edist-triangle.md) | 52 | `result-track:4cdf098162194848555c5dd0682285ea6be8377c4dea5af4db0d901bc7e21a4c` |
| 4 | `theorem` | [lintegral_enorm_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/lintegral-enorm-zero.md) | 60 | `result-track:0f952fb58941bd6f532efce760ca72d3c9be13892825c3b9647bd8655c8a6951` |
| 5 | `theorem` | [lintegral_enorm_add_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/lintegral-enorm-add-left.md) | 62 | `result-track:16a92a35201891f0401b006f0cd3fbe0aaff028a36051918505947385ae89c84` |
| 6 | `theorem` | [lintegral_enorm_add_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/lintegral-enorm-add-right.md) | 66 | `result-track:08b24a74784d9503855d2477bdb1c26cd9b7a6cfaa622f75d9c7dee0b8c7def0` |
| 7 | `theorem` | [lintegral_enorm_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/lintegral-enorm-neg.md) | 70 | `result-track:02da6939157504262c3299f0b8d619dc850a6a947915dfb2d05936267163c517` |
| 8 | `def` | [HasFiniteIntegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral.md) | 82 | `declaration-track:131a31f043981ffdf704ddda398c0b9104f60829bc05f4c794005d356392d6d0` |
| 9 | `theorem` | [hasFiniteIntegral_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-def.md) | 86 | `result-track:a9478711e38afbe6919bb09ea162d966bd9e4b0b026106adb2ccdd0bfc2c7609` |
| 10 | `theorem` | [hasFiniteIntegral_iff_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-iff-enorm.md) | 90 | `result-track:660b2968587295e5bc5b02653b46a9c6f152b07d0b57254e6adf41cf87038d00` |
| 11 | `theorem` | [hasFiniteIntegral_iff_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-iff-norm.md) | 96 | `result-track:ab5bcc037d830ef85807b40f361e94ff1c7f3181a9edc91a22bea536ad41df0a` |
| 12 | `theorem` | [hasFiniteIntegral_iff_edist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-iff-edist.md) | 100 | `result-track:e1dd5fe6612309f9c22082e50e623138d09c999c2971cd08f5642aba12272c99` |
| 13 | `theorem` | [hasFiniteIntegral_iff_ofReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-iff-ofreal.md) | 104 | `result-track:fce0b38dead165b28cd2058aaca6d0a3577a03cc477265c4fb09be77bd3ef5ba` |
| 14 | `theorem` | [hasFiniteIntegral_iff_ofNNReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-iff-ofnnreal.md) | 108 | `result-track:4e9a3741dc2fc0b619662d337f9f3eb73d4da53a0e44ff0d8f293381ba1f7b4d` |
| 15 | `theorem` | [HasFiniteIntegral.mono_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-mono-enorm-source-edition-2.md) | 112 | `result-track:be4e0fbecd8b088e91cf80d138911dd9e2f17047f27497d052cce753ed8f54eb` |
| 16 | `theorem` | [HasFiniteIntegral.mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-mono.md) | 119 | `result-track:672d9d6dcd9d536fcaac6c2c83b3ae61bb74d596e80452cdf3a0dbac1f24af9b` |
| 17 | `theorem` | [HasFiniteIntegral.mono'_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-mono-enorm.md) | 123 | `result-track:48d727a2f1b4b5487f2327650707c80a82b6e1d20ec0bec556f15e64ba5d2931` |
| 18 | `theorem` | [HasFiniteIntegral.mono'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-mono-source-edition-2.md) | 127 | `result-track:6bb3d808da47bd234d1bf2e6b09f5e6adfc8493313a6bf6febf3866155ea96bf` |
| 19 | `theorem` | [HasFiniteIntegral.congr'_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-congr-enorm-source-edition-2.md) | 131 | `result-track:75c026bcbb0330da2b38c6f487fa464628050116b7941638fd35b077daca96b2` |
| 20 | `theorem` | [HasFiniteIntegral.congr'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-congr-source-edition-4.md) | 135 | `result-track:b6e611c3b274a19718518fed9c9ac582aa477c014cbe6b2d5c18cd85fc34b015` |
| 21 | `theorem` | [hasFiniteIntegral_congr'_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-congr-enorm.md) | 139 | `result-track:1726603f7eb6c2c6bc50a97252a3b558c81495253d59341867e9954df16f38d0` |
| 22 | `theorem` | [hasFiniteIntegral_congr'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-congr-source-edition-3.md) | 143 | `result-track:a530d4e53b1e9d9155a60bc6e7cc9930d949b863ff5d70bc39a1ddd7dbb8ebb9` |
| 23 | `theorem` | [HasFiniteIntegral.congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-congr-source-edition-2.md) | 147 | `result-track:69593ebc590f930c92b386e837be754ff8982ead22905774c9aac75b0f698722` |
| 24 | `theorem` | [hasFiniteIntegral_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-congr.md) | 151 | `result-track:417d2ecbe410c0c61744ee932b7041e1902edeab4c5abb761ab4f20958665acf` |
| 25 | `theorem` | [hasFiniteIntegral_const_iff_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-const-iff-enorm.md) | 155 | `result-track:7f50faeb5bc8b11c2d9b73b1c4a28f0563810436b1b84f711d15e12331b7008b` |
| 26 | `theorem` | [hasFiniteIntegral_const_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-const-iff.md) | 160 | `result-track:89c1868ed184213ab898440bc420d8c93ae804958119ff919f47ecac30440c61` |
| 27 | `lemma` | [hasFiniteIntegral_const_iff_isFiniteMeasure_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-const-iff-isfinitemeasure-enorm.md) | 165 | `result-track:35cc8f1d5f1f84d2f75ef800570ba9d8bd442b03f4e4c52d77e33fb3775cede6` |
| 28 | `lemma` | [hasFiniteIntegral_const_iff_isFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-const-iff-isfinitemeasure.md) | 169 | `result-track:a3e3300934a3fac95a6b96d551ccf9cb2167919ddb31bca208c903520ba6877f` |
| 29 | `theorem` | [hasFiniteIntegral_const_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-const-enorm.md) | 173 | `result-track:4fcfe7178c174885f623ffc12012c498889dccfbf8d970313d0f155054ed263e` |
| 30 | `theorem` | [hasFiniteIntegral_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-const.md) | 177 | `result-track:bd58682f2a3c0edbf975b5c036e86d791478534df5e7104b6d406ac2e2dfd34a` |
| 31 | `theorem` | [HasFiniteIntegral.of_mem_Icc_of_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-of-mem-icc-of-ne-top.md) | 181 | `result-track:448137d59585205c633bc32a8cfa47aac1ba85bd019c6ab5550ea610995f2d9f` |
| 32 | `theorem` | [HasFiniteIntegral.of_mem_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-of-mem-icc.md) | 188 | `result-track:a83b4b524cb8343d08e3c220db8a8c068a7e16e0a111a945db290d5897693acb` |
| 33 | `theorem` | [hasFiniteIntegral_of_bounded_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-of-bounded-enorm.md) | 194 | `result-track:be236cdef7ee6ea074eeaf9cc199fb5f8cd86eb6283978166df8a89b8bcb421c` |
| 34 | `theorem` | [hasFiniteIntegral_of_bounded](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-of-bounded.md) | 198 | `result-track:ca0df19c1bbcaefa26a20226c7d66097c79706e6663a690df5bb5f63fe74088d` |
| 35 | `theorem` | [HasFiniteIntegral.of_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-of-finite.md) | 204 | `result-track:90d8c65f81804fc28a1a01b5ec5ab48d6252f9af1385688144327ba9a219825b` |
| 36 | `theorem` | [HasFiniteIntegral.mono_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-mono-measure.md) | 209 | `result-track:c43714e8fa6432d9907e20284deb900fc8d720af5e16ffa4026a32446cb885e1` |
| 37 | `theorem` | [HasFiniteIntegral.add_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-add-measure-source-edition-2.md) | 213 | `result-track:0e7b738f2bb8bde4c1ebda8dc48fa7569bb034b66cc270662751577e27a594d8` |
| 38 | `theorem` | [HasFiniteIntegral.left_of_add_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-left-of-add-measure.md) | 218 | `result-track:8ef94195b07054876450bfd1b087350c0cbf8c996d9cb2954e110897b4d06f58` |
| 39 | `theorem` | [HasFiniteIntegral.right_of_add_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-right-of-add-measure.md) | 222 | `result-track:51b3d29af5104a5618de9bee7a0fefc4ed17f88ab3396ad25a6da3f58796e48f` |
| 40 | `theorem` | [hasFiniteIntegral_add_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-add-measure.md) | 227 | `result-track:077f7e292373b2e79b5f070e3ae86344ceb6ef0dbea877245bae6f0df689e5ec` |
| 41 | `theorem` | [HasFiniteIntegral.smul_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-smul-measure.md) | 231 | `result-track:9fe2b5d07f05612659261dcdc34db8b8066f52d8819bed486a40c94f6b99bcd5` |
| 42 | `theorem` | [hasFiniteIntegral_zero_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-zero-measure.md) | 237 | `result-track:df367dcf5342b780dad64693593f10bbd3cf575856c50cc7fab67b865667c95a` |
| 43 | `theorem` | [hasFiniteIntegral_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-zero.md) | 243 | `result-track:0ac3b72caf5b7d350abf4b223e089d00a52bf4b41bd6e6ba4deb5daa40bcc336` |
| 44 | `theorem` | [HasFiniteIntegral.neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-neg.md) | 247 | `result-track:94b46be438a8f10e8aa1eca9ba5edd8cc975dc3b9475f235f32a249b7d8aa0a1` |
| 45 | `theorem` | [hasFiniteIntegral_neg_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-neg-iff.md) | 251 | `result-track:594a9b0f225d9f75772e9ff4ee6f3fe75cd98727c48894c407847ecbaaaf7568` |
| 46 | `theorem` | [HasFiniteIntegral.enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-enorm.md) | 254 | `result-track:5a92fe0eba7629054fda5ba66a7fad6a982707e36c5f8b6d3104efe83c2e64c1` |
| 47 | `theorem` | [HasFiniteIntegral.norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-norm.md) | 257 | `result-track:f1b6fbb1da46d9c6db8137a7f055c0f4c23e29c819f519dd7a6ce43461562de9` |
| 48 | `theorem` | [hasFiniteIntegral_enorm_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-enorm-iff.md) | 260 | `result-track:3b0cce1cf47b624cb82f92b797304d156413c6da3da9a47f327e1c0a78ecdd73` |
| 49 | `theorem` | [hasFiniteIntegral_norm_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-norm-iff.md) | 264 | `result-track:b13d3453e0e334eec13e2321b903732993847957a283f50b7c455e0caac12287` |
| 50 | `theorem` | [hasFiniteIntegral_toReal_of_lintegral_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-toreal-of-lintegral-ne-top.md) | 268 | `result-track:eb6dc4f18bfa50ab21c3d028c94c98e1609238d5aee43cf7fb1d4b3b06e74263` |
| 51 | `lemma` | [hasFiniteIntegral_toReal_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-toreal-iff.md) | 279 | `result-track:9a3c9f6ce18a917752f9f16eb97314ca15756916d6420872c99c0e7f771dcaaf` |
| 52 | `theorem` | [isFiniteMeasure_withDensity_ofReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/isfinitemeasure-withdensity-ofreal.md) | 285 | `result-track:bc24d99c2037d192870ccbbe16d81bd6015867023b00379404b646a4bfe36fea` |
| 53 | `theorem` | [all_ae_ofReal_F_le_bound](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/all-ae-ofreal-f-le-bound-source-edition-2.md) | 296 | `result-track:3847b3934a1aa2ff37b3b051a86a61c0a3b97661b56482c3517f48689e8dca2d` |
| 54 | `theorem` | [ae_tendsto_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/ae-tendsto-enorm.md) | 300 | `result-track:ec3557e29873e49c2d82a4ca0ad77eb8054b3ce17dbad70a49714326551d1a14` |
| 55 | `theorem` | [all_ae_tendsto_ofReal_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/all-ae-tendsto-ofreal-norm.md) | 304 | `result-track:74a94eb706c513c3eeaf2c3cd3d3854b84d0483105779f1ae16b3f9b70ee23d7` |
| 56 | `theorem` | [all_ae_ofReal_f_le_bound](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/all-ae-ofreal-f-le-bound.md) | 308 | `result-track:1a6d803639a9b12e509a3d74f35e77ae47916cc52036226c0416af8fa16ff382` |
| 57 | `theorem` | [ae_enorm_le_bound](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/ae-enorm-le-bound.md) | 317 | `result-track:aa7044c623587db13bb338c4c613ccf1c06bdf3062bdfa33e08ded89d638ca8a` |
| 58 | `theorem` | [hasFiniteIntegral_of_dominated_convergence_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-of-dominated-convergence-enorm.md) | 325 | `result-track:d1fa9cf1a41922ffacbcaeed39850046ec2d671849d0908c87c8deabde0c46f1` |
| 59 | `theorem` | [hasFiniteIntegral_of_dominated_convergence](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-of-dominated-convergence.md) | 337 | `result-track:cceff127de1fec793fdb0bb011159a077490c7a7453fbfc614eaa8ca42ec05d8` |
| 60 | `theorem` | [tendsto_lintegral_norm_of_dominated_convergence](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/tendsto-lintegral-norm-of-dominated-convergence.md) | 353 | `result-track:e785b733a2e4764e00b42e023a1fef4fc2d308a380c06fd2433700ae0f46a8ac` |
| 61 | `theorem` | [HasFiniteIntegral.max_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-max-zero.md) | 409 | `result-track:9f09ba938d5d27aad3d3ffc4fb0cfa3a136b91c5f156b20df035c0d549aee198` |
| 62 | `theorem` | [HasFiniteIntegral.min_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-min-zero.md) | 413 | `result-track:a6cb47e6486284fd8d988a0a2a95223063c7386084f776072dae82533a39c29b` |
| 63 | `theorem` | [HasFiniteIntegral.smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-smul.md) | 423 | `result-track:b9196c2ac94a4a452b3abfd7444f22e1ff4dd7ac9bb1f2f0fe8a2a253bb75c2b` |
| 64 | `theorem` | [hasFiniteIntegral_smul_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-smul-iff.md) | 433 | `result-track:de44016eab3b6058567b82b539d2feebecc68eadb061af5837c72f8dc51e11c8` |
| 65 | `theorem` | [HasFiniteIntegral.const_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-const-mul.md) | 442 | `result-track:5d54c6e840c39363260c31ef51cdc5de14f76a4ecdb2586a6a84934622987aa3` |
| 66 | `theorem` | [HasFiniteIntegral.mul_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-mul-const.md) | 446 | `result-track:67a59cf857c2e5cc081cf5fb4a6b3dc8567e1704ffa4d8c6945a62320b6beab7` |
| 67 | `lemma` | [hasFiniteIntegral_count_iff_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-count-iff-enorm.md) | 456 | `result-track:d38bf3717f4dd39c3dc62cacd02e5503970d99bc9e55cd17460fce802ad607f1` |
| 68 | `lemma` | [hasFiniteIntegral_count_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-count-iff.md) | 461 | `result-track:e4937fa903a21fc70f43a186dddb072d70e9e4bfee90ee8601bec217e004772e` |
| 69 | `lemma` | [HasFiniteIntegral.restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HasFiniteIntegral.lean/declarations/hasfiniteintegral-restrict.md) | 472 | `result-track:8927eea9a23fdf770899b3767a6cc1ed7044b67c785aa5c30948607838db201c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4d4e7ff435bc885193b6d10ec1576f572ef4fbd3a946fee3dd5dc8a9ea988d47 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/HasFiniteIntegral/Variantd6f07a4606a2d8e69cd01deca87a66ad49e5933f27d1ecb36373dd0dab32fad0.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/HasFiniteIntegral/Variantd6f07a4606a2d8e69cd01deca87a66ad49e5933f27d1ecb36373dd0dab32fad0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
