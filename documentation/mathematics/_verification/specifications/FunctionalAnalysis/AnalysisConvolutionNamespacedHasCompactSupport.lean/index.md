# Verification target: Analysis Convolution Namespaced Has Compact Support

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a985c84eb8940462e2fb30431e25d9e19d34b38",
  "lexical_observation_count": 84,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Convolution/Variant05fe417f8c6dbfa13f48215ad2a97d9653e1f2701985ac230a7dcb88279b5b23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/index.md) · [Full source](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a985c84eb8940462e2fb30431e25d9e19d34b38`.

Source path: `GRWTSK/Analysis/MeasureTheory/Convolution/Variant05fe417f8c6dbfa13f48215ad2a97d9653e1f2701985ac230a7dcb88279b5b23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Convolution/Variant05fe417f8c6dbfa13f48215ad2a97d9653e1f2701985ac230a7dcb88279b5b23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Prod.Integral` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LocallyIntegrable` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Prod` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [convolution_integrand_bound_right_of_le_of_subset](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolution-integrand-bound-right-of-le-of-subset.md) | 127 | `result-track:b37fe570c5ab62e010c10544d830bb42a46149d1152bf4748e456ef8c802d382` |
| 2 | `theorem` | [HasCompactSupport.convolution_integrand_bound_right_of_subset](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/hascompactsupport-convolution-integrand-bound-right-of-subset.md) | 140 | `result-track:3c6dc43fb0ac0722950430c8336436a4171fec477e00762e4423b51b02e6193c` |
| 3 | `theorem` | [HasCompactSupport.convolution_integrand_bound_right](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/hascompactsupport-convolution-integrand-bound-right.md) | 147 | `result-track:01ff1607a26843018e8a825126127c917b84f188954b5a0fb7237994a1e05f13` |
| 4 | `theorem` | [Continuous.convolution_integrand_fst](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/continuous-convolution-integrand-fst.md) | 153 | `result-track:af3841fbc1c95aba98b25b797770bb0bc8a968a6168b8ec4ffee50d318d4b55b` |
| 5 | `theorem` | [HasCompactSupport.convolution_integrand_bound_left](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/hascompactsupport-convolution-integrand-bound-left.md) | 158 | `result-track:2705a85c2a6b0319c2ee1abcd5bafa7eb0b793ca56eda65c55c59d0acf899fbc` |
| 6 | `def` | [ConvolutionExistsAt](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolutionexistsat.md) | 175 | `declaration-track:b2b90b2b5b14150656c30a0ce2b863593443ef2693d73484b6c7082ebfff827b` |
| 7 | `def` | [ConvolutionExists](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolutionexists.md) | 182 | `declaration-track:c5d43d0be62ed0c1f59a60e6f540a46fbaf2a89aa34c402e59dcef9fcbe39034` |
| 8 | `theorem` | [ConvolutionExistsAt.integrable](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolutionexistsat-integrable.md) | 191 | `result-track:472a9794d46d4fdcf79a082bbdab3de356940db48835f5d655808f34b1c5ce7b` |
| 9 | `theorem` | [MeasureTheory.AEStronglyMeasurable.convolution_integrand'](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/measuretheory-aestronglymeasurable-convolution-integrand.md) | 202 | `result-track:20b3c4fb2762f4c29cf041c8db039348034ba45e41c0187d5de3a522e2126916` |
| 10 | `theorem` | [MeasureTheory.AEStronglyMeasurable.convolution_integrand_snd'](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/measuretheory-aestronglymeasurable-convolution-integrand-snd.md) | 213 | `result-track:4d0a03b0fe714bec81c44ad2f13d898607da59184c4af849ff69fa1723d1b0dd` |
| 11 | `theorem` | [MeasureTheory.AEStronglyMeasurable.convolution_integrand_swap_snd'](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/measuretheory-aestronglymeasurable-convolution-integrand-swap-snd-source-edition-2.md) | 220 | `result-track:c836a5f8eb6e446c3bd6068bfbe989b390c331411a3c8c3ca4fff037388281fc` |
| 12 | `theorem` | [BddAbove.convolutionExistsAt'](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/bddabove-convolutionexistsat-source-edition-2.md) | 229 | `result-track:d0dd90b9c77102752a3541ed0b81668c9798e2565802780a9f7b2debc7e5524e` |
| 13 | `theorem` | [ConvolutionExistsAt.ofNorm'](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolutionexistsat-ofnorm-source-edition-2.md) | 253 | `result-track:60147904a36620a6d7a55a434e288b9e5f8f3008f26ae98e7b1b37bf86a9e935` |
| 14 | `theorem` | [MeasureTheory.AEStronglyMeasurable.convolution_integrand_snd](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/measuretheory-aestronglymeasurable-convolution-integrand-snd-source-edition-2.md) | 269 | `result-track:d475b0677773dc533cee22f115c071372fbce678bbe6d58f3edd0d35689fea38` |
| 15 | `theorem` | [MeasureTheory.AEStronglyMeasurable.convolution_integrand_swap_snd](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/measuretheory-aestronglymeasurable-convolution-integrand-swap-snd.md) | 276 | `result-track:45d24ecab9086be1d899441055e681c3d4a6590dc9a11f0c5647a151ecb42c0e` |
| 16 | `theorem` | [ConvolutionExistsAt.ofNorm](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolutionexistsat-ofnorm.md) | 286 | `result-track:0eba34592c472c881cd20c36049fe795470e85293ea025e661185b895ce0e233` |
| 17 | `theorem` | [MeasureTheory.AEStronglyMeasurable.convolution_integrand](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/measuretheory-aestronglymeasurable-convolution-integrand-source-edition-2.md) | 301 | `result-track:6ebed065b911c1c4cc87a98bf53e21ab995c75b76713ba821727a56f03d77d38` |
| 18 | `theorem` | [MeasureTheory.Integrable.convolution_integrand](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/measuretheory-integrable-convolution-integrand.md) | 308 | `result-track:8ae4e47c11bcdfac9b96e8f163db988c6d7950a760a9e67d437d7dd050533c7d` |
| 19 | `theorem` | [MeasureTheory.Integrable.ae_convolution_exists](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/measuretheory-integrable-ae-convolution-exists.md) | 327 | `result-track:0fa04ee0e66d3aa8bee42871e39a9d4be5be36d1ccc34fb1a6e8ce5aac825db9` |
| 20 | `theorem` | [HasCompactSupport.convolutionExistsAt](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/hascompactsupport-convolutionexistsat.md) | 338 | `result-track:f21796fcc26d0c1791f666f46f8bce5a7f0d907ccd7fe204a59ee3023d5f613d` |
| 21 | `theorem` | [HasCompactSupport.convolutionExists_right](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/hascompactsupport-convolutionexists-right.md) | 357 | `result-track:3dad2775c0cd3281e92fd5416ce2102cb8262e4704fe4de15e69db8d24529943` |
| 22 | `theorem` | [HasCompactSupport.convolutionExists_left_of_continuous_right](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/hascompactsupport-convolutionexists-left-of-continuous-right.md) | 366 | `result-track:7e8d5afcf4f86b7b7cb52d3e5723f5e6a185572a8cbe91b4ccfe9a5ba95cb972` |
| 23 | `theorem` | [BddAbove.convolutionExistsAt](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/bddabove-convolutionexistsat.md) | 392 | `result-track:7814cac7f251f48a7f2be1a79f93e1a7c4af8b7aa9dd649060eecc475dc0b482` |
| 24 | `theorem` | [convolutionExistsAt_flip](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolutionexistsat-flip.md) | 406 | `result-track:012b8467c5a061e309372eeb764ef75814e11abc3105afb8530ee6399ef5b6e9` |
| 25 | `theorem` | [ConvolutionExistsAt.integrable_swap](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolutionexistsat-integrable-swap.md) | 414 | `result-track:ddb015578eb0f7e4ce18ba94e2c42dc08c738c92842ab90136906f9ad2c23dd7` |
| 26 | `theorem` | [convolutionExistsAt_iff_integrable_swap](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolutionexistsat-iff-integrable-swap.md) | 420 | `result-track:500c35f00ea08e56bc0fc0bd22e9f99ed038017d5e762151295118efaeb127cb` |
| 27 | `theorem` | [HasCompactSupport.convolutionExistsLeft](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/hascompactsupport-convolutionexistsleft.md) | 430 | `result-track:5cf8421fbde21aa7676c53887bf5cd77552e00c73414116974336338313f43be` |
| 28 | `theorem` | [HasCompactSupport.convolutionExistsRightOfContinuousLeft](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/hascompactsupport-convolutionexistsrightofcontinuousleft.md) | 435 | `result-track:9d21498afcb6ada63648b37fd51a1245c0aa0c1d1fbe8bae275d757432b0a2b5` |
| 29 | `def` | [convolution](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolution.md) | 448 | `declaration-track:e06ee92741e8cecb55d0b47d607fc1e96e7ecde56ed415b1ecd8ebe794d4708c` |
| 30 | `theorem` | [convolution_def](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolution-def.md) | 467 | `result-track:b715123f39c8d4b6eac65104ce34f3ce065b5549b13bde4ed00fb597f857480d` |
| 31 | `theorem` | [convolution_lsmul](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolution-lsmul.md) | 473 | `result-track:0a64dfd809ac7e11183b6fc07b89387a4c585a9b11a4bc30224b8b1a5a0d9abc` |
| 32 | `theorem` | [convolution_mul](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolution-mul.md) | 479 | `result-track:3dc44659664aaeb8000743a898d15d2a841b5087221fe2c592f2b42abb7bcab5` |
| 33 | `theorem` | [smul_convolution](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/smul-convolution.md) | 488 | `result-track:c1758bbd4655558669fe8a57b1bb7320e87c998429a292d69e44dd40c6461211` |
| 34 | `theorem` | [convolution_smul](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolution-smul.md) | 492 | `result-track:52d9f48bb4f6db62a937bb830dcadbb5b395de3dc03806666bb7688c542d2dfa` |
| 35 | `theorem` | [zero_convolution](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/zero-convolution.md) | 497 | `result-track:f7479a9e1b7236830c946fd12643cca229924b04923481cee0463e45c3f383f3` |
| 36 | `theorem` | [convolution_zero](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolution-zero.md) | 503 | `result-track:e16cec7188be3b8ad4da4160720cf9a42c64d5db0e2c5ac4476c1a5cc9d42930` |
| 37 | `theorem` | [ConvolutionExistsAt.distrib_add](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolutionexistsat-distrib-add.md) | 508 | `result-track:80fb04b1cd5c79cabc3f8c7922d96e9e27dbe066861e0b1aae9a6ed08ca34df9` |
| 38 | `theorem` | [ConvolutionExists.distrib_add](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolutionexists-distrib-add.md) | 514 | `result-track:1add5f43acaf108de8912fa80f7bcc3cc95c9c414f1979ee2f75bba8ee27ca01` |
| 39 | `theorem` | [ConvolutionExistsAt.add_distrib](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolutionexistsat-add-distrib.md) | 520 | `result-track:856f11b0e9c3bb39ea17f1ea10ac52867b0919b53efbaa3812e2bbaf0541cc6f` |
| 40 | `theorem` | [ConvolutionExists.add_distrib](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolutionexists-add-distrib.md) | 526 | `result-track:7bd77161dd50a5633501c12937047a56debdcd51e101e426d27294e567993dd5` |
| 41 | `theorem` | [convolution_mono_right](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolution-mono-right.md) | 532 | `result-track:55f1bd87ae9e0c4c74bf3d2731fffce36425754117a56c3e346448c23b4819bb` |
| 42 | `theorem` | [convolution_mono_right_of_nonneg](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolution-mono-right-of-nonneg.md) | 541 | `result-track:30e45abdd53269b29bd91f494a8a85de5abffe5cbb5f6e5e9b5aff7bbb2fbf40` |
| 43 | `theorem` | [convolution_congr](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolution-congr.md) | 553 | `result-track:5578e8c37a9f9b52e9a2249dcb9a0f5968c9cc0bfdb2c14ab60a8c96d35394a9` |
| 44 | `theorem` | [support_convolution_subset_swap](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/support-convolution-subset-swap.md) | 564 | `result-track:3fb4475f16dfe7257c15e6194db91d6dfd51e50c56b27f5d55291887723d7976` |
| 45 | `theorem` | [MeasureTheory.Integrable.integrable_convolution](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/measuretheory-integrable-integrable-convolution.md) | 582 | `result-track:074d11501674d6f781c10d80cc7415b29bedbb04ca21516287f9f80a62df282c` |
| 46 | `theorem` | [HasCompactSupport.convolution](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/hascompactsupport-convolution.md) | 593 | `result-track:9cfafccd08752a432c02cfcee6cc50857396f77f3d8e2103ca3587c089cd8123` |
| 47 | `theorem` | [continuousOn_convolution_right_with_param'](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/continuouson-convolution-right-with-param-source-edition-2.md) | 607 | `result-track:59a6d53ca46b6f1a5083a0560472c36d1aef67b0d8444185bcbc51e8a88bec29` |
| 48 | `theorem` | [continuousOn_convolution_right_with_param](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/continuouson-convolution-right-with-param.md) | 701 | `result-track:44f82eca770de5fd2a9d10a9e27011503eac75327d3792dcbd9c20fc95df74e0` |
| 49 | `theorem` | [continuousOn_convolution_right_with_param_comp'](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/continuouson-convolution-right-with-param-comp-source-edition-2.md) | 713 | `result-track:c3d0a83ed436ba76482be30f26f6830453eddd89ad66681a01fdfedbc413bc0e` |
| 50 | `theorem` | [continuousOn_convolution_right_with_param_comp](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/continuouson-convolution-right-with-param-comp.md) | 727 | `result-track:4a633a571f703cdcb4a72b1daea21df14f4a7a09c88c61151c5086b7761062ea` |
| 51 | `theorem` | [HasCompactSupport.continuous_convolution_right](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/hascompactsupport-continuous-convolution-right.md) | 736 | `result-track:71828d7f6276e5377b6dc47e6fb2a45dea903a0327150a32d4da7ff85dce4e5c` |
| 52 | `theorem` | [BddAbove.continuous_convolution_right_of_integrable](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/bddabove-continuous-convolution-right-of-integrable.md) | 748 | `result-track:b013ee9402fac2a1d47928e054a38b704354b41ea49fd085dfcf86ef0c02989b` |
| 53 | `theorem` | [support_convolution_subset](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/support-convolution-subset.md) | 769 | `result-track:c7a36c588d09fb8b81e1c7046e1d6fcd452143a0b47c22cac9267170295786c4` |
| 54 | `theorem` | [convolution_flip](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolution-flip.md) | 782 | `result-track:a552eb584fb8c208468802e4c9f6317dad7fd97892d087e73a2437a5c6047191` |
| 55 | `theorem` | [convolution_eq_swap](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolution-eq-swap.md) | 790 | `result-track:39138b48a6f43806b184cfb3415c546cbe3d0bbada3f17cb06d05379d1491db0` |
| 56 | `theorem` | [convolution_lsmul_swap](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolution-lsmul-swap.md) | 795 | `result-track:d363a6360342754fe3ef2199c76ab4f7ec0184c06979c0d79844b4615e6df815` |
| 57 | `theorem` | [convolution_mul_swap](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolution-mul-swap.md) | 801 | `result-track:46f93587413ce895a63a6b3e49fcba2c8301b7cdc2d61c2e7eaa9f6e6e942cb7` |
| 58 | `theorem` | [convolution_neg_of_neg_eq](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolution-neg-of-neg-eq.md) | 807 | `result-track:59d83358b7fa64aee071827d3c77437cab7fe1581188d4a8a1ff8c2f1529102b` |
| 59 | `theorem` | [HasCompactSupport.continuous_convolution_left](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/hascompactsupport-continuous-convolution-left.md) | 827 | `result-track:18e28b82649b31054b4c07617d77fc83699e86fcf21077d4f68fd0c188e22697` |
| 60 | `theorem` | [BddAbove.continuous_convolution_left_of_integrable](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/bddabove-continuous-convolution-left-of-integrable.md) | 834 | `result-track:3ca34d24723c04ba5d4fab1b08e188f3b19558b4a7e26672e86cb372748d3acb` |
| 61 | `theorem` | [convolution_eq_right'](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolution-eq-right.md) | 853 | `result-track:e4190976ef880d3a67b721a93ec436bfe11e75933f7895875465660cd3b60c83` |
| 62 | `theorem` | [dist_convolution_le'](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/dist-convolution-le-source-edition-2.md) | 876 | `result-track:bbc6b3fc16dc12c08395cbf8d2d840fb068d6ee4b6c3a136584c6bedd34b57e8` |
| 63 | `theorem` | [dist_convolution_le](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/dist-convolution-le.md) | 921 | `result-track:517c4d75a4b36080ceeff6809392164abcb89124cdeb90d0a9193ce9f8d4179d` |
| 64 | `theorem` | [convolution_tendsto_right](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolution-tendsto-right.md) | 941 | `result-track:d545a8454e5a12d13fbb8fd6a121c3aaac83a534cf116048cd3a7054cb58c48c` |
| 65 | `theorem` | [integral_convolution](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/integral-convolution.md) | 1015 | `result-track:49e645db076c1a49bf9b8f8c1f1e121275473a0fc548556f831749284a862c66` |
| 66 | `theorem` | [convolution_assoc'](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolution-assoc.md) | 1027 | `result-track:b48fc3e0e36c763a641f73ca68a033d93b699e46c58e592f5bce754caec24f94` |
| 67 | `theorem` | [convolution_assoc](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolution-assoc-source-edition-2.md) | 1054 | `result-track:bd6c9381e92a9fbdcb2e8dc256deed77f4748cf37da0d76c5078f750d527ecff` |
| 68 | `theorem` | [convolution_precompR_apply](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/convolution-precompr-apply.md) | 1103 | `result-track:22c797e6e627d22b3cd168a8f1f636b09aa346cd85274ed45a50d9b08d23fbc6` |
| 69 | `theorem` | [HasCompactSupport.hasFDerivAt_convolution_right](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/hascompactsupport-hasfderivat-convolution-right.md) | 1117 | `result-track:684d1ad5850d7fdd5487b2d41e9eb0011da8073b3cd434cf4d7c1056c27bfe5d` |
| 70 | `theorem` | [HasCompactSupport.hasFDerivAt_convolution_left](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/hascompactsupport-hasfderivat-convolution-left.md) | 1151 | `result-track:8e8c65af390b93a723aa4e81924d66cb951deb01465d32ee01c1da59c7957caa` |
| 71 | `theorem` | [HasCompactSupport.hasDerivAt_convolution_right](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/hascompactsupport-hasderivat-convolution-right.md) | 1184 | `result-track:f1ae4675fec6086bc7478e1feb92b5f7529d68f4085b08064e4a752f22d06731` |
| 72 | `theorem` | [HasCompactSupport.hasDerivAt_convolution_left](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/hascompactsupport-hasderivat-convolution-left.md) | 1192 | `result-track:e0bebd3dfba1cb7f35d65f5a950dcde8abe2bc0c5ffe1d10eec3ee71e25900ab` |
| 73 | `theorem` | [hasFDerivAt_convolution_right_with_param](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/hasfderivat-convolution-right-with-param.md) | 1214 | `result-track:fd6b1fbdaaed7ac26867922effeb29f25f5d83be3937ad42f5f23241e1c31409` |
| 74 | `theorem` | [contDiffOn_convolution_right_with_param_aux](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/contdiffon-convolution-right-with-param-aux.md) | 1360 | `result-track:f2b36a75c874e5a1e4f6593793642f55cb605f08e9795af0b10e57977b94e462` |
| 75 | `theorem` | [contDiffOn_convolution_right_with_param](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/contdiffon-convolution-right-with-param.md) | 1409 | `result-track:ce5ec4089677e8f04b18f515af9af6aa5f70011994a8da7db62e3dc2b0d998bc` |
| 76 | `theorem` | [contDiffOn_convolution_right_with_param_comp](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/contdiffon-convolution-right-with-param-comp.md) | 1479 | `result-track:2b83848e358c0bd37c8ffec4120b77117aa72bff2071d259181f1a7ff846b2a7` |
| 77 | `theorem` | [contDiffOn_convolution_left_with_param](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/contdiffon-convolution-left-with-param.md) | 1491 | `result-track:fe88cabc1d23232565d6785f220b6ca0c9daefda9cfea41fafd39de3aef2a178` |
| 78 | `theorem` | [contDiffOn_convolution_left_with_param_comp](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/contdiffon-convolution-left-with-param-comp.md) | 1503 | `result-track:6ad184127eb457e7275932a9972b15a67928e5a53753f564246dc5837a2a5107` |
| 79 | `theorem` | [HasCompactSupport.contDiff_convolution_right](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/hascompactsupport-contdiff-convolution-right.md) | 1513 | `result-track:ac28f2a476c80c1f8d4e170ea9bb3b844720415b45fe8711918b7f33f2f562e5` |
| 80 | `theorem` | [HasCompactSupport.contDiff_convolution_left](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/hascompactsupport-contdiff-convolution-left.md) | 1521 | `result-track:f8c73cef1204117426e452404b27f33222a0059f5940beccc27c44ceac424bda` |
| 81 | `def` | [posConvolution](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/posconvolution.md) | 1537 | `declaration-track:24b8b4c65ca30b07fb7835da0acd85ae7f3877cf08b826a5b4c6d960e1599d33` |
| 82 | `theorem` | [posConvolution_eq_convolution_indicator](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/posconvolution-eq-convolution-indicator.md) | 1542 | `result-track:eef9060b169aefa42fed42854e22908cb4cba29d9be7394e90d41c3fcb103d6e` |
| 83 | `theorem` | [integrable_posConvolution](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/integrable-posconvolution.md) | 1590 | `result-track:9d569784aa3bdecca57ef0a75c2ce5112f1b9ebde9ca38f4761ec73c1c38012b` |
| 84 | `theorem` | [integral_posConvolution](../../../../FunctionalAnalysis/AnalysisConvolutionNamespacedHasCompactSupport.lean/declarations/integral-posconvolution.md) | 1602 | `result-track:ae529fa2c3631ceed32dc9af2d7cd6300a684bbafc061d795f9fc387c7032a07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=938bd57ac55336369f9de676323a05b485442e8e81071d2aebbdcf11374d88e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Convolution/Variant05fe417f8c6dbfa13f48215ad2a97d9653e1f2701985ac230a7dcb88279b5b23.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Convolution/Variant05fe417f8c6dbfa13f48215ad2a97d9653e1f2701985ac230a7dcb88279b5b23.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
