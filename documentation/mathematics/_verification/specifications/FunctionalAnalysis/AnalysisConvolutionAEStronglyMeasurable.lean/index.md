# Verification target: Analysis Convolution AEStrongly Measurable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1f00446fb804ab897b9e41b293e1510d1e2cf6f",
  "lexical_observation_count": 82,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Convolution/Variant78d72261e104dc16967bb01fb3ed1b748bfbb629c24b04fa8f44c6d8546161f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/index.md) · [Full source](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1f00446fb804ab897b9e41b293e1510d1e2cf6f`.

Source path: `GRWTSK/Analysis/MeasureTheory/Convolution/Variant78d72261e104dc16967bb01fb3ed1b748bfbb629c24b04fa8f44c6d8546161f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Convolution/Variant78d72261e104dc16967bb01fb3ed1b748bfbb629c24b04fa8f44c6d8546161f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LocallyIntegrable` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [convolution_integrand_bound_right_of_le_of_subset](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolution-integrand-bound-right-of-le-of-subset.md) | 115 | `result-track:a74c45d5cc153d7d9545d29e18c019dad7bf9b10a6255137c75f1029cf5650eb` |
| 2 | `theorem` | [_root_.HasCompactSupport.convolution_integrand_bound_right_of_subset](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/root-hascompactsupport-convolution-integrand-bound-right-of-subset.md) | 127 | `result-track:aca648fd537b8699d83930bbc215767f2210ccb3a1f766475455a07c65a00dc8` |
| 3 | `theorem` | [_root_.HasCompactSupport.convolution_integrand_bound_right](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/root-hascompactsupport-convolution-integrand-bound-right.md) | 134 | `result-track:9885369568b8816d6f96dfc0eafcf332cef2ce62bbca1d4ebc025ac5b27da176` |
| 4 | `theorem` | [_root_.Continuous.convolution_integrand_fst](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/root-continuous-convolution-integrand-fst.md) | 139 | `result-track:36d614abcb585018df424b13cedf5a399034520e061f92c6ceb1e64720e52252` |
| 5 | `theorem` | [_root_.HasCompactSupport.convolution_integrand_bound_left](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/root-hascompactsupport-convolution-integrand-bound-left.md) | 143 | `result-track:bc658dbee3afc68ed30c68c17eae31852232cc268149af80c0c2998d85990c57` |
| 6 | `def` | [ConvolutionExistsAt](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolutionexistsat.md) | 157 | `declaration-track:6ecfedfc4650498b34947c93fc9591e1a0d4be36d6f8c05e679fc6fca88cf01f` |
| 7 | `def` | [ConvolutionExists](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolutionexists.md) | 163 | `declaration-track:998f272f573be1f5bb16f69a1649e1f8ceb5b88cbed0be313923c1e7192e256f` |
| 8 | `theorem` | [ConvolutionExistsAt.integrable](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolutionexistsat-integrable.md) | 170 | `result-track:3fb8425d497e76984d7e7c2de269ffe9aacbe16884247d72129de353f0aecb75` |
| 9 | `theorem` | [AEStronglyMeasurable.convolution_integrand'](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/aestronglymeasurable-convolution-integrand-source-edition-2.md) | 178 | `result-track:7ede8f1081bbed327ac3c8edacd547e3bc849c0e236937595bb5ecc3cd07d364` |
| 10 | `theorem` | [AEStronglyMeasurable.convolution_integrand_snd'](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/aestronglymeasurable-convolution-integrand-snd.md) | 188 | `result-track:0b09978cc53a8a25b8cc98f5d28d88b1c5c8a9862566e834894ddc089aa8868f` |
| 11 | `theorem` | [AEStronglyMeasurable.convolution_integrand_swap_snd'](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/aestronglymeasurable-convolution-integrand-swap-snd-source-edition-2.md) | 194 | `result-track:ebbbf7681188d272a21f063b4dbb20b6c008ba05795bad79bef24ff600368d1f` |
| 12 | `theorem` | [_root_.BddAbove.convolutionExistsAt'](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/root-bddabove-convolutionexistsat.md) | 202 | `result-track:5a2bb71cd1cd03ab9b4e36bb98daf79d4a2b1ed0ff072f592474cdd07ebc7de8` |
| 13 | `theorem` | [ConvolutionExistsAt.of_norm'](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolutionexistsat-of-norm.md) | 224 | `result-track:57549d8dd5fccb4390c02bac3519e48d7c0b6393171531823c1bb09b589b786b` |
| 14 | `theorem` | [AEStronglyMeasurable.convolution_integrand_snd](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/aestronglymeasurable-convolution-integrand-snd-source-edition-2.md) | 242 | `result-track:d7c7d4060cd78e91493d1e60cb09f82dfaf08d43a375512cfe2e9b70a769a69e` |
| 15 | `theorem` | [AEStronglyMeasurable.convolution_integrand_swap_snd](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/aestronglymeasurable-convolution-integrand-swap-snd.md) | 248 | `result-track:1ed6ffaa9ee0c3e90fff5ab048b1204c85c752ac8731c1be52b3f93a6bcbc3c5` |
| 16 | `theorem` | [ConvolutionExistsAt.of_norm](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolutionexistsat-of-norm-source-edition-2.md) | 257 | `result-track:5e4ec429a18988e4e1d30ca3f126e3ce16e4c7d508245ef1643ba6699a46aa57` |
| 17 | `theorem` | [AEStronglyMeasurable.convolution_integrand](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/aestronglymeasurable-convolution-integrand.md) | 273 | `result-track:7d17bd741d316e2c0bbd8fb3b5dd98b8e1c9d3e92d6b8aa49e0cf90dd792b82b` |
| 18 | `theorem` | [Integrable.convolution_integrand](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/integrable-convolution-integrand.md) | 279 | `result-track:5778e798e3154b1fdc619e259c873c9d985b7dc626a28863dd4b950a17d9d236` |
| 19 | `theorem` | [Integrable.ae_convolution_exists](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/integrable-ae-convolution-exists.md) | 296 | `result-track:92c5506b7789c283d28dd0c6af3f330ccd7e2c06cfd399832bc6c33c23b7a4d9` |
| 20 | `theorem` | [_root_.HasCompactSupport.convolutionExistsAt](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/root-hascompactsupport-convolutionexistsat.md) | 306 | `result-track:847dbb5df090042a8c48140938a759d88e3c9e9a2af2905884277564672b54f9` |
| 21 | `theorem` | [_root_.HasCompactSupport.convolutionExists_right](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/root-hascompactsupport-convolutionexists-right.md) | 325 | `result-track:f6b4441713e0c6e8b55929bd8b94c3c34fbe9dc2747f84e03d66bb267ee82d19` |
| 22 | `theorem` | [_root_.HasCompactSupport.convolutionExists_left_of_continuous_right](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/root-hascompactsupport-convolutionexists-left-of-continuous-right.md) | 333 | `result-track:323f15c5fd6f486dd7e0a0da544c9e8dd4650cf2a0fcb8592048aaf96cc92357` |
| 23 | `theorem` | [_root_.BddAbove.convolutionExistsAt](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/root-bddabove-convolutionexistsat-source-edition-2.md) | 359 | `result-track:ed58b4e10be792d29b1d7a8ffcaf1374999098da0e9841c788c6e205edbf6962` |
| 24 | `theorem` | [convolutionExistsAt_flip](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolutionexistsat-flip.md) | 372 | `result-track:f686e5600e98ea5c45aff95f3f92f03356c065055d23689e1140b4e637c4c8ba` |
| 25 | `theorem` | [ConvolutionExistsAt.integrable_swap](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolutionexistsat-integrable-swap.md) | 377 | `result-track:f7a55919b41ee589396a245fb47f078148ece6978899c20c7fc8a5e3f45f53e3` |
| 26 | `theorem` | [convolutionExistsAt_iff_integrable_swap](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolutionexistsat-iff-integrable-swap.md) | 382 | `result-track:ddd04e3dc7b2ac9bc4e1c4f14ef1bc37d29354227c49290d21d70787700461f6` |
| 27 | `theorem` | [_root_.HasCompactSupport.convolutionExists_left](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/root-hascompactsupport-convolutionexists-left.md) | 391 | `result-track:0965ef274d64e3706f89db4f5d93bb7450f8af75e8afa360e82b220857ce23b9` |
| 28 | `theorem` | [_root_.HasCompactSupport.convolutionExists_right_of_continuous_left](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/root-hascompactsupport-convolutionexists-right-of-continuous-left.md) | 399 | `result-track:95b2a1cd1aa357b55b7e73ebe8022513b091c3561bbaecfeca8a24a350437686` |
| 29 | `def` | [convolution](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolution.md) | 416 | `declaration-track:1ea7df2b503918a986b1aac0f54170493ec5450b33ea4db8df4a981c3205971d` |
| 30 | `theorem` | [convolution_def](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolution-def.md) | 434 | `result-track:945a3a65629358fe703fe4bfc2d5b30eff9700004217559439d8089cb354370e` |
| 31 | `theorem` | [convolution_lsmul](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolution-lsmul.md) | 439 | `result-track:5fd7caa6f8e556b100cf027184a69b824f54c13f7388821e428e7eda0141995b` |
| 32 | `theorem` | [convolution_mul](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolution-mul.md) | 444 | `result-track:2e16980c27d66db3c51c9c9c1ef8d0b7f33d71d11ab4ee9a730cd2d06b003435` |
| 33 | `theorem` | [smul_convolution](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/smul-convolution.md) | 452 | `result-track:f1cac0fb1de838f136e7ab102ff29b0518e2aed921e9ab09b58822f0010f0c55` |
| 34 | `theorem` | [convolution_smul](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolution-smul.md) | 455 | `result-track:e12130f7162f4f796d4af8306504bf8303241ab67a6b6f9ca3bcaceee0f24b23` |
| 35 | `theorem` | [zero_convolution](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/zero-convolution.md) | 459 | `result-track:68372bb348b5bb09a2ae1d5fc3e2c313f3ac4ca17c2490a2e35db1d7116a5ec0` |
| 36 | `theorem` | [convolution_zero](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolution-zero.md) | 464 | `result-track:f122ddab4f92efe585f63ec83f7cb912c7811affc9857479efbefad628cc2f05` |
| 37 | `theorem` | [ConvolutionExistsAt.distrib_add](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolutionexistsat-distrib-add.md) | 468 | `result-track:da4955284c2295a926cdc7e1f65716bd878c287401c42a24d562d9f2ad3469c5` |
| 38 | `theorem` | [ConvolutionExists.distrib_add](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolutionexists-distrib-add.md) | 473 | `result-track:d6333328ac86f08dadc9b14cadaadd8de94391eb68ba4a3f147c74b2e3410cf1` |
| 39 | `theorem` | [ConvolutionExistsAt.add_distrib](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolutionexistsat-add-distrib.md) | 478 | `result-track:2a57f5b0bba2b6b1066c20f65bacf5c72f184451e890e4b254065ea84977b115` |
| 40 | `theorem` | [ConvolutionExists.add_distrib](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolutionexists-add-distrib.md) | 483 | `result-track:69f3f8e28e020f3bdfa24b99232db87fd425219b413dc86df117bed7f76adcf5` |
| 41 | `theorem` | [convolution_mono_right](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolution-mono-right.md) | 488 | `result-track:9e634c5c4d102eefa28eda232c2c3ce16fffa7f28aa90170bafd58e9ebd78030` |
| 42 | `theorem` | [convolution_mono_right_of_nonneg](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolution-mono-right-of-nonneg.md) | 496 | `result-track:dea3acf48ddead54fc51bad3801b19490176df0877935b69de283d1a5584de9a` |
| 43 | `theorem` | [convolution_congr](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolution-congr.md) | 507 | `result-track:3fbb8adf5331f20adea6220bb794e223dd0efe70ea258b44a1bdd1f57847312c` |
| 44 | `theorem` | [support_convolution_subset_swap](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/support-convolution-subset-swap.md) | 514 | `result-track:25cee016b1d11b1207b9db6677f920386aebaf6ff4c96a9184393e48f9624695` |
| 45 | `theorem` | [Integrable.integrable_convolution](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/integrable-integrable-convolution.md) | 531 | `result-track:c83a07f5346ea38fcad0e92b02989572c34b2e1d6f5b1370cbdf755a65dce508` |
| 46 | `theorem` | [_root_.HasCompactSupport.convolution](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/root-hascompactsupport-convolution.md) | 540 | `result-track:868bc5d9b0c0cde321f14df33402d1daf1218226e12b45b53ce21501816ac756` |
| 47 | `theorem` | [continuousOn_convolution_right_with_param](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/continuouson-convolution-right-with-param.md) | 552 | `result-track:bd95fc9a36edca83870ebefb82d45c33088af3295fa1f5985cce419372df3b34` |
| 48 | `theorem` | [continuousOn_convolution_right_with_param_comp](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/continuouson-convolution-right-with-param-comp.md) | 602 | `result-track:57a8a57271d41e52eb6810e4b065f0893a57cc424e7f394c409c4499679477c9` |
| 49 | `theorem` | [_root_.HasCompactSupport.continuous_convolution_right](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/root-hascompactsupport-continuous-convolution-right.md) | 613 | `result-track:7853ba9d1cc31d865ca9b81ab1ead36403373617817782b8f78d0885ec7c09ac` |
| 50 | `theorem` | [_root_.BddAbove.continuous_convolution_right_of_integrable](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/root-bddabove-continuous-convolution-right-of-integrable.md) | 624 | `result-track:e38db3fe2096c0350c068cc4c1320be4482bdd6c62c40dc9a61d72c640f2b842` |
| 51 | `theorem` | [support_convolution_subset](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/support-convolution-subset.md) | 645 | `result-track:2b5fa264c1a8041aea4f054ae97c91cfeff4fabf550eb5d82269da72b4ac3c4c` |
| 52 | `theorem` | [convolution_flip](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolution-flip.md) | 656 | `result-track:0c2b9c23f443f694433a634c55218ceeabe49dc713c1249ce2997db185d2a94b` |
| 53 | `theorem` | [convolution_eq_swap](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolution-eq-swap.md) | 663 | `result-track:cbb75b2cab19df19982ffaa3f191bcf3d0dc132e2b14f34adeec89ba3447ad1c` |
| 54 | `theorem` | [convolution_lsmul_swap](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolution-lsmul-swap.md) | 667 | `result-track:c44f9866e05233af5b181322c7f7732404b4d03596beaaffd198aa498d595b2b` |
| 55 | `theorem` | [convolution_mul_swap](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolution-mul-swap.md) | 672 | `result-track:ee0b7ad5d7a5bb77c61572e4d216cd1e362623348a5acf293b4a2d96e5dbc851` |
| 56 | `theorem` | [convolution_neg_of_neg_eq](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolution-neg-of-neg-eq.md) | 677 | `result-track:fa6e2bc2760e15d5ad04b1139bdec6df78db477178830acd0128f17da390a4fd` |
| 57 | `theorem` | [_root_.HasCompactSupport.continuous_convolution_left](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/root-hascompactsupport-continuous-convolution-left.md) | 694 | `result-track:fdefc5d2cda25cd286c1c1139f09e66347cbfe43f1e3e2667584116ab4f521d0` |
| 58 | `theorem` | [_root_.BddAbove.continuous_convolution_left_of_integrable](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/root-bddabove-continuous-convolution-left-of-integrable.md) | 700 | `result-track:92f88e5e9a616f71e99a4c73c0c2245cbca19d7d87b024d3437e82a6cb385039` |
| 59 | `theorem` | [convolution_eq_right'](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolution-eq-right.md) | 718 | `result-track:658dcb05bcd4c6fabd360b393ca33653e58e30b34296bf8c2c935bd7c00b0a37` |
| 60 | `theorem` | [dist_convolution_le'](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/dist-convolution-le-source-edition-2.md) | 739 | `result-track:6b856034912779392aafec2b2f90d033695452e2a7080d173f2582854c84b14d` |
| 61 | `theorem` | [dist_convolution_le](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/dist-convolution-le.md) | 783 | `result-track:23b2888b916b945fe3a076f38e789f955426c13c2b47ed797531da2c0fc45763` |
| 62 | `theorem` | [convolution_tendsto_right](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolution-tendsto-right.md) | 802 | `result-track:eaa8fe44b0d1fd709f298b6b9027b563efc1175614bc9a3f1c703b3523cdfc77` |
| 63 | `theorem` | [integral_convolution](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/integral-convolution.md) | 858 | `result-track:26981a125123d2d4ef84a2bed005958cc3ada40ac080dd898b093087763d8b80` |
| 64 | `theorem` | [convolution_assoc'](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolution-assoc.md) | 869 | `result-track:3fcd52caea2a5d22c655350f6a8d45751a2d06efd1193e22fad25943b8e6d01c` |
| 65 | `theorem` | [convolution_assoc](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolution-assoc-source-edition-2.md) | 895 | `result-track:f88af16ddaf09800576f4e86357a75332783fc1b9f0264ad9bd1e8410c72c940` |
| 66 | `theorem` | [convolution_precompR_apply](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/convolution-precompr-apply.md) | 944 | `result-track:156e1c117465448ba4c6064a13d1c6e0e200b912ca156cde925cb3c9e5726dae` |
| 67 | `theorem` | [_root_.HasCompactSupport.hasFDerivAt_convolution_right](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/root-hascompactsupport-hasfderivat-convolution-right.md) | 956 | `result-track:de6e9e1cd461a2b5922bd88af870479fb0fb72bae8b0786ecaa281e7792272e3` |
| 68 | `theorem` | [_root_.HasCompactSupport.hasFDerivAt_convolution_left](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/root-hascompactsupport-hasfderivat-convolution-left.md) | 986 | `result-track:a985e75f5654b9b71ddaec3a215bbe08324e373a41b0cd767c419959d1af8dee` |
| 69 | `theorem` | [_root_.HasCompactSupport.hasDerivAt_convolution_right](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/root-hascompactsupport-hasderivat-convolution-right.md) | 1008 | `result-track:89f45951364b3df9c1cdd764eb6d063508825d73e12375622cc6c6ac7baf7aee` |
| 70 | `theorem` | [_root_.HasCompactSupport.hasDerivAt_convolution_left](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/root-hascompactsupport-hasderivat-convolution-left.md) | 1015 | `result-track:7555aa91bc0c59b1dba7fc234fbb13576527b36aa0e5b1b4b218537f16700c26` |
| 71 | `theorem` | [hasFDerivAt_convolution_right_with_param](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/hasfderivat-convolution-right-with-param.md) | 1034 | `result-track:accd3b8261e576bad7398dc3e309e6e74bcb03e29f2cb74fb43f0f299df944e6` |
| 72 | `theorem` | [contDiffOn_convolution_right_with_param_aux](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/contdiffon-convolution-right-with-param-aux.md) | 1175 | `result-track:012ee859137779ea0e97631429c55e3f3fcb2c5c757caaf2f36432ef03b32b1e` |
| 73 | `theorem` | [contDiffOn_convolution_right_with_param](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/contdiffon-convolution-right-with-param.md) | 1227 | `result-track:c4cd44ce5ebf93a366c7bc7b95b91a9fc459a9ef0e84df8969aad9cf26e03321` |
| 74 | `theorem` | [contDiffOn_convolution_right_with_param_comp](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/contdiffon-convolution-right-with-param-comp.md) | 1287 | `result-track:5791e4127af394b68b08790a497151c4b3464b8e6df67821475132fdc0a2cee0` |
| 75 | `theorem` | [contDiffOn_convolution_left_with_param](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/contdiffon-convolution-left-with-param.md) | 1298 | `result-track:a297da2e5009130d1d33d3c8d9d60a8a8198be25dd8cfae9c99a6ad16499b08e` |
| 76 | `theorem` | [contDiffOn_convolution_left_with_param_comp](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/contdiffon-convolution-left-with-param-comp.md) | 1309 | `result-track:629d91462f595d9c91aca3b57c690b80ba8b31938157856020b8a5f65e0f5bc1` |
| 77 | `theorem` | [_root_.HasCompactSupport.contDiff_convolution_right](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/root-hascompactsupport-contdiff-convolution-right.md) | 1318 | `result-track:70196851ebdecce5105a452b4c8286c66ff006681c6e37c15aad37e1c945853c` |
| 78 | `theorem` | [_root_.HasCompactSupport.contDiff_convolution_left](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/root-hascompactsupport-contdiff-convolution-left.md) | 1325 | `result-track:81b5af9f40d1aca9fbd1d33ea45107591a3e05931df35867b43663e00fc199bd` |
| 79 | `def` | [posConvolution](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/posconvolution.md) | 1340 | `declaration-track:4d754e7864c4a82ad3bd547821c0fd10031c1517108b8b56653c4f99db2f44e4` |
| 80 | `theorem` | [posConvolution_eq_convolution_indicator](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/posconvolution-eq-convolution-indicator.md) | 1344 | `result-track:337377c0fd56077c194470668406c16b6210319cdb0d0c060c88fd21e7639fd5` |
| 81 | `theorem` | [integrable_posConvolution](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/integrable-posconvolution.md) | 1374 | `result-track:75aced1f5bde034957f35c2f77b43c6b5dc1060361fca3edb1c0b9bc70742342` |
| 82 | `theorem` | [integral_posConvolution](../../../../FunctionalAnalysis/AnalysisConvolutionAEStronglyMeasurable.lean/declarations/integral-posconvolution.md) | 1384 | `result-track:0a40a9a2a6e73dea2a0af8164fea9302fe873039342e69c5534846478a7cbed6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5ace984f252943fa27fd961cf3206416b0d6ab1aad17bb0173a3c50054d1509d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Convolution/Variant78d72261e104dc16967bb01fb3ed1b748bfbb629c24b04fa8f44c6d8546161f7.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Convolution/Variant78d72261e104dc16967bb01fb3ed1b748bfbb629c24b04fa8f44c6d8546161f7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
