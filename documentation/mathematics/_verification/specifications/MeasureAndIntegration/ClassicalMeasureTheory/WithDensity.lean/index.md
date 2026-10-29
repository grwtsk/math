# Verification target: With Density

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15f2d908441c8eadb070aec9ced73b7137e507a4",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/WithDensity/Variantd51b699604abece200750c346c5184fcda286daf11f6dcffcbe88685ec7e1936.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15f2d908441c8eadb070aec9ced73b7137e507a4`.

Source path: `GRWTSK/Analysis/MeasureTheory/WithDensity/Variantd51b699604abece200750c346c5184fcda286daf11f6dcffcbe88685ec7e1936.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/WithDensity/Variantd51b699604abece200750c346c5184fcda286daf11f6dcffcbe88685ec7e1936.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Lebesgue.Countable` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Decomposition.Exhaustion` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Prod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Measure.withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/measure-withdensity.md) | 35 | `declaration-track:9786b1c81508e84585c96662c4dc8f0421ff0047023eb5357d7d789fd1b2d704` |
| 2 | `theorem` | [withDensity_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-apply.md) | 40 | `result-track:7a0096d24456868badb9b02742f7e28f5569575451d358dbffc194d8ed9dd957` |
| 3 | `theorem` | [withDensity_apply_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-apply-le.md) | 44 | `result-track:302432f69da353cbdb59668ce26364ac9386ec4f5aefec8b722de83bd18398fe` |
| 4 | `theorem` | [withDensity_apply'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-apply-source-edition-2.md) | 68 | `result-track:861f79f99b1bbfc124a594d2727519a4bf04fc53e1364c7d319eaa4888220124` |
| 5 | `lemma` | [withDensity_zero_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-zero-left.md) | 78 | `result-track:765cc175a480175cec6c356c6874923ae5e20345a45fbbf1dcc6282f8967b590` |
| 6 | `theorem` | [withDensity_congr_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-congr-ae.md) | 83 | `result-track:7aae67bb6938acfade28e161299a291ee8fb29f5c92bf1f0444e808c5beb8d58` |
| 7 | `lemma` | [withDensity_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-mono.md) | 89 | `result-track:475bc4cfcd6cf343030525b20585b5a882a2236547abb12caff29e207fede7fd` |
| 8 | `theorem` | [withDensity_add_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-add-left.md) | 96 | `result-track:0f5a760f26f4f80df7171d6d3c1cecf8169086848469cc21f8ad6c73aa09efba` |
| 9 | `theorem` | [withDensity_add_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-add-right.md) | 103 | `result-track:f98609f4d73d5ae09a90dbc754d65fa8e0775493643208e1ada6ec59b3e9c8ac` |
| 10 | `theorem` | [withDensity_add_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-add-measure.md) | 107 | `result-track:72dd893e78de6226d7661be49c0f9c891d465698ba51016211f4f2952fed49cb` |
| 11 | `theorem` | [withDensity_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-sum.md) | 112 | `result-track:064fb64ddd29fa2c6a2bbcd6ff86acb5bc8760b47ae309b7c572c414c91f5697` |
| 12 | `theorem` | [withDensity_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-smul.md) | 117 | `result-track:895f8082bb1a755d6037d2a8d758f004386742c1983d1522951581d017782f6a` |
| 13 | `theorem` | [withDensity_smul'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-smul-source-edition-2.md) | 124 | `result-track:cca093eafe69f43fa96f752c3634dff031a28a5af5435507523e8da66892ecc6` |
| 14 | `theorem` | [withDensity_smul_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-smul-measure.md) | 131 | `result-track:ae1caa18e3a9930233fcf9ca3e3dfe5e4933bb85a89a8f91150b46ceb07adf71` |
| 15 | `theorem` | [isFiniteMeasure_withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/isfinitemeasure-withdensity.md) | 136 | `result-track:00420ff022411d9b211522eb1636b82f43262cb25cd0045d2bb50e5678ee73b5` |
| 16 | `theorem` | [withDensity_absolutelyContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-absolutelycontinuous-source-edition-2.md) | 141 | `result-track:bd9b0dc1391efed157750e578072650f8981246e2ee8ce6dfd2fbd5584e55412` |
| 17 | `instance` | [noAtoms_withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/noatoms-withdensity.md) | 147 | `declaration-track:414c4e29648b67b9ca29a780de26cc603b899493a32c0dc384e2262be7551d70` |
| 18 | `theorem` | [withDensity_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-zero.md) | 151 | `result-track:8b048190123768073753a2d01413a538c7e9ac5212debf0db58bd0e1008050d7` |
| 19 | `theorem` | [withDensity_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-one.md) | 156 | `result-track:5e7aad12d54679066bb524221b038fa5077eecf12480dc460c633a70e4a32321` |
| 20 | `theorem` | [withDensity_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-const.md) | 161 | `result-track:84d565023734eb953d0fb64faaf48b7f2266919b8e2a44383bbfff1f81e7c855` |
| 21 | `theorem` | [withDensity_tsum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-tsum.md) | 165 | `result-track:4ca963499ff9315860c5327685b0238afbe089019fcf9f99b4b90354d4bef4cb` |
| 22 | `theorem` | [withDensity_indicator](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-indicator.md) | 173 | `result-track:ad2b4b9d33cde4f033056f97c4e496c987773955f1e67f1100e06496e79d3234` |
| 23 | `theorem` | [withDensity_indicator_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-indicator-one.md) | 179 | `result-track:3e336abf3efe8d8ea14be18ba4db0764d459dfcafbf021765acb8d9dda6971c4` |
| 24 | `theorem` | [withDensity_ofReal_mutuallySingular](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-ofreal-mutuallysingular.md) | 183 | `result-track:9f7a345c3690c267d9c690c85d485936acf03c8c70f53eebd41eefb354657357` |
| 25 | `theorem` | [restrict_withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/restrict-withdensity.md) | 196 | `result-track:a96eadcf279ce0d96cad6344961af3d19abc12a2fcad04a82dd4d66b02bf0443` |
| 26 | `theorem` | [restrict_withDensity'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/restrict-withdensity-source-edition-2.md) | 202 | `result-track:fa729b89483a75355f4238e770a6f1105cfc4ac0a2c63fd58b7dd66cb6906251` |
| 27 | `lemma` | [trim_withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/trim-withdensity.md) | 208 | `result-track:a95070a7f5ce2822c5bd98867118cfcc4552baadd36b7ae6f84bbc3e6ceae42d` |
| 28 | `lemma` | [Measure.MutuallySingular.withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/measure-mutuallysingular-withdensity.md) | 215 | `result-track:fd13847d6303da22e82df1afd3f01a5529b527dd7e7f67e936a0d779e21eaf28` |
| 29 | `theorem` | [withDensity_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-eq-zero-iff.md) | 220 | `result-track:386aab95dd992aaba8abbeab18f33f6d549d438c252532fe83e8191ff9db78be` |
| 30 | `theorem` | [withDensity_apply_eq_zero'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-apply-eq-zero-source-edition-2.md) | 226 | `result-track:eacae048841c8d97f5c7aac608b9212084c29fb60edffa0fbe0eefb19f9c79bb` |
| 31 | `theorem` | [withDensity_apply_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-apply-eq-zero.md) | 268 | `result-track:af627a2bc30388fb344baca04a5f1b4ac3ac578cde08e3e1a37c5743b6ff6eaf` |
| 32 | `theorem` | [ae_withDensity_iff'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/ae-withdensity-iff.md) | 272 | `result-track:79a69cba650a6e5a3a4615bd1d91779d977fa1d4ddbc2ef3ab8b54a169cc27ec` |
| 33 | `theorem` | [ae_withDensity_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/ae-withdensity-iff-source-edition-2.md) | 279 | `result-track:8ddff2759a33ca1e811022ef35969135529a2f7197fb0945dbb439f00cad831f` |
| 34 | `theorem` | [ae_withDensity_iff_ae_restrict'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/ae-withdensity-iff-ae-restrict.md) | 283 | `result-track:8b3aaf8e6e6ec78d210730acf71b950d4e5a5ecbc3dca56f7ade2e4d39bc10d7` |
| 35 | `theorem` | [ae_withDensity_iff_ae_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/ae-withdensity-iff-ae-restrict-source-edition-2.md) | 299 | `result-track:af887d5cba78618428f9f9df8ef265194f11c5ca90fe05f42cd30eedddc98c44` |
| 36 | `theorem` | [aemeasurable_withDensity_ennreal_iff'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/aemeasurable-withdensity-ennreal-iff.md) | 303 | `result-track:2eee33b4f7ae04f569b06274983ddbf10ef5e74afca62a26c58a72536bc916b2` |
| 37 | `theorem` | [aemeasurable_withDensity_ennreal_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/aemeasurable-withdensity-ennreal-iff-source-edition-2.md) | 333 | `result-track:b8c766388320fc38a08811a296ffbac9929a94c75969c416fc5f014be92dcd60` |
| 38 | `theorem` | [lintegral_withDensity_eq_lintegral_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/lintegral-withdensity-eq-lintegral-mul-source-edition-3.md) | 349 | `result-track:42e1c5bd3c76e84ec6618f688b749f702034bad89a591be1ab574c86d66aa4cb` |
| 39 | `theorem` | [setLIntegral_withDensity_eq_setLIntegral_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/setlintegral-withdensity-eq-setlintegral-mul.md) | 361 | `result-track:ec11f8a993068cdea566a342889036c3b78e870464d62c688d88f380e9981148` |
| 40 | `theorem` | [lintegral_withDensity_eq_lintegral_mul₀'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/lintegral-withdensity-eq-lintegral-mul.md) | 370 | `result-track:2ea8095fd212072b659283055611dc54cabef5d96e026e94a2dad10eee3f4251` |
| 41 | `lemma` | [setLIntegral_withDensity_eq_lintegral_mul₀'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/setlintegral-withdensity-eq-lintegral-mul-source-edition-2.md) | 401 | `result-track:e6a5a70146ead4cd08e0995c7b4ea96d78e068d07e99a87ec0cb4f0e7d936db7` |
| 42 | `theorem` | [lintegral_withDensity_eq_lintegral_mul₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/lintegral-withdensity-eq-lintegral-mul-source-edition-2.md) | 409 | `result-track:398128adc71b9c470bbe6be45a0a12b9897bc0ae44ab442afa2af7b25a89509a` |
| 43 | `lemma` | [setLIntegral_withDensity_eq_lintegral_mul₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/setlintegral-withdensity-eq-lintegral-mul.md) | 414 | `result-track:c738fadd8dc6625e1527b21c2247717b53af01316c7aa02d1e72a085b0e38dda` |
| 44 | `theorem` | [lintegral_withDensity_le_lintegral_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/lintegral-withdensity-le-lintegral-mul.md) | 421 | `result-track:4d28780da5aa22fa5c558b175de8c452ec67806d7e33f58655dda54f56d7a0d4` |
| 45 | `theorem` | [lintegral_withDensity_eq_lintegral_mul_non_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/lintegral-withdensity-eq-lintegral-mul-non-measurable.md) | 429 | `result-track:4e6c7f46c28fd3fc80318100c0b92a940c7c9a6017a91dc5b8974f9f5989b15b` |
| 46 | `theorem` | [setLIntegral_withDensity_eq_setLIntegral_mul_non_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/setlintegral-withdensity-eq-setlintegral-mul-non-measurable-source-edition-2.md) | 454 | `result-track:7c82b8313f5a8c0b3254055cfd83c899122952229f86f60dcdd759af628db8ab` |
| 47 | `theorem` | [lintegral_withDensity_eq_lintegral_mul_non_measurable₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/lintegral-withdensity-eq-lintegral-mul-non-measurable-source-edition-2.md) | 460 | `result-track:9ec171d528d1266d4562fcd45f6992699153a5a868f87091a5b5ff72d615df11` |
| 48 | `theorem` | [setLIntegral_withDensity_eq_setLIntegral_mul_non_measurable₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/setlintegral-withdensity-eq-setlintegral-mul-non-measurable.md) | 478 | `result-track:7b57b87475463c8e48f1c7221fe5215d3eb9f2ba6a0c01b9a6958eaf4826e335` |
| 49 | `theorem` | [setLIntegral_withDensity_eq_setLIntegral_mul_non_measurable₀'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/setlintegral-withdensity-eq-setlintegral-mul-non-measurable-source-edition-3.md) | 484 | `result-track:cab947df73ba1d4bc9321ed815a576b0e02b5e780873890924185bdfffa95aa0` |
| 50 | `theorem` | [withDensity_mul₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-mul-source-edition-2.md) | 490 | `result-track:8dff0ba84282e22017af8100993b08b642381e390d0495fb8c41dbcd142e0333` |
| 51 | `theorem` | [withDensity_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-mul.md) | 497 | `result-track:4b1077cf2080c0964d064e38a58253ddd9cfe593c5ad853a9977deb992cd7aa8` |
| 52 | `lemma` | [withDensity_inv_same_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-inv-same-le.md) | 501 | `result-track:5519886ed6af32be20ab82c58220363ef8a847679469ded274438a6052f520ad` |
| 53 | `lemma` | [withDensity_inv_same₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-inv-same-source-edition-2.md) | 516 | `result-track:da8a7b5165f93dda890b2dcf5608a4ed5142d4e523abb7612dbcc33234a0273d` |
| 54 | `lemma` | [withDensity_inv_same](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-inv-same.md) | 526 | `result-track:bb3886ba5dbf61a36e6ea653fb9d0fa8eb624f1fd64c513f4918ed5320c88d11` |
| 55 | `lemma` | [withDensity_absolutelyContinuous'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-absolutelycontinuous.md) | 533 | `result-track:ac81617974561e768729cdb8fab70195c902842c9bb7924708d1980d8f4a6676` |
| 56 | `theorem` | [withDensity_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/withdensity-ae-eq.md) | 546 | `result-track:7351d5d8930eebaea3dc2f7aefd284611c952cdcd5350b6b2d1bcba55b47e7bc` |
| 57 | `instance` | [SigmaFinite.withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/sigmafinite-withdensity.md) | 557 | `declaration-track:887b69faade4f694556daf0aa2aed997095cd63ef6df7d933da2fd9e365c0b91` |
| 58 | `lemma` | [SigmaFinite.withDensity_of_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/sigmafinite-withdensity-of-ne-top-source-edition-2.md) | 569 | `result-track:fe7528680eeb2b308ed8a090715b6c348f1027ba8a8d276f6daa232d549fed1d` |
| 59 | `lemma` | [SigmaFinite.withDensity_of_ne_top'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/sigmafinite-withdensity-of-ne-top.md) | 575 | `result-track:151c987716c47e99d09d3eb530b71e20a52bd5ad47a33f1dd496b553137bab0c` |
| 60 | `instance` | [SigmaFinite.withDensity_ofReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/sigmafinite-withdensity-ofreal.md) | 579 | `declaration-track:fe89ba92364c7761f6327c93ea7840d86c56b0ec0cb8031638babd502d3a5471` |
| 61 | `theorem` | [exists_measurable_le_withDensity_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/exists-measurable-le-withdensity-eq.md) | 586 | `result-track:48695a84ac325ec549dc0aff9c5523d44bffd635aa7f444baec102fbfe1fadf2` |
| 62 | `instance` | [Measure.withDensity.instSFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/measure-withdensity-instsfinite.md) | 594 | `declaration-track:381484dbdbe51676a3a314ba5d405bb6482b25349ae1e1222d94f4561f1106b9` |
| 63 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/instance.md) | 623 | `declaration-track:e6b059b1994112d8bcd19d2b923a6ddf03add6f348bad1f731ca579740134cf2` |
| 64 | `theorem` | [sFinite_of_absolutelyContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/sfinite-of-absolutelycontinuous.md) | 628 | `result-track:d1d453188a9d250913db344d83c9607738b4241f4565385a57b1b13859d9bffe` |
| 65 | `theorem` | [prod_withDensity_left₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/prod-withdensity-left.md) | 640 | `result-track:0f88461da403b14b2d6038b2365c073370ad657e94be31f534da954be02ba289` |
| 66 | `theorem` | [prod_withDensity_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/prod-withdensity-left-source-edition-2.md) | 650 | `result-track:b9cdd3bbaabc9cf4f55a40905bdc2ffe4af9887a97b22953473608d26c93b571` |
| 67 | `theorem` | [prod_withDensity_right₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/prod-withdensity-right-source-edition-2.md) | 654 | `result-track:e81e74dfa9717a9bbe1289c90ead062d17bb3f11808ed87feb1bef49a58c985d` |
| 68 | `theorem` | [prod_withDensity_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/prod-withdensity-right.md) | 664 | `result-track:47c6166da169e907396183b044c63b24a9c6dbf39af6fa3d83f5f7533038d414` |
| 69 | `theorem` | [prod_withDensity₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/prod-withdensity-source-edition-2.md) | 668 | `result-track:70377ca6124c46b7d8b705254e37d787e16a0bdf985edfda9cb669fa4beaf5fc` |
| 70 | `theorem` | [prod_withDensity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/prod-withdensity.md) | 675 | `result-track:687ce268475bf44fffb7b24784f141706a32b3568b3fa03c0f064cef1c0c29ef` |
| 71 | `lemma` | [Measure.prod_smul_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/measure-prod-smul-right.md) | 681 | `result-track:be862244593b9e28afbe7906833f08f263b4406d9eec767f23e2140edf0bde2c` |
| 72 | `lemma` | [IsLocallyFiniteMeasure.withDensity_coe](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/islocallyfinitemeasure-withdensity-coe.md) | 691 | `result-track:27ed9976fc0b607e4d1bcf3374dabbc04afa2726f19905cafd32a376bc6335dc` |
| 73 | `lemma` | [IsLocallyFiniteMeasure.withDensity_ofReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensity.lean/declarations/islocallyfinitemeasure-withdensity-ofreal.md) | 700 | `result-track:6071a72d272de17fcd76568972db86ac08057f2ef45e0368151b7e6a16cde80f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f09c7942395e620ccfd866b66130ecc171699d7557d8ec849697dd8b2109bc28 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/WithDensity/Variantd51b699604abece200750c346c5184fcda286daf11f6dcffcbe88685ec7e1936.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/WithDensity/Variantd51b699604abece200750c346c5184fcda286daf11f6dcffcbe88685ec7e1936.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
