# Verification target: Phillips Continuous Part Eval CLMEq Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82d4373ee90daf79bd0c2954b8a60cc96f575818",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Phillips/Variant1f0d4c4370da6a1833066960a9c32566192f1a8a0402cce8aba87c3534dfba20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82d4373ee90daf79bd0c2954b8a60cc96f575818`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Phillips/Variant1f0d4c4370da6a1833066960a9c32566192f1a8a0402cce8aba87c3534dfba20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Phillips/Variant1f0d4c4370da6a1833066960a9c32566192f1a8a0402cce8aba87c3534dfba20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.HahnBanach.Extension` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Bounded.Star` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DiscreteCopy](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/discretecopy.md) | 91 | `declaration-track:396c8facfc0532c8237932204dd3cc1ea5c082895d37a382d47cbef67719b2de` |
| 2 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/instance-source-edition-2.md) | 94 | `declaration-track:4a4c31dccc2cc1238cbb001984cd2cca5c106f2c6447bb4763a327061aaeda28` |
| 3 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/instance-source-edition-5.md) | 97 | `declaration-track:d50973b455055be11e50a809a22802b2ded6403e1cbc0f9b485983123b2caddb` |
| 4 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/instance-source-edition-3.md) | 100 | `declaration-track:531f5ae234888810e8000ca5963e3d08f7c986468a76df6354dda556212f31ea` |
| 5 | `def` | [boundedIntegrableFunctions](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/boundedintegrablefunctions.md) | 115 | `declaration-track:900a9b196c5c66af1effb749f05e2a141401948eb5ebe1a236c878e56ccb4479` |
| 6 | `def` | [boundedIntegrableFunctionsIntegralCLM](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/boundedintegrablefunctionsintegralclm.md) | 125 | `declaration-track:736297076afbb6c93d073e7b336fdc1a9bb6229dcb72a23f4b7c295487481d1f` |
| 7 | `theorem` | [exists_linear_extension_to_boundedFunctions](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/exists-linear-extension-to-boundedfunctions.md) | 141 | `result-track:ce238f4cd6f4ad936cbb10a146a9efefb7da6ec2ffaedcc58be63a2cb3cffbde` |
| 8 | `def` | [_root_.MeasureTheory.Measure.extensionToBoundedFunctions](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/root-measuretheory-measure-extensiontoboundedfunctions.md) | 150 | `declaration-track:77e5a5431b97ec0e79678f03aaca4d8412b8d2bc747f713d6a4c247c238c240c` |
| 9 | `theorem` | [extensionToBoundedFunctions_apply](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/extensiontoboundedfunctions-apply.md) | 154 | `result-track:764751817574a81bbc0a86330ddd0e92d528dcdd3d975a8e4498c1ca97ffe1a8` |
| 10 | `structure` | [BoundedAdditiveMeasure](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/boundedadditivemeasure.md) | 168 | `declaration-track:47fca6fc8163831ef5a0d5182318bbbcc2e16de7a2b8de659c338e796f7ec292` |
| 11 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/instance-source-edition-6.md) | 175 | `declaration-track:da441bf504048bdef44efa02d5e800c9e23edeee6cf1d9587aee2a3839393bdb` |
| 12 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/instance.md) | 180 | `declaration-track:0b901cf309cf473f47053888c6cd774fa6cea7812b928b39a19054ce914075af` |
| 13 | `def` | [C](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/c.md) | 186 | `declaration-track:1c04d900dec673b10d3af1f6ccc4bc6f64407bee90bc7abb26777f0cc6ae0ef4` |
| 14 | `theorem` | [additive](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/additive.md) | 189 | `result-track:354a63d2a332d32e8766329cd1f86df095c6e9127b0094e85e13978965d7bf88` |
| 15 | `theorem` | [abs_le_bound](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/abs-le-bound.md) | 193 | `result-track:e495a177cc6564c33b3ba3f9efbb9a8e30c5f00be8d4615908094981a22524a2` |
| 16 | `theorem` | [le_bound](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/le-bound.md) | 196 | `result-track:738ccc421a69585c03987dc597672ce6376783261a8eeef841a105c7bf0da621` |
| 17 | `theorem` | [empty](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/empty.md) | 200 | `result-track:88775317b7fc69a360e21441ab0fc3cf50185e8da9cbfae18f0c36e7fafe6093` |
| 18 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/instance-source-edition-4.md) | 205 | `declaration-track:561a7ab6fb5bdc8b9bfa4a14874e7a0d8c1f9a01f90a6eb733c9e42fd374b361` |
| 19 | `theorem` | [neg_apply](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/neg-apply.md) | 212 | `result-track:01d1b390e0fb453f26f5b4b3dae622475ed881ce0716d08faa5a698ff13ddd9c` |
| 20 | `def` | [restrict](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/restrict.md) | 216 | `declaration-track:57f221873d9c4ed0ab57ded7d39a0076d461579a520f43399e873f04112cdd65` |
| 21 | `theorem` | [restrict_apply](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/restrict-apply.md) | 224 | `result-track:9d8f586193975fbb27dd9895912081db8eabc0f5e0268122919bad05272107d7` |
| 22 | `theorem` | [exists_discrete_support_nonpos](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/exists-discrete-support-nonpos.md) | 229 | `result-track:6b8b0d382177f105a318e61b7ea5bb5f5d7f0981258c8b025d6f8c4d0f7b5dec` |
| 23 | `theorem` | [exists_discrete_support](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/exists-discrete-support.md) | 313 | `result-track:662ea039ccc64c39af338b6df8d7516154ed39df340460f71b461aaf56eb5b20` |
| 24 | `def` | [discreteSupport](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/discretesupport.md) | 329 | `declaration-track:49e93a52a0e3b28fc3f7f0794d9d3957d8130eedef5e871ed71ed5864343c3ab` |
| 25 | `theorem` | [countable_discreteSupport](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/countable-discretesupport.md) | 332 | `result-track:4f8a7ca8af6591ae5609d704383bf27bf2d914f86b9413815c83eafd2528e3fd` |
| 26 | `theorem` | [apply_countable](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/apply-countable.md) | 335 | `result-track:a1d013ab8e101d99fd3a96ec2e0aef2268ee62060b9542280aca97d19b22fbaf` |
| 27 | `def` | [discretePart](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/discretepart.md) | 341 | `declaration-track:4e62383eff559de6a8c879bbc59324f2d65fbcfa147a40821636d3ffaec45d0a` |
| 28 | `def` | [continuousPart](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/continuouspart.md) | 346 | `declaration-track:1c2e7c3a7887aa12ec72b3b480e858c7d54a4c25a576b5625da22f6973a837b6` |
| 29 | `theorem` | [eq_add_parts](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/eq-add-parts.md) | 349 | `result-track:c3d463dc3274661d087c87dcb6bb2f456b53c994c13d7757c84b253742b4ee1c` |
| 30 | `theorem` | [discretePart_apply](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/discretepart-apply.md) | 357 | `result-track:32bfb11ac89606f1add6576dbf41ee5a80ccc804ec7a99fc0fc8a80b63effffa` |
| 31 | `theorem` | [continuousPart_apply_eq_zero_of_countable](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/continuouspart-apply-eq-zero-of-countable.md) | 361 | `result-track:f085d70fc8966071d94644b9ac5553715a91feced18a0a09f6667f8bbba4aa53` |
| 32 | `theorem` | [continuousPart_apply_diff](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/continuouspart-apply-diff.md) | 368 | `result-track:8e1f5deda0f2dfc25a46a76e4b5038d5bd80a274d4dd2fde852a150c5c5b0c7d` |
| 33 | `theorem` | [norm_indicator_le_one](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/norm-indicator-le-one.md) | 386 | `result-track:328455768f2d6b7e217dad1cac4b89545c75c7dc9c70ce283cc54dc63b4f75c2` |
| 34 | `def` | [_root_.ContinuousLinearMap.toBoundedAdditiveMeasure](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/root-continuouslinearmap-toboundedadditivemeasure.md) | 391 | `declaration-track:0f34f24364c07984e7812775d8ef05d6c0b1e12662ca6b7a82f029f7937d79fe` |
| 35 | `theorem` | [continuousPart_evalCLM_eq_zero](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/continuouspart-evalclm-eq-zero.md) | 410 | `result-track:c6bfc74a7f9485f5252a4ba2ea74ec67a2e4a9d2660781c2ee715607fde71d31` |
| 36 | `theorem` | [toFunctions_toMeasure](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/tofunctions-tomeasure.md) | 420 | `result-track:d1ee502563054ba0d372b919741d891da4751be02722c04e95fdd4b795eb295f` |
| 37 | `theorem` | [toFunctions_toMeasure_continuousPart](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/tofunctions-tomeasure-continuouspart.md) | 433 | `result-track:f2a8a3f71940e9fc0f272451e2c9c6952fcb12a6767a40a336877bd525152697` |
| 38 | `theorem` | [sierpinski_pathological_family](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/sierpinski-pathological-family.md) | 459 | `result-track:71b2db3b9c30d57ebc1b92c604005f28d7562b14a6ef422e8c9fc74eb09165c4` |
| 39 | `def` | [spf](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/spf.md) | 482 | `declaration-track:e44f6ea8459ab340fc720cd28c7ac5ac912d90431d6a07f0c0a348622802a9fe` |
| 40 | `theorem` | [countable_compl_spf](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/countable-compl-spf.md) | 485 | `result-track:f65a143a51e3d4b0a32e1a38d226b4de35192ed6a5de6380272e3765a6076446` |
| 41 | `theorem` | [countable_spf_mem](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/countable-spf-mem.md) | 488 | `result-track:a88b60b224b46595ec0bd578c5c141aa79b117b1bf7b3add8e8fa533a233d1f4` |
| 42 | `def` | [f](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/f.md) | 508 | `declaration-track:d9aed2cc9b4b93ba3cc6e8b2a915bd7ce65be11c47a36939f076628b2590d860` |
| 43 | `theorem` | [apply_f_eq_continuousPart](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/apply-f-eq-continuouspart.md) | 511 | `result-track:4b6ef47a911405910b4e0929cf137f6a67893998459e752894d4173e49715890` |
| 44 | `theorem` | [countable_ne](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/countable-ne.md) | 521 | `result-track:f805bdd4d0445fe1c2b6222811742f7a2fbef7c12867749f1b86d6cde89a98b0` |
| 45 | `theorem` | [comp_ae_eq_const](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/comp-ae-eq-const.md) | 541 | `result-track:ff5c1c92e266b1f64a4aedae5dc69c41803bffbaa13e24b2846eaa49ab86e1e4` |
| 46 | `theorem` | [integrable_comp](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/integrable-comp.md) | 549 | `result-track:33b764771cf8b0e3231be25c6e63fbbbf9b36ea9936513d3391139110d662c83` |
| 47 | `theorem` | [integral_comp](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/integral-comp.md) | 555 | `result-track:576575604061bcf3d33f0afe0211be24271ba31bb8af2d64931ef49eaaf251ba` |
| 48 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/example.md) | 567 | `declaration-track:eea4df5da7666865f853a467ca230dd71bdac61e6baaab19fc35cad3ce6a1278` |
| 49 | `theorem` | [measurable_comp](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/measurable-comp.md) | 570 | `result-track:526e70bf3028bd7776725a433dbcf7cd2a4bd01083c0034f9ee4456e586c0cd5` |
| 50 | `theorem` | [norm_bound](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/norm-bound.md) | 577 | `result-track:2d3b8bcb821c4c1bf0bb87b434923f4fb85bc598308fc41e87dbfb63cf08fd40` |
| 51 | `theorem` | [no_pettis_integral](../../../../MeasureAndIntegration/PhillipsContinuousPartEvalCLMEqZero.lean/declarations/no-pettis-integral.md) | 581 | `result-track:631495afa7c3870bdcc176d15bbc3d2a226841b77aa0e2f95877f43752abe514` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1b50862acde72d62c95dcf5e4738838c370edd654b503bab63f903651f34fe9e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Phillips/Variant1f0d4c4370da6a1833066960a9c32566192f1a8a0402cce8aba87c3534dfba20.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Phillips/Variant1f0d4c4370da6a1833066960a9c32566192f1a8a0402cce8aba87c3534dfba20.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
