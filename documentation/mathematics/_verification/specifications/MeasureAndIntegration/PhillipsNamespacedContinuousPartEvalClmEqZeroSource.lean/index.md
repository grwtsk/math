# Verification target: Phillips Namespaced Continuous Part Eval Clm Eq Zero Source

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a04c1930d85357b652259a54d97b96776d007e3",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Phillips/Variant9de58849f145640b8cc93f8b45ede345cd38526bf081d22184104b25e77511ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a04c1930d85357b652259a54d97b96776d007e3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Phillips/Variant9de58849f145640b8cc93f8b45ede345cd38526bf081d22184104b25e77511ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Phillips/Variant9de58849f145640b8cc93f8b45ede345cd38526bf081d22184104b25e77511ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.HahnBanach.Extension` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.SetIntegral` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Bounded` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DiscreteCopy](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/discretecopy.md) | 101 | `declaration-track:0c9d2fd2ab7c129b304ca8bdab72e89116637d2a4facdf365e9356423f6e84bd` |
| 2 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/instance-source-edition-6.md) | 105 | `declaration-track:a40ff83e4e58a6863703ae308a3697fa21147cae95243b3aaa3a4199f3eccc17` |
| 3 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/instance-source-edition-4.md) | 108 | `declaration-track:49833b41085c01798fe9e26eb9dd0b9b8d72f17d0a4eab067f5074dc6ebac58e` |
| 4 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/instance-source-edition-5.md) | 111 | `declaration-track:615f7ca94ee2667766c75463f6fd06ddb230ff72b0a621bb2b5068ed01ea31e6` |
| 5 | `def` | [boundedIntegrableFunctions](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/boundedintegrablefunctions.md) | 126 | `declaration-track:99eaf92fdf16672e276a032ed87f00709bf1cc203ab199243d6d80a976fd32df` |
| 6 | `def` | [boundedIntegrableFunctionsIntegralCLM](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/boundedintegrablefunctionsintegralclm.md) | 137 | `declaration-track:f65e125869cc50b0aec6e6f398c00e468f5668f5366b9674f9aa6fe0ac607bb1` |
| 7 | `theorem` | [exists_linear_extension_to_boundedFunctions](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/exists-linear-extension-to-boundedfunctions.md) | 154 | `result-track:f9fd5c5fff1d72fb20e9d18edac6037a6a11fb87d62efd17ec35d62c8586cd44` |
| 8 | `def` | [Phillips Namespaced Continuous Part Eval Clm Eq Zero Source](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/root-grwtsk-analysis-realanalysis-integration-boundedadditivemeasure-var.md) | 164 | `declaration-track:5f3d5031e8bc94bcbc57a034c77b6c73817665519a30857a8e443791fcf7f1c9` |
| 9 | `theorem` | [extensionToBoundedFunctions_apply](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/extensiontoboundedfunctions-apply.md) | 169 | `result-track:e66b48ac2b590e0f150c42cdf366ce406a9916d75e244534dcc7c91be8a699e3` |
| 10 | `structure` | [BoundedAdditiveMeasure](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/boundedadditivemeasure.md) | 184 | `declaration-track:dad33def69c385d58439f151f5e1589b90fd6eb24d4d3e4e452be4d82141e1b1` |
| 11 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/instance-source-edition-2.md) | 192 | `declaration-track:32467f6a17ad7fb0602a2040adcec44772495e45a55e429cdbfaba819ac7de7b` |
| 12 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/instance-source-edition-3.md) | 197 | `declaration-track:32df0f866039f104218224276c2a13f27664277e899f6dcd0dc34a22f08115ee` |
| 13 | `def` | [C](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/c.md) | 203 | `declaration-track:90a89dcbc615953122f49bf7d5b5ffced3310db16a55535dff010bdf882f6e58` |
| 14 | `theorem` | [additive](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/additive.md) | 208 | `result-track:31ca0b6d13256a3c6e528b010c0acaa605b155b7bd5013fc9360f6f0498d3d75` |
| 15 | `theorem` | [abs_le_bound](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/abs-le-bound.md) | 213 | `result-track:04a773342a3c3e669a6a46e8505171bd7e725982f9c7401709a29710f271db3e` |
| 16 | `theorem` | [le_bound](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/le-bound.md) | 217 | `result-track:29e1e4926977d63881397c2cdc49747fb3d70bcb8fd3d45ed78c2cfbc1e6208e` |
| 17 | `theorem` | [empty](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/empty.md) | 222 | `result-track:254108cd0a3e58797b2c1048e781b7d27df02def64f3d91209609d106f271346` |
| 18 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/instance.md) | 228 | `declaration-track:1c684d6136a4228d69954b5aab072ccdcd1c81f7b129ed110667005fdcb1418f` |
| 19 | `theorem` | [neg_apply](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/neg-apply.md) | 235 | `result-track:82e952302d6693f0a7ce7bfe3af06d6189fd33011f2052f168bc962c57abd2af` |
| 20 | `def` | [restrict](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/restrict.md) | 240 | `declaration-track:b3dba5b92fb39e916c278e72fe377a35c26e0b6b38595042caac3b2bf491dc67` |
| 21 | `theorem` | [restrict_apply](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/restrict-apply.md) | 250 | `result-track:5634d117f99d35134c07a8d2769458c8ebd361f18f19643e19ff3fb6391b9da0` |
| 22 | `theorem` | [exists_discrete_support_nonpos](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/exists-discrete-support-nonpos.md) | 256 | `result-track:363a493e8ab10a371d1158b50e840ab980d13737ce518ca31efd2e52c85431bd` |
| 23 | `theorem` | [exists_discrete_support](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/exists-discrete-support.md) | 341 | `result-track:220ac12a34704c312fed8b658fa9956f78fba2806a0f2c510462a240053d83d3` |
| 24 | `def` | [discreteSupport](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/discretesupport.md) | 358 | `declaration-track:e81617b46f65894edc0c4a18b63fbb7e3adcdeb0ad7caf74017c4ef317aa97b2` |
| 25 | `theorem` | [countable_discreteSupport](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/countable-discretesupport.md) | 362 | `result-track:4a20602898e3bf47f251073cb484f005f43dbfbf3b17920b02d11ffb3567a9b8` |
| 26 | `theorem` | [apply_countable](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/apply-countable.md) | 366 | `result-track:c147446ab8a4947a3c6a003d0334526bff5f143e4f1bbf45091536fe92cdf75c` |
| 27 | `def` | [discretePart](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/discretepart.md) | 373 | `declaration-track:f7f53f4249c923b6082423449a4e434c6e72432a7c7c650b2114c2d4fdbc2c8a` |
| 28 | `def` | [continuousPart](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/continuouspart.md) | 379 | `declaration-track:d30eaab1efda2d687ee7c6e57b2127775dd83b519a01915cccdbd4862a00d0bd` |
| 29 | `theorem` | [eq_add_parts](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/eq-add-parts.md) | 383 | `result-track:2710e85d5469a6e0718fd7b48ffd751011ae4f13c268e8e8139a2d59a83d1627` |
| 30 | `theorem` | [discretePart_apply](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/discretepart-apply.md) | 392 | `result-track:fa7ccc3d45d1623b28ec5db56a22bf96de355294c0e700ad53f56b047a811564` |
| 31 | `theorem` | [continuousPart_apply_eq_zero_of_countable](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/continuouspart-apply-eq-zero-of-countable.md) | 397 | `result-track:b0060119e754d36d346993bde54c5a8e9fc0273f63d5eb90ab26a00b1792541b` |
| 32 | `theorem` | [continuousPart_apply_diff](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/continuouspart-apply-diff.md) | 405 | `result-track:87a5d87316d76b164525e3ae606d0ee697c7423ac1cbda051b0234f4d738c83f` |
| 33 | `theorem` | [norm_indicator_le_one](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/norm-indicator-le-one.md) | 424 | `result-track:d72384c9ff0dbd8cccc4cd6a6da33f94b460e8f3f83b1a356741030dc51d0a07` |
| 34 | `def` | [Phillips Namespaced Continuous Part Eval Clm Eq Zero Source](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/root-grwtsk-analysis-realanalysis-integration-boundedadditivemeasure-var-source-edition-2.md) | 430 | `declaration-track:616a3a5fc31a8f9515320cec403cef2e3b6a85a02de96c113dd74e7cedb1ef5e` |
| 35 | `theorem` | [continuousPart_evalClm_eq_zero](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/continuouspart-evalclm-eq-zero.md) | 451 | `result-track:1069d8c6f29d9f8c8774ddadd9cc7977fc106936c324cc44dd59f24451f4e785` |
| 36 | `theorem` | [toFunctions_toMeasure](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/tofunctions-tomeasure.md) | 462 | `result-track:cd63b1701c597c6b6acbb55d3864bf3b32e3deb15768273e53e30cf60a89fb65` |
| 37 | `theorem` | [toFunctions_toMeasure_continuousPart](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/tofunctions-tomeasure-continuouspart.md) | 480 | `result-track:9d830445da0e72da64583dff979a4b7a7b0ced14a3d06cb123e4118ee1f78ed4` |
| 38 | `theorem` | [sierpinski_pathological_family](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/sierpinski-pathological-family.md) | 506 | `result-track:9f35abd0376311f5392e5847c635e444fd0a80d3f79aedf27f0f9bb2411a9cb1` |
| 39 | `def` | [spf](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/spf.md) | 531 | `declaration-track:ff5c77990ef0115bc47366d9fd72c322ff2e72169c7883755fe8c7e0e56789a7` |
| 40 | `theorem` | [countable_compl_spf](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/countable-compl-spf.md) | 535 | `result-track:63139fa510ac127f583cb7d5b3dc32014bf5290655d45aa4bbfca87a6370be4b` |
| 41 | `theorem` | [countable_spf_mem](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/countable-spf-mem.md) | 539 | `result-track:014c578648fc90e324f30cd526e44bc3adb850b84deb81f29c85e72b9c8a90f9` |
| 42 | `def` | [f](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/f.md) | 560 | `declaration-track:61828e3230bbc2380edb10c32797cd68663c152ebc81ef358faef0d24582efcb` |
| 43 | `theorem` | [apply_f_eq_continuousPart](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/apply-f-eq-continuouspart.md) | 564 | `result-track:0f715b95e68ce6f1c9ac773a34ea6e5fbc36efb69c0b2e81cd161ca56c706db9` |
| 44 | `theorem` | [countable_ne](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/countable-ne.md) | 575 | `result-track:4dd7d17a81121ecbd3ea2332b353b82427d56adf1fc96f2a5fdc1ca698f1d93b` |
| 45 | `theorem` | [comp_ae_eq_const](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/comp-ae-eq-const.md) | 596 | `result-track:1b85a2fc273627ef32cb8cc41711faf1c1a3b737871ccb8fcfdbb6983cfc9522` |
| 46 | `theorem` | [integrable_comp](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/integrable-comp.md) | 605 | `result-track:78b77d3089221187a651d8994971d6349f530ce373986af3bfeedc829e6e4f4a` |
| 47 | `theorem` | [integral_comp](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/integral-comp.md) | 614 | `result-track:5a178edeabedfe798896e00a21b2bbf75c72ddde538f6fe9cd0a73d1c0800a1a` |
| 48 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/example.md) | 627 | `declaration-track:d22ae5fd85ac3de366df8796fe9f217d67d42d49aeb6758bc2d7c70b5cbfda77` |
| 49 | `theorem` | [measurable_comp](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/measurable-comp.md) | 630 | `result-track:bc38a5318f94e5abd145cbeacef390f4b0e2b225b851e775d94d6d1f51377d8b` |
| 50 | `theorem` | [norm_bound](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/norm-bound.md) | 638 | `result-track:e5ec0d34e98c7cb0b17a6a4f326c309e2c9bec34122f2af4f6751930d2656d52` |
| 51 | `theorem` | [no_pettis_integral](../../../../MeasureAndIntegration/PhillipsNamespacedContinuousPartEvalClmEqZeroSource.lean/declarations/no-pettis-integral.md) | 643 | `result-track:be8cc11047640e213fd1b58b3fe2d32eb979ee403e6accc23f25856a06e4534c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ded6aa89b276c02db7c2b02403ec1be3dacebd4ee2de5d177ab2a3b981416ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Phillips/Variant9de58849f145640b8cc93f8b45ede345cd38526bf081d22184104b25e77511ec.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Phillips/Variant9de58849f145640b8cc93f8b45ede345cd38526bf081d22184104b25e77511ec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
