# Verification target: Monad Limits Namespaced Left Adjoint Preserves Terminal Of Reflective

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "025c964b7796306ecb160dd4c880c36d1b8ea1bd",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantfab70a68d15652f1550f78f8e0f17648a664773442b7771fc0da3118681bef82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `025c964b7796306ecb160dd4c880c36d1b8ea1bd`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantfab70a68d15652f1550f78f8e0f17648a664773442b7771fc0da3118681bef82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantfab70a68d15652f1550f78f8e0f17648a664773442b7771fc0da3118681bef82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monad.Adjunction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.IsTerminal` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [γ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/anonymous-source-edition-3.md) | 56 | `declaration-track:5969368a91c0afe6613f1e6d1b68946cd057ad2d854c46598b36759259232775` |
| 2 | `def` | [newCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/newcone-source-edition-2.md) | 60 | `declaration-track:2a0826b3eae5626d154b66c9445f8acad7315c9eab1b9179aae0021f0ba1e235` |
| 3 | `def` | [conePoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/conepoint-source-edition-2.md) | 66 | `declaration-track:eb0a27e60a57d33c7f72e98671616dba14eaf57943f336739ae221f07c6c396e` |
| 4 | `def` | [liftedCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/liftedcone-source-edition-2.md) | 84 | `declaration-track:bf6c02e4ab6d32d3349702da3774973995a7bccf74b9c6cf4089949f5a1dc51b` |
| 5 | `def` | [liftedConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/liftedconeislimit-source-edition-2.md) | 94 | `declaration-track:8704665721a60b16fde3cf829db832bb3fa00d823d437d32dc8d842ef68f149b` |
| 6 | `instance` | [forgetCreatesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/forgetcreateslimits.md) | 113 | `declaration-track:ac0d6a284210b88631288dcb3d28fade0a3884a7df98b5cb1c345907eb6b5e46` |
| 7 | `theorem` | [hasLimit_of_comp_forget_hasLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/haslimit-of-comp-forget-haslimit.md) | 122 | `result-track:4b1b1208f2fb98dd30dadf9a8c9bc8d0812ccf8d671aae08142979b1c6ce090a` |
| 8 | `def` | [γ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/anonymous.md) | 145 | `declaration-track:1fb48c96a51fd9e4b5e15644e5d857c5d247d0730df67a98456b45e902178e7a` |
| 9 | `def` | [newCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/newcocone-source-edition-2.md) | 152 | `declaration-track:e7eb03ee6850241ebfa155a3e24e88853580252d075fdf043cc87ff46d01e2ef` |
| 10 | `abbrev` | [lambda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/lambda.md) | 163 | `declaration-track:42da2edee93c89d1ec72763ecb19ded411a7797198df5e75eed0cadc5ae6581d` |
| 11 | `theorem` | [commuting](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/commuting-source-edition-2.md) | 167 | `result-track:fabeca1353cefba142e2b55d6b9447bd1a87093c398caa212339b9164c741dbf` |
| 12 | `def` | [coconePoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/coconepoint.md) | 178 | `declaration-track:18082a302707ec659e4bd10e189024051b38458d55af771c38ceecf849117d20` |
| 13 | `def` | [liftedCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/liftedcocone-source-edition-2.md) | 198 | `declaration-track:e907223b4a991227d0ce6ae6c8f36f986fed7f73efaf9e4399773f81b4ef517c` |
| 14 | `def` | [liftedCoconeIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/liftedcoconeiscolimit.md) | 212 | `declaration-track:4e859b0cb9002c704b51e55872152ca8798bac4051320b6c77ed52ee4fd9d869` |
| 15 | `instance` | [forgetCreatesColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/forgetcreatescolimit-source-edition-2.md) | 234 | `declaration-track:e42bc9ed21428578c8f0827aa341d41a7e5f721df2c1d7946920385d0aa3fd50` |
| 16 | `instance` | [forgetCreatesColimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/forgetcreatescolimitsofshape.md) | 250 | `declaration-track:87c05201479d0d8038f9e218747a4e7b2cfe8bd4b70bb45ddbf87337fe23e8ed` |
| 17 | `instance` | [forgetCreatesColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/forgetcreatescolimits.md) | 253 | `declaration-track:096eb71d30a416581e1548067d24b51565fc3b4e65489eb2b94c2f1d411748e8` |
| 18 | `theorem` | [forget_creates_colimits_of_monad_preserves](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/forget-creates-colimits-of-monad-preserves.md) | 259 | `result-track:a044d509aa2e71e9b9b0820fa4ff77e9bdc3ed67f4ce91201e0905f00307936b` |
| 19 | `instance` | [comp_comparison_forget_hasLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/comp-comparison-forget-haslimit.md) | 268 | `declaration-track:4afbb95097b8da655a0675a941e45e1721169c39c6f19d5e037b1c0a039a55d5` |
| 20 | `instance` | [comp_comparison_hasLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/comp-comparison-haslimit.md) | 273 | `declaration-track:401afe4d6e8321fd2c6551d138e8a1f2e47ff14ca231c752abee46349a2ecddc` |
| 21 | `def` | [monadicCreatesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/monadiccreateslimits.md) | 278 | `declaration-track:953652240c5d65190e6eae8728e1316a06e7d10b7bb0a21d6bf78475aedfdb9c` |
| 22 | `def` | [monadicCreatesColimitOfPreservesColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/monadiccreatescolimitofpreservescolimit.md) | 285 | `declaration-track:4b9fe0ed0c26f32fd867fc2bf51150527e5262b729aa036bf0ce45b8de31f96b` |
| 23 | `def` | [monadicCreatesColimitsOfShapeOfPreservesColimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/monadiccreatescolimitsofshapeofpreservescolimitsofshape.md) | 313 | `declaration-track:53fb0a26096fb7833190721afa4bf35c4f3fd7dc336e9583695e1b1e0952efe1` |
| 24 | `def` | [monadicCreatesColimitsOfPreservesColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/monadiccreatescolimitsofpreservescolimits.md) | 322 | `declaration-track:c836153b96356319525c91a08cc8aca8fb2da6797781275e065bd986ab150e39` |
| 25 | `theorem` | [hasLimit_of_reflective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/haslimit-of-reflective.md) | 329 | `result-track:ffc2035329049cbc616ae9a06b51b92fd55e86e66e497fafaf49d84e6f3b6c27` |
| 26 | `theorem` | [hasLimitsOfShape_of_reflective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/haslimitsofshape-of-reflective.md) | 335 | `result-track:fffe0502e920ed1536dbf079b1b90f13cac5b6bb9abfa3fbf1891f7c8eb7d2d7` |
| 27 | `theorem` | [hasLimits_of_reflective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/haslimits-of-reflective.md) | 340 | `result-track:c4f34dd02663b688b2958333e4a7995bc4c8b3ceb469e364bf285bbd4863e677` |
| 28 | `theorem` | [hasColimitsOfShape_of_reflective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/hascolimitsofshape-of-reflective.md) | 345 | `result-track:425addc0fca28c7e27505b7f6df081646f44a2ef62aefaceacff45ceda7b02fc` |
| 29 | `theorem` | [hasColimits_of_reflective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/hascolimits-of-reflective.md) | 357 | `result-track:8d23fc69ae4dc8415c15507cc1b08d194180384840b03a8ed8586973bbc3a674` |
| 30 | `lemma` | [leftAdjoint_preservesTerminal_of_reflective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/leftadjoint-preservesterminal-of-reflective.md) | 364 | `result-track:27e801d5a3e535586a7d2fc5691e2ac5efa9f0af5e95289a8cef42e114fd2dc2` |
| 31 | `def` | [γ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/anonymous-source-edition-4.md) | 395 | `declaration-track:82acab9ecace91d3f5a406afaa639a73cbbce4d549e30e21513b4cd6e8e03924` |
| 32 | `def` | [newCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/newcocone.md) | 399 | `declaration-track:8409d52ed1482116c95872274a77a89f06f9b89f1752f46718a58c2897d50889` |
| 33 | `def` | [coconePoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/coconepoint-source-edition-2.md) | 405 | `declaration-track:68739c7564aa306bc165d7113b890d6a51ca00f7cff1319b97ca9903392b65cb` |
| 34 | `def` | [liftedCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/liftedcocone.md) | 420 | `declaration-track:98d64443de0f8935e5a09d63cf9eae1a079676d9e3ac036fd2b8397345e8018a` |
| 35 | `def` | [liftedCoconeIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/liftedcoconeiscolimit-source-edition-2.md) | 430 | `declaration-track:e95f1781f8c52c7e8e9d34e50ce5a30a6daa853bbda4fb1308a7482800ea6344` |
| 36 | `instance` | [forgetCreatesColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/forgetcreatescolimit.md) | 449 | `declaration-track:25c81d632fa7b5b1080d62b4f9f36733200000adcd08e69cf562025a9445f36c` |
| 37 | `theorem` | [hasColimit_of_comp_forget_hasColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/hascolimit-of-comp-forget-hascolimit.md) | 458 | `result-track:3b2db0784afe42e34aabc3c7c80567587afb7c5d65f06508c5a740ce905ebdeb` |
| 38 | `def` | [γ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/anonymous-source-edition-2.md) | 472 | `declaration-track:4987cca8b102160b24aeee162844c97094f816d14b3440e97d90dd6fdf1d11d6` |
| 39 | `def` | [newCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/newcone.md) | 479 | `declaration-track:107a8ccb00e82d4712c7879d116107eef730274aaffefff31c48bba5771da6b2` |
| 40 | `abbrev` | [lambda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/lambda-source-edition-2.md) | 490 | `declaration-track:42ec8c6c0ffa9dca91eda5ccf24aa721cfc291aa882144e7df25d434ab5e2a53` |
| 41 | `theorem` | [commuting](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/commuting.md) | 494 | `result-track:3208e196bc13d63e0a2628e7a7f3827f24faab30a91d5c0d17cb303895786900` |
| 42 | `def` | [conePoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/conepoint.md) | 506 | `declaration-track:9591fee7335e72b0f60204b1eb42dcae9f65eba40ccac458d743e5b9a57af629` |
| 43 | `def` | [liftedCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/liftedcone.md) | 522 | `declaration-track:2f82185af0ab5f7571d2d863eabe61136dca45802dbb0001a85e3c2714c739b6` |
| 44 | `def` | [liftedConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/liftedconeislimit.md) | 536 | `declaration-track:5d823e93e971f6270b148952397962ce4143b35299c54bb0bac65717294fbc8b` |
| 45 | `instance` | [forgetCreatesLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/forgetcreateslimit.md) | 559 | `declaration-track:2772f3b1a43abbde305829af47ae69ab6733e6ea965e6810a5fbac2e5493e742` |
| 46 | `instance` | [forgetCreatesLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/forgetcreateslimitsofshape.md) | 575 | `declaration-track:b73f0c46b9ce3af614e1075856955bd39e60018b3aaddcfd3ba2d767f18fe569` |
| 47 | `instance` | [forgetCreatesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/forgetcreateslimits-source-edition-2.md) | 578 | `declaration-track:df3086eadd8d4b8707559466003664e94b8915b759aefd09c7705d015bec2667` |
| 48 | `theorem` | [forget_creates_limits_of_comonad_preserves](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/forget-creates-limits-of-comonad-preserves.md) | 584 | `result-track:0dc08b7d953a6f3d57e8aa1c4cdab345144ef11d0b96c9769a0f4cdee3292880` |
| 49 | `instance` | [comp_comparison_forget_hasColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/comp-comparison-forget-hascolimit.md) | 590 | `declaration-track:300a9586d5f3d35cbb3161acdd51e42a5633ac67d6027029f2a713386705d374` |
| 50 | `instance` | [comp_comparison_hasColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/comp-comparison-hascolimit.md) | 595 | `declaration-track:820786d798f11ecd3d498991a84cb4aa48718467f678d8b6b7414c82b6a9b992` |
| 51 | `def` | [comonadicCreatesColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/comonadiccreatescolimits.md) | 600 | `declaration-track:dcf19ceb20a700c37243f48cfa38a6cb1758b43fcf744d6fb6051abf43e27df8` |
| 52 | `def` | [comonadicCreatesLimitOfPreservesLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/comonadiccreateslimitofpreserveslimit.md) | 607 | `declaration-track:276aea2038c77f7abb271576534f2f7ab30bd78224b5ac660a3bf9834e620dd5` |
| 53 | `def` | [comonadicCreatesLimitsOfShapeOfPreservesLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/comonadiccreateslimitsofshapeofpreserveslimitsofshape.md) | 633 | `declaration-track:f1a1d44698c502f8b8c7b905c49114609a6eac9acba9176a17cc772483b6aad8` |
| 54 | `def` | [comonadicCreatesLimitsOfPreservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/comonadiccreateslimitsofpreserveslimits.md) | 642 | `declaration-track:45ade42745682544ab8132c9906ca6483e5acef13dbcd389f9fe23ec6d95c315` |
| 55 | `theorem` | [hasColimit_of_coreflective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/hascolimit-of-coreflective.md) | 649 | `result-track:6d406e475aafe640fd4ea4f1aa5f80d64e7e6e478adcfd83525d1671f7b4aa86` |
| 56 | `theorem` | [hasColimitsOfShape_of_coreflective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/hascolimitsofshape-of-coreflective.md) | 655 | `result-track:c30595144f2fbb864990208042dbb8106a46541c6e28ac9d27ffb7c32fb92e11` |
| 57 | `theorem` | [hasColimits_of_coreflective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/hascolimits-of-coreflective.md) | 660 | `result-track:9e08d46f8b5d5092865946a4dc59158b6650d2a487ef296fe013fd38c5be64d3` |
| 58 | `theorem` | [hasLimitsOfShape_of_coreflective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/haslimitsofshape-of-coreflective.md) | 665 | `result-track:82520b994201031932dfa84be05189e257089409683a06667085914c45a08d73` |
| 59 | `theorem` | [hasLimits_of_coreflective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/haslimits-of-coreflective.md) | 677 | `result-track:847b95ca0159362ba7db34d212b28f6ecc756b5203c4179c9ca12bae8d89345c` |
| 60 | `lemma` | [rightAdjoint_preservesInitial_of_coreflective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonadLimitsNamespacedLeftAdjointPreservesTerminalOfReflective.lean/declarations/rightadjoint-preservesinitial-of-coreflective.md) | 684 | `result-track:43d47228815e0f87ddcd6cae3d3808e08e6008f13c0364e7f66e0c1fd529280e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a407c410311853504e93e2135cb4c9f9b60b561c5469fbc1a25d24020bd318cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantfab70a68d15652f1550f78f8e0f17648a664773442b7771fc0da3118681bef82.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantfab70a68d15652f1550f78f8e0f17648a664773442b7771fc0da3118681bef82.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
