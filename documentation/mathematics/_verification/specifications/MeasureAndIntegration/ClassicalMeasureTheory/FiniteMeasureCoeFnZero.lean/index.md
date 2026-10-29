# Verification target: Finite Measure Coe Fn Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31019cddd14b223580fba902eb3cc3381a358fdc",
  "lexical_observation_count": 78,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variantbbed9235375551b1fefedf7768db4e91b066d7d39758a86fc5f1f4e290f3c892.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31019cddd14b223580fba902eb3cc3381a358fdc`.

Source path: `GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variantbbed9235375551b1fefedf7768db4e91b066d7d39758a86fc5f1f4e290f3c892.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/FiniteMeasure/Variantbbed9235375551b1fefedf7768db4e91b066d7d39758a86fc5f1f4e290f3c892.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousFunction.Bounded` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.WeakDual` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [_root_.MeasureTheory.FiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/root-measuretheory-finitemeasure.md) | 110 | `declaration-track:9e9fea6dcddae69d7898027a1f07f0caf642c3fe15c9e89651bf8cb69cf2c960` |
| 2 | `def` | [toMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/tomeasure.md) | 118 | `declaration-track:5be972df4a19efeb6b04293cb6994215ad860af14757d411f2382480952ddcf3` |
| 3 | `instance` | [instCoe](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/instcoe.md) | 121 | `declaration-track:62fe84a16652c103795372a6db8a74f36f9df57bf25631f969d2ca85bfdbd793` |
| 4 | `instance` | [isFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/isfinitemeasure.md) | 124 | `declaration-track:5c3ae4d5f408ba87c981f32b8a4f70b1af14d54ee828d2701d27235d23f4c6b5` |
| 5 | `instance` | [instCoeFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/instcoefun.md) | 128 | `declaration-track:5ca4672216b7bfc801e97d70d6426ff8f518071997758b3d7920a1e185f99811` |
| 6 | `theorem` | [ennreal_coeFn_eq_coeFn_toMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/ennreal-coefn-eq-coefn-tomeasure.md) | 135 | `result-track:14a033e40b046624fb961899134e59678ff794b3d89743d06ba7114c9189f773` |
| 7 | `theorem` | [val_eq_toMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/val-eq-tomeasure.md) | 141 | `result-track:a40f87a7e47aea7be98b846e912d8754c3a7a99e3808be98c64d974a6a9a77cf` |
| 8 | `theorem` | [toMeasure_injective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/tomeasure-injective.md) | 145 | `result-track:a01c7ebe95f59d54ecaf175ead69ce760b734d9a7cf43e69757775df9ac9e183` |
| 9 | `theorem` | [apply_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/apply-mono.md) | 149 | `result-track:b74a804c3832d6021ff32da7bfa512da9e853a99a29c144573706d22855686ba` |
| 10 | `def` | [mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/mass.md) | 157 | `declaration-track:a87ff19e9f4055e9258bb3dcb4ade601008ac173ee69d6fbbb3fc21a75f3f639` |
| 11 | `theorem` | [apply_le_mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/apply-le-mass.md) | 161 | `result-track:57fddba3c2809a74715f86f22d6acc5c210da103945e4bbaadd9cd7c975e4de9` |
| 12 | `theorem` | [ennreal_mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/ennreal-mass.md) | 165 | `result-track:d0e893b5cb6e112f1e0435b254c87843cc06dc3790c1d5b7aac242fd7cf0a22a` |
| 13 | `instance` | [instZero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/instzero.md) | 169 | `declaration-track:893132ef54b18d55088be42885fe88ccb96ca328ba52a9df96e47782606a4217` |
| 14 | `theorem` | [zero_mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/zero-mass.md) | 173 | `result-track:0d78fb24a2b7b2ff2f611d83e1d850a14fd9df9174d0761573e4ef504b92a8f8` |
| 15 | `theorem` | [mass_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/mass-zero-iff.md) | 178 | `result-track:cf4b6d20bab7b83ca0b6bf5ad0891d444982e49df78791ed7716bf0374eabdce` |
| 16 | `theorem` | [mass_nonzero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/mass-nonzero-iff.md) | 185 | `result-track:63a50771f802f8181c28a9ba19374b132ad8bfe9b8ca8011cea36326d4a0e96f` |
| 17 | `theorem` | [eq_of_forall_toMeasure_apply_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/eq-of-forall-tomeasure-apply-eq.md) | 191 | `result-track:9005f87c9bdb4e76cf409f7c26e7f22748d2d2f6363b3f7a1afd261408a723c3` |
| 18 | `theorem` | [eq_of_forall_apply_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/eq-of-forall-apply-eq.md) | 198 | `result-track:8114bceffdd2d35e7561a2a88aeffefdac59898f2da381467f502aafc61115a4` |
| 19 | `instance` | [instInhabited](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/instinhabited.md) | 204 | `declaration-track:37d251e980c16c09784cdf12426b5b6f78abca59c5f9bd9138d4ddc2513eb8cc` |
| 20 | `instance` | [instAdd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/instadd.md) | 207 | `declaration-track:98d0252e49a5e674d9889c1569a4483d21035eb24c63c499dae022eff246e78f` |
| 21 | `instance` | [instSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/instsmul.md) | 212 | `declaration-track:14a748b3de465ac28bf20d8844c22455c7a703a556f0bf7c81290eb4b2d612a2` |
| 22 | `theorem` | [toMeasure_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/tomeasure-zero.md) | 217 | `result-track:28cd1f45f4d769672e4c3f79121538d87251d98b4b0b522fd76e557fe7f26f4d` |
| 23 | `theorem` | [toMeasure_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/tomeasure-add.md) | 223 | `result-track:684ba3f29876cbe91ccebcd0c37e8920454e16dba7930d0831d7281a2a12e3ea` |
| 24 | `theorem` | [toMeasure_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/tomeasure-smul.md) | 229 | `result-track:fe2ab2dce7197157d31a4a3ef2aeeb5955e7a749f86f570519e8923baace9d49` |
| 25 | `theorem` | [coeFn_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/coefn-zero.md) | 234 | `result-track:293a8cc209cd14789f801734a4b4615e6c611fcf40e26f889e78f7440bec027a` |
| 26 | `theorem` | [coeFn_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/coefn-add.md) | 239 | `result-track:5a3e42d2541262bf5e9722c9f58f3da4288ae47f699766fec6444349e1ebf1c1` |
| 27 | `theorem` | [coeFn_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/coefn-smul.md) | 246 | `result-track:a24d69047c26935ea6b6e670e2c667c1da73e82760a9a51a4bdbcdcde20e2e7b` |
| 28 | `instance` | [instAddCommMonoid](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/instaddcommmonoid.md) | 253 | `declaration-track:d64586c6aaa652c431892b59d7eab661bc74648a9f52a2e0a1abf238f32032e8` |
| 29 | `def` | [toMeasureAddMonoidHom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/tomeasureaddmonoidhom.md) | 258 | `declaration-track:cd9f57881f23a1d2a73f4a5fd19eaae52710c327a1f784a4bd02e5eb8d1cafe3` |
| 30 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/instance.md) | 264 | `declaration-track:35430225750df5ca68df5c751e37220e82883fd5cfc7a67b4252c887c4bd9528` |
| 31 | `theorem` | [coeFn_smul_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/coefn-smul-apply.md) | 268 | `result-track:897812ae17eda60f7f351911053131bef678f6d0575d30cf9501d825856f9e99` |
| 32 | `def` | [restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/restrict.md) | 275 | `declaration-track:a15b2809532e02bfe25f3626947f30c655ff016339ecfe87c6e4e84bc1cd12d1` |
| 33 | `theorem` | [restrict_measure_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/restrict-measure-eq.md) | 280 | `result-track:38105039d34d5f13c818874d80bc99a443122d54e56e9553dd00aa406d8db138` |
| 34 | `theorem` | [restrict_apply_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/restrict-apply-measure.md) | 285 | `result-track:e44838107954313bf86b7a8e617a9b3d5c702d3be5f304af45bee0c310c3ae5c` |
| 35 | `theorem` | [restrict_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/restrict-apply.md) | 290 | `result-track:299be4af11bb8de3ca4ac1825129e5d2bbc5144212603f2f76b6e6feeda87243` |
| 36 | `theorem` | [restrict_mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/restrict-mass.md) | 296 | `result-track:d3f9b4d32f64cae72de9ab8b114d72e13b53b1b07043856540cc4eccf1f675a0` |
| 37 | `theorem` | [restrict_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/restrict-eq-zero-iff.md) | 300 | `result-track:5234b337a6c04694b3458e08a43426a91ba2ce155a9af833bb29ad0326b8f8c4` |
| 38 | `theorem` | [restrict_nonzero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/restrict-nonzero-iff.md) | 304 | `result-track:aef13ce3b944da68ccf9f63dc16804008d653b20e2675b78f1dfbe6b7f108c89` |
| 39 | `def` | [testAgainstNN](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/testagainstnn.md) | 313 | `declaration-track:fefed069774225506da1715027dc403870bf67cb1c6c06276b937d1e01123b8e` |
| 40 | `theorem` | [_root_.BoundedContinuousFunction.NNReal.coe_ennreal_comp_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/root-boundedcontinuousfunction-nnreal-coe-ennreal-comp-measurable.md) | 317 | `result-track:dcba90835e8ff755fc27ee80dc257b46331a2214ba74dfa4ab8734e2e41e9698` |
| 41 | `theorem` | [_root_.MeasureTheory.lintegral_lt_top_of_boundedContinuous_to_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/root-measuretheory-lintegral-lt-top-of-boundedcontinuous-to-nnreal.md) | 323 | `result-track:683f1c53362f45052aa44baf105c397bdd612e509d1982bd0575c9ea14a9f352` |
| 42 | `theorem` | [testAgainstNN_coe_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/testagainstnn-coe-eq.md) | 337 | `result-track:51bfde9577a0d509c69671c4f53a725899081385314ccdf24456b273a74520f7` |
| 43 | `theorem` | [testAgainstNN_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/testagainstnn-const.md) | 342 | `result-track:765a7c585c405b94c2623cdfe9c1185c55f2068f7629b476d8765a5512681f98` |
| 44 | `theorem` | [testAgainstNN_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/testagainstnn-mono.md) | 347 | `result-track:b110b4595634af6b1fa137268db180bb8bf90eb469eb592c9558b2170d77950d` |
| 45 | `theorem` | [testAgainstNN_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/testagainstnn-zero.md) | 354 | `result-track:d816e93b9bad5c68a6b4644043a7cd116a686ba2a4c44753310a3646ccd8f859` |
| 46 | `theorem` | [testAgainstNN_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/testagainstnn-one.md) | 359 | `result-track:c8e85a8211c01aa5bb59a561d727e97f201716e5bd1ef76425a7ea2bced3008f` |
| 47 | `theorem` | [zero_testAgainstNN_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/zero-testagainstnn-apply.md) | 365 | `result-track:deea7bf104a9e44cf3f42200e30d12369d411ba5d16547dd856ebe4b48fff4ad` |
| 48 | `theorem` | [zero_testAgainstNN](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/zero-testagainstnn.md) | 369 | `result-track:89ca41c075f91250d440dfab7ae9f0d39845fc68d27561f16eac8fed91761806` |
| 49 | `theorem` | [smul_testAgainstNN_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/smul-testagainstnn-apply.md) | 375 | `result-track:499b0fb91e5c1e740521c20562eb7bfefac010238c9a4e63c12c0e117b0a5f60` |
| 50 | `theorem` | [testAgainstNN_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/testagainstnn-add.md) | 383 | `result-track:67b002cae8b4fa74146c783294f71e67afdc1f08cccac855a4e9c9871b856e1e` |
| 51 | `theorem` | [testAgainstNN_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/testagainstnn-smul.md) | 390 | `result-track:38b35cac6e4a22eac94c8d97e5ce0fe29f012a146a4a19d86e63d0a38965f8b7` |
| 52 | `theorem` | [testAgainstNN_lipschitz_estimate](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/testagainstnn-lipschitz-estimate.md) | 402 | `result-track:8b12ff9b12fde5ce55e4c064f1ce0df0df3f7a998536cf1bfa3cad2bca1fbc51` |
| 53 | `theorem` | [testAgainstNN_lipschitz](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/testagainstnn-lipschitz.md) | 420 | `result-track:ed002c594e984198b7a99a807946c3e583de893630ad7505a84bf768d9f5cb52` |
| 54 | `def` | [toWeakDualBCNN](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/toweakdualbcnn.md) | 442 | `declaration-track:24a1e6dfc9fe6ca7992705c78c204bf1ef7dc3691c283db7598582fc255c913d` |
| 55 | `theorem` | [coe_toWeakDualBCNN](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/coe-toweakdualbcnn.md) | 450 | `result-track:e217396f073bc308ef899530eca85dcf492a50c074372048a7d338a359c94e7a` |
| 56 | `theorem` | [toWeakDualBCNN_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/toweakdualbcnn-apply.md) | 455 | `result-track:4b999406b75b8f7211395bb550d9eb0d789ec368fb6c218552c71a839d965542` |
| 57 | `instance` | [instTopologicalSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/insttopologicalspace.md) | 463 | `declaration-track:29aca6f0586c26a1abe71e5e89c1b76e4ef9ad593bb92229d289af50268e3640` |
| 58 | `theorem` | [toWeakDualBCNN_continuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/toweakdualbcnn-continuous.md) | 466 | `result-track:55b274319568564657fce5566be30c0c6fbf717fa66d27e54223140b61e6a80a` |
| 59 | `theorem` | [continuous_testAgainstNN_eval](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/continuous-testagainstnn-eval.md) | 472 | `result-track:011914d51594058fd1b727453090d6b8f18aa6af07d0bb587553a12d502f9310` |
| 60 | `theorem` | [continuous_mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/continuous-mass.md) | 483 | `result-track:9e212f6caacb7d3a0c2698a2369425a8ddcec1601ff7ec8848213d87bbc4e2f5` |
| 61 | `theorem` | [_root_.Filter.Tendsto.mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/root-filter-tendsto-mass.md) | 488 | `result-track:368f55f951f648dc1cc1d733370fc492d2e6fa4ed3b4989b4363d15e0ca080da` |
| 62 | `theorem` | [tendsto_iff_weak_star_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/tendsto-iff-weak-star-tendsto.md) | 493 | `result-track:8f00aaf70584452628659eb2a389dd6356a5fe8d74e05168e634d7b530a3ee98` |
| 63 | `theorem` | [tendsto_iff_forall_toWeakDualBCNN_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/tendsto-iff-forall-toweakdualbcnn-tendsto.md) | 499 | `result-track:ca9c1973a3692f6e97e7206760f58a28219533beedecd5ae4354b2bc06202d20` |
| 64 | `theorem` | [tendsto_iff_forall_testAgainstNN_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/tendsto-iff-forall-testagainstnn-tendsto.md) | 506 | `result-track:6f00e7503497d6ff8310457c5b2b84c56e455f1f50fe1e1fa772fc437961181e` |
| 65 | `theorem` | [tendsto_zero_testAgainstNN_of_tendsto_zero_mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/tendsto-zero-testagainstnn-of-tendsto-zero-mass.md) | 517 | `result-track:bc5a431bc11b0fb079b4194bb70279433715b6b7665d3f726e4d6749d1e66e64` |
| 66 | `theorem` | [tendsto_zero_of_tendsto_zero_mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/tendsto-zero-of-tendsto-zero-mass.md) | 534 | `result-track:ef9f7c9ca26eff0046402bb5fd55d7bdf2f06bf806d9236c04cf661fbc41f7d0` |
| 67 | `theorem` | [tendsto_iff_forall_lintegral_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/tendsto-iff-forall-lintegral-tendsto.md) | 544 | `result-track:1a62e02091b3c1570dc0c2c213d66b514b1c21b32202c05115d2cfc821de6815` |
| 68 | `theorem` | [tendsto_lintegral_nn_filter_of_le_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/tendsto-lintegral-nn-filter-of-le-const.md) | 577 | `result-track:4655050bb4214d7078bf85ecc57f15bfd9b4650cedc637fb019df1282393204f` |
| 69 | `theorem` | [tendsto_lintegral_nn_of_le_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/tendsto-lintegral-nn-of-le-const.md) | 597 | `result-track:c851f3b5eaf2c234414690be40831fcf9f6af25edea5c2f8766482178fb0a64f` |
| 70 | `theorem` | [tendsto_testAgainstNN_filter_of_le_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/tendsto-testagainstnn-filter-of-le-const.md) | 619 | `result-track:666a6d4d699d998c0996b1f92c2cd98a9205ba1da332037278d5a2238a512e8e` |
| 71 | `theorem` | [tendsto_testAgainstNN_of_le_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/tendsto-testagainstnn-of-le-const.md) | 641 | `result-track:d5887a6a40b271c03795dda353fe38eda5860cb47fb25cc0c91f16d2c94034e3` |
| 72 | `theorem` | [integrable_of_boundedContinuous_to_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/integrable-of-boundedcontinuous-to-nnreal.md) | 664 | `result-track:3742137883a8ae7863d6d54965128a428bb88a7ff06f01b7ef2e09e36ed56cf9` |
| 73 | `theorem` | [integrable_of_boundedContinuous_to_real](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/integrable-of-boundedcontinuous-to-real.md) | 671 | `result-track:c41db27e9453f43774b67fb8b42b6b245d7d7ec14b50b489c82c13d6bc00ce26` |
| 74 | `theorem` | [_root_.BoundedContinuousFunction.integral_eq_integral_nnrealPart_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/root-boundedcontinuousfunction-integral-eq-integral-nnrealpart-sub.md) | 684 | `result-track:d1399c0e79216d9c1fbb721c2ec51524d41ceb26ca61183e30dea39ba6ab74dd` |
| 75 | `theorem` | [lintegral_lt_top_of_boundedContinuous_to_real](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/lintegral-lt-top-of-boundedcontinuous-to-real.md) | 692 | `result-track:7289631171bc15b746be3eaa20ef6ffa86df41f391a87d5a372bce97c0766cfa` |
| 76 | `theorem` | [tendsto_of_forall_integral_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/tendsto-of-forall-integral-tendsto.md) | 698 | `result-track:9670619136040f088ef56d04a82c6158b8c4579144381c01e46b70f43883a7e5` |
| 77 | `theorem` | [_root_.BoundedContinuousFunction.NNReal.toReal_lintegral_eq_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/root-boundedcontinuousfunction-nnreal-toreal-lintegral-eq-integral.md) | 727 | `result-track:83802db64de4c6a25ee4f076bd932c0b521e6c845c8ce86673b118fbbbc97cdd` |
| 78 | `theorem` | [tendsto_iff_forall_integral_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnZero.lean/declarations/tendsto-iff-forall-integral-tendsto.md) | 738 | `result-track:a1e707347db1967db711203c9b1665ac394ce9008ab5913aaa9b59cdf34a4f1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9bf5a1269d8726c33125b426335849cb612023c48e7f1f4e6d81ddbc0f61c96f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variantbbed9235375551b1fefedf7768db4e91b066d7d39758a86fc5f1f4e290f3c892.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/FiniteMeasure/Variantbbed9235375551b1fefedf7768db4e91b066d7d39758a86fc5f1f4e290f3c892.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
