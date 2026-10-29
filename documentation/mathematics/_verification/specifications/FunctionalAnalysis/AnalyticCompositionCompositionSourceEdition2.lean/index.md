# Verification target: Analytic Composition Composition Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c3cfff6ea4c5df1007dd6f9f2bfc802f6693ab4",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Composition/Variant32dda6b83a55d5ef52d1b2b9d9e2dada0df3f0ae5ed995ef31e44aa442494dc6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/index.md) · [Full source](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c3cfff6ea4c5df1007dd6f9f2bfc802f6693ab4`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Composition/Variant32dda6b83a55d5ef52d1b2b9d9e2dada0df3f0ae5ed995ef31e44aa442494dc6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Composition/Variant32dda6b83a55d5ef52d1b2b9d9e2dada0df3f0ae5ed995ef31e44aa442494dc6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Enumerative.Composition` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [applyComposition](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/applycomposition.md) | 100 | `declaration-track:430899288bf571aaad8698a5f1bbf6b022f3f90398bc086ccf4968e6af7f9843` |
| 2 | `theorem` | [applyComposition_ones](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/applycomposition-ones.md) | 103 | `result-track:81ada85edfb68d97ff377e855fa37f29d902ecd4f035d6dd43d60355ffd4b2af` |
| 3 | `theorem` | [applyComposition_single](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/applycomposition-single.md) | 113 | `result-track:113db6b9b23d6cb9905965c646487ee9b602dbed38588cc10bd4b5ac7fdada9f` |
| 4 | `theorem` | [removeZero_applyComposition](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/removezero-applycomposition.md) | 126 | `result-track:e7cb8d6d3f8908e4d2e134c6f09ea10ad7cc2794424e8e95fba9f3e599b30a2c` |
| 5 | `theorem` | [applyComposition_update](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/applycomposition-update.md) | 134 | `result-track:e87dc5fe2037f528f44ed5908afe77b5bc38e094bed77995b72c056df8890d51` |
| 6 | `theorem` | [compContinuousLinearMap_applyComposition](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/compcontinuouslinearmap-applycomposition.md) | 159 | `result-track:8cffe19be0c14106ec1cf3eab094d7b6f732b6b9e7ea90c720fc85942023e961` |
| 7 | `def` | [compAlongComposition](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/compalongcomposition-source-edition-2.md) | 178 | `declaration-track:151bf5db078d1c1b6b533df30d2b50cb94efb6f21c058bc04c925516f91c67f6` |
| 8 | `theorem` | [compAlongComposition_apply](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/compalongcomposition-apply.md) | 189 | `result-track:3af6d1adf1e61c8fe9d25711b74cc2fed3e8cb86a35edd48d313fdd695ff725a` |
| 9 | `def` | [compAlongComposition](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/compalongcomposition.md) | 206 | `declaration-track:06e0b285c16fb9b993ab159e6940124ffdcf6a77e1e9115dfebb4758f3315256` |
| 10 | `theorem` | [compAlongComposition_apply](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/compalongcomposition-apply-source-edition-2.md) | 211 | `result-track:f61f12bdcf70492fc7f097c5fe00ec022cff68174b528842652d0f89f25909a2` |
| 11 | `def` | [comp](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/comp.md) | 225 | `declaration-track:997fced62ee867f0b0a909e2ff085518626c8d3982a00369e042b6a8d30ff78b` |
| 12 | `theorem` | [comp_coeff_zero](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/comp-coeff-zero-source-edition-3.md) | 231 | `result-track:98c217e301d71364d345765399b7e95b6e7df5be82bc2506c9274f3621245fea` |
| 13 | `theorem` | [comp_coeff_zero'](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/comp-coeff-zero.md) | 241 | `result-track:0f2b104067edcc095a3a9b8ab4cde4a3ce182a65c8b176d6ed391321d971d722` |
| 14 | `theorem` | [comp_coeff_zero''](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/comp-coeff-zero-source-edition-2.md) | 247 | `result-track:45fcd08b27df71416a5f24992383712c066ea2f924e402eadd55e299b3ccb2b2` |
| 15 | `theorem` | [comp_coeff_one](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/comp-coeff-one.md) | 252 | `result-track:06644d61f30fb9952a68f58fcd367bb5bf6e71afd5a5800bd409a2f7fa8ba9f5` |
| 16 | `theorem` | [removeZero_comp_of_pos](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/removezero-comp-of-pos.md) | 263 | `result-track:030de5e9bfa2cb8c741b9b38ff374fe64a229fcae160879f4b0f29257d4b3c2d` |
| 17 | `theorem` | [comp_removeZero](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/comp-removezero.md) | 273 | `result-track:4e988e065432e6f9a4593e4af1cb91bb78d1a8700ad90686df122b09e490e39e` |
| 18 | `theorem` | [compAlongComposition_bound](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/compalongcomposition-bound.md) | 288 | `result-track:0e3cbcb55094951af7131a66a406ddf9371040da85d4cbf34b6aa3d4db4bcb31` |
| 19 | `theorem` | [compAlongComposition_norm](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/compalongcomposition-norm.md) | 306 | `result-track:d74f1da8185f09076d8947af6ca5f5a14dd573cd4aa8bb85e3b12df3651294a6` |
| 20 | `theorem` | [compAlongComposition_nnnorm](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/compalongcomposition-nnnorm.md) | 311 | `result-track:01551ba896160ec1d4d42d768bbaa5ed5baae157d810fdaffdddc1de9a82c878` |
| 21 | `def` | [id](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/id.md) | 331 | `declaration-track:27df734c963760ac4d06e3cc717378b0130279eb23840198b4344baa7b53919d` |
| 22 | `theorem` | [id_apply_zero](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/id-apply-zero.md) | 336 | `result-track:6f41572a273b238682848e60311b34ad7cb6314b372133ac06f04880cf36efe4` |
| 23 | `theorem` | [id_apply_one](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/id-apply-one.md) | 341 | `result-track:bdb31f8a6c28466347feeadb8b2e6351350f2c719537145f80b150796d913c33` |
| 24 | `theorem` | [id_apply_one'](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/id-apply-one-source-edition-2.md) | 346 | `result-track:c3c1701074e0cbfd69832b8b4a6b2a1a5aca88b38af028456a5a6da356e8e098` |
| 25 | `theorem` | [id_apply_of_one_lt](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/id-apply-of-one-lt.md) | 353 | `result-track:1a87acdc55238c2369ca5d02a8c54c89e8b7e7f0297e424c4cd4781d46d618e2` |
| 26 | `theorem` | [comp_id](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/comp-id.md) | 363 | `result-track:4805db63d9b2cd362560a0006b3cf2935d8ce85439ecb2f5fc3e5878496afe4e` |
| 27 | `theorem` | [id_comp](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/id-comp-source-edition-2.md) | 393 | `result-track:c6bf1e7ae1765f34f99824e6cb2346a09799ecbd84c12d5d29e6fc86bc844441` |
| 28 | `theorem` | [id_comp'](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/id-comp.md) | 424 | `result-track:ac340ff176653791050444bb57c0f4efa8cbfe688bd4652fdc7530deb65dee74` |
| 29 | `theorem` | [comp_summable_nnreal](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/comp-summable-nnreal.md) | 436 | `result-track:9285766d1589efce0ae3c19931a4e3613e26d937465bb7eedcc2fd92a677b258` |
| 30 | `theorem` | [le_comp_radius_of_summable](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/le-comp-radius-of-summable.md) | 497 | `result-track:079fecfd0b806b2fe9e38901f07e2fad386881b6fe476a697a2f822073366000` |
| 31 | `def` | [compPartialSumSource](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/comppartialsumsource.md) | 529 | `declaration-track:8cac14bc66c3050a98c5d91034fb74cfb711d187174529673f123f7dfcb14b27` |
| 32 | `theorem` | [mem_compPartialSumSource_iff](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/mem-comppartialsumsource-iff.md) | 533 | `result-track:052ed5438d9756e23147189401eab418d4c3bcb07f9f200b4d34a15b82aa219b` |
| 33 | `def` | [compChangeOfVariables](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/compchangeofvariables.md) | 540 | `declaration-track:8e096d7b8aa57046184507e04333e43fa848ab5417e9f1c57a8794d9a11436b0` |
| 34 | `theorem` | [compChangeOfVariables_length](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/compchangeofvariables-length.md) | 549 | `result-track:7cfe7161a65208d17dd9a98037732419935e0f20e57a0cb1f8d2013c01fc375d` |
| 35 | `theorem` | [compChangeOfVariables_blocksFun](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/compchangeofvariables-blocksfun.md) | 556 | `result-track:bdd9c1f9db4cd780bc55241f5ef237a2fcb0dfba6896e5db5b858d26c0cdc545` |
| 36 | `def` | [compPartialSumTargetSet](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/comppartialsumtargetset.md) | 567 | `declaration-track:3ab8bf463027527fae79dde13d77caa71d598dff15b761ba65777f274e4759a9` |
| 37 | `theorem` | [compPartialSumTargetSet_image_compPartialSumSource](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/comppartialsumtargetset-image-comppartialsumsource.md) | 570 | `result-track:4811b4422ffd35fd5c74625e331263b8c7933193f98792dde8a8e30eae91dbcd` |
| 38 | `def` | [compPartialSumTarget](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/comppartialsumtarget.md) | 586 | `declaration-track:9280921828f77fca437115d77bb397388cb3bc565b6488ddef3f7ace9caedf43` |
| 39 | `theorem` | [mem_compPartialSumTarget_iff](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/mem-comppartialsumtarget-iff.md) | 592 | `result-track:3e12e96edd97c2b5b2c3bcf181939cfe67efe897b48bf019ad92ed1cbaea3247` |
| 40 | `theorem` | [compChangeOfVariables_sum](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/compchangeofvariables-sum.md) | 602 | `result-track:cfaa3bee3a8a73b43b4e0646ae1050db763c02bde21361e473d6b42479085447` |
| 41 | `theorem` | [compPartialSumTarget_tendsto_prod_atTop](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/comppartialsumtarget-tendsto-prod-attop.md) | 640 | `result-track:0f83484c99f077717d32f2d2f586a569a0ec43bc879b65b80d29b0c66342fd1b` |
| 42 | `theorem` | [compPartialSumTarget_tendsto_atTop](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/comppartialsumtarget-tendsto-attop.md) | 659 | `result-track:46f4337a5818a4c0eeac8828493b00f0a112b1bf8b8289b471fde14ee24a7ebe` |
| 43 | `theorem` | [comp_partialSum](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/comp-partialsum.md) | 666 | `result-track:ab4c5704e5e2b044914e2afb5167d0af9285a7e7d937edc106b8352dcb282084` |
| 44 | `theorem` | [HasFPowerSeriesWithinAt.comp](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/hasfpowerserieswithinat-comp.md) | 694 | `result-track:23a286facb402f40a62a8df55f6d3d9372d9edaeb74f9dc99bb1877c52ec1cd8` |
| 45 | `theorem` | [HasFPowerSeriesAt.comp](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/hasfpowerseriesat-comp.md) | 816 | `result-track:de5a42e8df33a86ce7cc2713ea34445571550584dbaf21e45b18595cdae24cb5` |
| 46 | `theorem` | [AnalyticWithinAt.comp](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/analyticwithinat-comp.md) | 825 | `result-track:ca70ee5b10caa630cc93e1c45c397c9792835b224da8e2c8bc47334f9612c284` |
| 47 | `theorem` | [AnalyticWithinAt.comp_of_eq](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/analyticwithinat-comp-of-eq.md) | 833 | `result-track:a6f3fd0703b615b454c4d7b8c942c7b72f6483f2e25d7097f06bf00094214ec4` |
| 48 | `lemma` | [AnalyticOn.comp](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/analyticon-comp.md) | 840 | `result-track:9d09f7915bdcb7a032c9b73cef346a4605ccc9d46a95ecd6ab6f5a5fee0c6d22` |
| 49 | `theorem` | [AnalyticAt.comp](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/analyticat-comp-source-edition-2.md) | 848 | `result-track:dd62a614ff01fa9c3db7f6789108c8e8aa7d4742b672bd85756ab82df533fc72` |
| 50 | `theorem` | [AnalyticAt.comp'](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/analyticat-comp.md) | 856 | `result-track:644410a4004050a21d8ed36df42d54004b2edb4d5e5fd12edbf1e5b749940ee3` |
| 51 | `theorem` | [AnalyticAt.comp_of_eq](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/analyticat-comp-of-eq.md) | 861 | `result-track:29afda5ce7b875405a1218fef8e643d32067dd62f39f7b89f5af6cb112c28d62` |
| 52 | `theorem` | [AnalyticAt.comp_of_eq'](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/analyticat-comp-of-eq-source-edition-2.md) | 867 | `result-track:56c307602696a483a78e76495e434a417987ba81ca6a4da81fc9cfbcc7cff76e` |
| 53 | `theorem` | [AnalyticAt.comp_analyticWithinAt](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/analyticat-comp-analyticwithinat.md) | 871 | `result-track:ebdc51e2df3037d6496bd5eff03339addcbce34672433f244f9037ebfb6c071c` |
| 54 | `theorem` | [AnalyticAt.comp_analyticWithinAt_of_eq](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/analyticat-comp-analyticwithinat-of-eq.md) | 877 | `result-track:343a2f500107dfc4892d00255d0f1defb462dee5f85e9e43079a4eddf2ffa6d7` |
| 55 | `theorem` | [AnalyticOnNhd.comp'](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/analyticonnhd-comp-source-edition-2.md) | 885 | `result-track:77d79b407e0492cf21ced8e178a37724693773c6f99af17958d9b6708071709a` |
| 56 | `theorem` | [AnalyticOnNhd.comp](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/analyticonnhd-comp.md) | 889 | `result-track:761b5b5844707540945ebea6a5fda097b3ca00a931b18daa3f71b390c5bcbbff` |
| 57 | `lemma` | [AnalyticOnNhd.comp_analyticOn](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/analyticonnhd-comp-analyticon.md) | 894 | `result-track:422df8e2cd54d76105a667dba40bc43dbafb2a51b9c3936a2c8d947ba6138247` |
| 58 | `theorem` | [sigma_composition_eq_iff](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/sigma-composition-eq-iff.md) | 961 | `result-track:f702f3555b7f9794443d6ced7759a6e01966f6e3d1c84223b05da353522ee4d0` |
| 59 | `theorem` | [sigma_pi_composition_eq_iff](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/sigma-pi-composition-eq-iff.md) | 974 | `result-track:c3e88ea9d6036b9d7d918a612d6d00a6d15f131fde5d5bf6a06b3bd65b24e3f4` |
| 60 | `def` | [gather](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/gather.md) | 1003 | `declaration-track:9bc97f4cad14df8b952d8fbe12031af7a272c8c53ead120fa4313cc7541b72da` |
| 61 | `theorem` | [length_gather](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/length-gather.md) | 1017 | `result-track:35735a928c27501221aa42c8552a50aea822d26578808053822af3e15bd75330` |
| 62 | `def` | [sigmaCompositionAux](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/sigmacompositionaux.md) | 1026 | `declaration-track:5ee64f7160f5c0e579bf37d799c88ac67a2f7843d1dcfccc4bb96d252105071e` |
| 63 | `theorem` | [length_sigmaCompositionAux](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/length-sigmacompositionaux.md) | 1038 | `result-track:a0a0d191e7707a64ab46a8c90beef6562990d329e3d596b61ca4e966995e7238` |
| 64 | `theorem` | [blocksFun_sigmaCompositionAux](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/blocksfun-sigmacompositionaux.md) | 1046 | `result-track:e259ba1dd58b2568262bf09f694c8c4c8f34c3261337d5e2e1b9f8371ad5cc54` |
| 65 | `theorem` | [sizeUpTo_sizeUpTo_add](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/sizeupto-sizeupto-add.md) | 1063 | `result-track:b5bdfbca734e34b8da49ff2cafe4db0c8b8d4120cac26a56a38329fe91dbe662` |
| 66 | `def` | [sigmaEquivSigmaPi](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/sigmaequivsigmapi.md) | 1116 | `declaration-track:3954a7f74d53f17d24d4a474ebc0e4e0c1402f4638433a83b04d45194d3fa3ea` |
| 67 | `theorem` | [comp_assoc](../../../../FunctionalAnalysis/AnalyticCompositionCompositionSourceEdition2.lean/declarations/comp-assoc.md) | 1180 | `result-track:6e1bb2a2ba926e2cd1de5707e9e2f0108a2cc2c431a036e1e9a9443e5c8d4334` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=de1b879e944852ac37ad0b5ce40ed0e5ad4124d2b91587cc7954416a67f291bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/Composition/Variant32dda6b83a55d5ef52d1b2b9d9e2dada0df3f0ae5ed995ef31e44aa442494dc6.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/Composition/Variant32dda6b83a55d5ef52d1b2b9d9e2dada0df3f0ae5ed995ef31e44aa442494dc6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
