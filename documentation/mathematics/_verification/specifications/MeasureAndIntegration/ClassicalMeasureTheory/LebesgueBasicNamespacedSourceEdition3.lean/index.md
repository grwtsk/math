# Verification target: Lebesgue Basic Namespaced Source Edition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ef2adeef745c829d65e8d3f90e5e3220c6fa863",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantff7edbc81092affda748153d90ddde7181f2b41512722f7ac5bbb0f4a22ee4c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ef2adeef745c829d65e8d3f90e5e3220c6fa863`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantff7edbc81092affda748153d90ddde7181f2b41512722f7ac5bbb0f4a22ee4c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Basic/Variantff7edbc81092affda748153d90ddde7181f2b41512722f7ac5bbb0f4a22ee4c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.SimpleFunc` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [SimpleFunc.lintegral_eq_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/simplefunc-lintegral-eq-lintegral.md) | 70 | `result-track:80d49a4f95e585e2e0cf2ef9a96338ae272e7665de8934b4757da5614ff0d85c` |
| 2 | `theorem` | [lintegral_mono'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-mono.md) | 77 | `result-track:5f23a905ff55dcc6431d2b2e82866e25ba9219287c82e79bb825d8f08b663945` |
| 3 | `theorem` | [lintegral_mono_fn'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-mono-fn-source-edition-2.md) | 83 | `result-track:bfc36bf75074767b4ed58dbce29b7c085148ab692a7d6b5119b840b0df44d932` |
| 4 | `theorem` | [lintegral_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-mono-source-edition-2.md) | 87 | `result-track:bcc91f553f074dd41833462c38264d56f4310dfd0d8f10adcbe3b4023486b82c` |
| 5 | `theorem` | [lintegral_mono_fn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-mono-fn.md) | 91 | `result-track:0b6ad694ef962a34349d29a5252d9591a39e7382fa8bc14c94520ae181b56247` |
| 6 | `theorem` | [lintegral_mono_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-mono-nnreal.md) | 95 | `result-track:fd18a258caa0c2690422ad61850f1e4e05f69f31ff37b6214dd5a962844153d8` |
| 7 | `theorem` | [iSup_lintegral_measurable_le_eq_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/isup-lintegral-measurable-le-eq-lintegral.md) | 98 | `result-track:34af9f6aca86d70d408a4329771ce039a6e0ff42a4c678962465a3b6cdef1b27` |
| 8 | `theorem` | [lintegral_mono_set](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-mono-set.md) | 106 | `result-track:3e34484b131d69519ca217b1d8071e25fc7d0d8ce9412dc6f6d09394b7118cd3` |
| 9 | `theorem` | [lintegral_mono_set'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-mono-set-source-edition-2.md) | 110 | `result-track:bd6767cc6fe986e2dac9655c06c545f5d6482e70f362b4cca0ba1c36a08d6a81` |
| 10 | `theorem` | [monotone_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/monotone-lintegral.md) | 114 | `result-track:3813e6c1d82c2e9eb861cfd365f973d7c919909d741f1b5704adb752c3b1f81d` |
| 11 | `theorem` | [lintegral_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-const.md) | 118 | `result-track:6ced93f8a0d3d4d0186bae8f4e0525d99ca52fafeceeee5988cf9b8260a7ac8e` |
| 12 | `theorem` | [lintegral_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-zero.md) | 122 | `result-track:35f08ac1d8d9ba5b2e8dba85b77d724eeb06d4ce62316f280c4b88914f6350ea` |
| 13 | `theorem` | [lintegral_zero_fun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-zero-fun.md) | 124 | `result-track:1b2d4c1f59a71d536548625d55a2ef46a347072f41fed32f3ffbceb65ddfd3e3` |
| 14 | `theorem` | [lintegral_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-one.md) | 127 | `result-track:efdc80bc498d7b107855e9201b1c1b6fbcff86d74820166c812283941cb25dd8` |
| 15 | `theorem` | [setLIntegral_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/setlintegral-const.md) | 129 | `result-track:a7558411ed2baebcc1d1e5a1dbf6ece6eac5a7a3b3d6837399344322b9a5fce0` |
| 16 | `theorem` | [setLIntegral_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/setlintegral-one.md) | 132 | `result-track:d31474b1083a7977b78b2ea68d3ab0c1d061504377afd95c3f53db7ac9253040` |
| 17 | `theorem` | [exists_measurable_le_lintegral_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/exists-measurable-le-lintegral-eq.md) | 137 | `result-track:7efaa5f3340ba94217f36b532e4505ede4563310976cbd72f1e80cebbfab0d92` |
| 18 | `theorem` | [lintegral_eq_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-eq-nnreal.md) | 156 | `result-track:f1f51dca00bcaa8f9b76d8e8dd87a866b422cfc3a2e44508a2154ed81a280fe8` |
| 19 | `theorem` | [exists_simpleFunc_forall_lintegral_sub_lt_of_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/exists-simplefunc-forall-lintegral-sub-lt-of-pos.md) | 178 | `result-track:2653ee735a7bc34919287daf7ae42cf4bb22b63ecc9c5b2924d83fc1366f4eaa` |
| 20 | `theorem` | [iSup_lintegral_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/isup-lintegral-le.md) | 196 | `result-track:9a3b9764a1a45604bb6ef9b5cac06d0853d6c4bae06d6a1740e97295e3841d66` |
| 21 | `theorem` | [iSup₂_lintegral_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/isup-lintegral-le-source-edition-2.md) | 201 | `result-track:cb906697bc9fd9f83e550ebde74dbd10d177a43c62b215b783cd9440a2452c51` |
| 22 | `theorem` | [le_iInf_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/le-iinf-lintegral-source-edition-2.md) | 206 | `result-track:c7f3721742c000086456158f625deaf306bb043fe2c64524611543aa19d58d65` |
| 23 | `theorem` | [le_iInf₂_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/le-iinf-lintegral.md) | 211 | `result-track:48bbdf7c330ba57837b2a8d163a0cf20abcfe7ad99d16f6961ca1aef2d36409a` |
| 24 | `theorem` | [lintegral_mono_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-mono-ae.md) | 216 | `result-track:4b8512560a30eeaaf4f88f9873fbff1b26ac7928dc7ff3d737986ae94cff9adc` |
| 25 | `theorem` | [setLIntegral_mono_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/setlintegral-mono-ae-source-edition-2.md) | 238 | `result-track:ed1f648b648daa7db1090c7101fd50702b1dc7ad98663c52dd7e2273861d2e0b` |
| 26 | `theorem` | [setLIntegral_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/setlintegral-mono-source-edition-2.md) | 247 | `result-track:b9d1d3136a8d03c9d04d1e0c739d16d80a4525ae5368d9ffb33fdd4c00031c20` |
| 27 | `theorem` | [setLIntegral_mono_ae'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/setlintegral-mono-ae.md) | 251 | `result-track:019ae5771779607ba4058695a7bda1b0f21c9085fbc02054251ccffc474fb1d3` |
| 28 | `theorem` | [setLIntegral_mono'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/setlintegral-mono.md) | 255 | `result-track:8cf8effb821fd98b905fc85ea32ffc9c4fae5765f99c5353e9be725959c51bfa` |
| 29 | `theorem` | [setLIntegral_le_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/setlintegral-le-lintegral.md) | 259 | `result-track:bba2ff6d20960b609c506068b99cda9b56d91de5dfe7d11b33035196d016397c` |
| 30 | `theorem` | [lintegral_congr_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-congr-ae.md) | 263 | `result-track:a455dd77b084e7264cca891a21e38b57ffa13be9eeb325f7d4d1029cffe24e80` |
| 31 | `theorem` | [lintegral_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-congr.md) | 266 | `result-track:6166a08d1e334f55427905d11b07f383709a07abdf2dca6d4c1a554f619f3382` |
| 32 | `theorem` | [setLIntegral_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/setlintegral-congr.md) | 269 | `result-track:1a61aa7ca9696dc011b937d3db9f156dda8062355cc1569810449d4c249d138d` |
| 33 | `theorem` | [setLIntegral_congr_fun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/setlintegral-congr-fun.md) | 272 | `result-track:f996dc7584bb16d3cf4aa3eaad4975aea3784f7fffb3c123a3807262b1a9f609` |
| 34 | `theorem` | [lintegral_eq_zero_iff'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-eq-zero-iff.md) | 285 | `result-track:bdfed408f4bd9df61a572e24324fddbaba23903d9ed2c4f010bc04f60dbd5163` |
| 35 | `theorem` | [lintegral_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-eq-zero-iff-source-edition-2.md) | 311 | `result-track:ef1badf9ee5479464ae5d69f22020c485523752116783e95669e163ba77cb903` |
| 36 | `theorem` | [setLIntegral_eq_zero_iff'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/setlintegral-eq-zero-iff.md) | 316 | `result-track:1dc59de83d6f1008f2628fc579bde8429338b7bd0a22d431dabbc29c3eae4182` |
| 37 | `theorem` | [setLIntegral_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/setlintegral-eq-zero-iff-source-edition-2.md) | 321 | `result-track:e2048ee35b2a39d62436b409ccc7c90a640bcb3fb69278b71def7719970d20f8` |
| 38 | `theorem` | [lintegral_pos_iff_support](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-pos-iff-support.md) | 325 | `result-track:f780bfb9a919b6abaa870f79115768b03bd2fa1e7be5c2b0a9d9004c96843c8b` |
| 39 | `theorem` | [setLIntegral_pos_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/setlintegral-pos-iff.md) | 329 | `result-track:fcda6866b6143cbf3824ccbb5762dc06002146681323d536a8a4d5ad49cb4ee0` |
| 40 | `theorem` | [exists_pos_setLIntegral_lt_of_measure_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/exists-pos-setlintegral-lt-of-measure-lt.md) | 339 | `result-track:c4cefd1106fa92295129774a5c907967bdfdf5eb562837b6a46e6c20827bde15` |
| 41 | `theorem` | [tendsto_setLIntegral_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/tendsto-setlintegral-zero.md) | 372 | `result-track:b58361ebdf3b62a7a5889bbee39cf4849eb38122c113c495674980d7528ab213` |
| 42 | `theorem` | [lintegral_smul_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-smul-measure.md) | 382 | `result-track:30fba9f53c7276c26a60e2aa487c46a17e9b900823af4b8d726f3e58edf8dee4` |
| 43 | `lemma` | [setLIntegral_smul_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/setlintegral-smul-measure.md) | 386 | `result-track:5b9fc7003035dab4c54d4f5f8ac0dac29365d56bd515d4ef63061fc5db4c80d1` |
| 44 | `theorem` | [lintegral_zero_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-zero-measure.md) | 392 | `result-track:3e0cabaf544fe88bddade6b3f4cc3cafddc4f09bfc9aa5397965eb8bbd823262` |
| 45 | `theorem` | [lintegral_add_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-add-measure.md) | 397 | `result-track:3262ab19177df9042f7cb6bfb04709230c9b632e7d754a47280c075db22da411` |
| 46 | `theorem` | [lintegral_finset_sum_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-finset-sum-measure.md) | 407 | `result-track:e4e5bda6ef5a64fe027be5cbbdbe1e2333c922d1d2df1f7fb991c01bb657cc7f` |
| 47 | `theorem` | [lintegral_sum_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-sum-measure.md) | 416 | `result-track:704025c6acdd5aa259a08e6a52125cff431d3da3b9d7bf4564fc191bec83219c` |
| 48 | `theorem` | [hasSum_lintegral_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/hassum-lintegral-measure.md) | 422 | `result-track:db0c5472fde26b7668db4b26f16646e7c4348f63542a3e481c8dfd637e7968e7` |
| 49 | `theorem` | [lintegral_of_isEmpty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-of-isempty.md) | 427 | `result-track:0657e0bd58e7c54ed55c582104552f0bb8a79c30c0514fd32c7249310b624dff` |
| 50 | `theorem` | [setLIntegral_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/setlintegral-empty.md) | 432 | `result-track:ddd7ec4dbb41dc10e02729da49fe6b8ee2511fe0c3beebf65bbb648d8c091723` |
| 51 | `theorem` | [setLIntegral_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/setlintegral-univ.md) | 435 | `result-track:46c90ece3d8a2bc87bd2a44ac21608179f01fffd71c9c54b348db90ccecf43ec` |
| 52 | `theorem` | [setLIntegral_measure_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/setlintegral-measure-zero.md) | 438 | `result-track:3ba07aa4f74131b38de3bf4a7471bb30d3f8d34f7b97c10de9ced10d1709f814` |
| 53 | `theorem` | [lintegral_rw₁](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-rw.md) | 444 | `result-track:7ea1a494d3fdb2de7606d831dd34b328e3b6929b7c0c125208f99287ecb3716e` |
| 54 | `theorem` | [lintegral_rw₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-rw-source-edition-2.md) | 449 | `result-track:d39b07f6d8358a1272fa50f2a707852d8405bbaec465c29405f907abeb8c6df9` |
| 55 | `theorem` | [lintegral_indicator_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-indicator-le.md) | 453 | `result-track:8282385e661a4f861d5bbdf6325fbc2183791ead342455e884b1090568b4e508` |
| 56 | `theorem` | [lintegral_indicator](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-indicator-source-edition-2.md) | 470 | `result-track:5f8fbe75dc5baf71ca838b9afefe419c4f34a76e9e5d4bc1bd129acc739d9814` |
| 57 | `lemma` | [setLIntegral_indicator](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/setlintegral-indicator-source-edition-2.md) | 478 | `result-track:e3f1363fefb8bfcf260cef85acdda3159173cc3236f4f3b59dbd5edd0aa17adc` |
| 58 | `theorem` | [lintegral_indicator₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-indicator.md) | 482 | `result-track:18eb359940849e815156a421131f16190ca7e385a16756ff94553cc8ad91d880` |
| 59 | `lemma` | [setLIntegral_indicator₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/setlintegral-indicator.md) | 488 | `result-track:3feb91717db4d342424da10b086aedb11df32725f3364c204b8a9dc7e4780f0e` |
| 60 | `theorem` | [lintegral_indicator_const_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-indicator-const-le.md) | 493 | `result-track:9d3f4c97ebcdd944dc9e7b8d5027b6d62163b04592a0d26b6e969332827ad611` |
| 61 | `theorem` | [lintegral_indicator_const₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-indicator-const.md) | 497 | `result-track:3291cefcd2c22136934a89b1d70cc396e7a23e49a79748fc2231fac526a9ba93` |
| 62 | `theorem` | [lintegral_indicator_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-indicator-const-source-edition-2.md) | 501 | `result-track:6931fadfc1ac7c2e93022dad2bb64bb98e6ae9e0eeab1e4b466702938866060e` |
| 63 | `lemma` | [setLIntegral_eq_of_support_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/setlintegral-eq-of-support-subset.md) | 505 | `result-track:fd229ba766b0106229d1f26421d7a3cb9645cae572cc6616ebdfcf976dc55bdf` |
| 64 | `theorem` | [setLIntegral_eq_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/setlintegral-eq-const.md) | 515 | `result-track:1abe74d334f646d656f6ddaac243e2688a9cedec8e07d7742b3f801f662d4add` |
| 65 | `theorem` | [lintegral_indicator_one_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-indicator-one-le.md) | 522 | `result-track:7180709be78546f14c4a6ce62ad71f4404f26560c62a2d19014f8498768acf4c` |
| 66 | `theorem` | [lintegral_indicator_one₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-indicator-one-source-edition-2.md) | 526 | `result-track:2267fd7dbb8e63360598f503295a0b6596d98a109dbc3ef9cf1282814901d7d8` |
| 67 | `theorem` | [lintegral_indicator_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-indicator-one.md) | 530 | `result-track:06af6771e339c584c10d2fb1e3f324e12289aa6fa1ed023b7a07eba219479e77` |
| 68 | `theorem` | [Measure.ext_iff_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/measure-ext-iff-lintegral.md) | 534 | `result-track:6bede58fb35648c6c8c12cfe6009c11b43ba7ba29d4c13168900018632f6583a` |
| 69 | `theorem` | [Measure.ext_of_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/measure-ext-of-lintegral.md) | 542 | `result-track:7dd304f26c0185d6dcf9720038ea133ee48e107e9d0b75904ed5dd2c5ce25baa` |
| 70 | `theorem` | [lintegral_iUnion₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-iunion.md) | 550 | `result-track:8f1a48c6ec7fdbe2b186b9325a594dcaafc6b1b06ad7acb770861c43044e9dff` |
| 71 | `theorem` | [lintegral_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-iunion-source-edition-2.md) | 555 | `result-track:c6c3b274a1a526c49047d3d1e3721fe1b768a1ce84b703b71f237b3edb1c98dd` |
| 72 | `theorem` | [lintegral_biUnion₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-biunion.md) | 560 | `result-track:4da052f08801e13528dfa0b7ec83ae133b3f6112a77460683891da42d34972de` |
| 73 | `theorem` | [lintegral_biUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-biunion-source-edition-2.md) | 566 | `result-track:72be59c661d84c2840c6057b11a06d56f76c9557cfe9aad9ac775e6c3c9210c5` |
| 74 | `theorem` | [lintegral_biUnion_finset₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-biunion-finset.md) | 571 | `result-track:cf60b868c1e6e84e5af8efda13f2252de6618ece306a17bd4d3f4695b92766cf` |
| 75 | `theorem` | [lintegral_biUnion_finset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-biunion-finset-source-edition-2.md) | 576 | `result-track:f73d594f44df1fd2a0cc29fe28de25124ae1aad6fe139923e3800eadc11dc730` |
| 76 | `theorem` | [lintegral_iUnion_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-iunion-le.md) | 581 | `result-track:2e582ca62a7e13cc8c9ea354568a9fe43467be97ca419e44f3c06502dee43772` |
| 77 | `theorem` | [lintegral_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-union.md) | 586 | `result-track:7253ba792514832e971ead86adb85ce15ad7312fa620f5d17905a886cdb112d0` |
| 78 | `theorem` | [lintegral_union_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-union-le.md) | 590 | `result-track:1d5972b2fbb7301e7984bce30eea89b385b7b10b3aee6686f642ac97787d92bb` |
| 79 | `theorem` | [lintegral_inter_add_diff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-inter-add-diff.md) | 595 | `result-track:ab7fc8de449c691e0ccdbc3b89d0be329522102771e072c1b3439923694abae8` |
| 80 | `theorem` | [lintegral_add_compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-add-compl.md) | 599 | `result-track:c0d5dae1f8e24ed6152cb762a2daa799211609335bbeb3dbb9c2c89a7ce62564` |
| 81 | `lemma` | [lintegral_piecewise](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-piecewise.md) | 603 | `result-track:71c2127bcfe46d6a68ebda690090d8c1968da42e93fbed992d1a11f80dda3559` |
| 82 | `theorem` | [setLIntegral_compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/setlintegral-compl.md) | 610 | `result-track:0db2cf1d19b49497f41733e072f6fb4eeb6bd1556be3d19345f14005fcbff145` |
| 83 | `theorem` | [setLIntegral_iUnion_of_directed](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/setlintegral-iunion-of-directed.md) | 617 | `result-track:7ef8750a4343e7b7713cbea3529153e9dc2d8f8bd71681c98433c77e8c7c99c1` |
| 84 | `theorem` | [lintegral_max](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/lintegral-max.md) | 623 | `result-track:d0d3295a525f725aac99897f4919b31eaf2b49efce31f7109905a122668c7c5f` |
| 85 | `theorem` | [setLIntegral_max](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/setlintegral-max.md) | 633 | `result-track:078f2ebcb78e3cac7fad5664daca44779bc210e71cbdaf13a0de3cbbefa20b9e` |
| 86 | `theorem` | [setLIntegral_lt_top_of_le_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/setlintegral-lt-top-of-le-nnreal.md) | 641 | `result-track:99640f6a0ca13fd45cee14fabfb029d72e09d3f2ba6c97035e6a91e6b405d39d` |
| 87 | `theorem` | [setLIntegral_lt_top_of_bddAbove](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/setlintegral-lt-top-of-bddabove.md) | 649 | `result-track:0bb76db30bfa3fbda58cb653e5ebe10c68701703a2ec72de1386f06239a61335` |
| 88 | `theorem` | [setLIntegral_lt_top_of_isCompact](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/LebesgueBasicNamespacedSourceEdition3.lean/declarations/setlintegral-lt-top-of-iscompact.md) | 654 | `result-track:f4874acc517bb5014b0a1a7c5dfd3bebe1c8aaab6aa38363d7274b980c80548d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd519d6a0afca4dba66a0b93a99270bc0d317df0eb1aeaff29302ef7385c8f09 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantff7edbc81092affda748153d90ddde7181f2b41512722f7ac5bbb0f4a22ee4c0.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Basic/Variantff7edbc81092affda748153d90ddde7181f2b41512722f7ac5bbb0f4a22ee4c0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
