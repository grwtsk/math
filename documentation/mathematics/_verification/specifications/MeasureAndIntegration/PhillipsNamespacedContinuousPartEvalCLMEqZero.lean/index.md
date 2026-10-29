# Verification target: Phillips Namespaced Continuous Part Eval CLMEq Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "991551b0c73179f1f965fb62118e5b9f577fdfde",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Phillips/Variantc4211c849b434a376a9e3b537997e1d6a3f8b2e45155fc11880bb470b477b530.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `991551b0c73179f1f965fb62118e5b9f577fdfde`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Phillips/Variantc4211c849b434a376a9e3b537997e1d6a3f8b2e45155fc11880bb470b477b530.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Phillips/Variantc4211c849b434a376a9e3b537997e1d6a3f8b2e45155fc11880bb470b477b530.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.HahnBanach.Extension` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Bounded.Star` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DiscreteCopy](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/discretecopy.md) | 99 | `declaration-track:e712dab5e43422ac1251e5eecafde5edaa099f355e5cee90b470564a48877b55` |
| 2 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/instance-source-edition-4.md) | 102 | `declaration-track:5721d6a879554f20f9f84008fb9df0a77f20823d9586413a2d6742bff5273e9e` |
| 3 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/instance-source-edition-5.md) | 105 | `declaration-track:dd478aed1f759b1bfd3f0788ab2acefc8d14f4d18da0556dc2718fffaa6090cc` |
| 4 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/instance-source-edition-6.md) | 108 | `declaration-track:f903974af0ff34aff727ea8c1c9eef0b0a6eb71e94af2137aa455286328fa32f` |
| 5 | `def` | [boundedIntegrableFunctions](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/boundedintegrablefunctions.md) | 123 | `declaration-track:ae04c97a2742269ccf456f9254b65ee64febd83f33a24b62816eb1d8fcbf95cc` |
| 6 | `def` | [boundedIntegrableFunctionsIntegralCLM](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/boundedintegrablefunctionsintegralclm.md) | 133 | `declaration-track:c81b5e8918a0407d8fc8d00ab66eae116f0cba4ed2c84fee01bbdf606a14def7` |
| 7 | `theorem` | [exists_linear_extension_to_boundedFunctions](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/exists-linear-extension-to-boundedfunctions.md) | 149 | `result-track:295f7dc7505dac7972551d65d17e7ef6f2e6ac670e19b8f384d950d414ca546e` |
| 8 | `def` | [Phillips Namespaced Continuous Part Eval CLMEq Zero](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/root-grwtsk-analysis-realanalysis-integration-boundedadditivemeasure-var-source-edition-2.md) | 158 | `declaration-track:1534b9a6cee1d5f636bf54cc7621fb9ca7584f55ed6056bece3b12bac60c7f7a` |
| 9 | `theorem` | [extensionToBoundedFunctions_apply](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/extensiontoboundedfunctions-apply.md) | 162 | `result-track:d8fa452a18c6bca62b02e282f16af070a0c3ce4a862ad21becc688e4cf7a03f5` |
| 10 | `structure` | [BoundedAdditiveMeasure](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/boundedadditivemeasure.md) | 176 | `declaration-track:2c04790e3b3ad3eb1812b3c666fe08616c0c46f63bd0a4edb5ae21785ddc7333` |
| 11 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/instance.md) | 183 | `declaration-track:3da69ab08d4afef1735dd65277fb6d8975b657340326befc918fcf26bbc43c98` |
| 12 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/instance-source-edition-3.md) | 188 | `declaration-track:54ff2d42d35d46abba09a7c16a760e09355f7b6331c4433fc28d1e2401550dbd` |
| 13 | `def` | [C](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/c.md) | 194 | `declaration-track:a1b468ac84def38ee654625fef2e06713c0804db03a8582937779e7cb6087549` |
| 14 | `theorem` | [additive](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/additive.md) | 197 | `result-track:ea58a461762d7b1568d4055b456b794ae118ddc80c1bf1482e5d4eeb9a8f74f3` |
| 15 | `theorem` | [abs_le_bound](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/abs-le-bound.md) | 201 | `result-track:dd26ab9a1728f359ff45836479853ab0d9020d6e3da2c17850f4ac5896366b3d` |
| 16 | `theorem` | [le_bound](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/le-bound.md) | 204 | `result-track:78692259cffad66d21d13d58e1e15ef5973038ea081e04bb626be3b83df95299` |
| 17 | `theorem` | [empty](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/empty.md) | 208 | `result-track:e3fdfaa703e178b9b0d217f94884108c204efb87cdc549b56be0134a268ed7cb` |
| 18 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/instance-source-edition-2.md) | 213 | `declaration-track:40a314a0019fc03aab78a50a0ca3a1eedd1f91b8b9915bc84826a4f8954d318e` |
| 19 | `theorem` | [neg_apply](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/neg-apply.md) | 220 | `result-track:497ffe16bed65d5a3a7cea7ad6a4d55896610f5984834e19173f36656a0b1f08` |
| 20 | `def` | [restrict](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/restrict.md) | 224 | `declaration-track:d278b396badfddd56d7633c5dbade6384962051c44568927613fde7ab50211da` |
| 21 | `theorem` | [restrict_apply](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/restrict-apply.md) | 232 | `result-track:3818c14f56a488fcb39b580b335e1595284be30cce6d1ca0b9c7d2c61515efc5` |
| 22 | `theorem` | [exists_discrete_support_nonpos](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/exists-discrete-support-nonpos.md) | 237 | `result-track:0697597b1a696339090e61fe2104afd85c3c092a086da7627fed657fb498eab5` |
| 23 | `theorem` | [exists_discrete_support](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/exists-discrete-support.md) | 321 | `result-track:9d9ae3a72c010f36682a7dede4804e0985507c176ca4b99b94cd0b37ac0a923e` |
| 24 | `def` | [discreteSupport](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/discretesupport.md) | 337 | `declaration-track:1649c4b9071ec8d4eabe7e08f424ea7528ba39ad2da16b73c8d93a17df89cce9` |
| 25 | `theorem` | [countable_discreteSupport](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/countable-discretesupport.md) | 340 | `result-track:ec0b350fefc57f1393b15ddea25388b9faac51f203fa9b77328e0ccc25ff7bbd` |
| 26 | `theorem` | [apply_countable](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/apply-countable.md) | 343 | `result-track:2e9f0df596742a67f17c22013be931582b19e3ed0193cbde5412dfe4f6f3ec2e` |
| 27 | `def` | [discretePart](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/discretepart.md) | 349 | `declaration-track:124982aec10ec2738682dcca1ecb4b78686fa7e7827cd5335eef4498f79d5006` |
| 28 | `def` | [continuousPart](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/continuouspart.md) | 354 | `declaration-track:56a5f5c312448c1e5d83dfeadc76c7071d461e5e0ab0b99b427138006c8dbeb4` |
| 29 | `theorem` | [eq_add_parts](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/eq-add-parts.md) | 357 | `result-track:4b339a44d5ad62b2ea2ef1e897e6dbeb4d8f92064d3e9a309e0e027265814818` |
| 30 | `theorem` | [discretePart_apply](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/discretepart-apply.md) | 365 | `result-track:84d31b2ae52f1225983e65aa147459049577267fcaf7ce9b627ca5acbae44c54` |
| 31 | `theorem` | [continuousPart_apply_eq_zero_of_countable](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/continuouspart-apply-eq-zero-of-countable.md) | 369 | `result-track:1273c870fc913718a4c8a55bd5b24c1b20f24629b729381534ea23f4d9879f7c` |
| 32 | `theorem` | [continuousPart_apply_diff](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/continuouspart-apply-diff.md) | 376 | `result-track:0f2f0f5bcde95388eb5fa3687b5c33199f6350749d15a16445df176f5cd8580b` |
| 33 | `theorem` | [norm_indicator_le_one](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/norm-indicator-le-one.md) | 394 | `result-track:c23895382f17bc821f927b20b1e5e215764be06da44e10b26831604b79df5742` |
| 34 | `def` | [Phillips Namespaced Continuous Part Eval CLMEq Zero](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/root-grwtsk-analysis-realanalysis-integration-boundedadditivemeasure-var.md) | 399 | `declaration-track:0dddc23c125be57eb7c40b4d52dbd4b7c82980659e0c1ed5fad908356f937a5a` |
| 35 | `theorem` | [continuousPart_evalCLM_eq_zero](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/continuouspart-evalclm-eq-zero.md) | 418 | `result-track:37da8c3d5080d97183debcc47f42ea42421abfa038579fd8837bf7a2cd0694c9` |
| 36 | `theorem` | [toFunctions_toMeasure](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/tofunctions-tomeasure.md) | 428 | `result-track:5a4849456524e06c0331377e92e92b0da2a02e7015c44eeadd9f940e9ca836b5` |
| 37 | `theorem` | [toFunctions_toMeasure_continuousPart](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/tofunctions-tomeasure-continuouspart.md) | 441 | `result-track:0b0376bdc9348464835004c9dabb3d5ad7c0ac1952d4b3942b1b01c1b1aa0649` |
| 38 | `theorem` | [sierpinski_pathological_family](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/sierpinski-pathological-family.md) | 467 | `result-track:3ebf294e5519135ada4430a87a4585a69d57fb40a033cce6b2b9014ef71bc6dc` |
| 39 | `def` | [spf](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/spf.md) | 490 | `declaration-track:d6096c955ebd4a7e839520570e92adbd7ac02f84c65557a031191ecbd3d97444` |
| 40 | `theorem` | [countable_compl_spf](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/countable-compl-spf.md) | 493 | `result-track:292e16fd790408791bd02cd386df15818918135d2ecfdc69138f10d6aa313f1f` |
| 41 | `theorem` | [countable_spf_mem](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/countable-spf-mem.md) | 496 | `result-track:8be0a1ef8e4909bdfc1419a4f9122ddfec0f5441f840ce80605a870f65c04980` |
| 42 | `def` | [f](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/f.md) | 516 | `declaration-track:06143c74e7f2af3bf30facac8240e884e839c17493e1d04c38734004005020cc` |
| 43 | `theorem` | [apply_f_eq_continuousPart](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/apply-f-eq-continuouspart.md) | 519 | `result-track:699bb5df84ddcea4a2cf1ae2d3b459ae379935f6b8d9583b8f3d263160f3faaa` |
| 44 | `theorem` | [countable_ne](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/countable-ne.md) | 529 | `result-track:82143c490b9200ec7b551d61d2f92f8cd875f80dd3c0ea581f554f01c91ba949` |
| 45 | `theorem` | [comp_ae_eq_const](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/comp-ae-eq-const.md) | 549 | `result-track:aa3261e5423d740a08759ac2fc3e31d3f836f21218fdf89b3401382f2fa5c4d4` |
| 46 | `theorem` | [integrable_comp](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/integrable-comp.md) | 557 | `result-track:bf660f8472eef27c804eba4e29ce6112c28b6650c2c74a867a92def45ac1a668` |
| 47 | `theorem` | [integral_comp](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/integral-comp.md) | 563 | `result-track:26b58c035763d6f9d7b23046a429aa5212f86ef0d0daf314e337e51db7e82b2e` |
| 48 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/example.md) | 575 | `declaration-track:9b12009417958735da23768ab7e4f2a3d47946b7e4c020a9358e031035cd019a` |
| 49 | `theorem` | [measurable_comp](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/measurable-comp.md) | 578 | `result-track:e8310949ff06210d2487e9cd36eb6cb693debae8da6a57e1dcb802907882d2ee` |
| 50 | `theorem` | [norm_bound](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/norm-bound.md) | 585 | `result-track:f768cc121941de093745951b4b13d5ba7245ac05eecd6a56ee7b9f4c54908e27` |
| 51 | `theorem` | [no_pettis_integral](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalCLMEqZero.lean/declarations/no-pettis-integral.md) | 589 | `result-track:e1e4d1e12dd41a2d5269efa05b1c982081a620a55b67f2cafa1c865c380b8368` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a66347df4abb3c0eeec220c0fdfea0f108927355063dc151bba0c0daa9581826 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Phillips/Variantc4211c849b434a376a9e3b537997e1d6a3f8b2e45155fc11880bb470b477b530.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Phillips/Variantc4211c849b434a376a9e3b537997e1d6a3f8b2e45155fc11880bb470b477b530.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
