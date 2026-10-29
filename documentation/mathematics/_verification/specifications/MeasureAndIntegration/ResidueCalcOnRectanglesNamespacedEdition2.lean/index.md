# Verification target: Residue Calc On Rectangles Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29c25e5fc47d87e488c77617fc7b877a1bcd79f2",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ResidueCalcOnRectangles/Variantaeabc76c9f569228b483b50ef200de32507fe297cdd432eab7657144c8af6cb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29c25e5fc47d87e488c77617fc7b877a1bcd79f2`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ResidueCalcOnRectangles/Variantaeabc76c9f569228b483b50ef200de32507fe297cdd432eab7657144c8af6cb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ResidueCalcOnRectangles/Variantaeabc76c9f569228b483b50ef200de32507fe297cdd432eab7657144c8af6cb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Convex` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Rectangle` — import line 11; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Tactic.AdditiveCombination` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HIntegral](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/hintegral-source-edition-2.md) | 25 | `declaration-track:44e8c3628c25b81fbed498a00ff865b9b4530dae1443f9a693608e5abd3702d4` |
| 2 | `def` | [VIntegral](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/vintegral.md) | 28 | `declaration-track:0cc06475020c6f5f4d91cb0c557c22517196711009f6bab4e5c141b651932e73` |
| 3 | `def` | [HIntegral'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/hintegral.md) | 31 | `declaration-track:2927e366938428e5c49821259d00250658ac8c8f0586a3aeb9fa121945e91857` |
| 4 | `def` | [VIntegral'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/vintegral-source-edition-2.md) | 34 | `declaration-track:397a81ce9bcdd7584fa1f651f51b3ddbaf0451c2034745a6e5860ef401fe0ef9` |
| 5 | `lemma` | [HIntegral_symm](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/hintegral-symm.md) | 37 | `result-track:17d06c39244d588dcc2658dabc1736dcacec7fcd96ff08004b2bf844a3ba04c3` |
| 6 | `lemma` | [VIntegral_symm](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/vintegral-symm.md) | 40 | `result-track:b95f3c7d0504b4c6b922db5a2134408db3a698b211fb6452ab4e4f1d55864127` |
| 7 | `def` | [RectangleIntegral](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/rectangleintegral.md) | 55 | `declaration-track:3f816f344c659eb8dc03b49f186b9889610b47584f5cfe6835fe44909097802b` |
| 8 | `abbrev` | [RectangleIntegral'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/rectangleintegral-source-edition-2.md) | 61 | `declaration-track:d9a9049331e1336c431583a46a340762a78a3455edd18a78e70019fbb35da739` |
| 9 | `def` | [UpperUIntegral](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/upperuintegral.md) | 71 | `declaration-track:fb35247cbc989f737e46aa4c7a7c4792fefd6bb5ae9080eebecc1fbc6c13df4e` |
| 10 | `def` | [LowerUIntegral](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/loweruintegral.md) | 84 | `declaration-track:ea1197b64860747ef752902e1395f8409e263f59fa4c5632d5c979d424e1e83c` |
| 11 | `def` | [VerticalIntegral](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/verticalintegral-source-edition-2.md) | 101 | `declaration-track:c459476d2029fb20a5681bae8787417f55782f239abd00ec7af31f7b6998a7c2` |
| 12 | `abbrev` | [VerticalIntegral'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/verticalintegral.md) | 106 | `declaration-track:5dc28ba9cb17ee7f98c5990777c4f97c0a18828351bfdb75648c654ecb87c6f1` |
| 13 | `lemma` | [verticalIntegral_split_three](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/verticalintegral-split-three.md) | 109 | `result-track:8c909632f01982e2e0b6cd0795e89528794378c67cf44f3c31ed163176759ca3` |
| 14 | `lemma` | [DiffVertRect_eq_UpperLowerUs](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/diffvertrect-eq-upperlowerus.md) | 128 | `result-track:9aa20749bb32818c69839da7963762bf7bcbc235835949c97ab620ae6f77ba5d` |
| 15 | `abbrev` | [HolomorphicOn](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/holomorphicon.md) | 142 | `declaration-track:7b6994c96f0ccf60b99973de3fb570ec560abac9ad9ee1e70f7431ced5a9c66e` |
| 16 | `theorem` | [existsDifferentiableOn_of_bddAbove](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/existsdifferentiableon-of-bddabove.md) | 158 | `result-track:8efcac654321f6ddf311ac0c1bc31a33198ebd61fec0b7cb88e170f7d2607456` |
| 17 | `theorem` | [HolomorphicOn.vanishesOnRectangle](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/holomorphicon-vanishesonrectangle.md) | 177 | `result-track:3ed1443f3487263f932df9286db11203aae766e6fd08f776848104d2c4867fb0` |
| 18 | `theorem` | [RectangleIntegral_congr](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/rectangleintegral-congr-source-edition-2.md) | 184 | `result-track:64d4dfb19036542da92ca54cdb9d69508d68234cbce66787529edf61c01d12fb` |
| 19 | `theorem` | [RectangleIntegral'_congr](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/rectangleintegral-congr.md) | 194 | `result-track:46e217cbc73f9ba9f3b51401fe83c16d53602caad053615d079cfe046c65656e` |
| 20 | `theorem` | [rectangleIntegral_symm](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/rectangleintegral-symm.md) | 198 | `result-track:c755e4296fcbb2a2e62ef5267c1c27f139ddeff342314dd39b11f12a00888a37` |
| 21 | `theorem` | [rectangleIntegral_symm_re](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/rectangleintegral-symm-re.md) | 204 | `result-track:ba200eda9edb789ee9040ac80c002ae0e051c39b2c86894ec10dc1c5aeee8729` |
| 22 | `def` | [RectangleBorderIntegrable](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/rectangleborderintegrable.md) | 211 | `declaration-track:8a6c7c09d0d7c37b65c169d0935ee21c7cb387e0dd6fd7b52932690862665f2e` |
| 23 | `theorem` | [RectangleBorderIntegrable.add](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/rectangleborderintegrable-add.md) | 217 | `result-track:b6ef865984f37c92bd2aa08b962c7ce9006d438456ed6da32f2e5de6525d13ea` |
| 24 | `theorem` | [ContinuousOn.rectangleBorder_integrable](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/continuouson-rectangleborder-integrable.md) | 229 | `result-track:1e6445718cae846c1e6efb1773875471607d20ff00ecbee8dc0e00774dc9b09e` |
| 25 | `theorem` | [ContinuousOn.rectangleBorderIntegrable](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/continuouson-rectangleborderintegrable.md) | 237 | `result-track:04b5038f0987fb1a39fa4f5ea48b1d43d5cb506def3f64b9b6db982502ee4c58` |
| 26 | `theorem` | [ContinuousOn.rectangleBorderNoPIntegrable](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/continuouson-rectanglebordernopintegrable.md) | 242 | `result-track:4877cd373f78757e5102e5866c76a6f6283b1c4439fe8ec9c41988a5aa3a16b9` |
| 27 | `theorem` | [HolomorphicOn.rectangleBorderIntegrable'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/holomorphicon-rectangleborderintegrable-source-edition-2.md) | 248 | `result-track:80d543f47d4c1016a4c89c80e07c9452c65add98760b8756c1f58b8d58e6eed8` |
| 28 | `theorem` | [HolomorphicOn.rectangleBorderIntegrable](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/holomorphicon-rectangleborderintegrable.md) | 253 | `result-track:033ccf219eb912cc5b186549554c0b3d92bcf6a916368d67f0dfd0bc5a55bc89` |
| 29 | `lemma` | [RectangleIntegralHSplit](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/rectangleintegralhsplit.md) | 263 | `result-track:2d480d2cf7ce19cb04ed4cb8d39dce01636949105e03930d4abea67846ada0cd` |
| 30 | `lemma` | [RectangleIntegralHSplit'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/rectangleintegralhsplit-source-edition-2.md) | 277 | `result-track:98e199df02b22698caa576850686173b1d6c8be268a0e9f57e514693317c907d` |
| 31 | `lemma` | [RectangleIntegralVSplit](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/rectangleintegralvsplit-source-edition-2.md) | 289 | `result-track:c4ae813defaffdefa476cfea98823a5a7e50fa69d0d9d7a95c6b5a93e5646637` |
| 32 | `lemma` | [RectangleIntegralVSplit'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/rectangleintegralvsplit.md) | 304 | `result-track:198d183fd453780ec06c85f5fc4976dd96891cc4fb97d1fe58ea6e0b9f02b52a` |
| 33 | `lemma` | [RectanglePullToNhdOfPole'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/rectanglepulltonhdofpole-source-edition-2.md) | 317 | `result-track:412700a4d4915f50bf6d60d9e78bec912688027aa4a98eb06c3e336a52b3510e` |
| 34 | `lemma` | [RectanglePullToNhdOfPole](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/rectanglepulltonhdofpole.md) | 405 | `result-track:22e392b8da1d85cd272f05464e3d7781fa3e0f4e2309c110f810181fe3b6138e` |
| 35 | `lemma` | [RectanglePullToNhdOfPole''](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/rectanglepulltonhdofpole-source-edition-3.md) | 416 | `result-track:985bf0bb060bf09f6d0decfc88d8627c282ecb6bf3119c20dc47fe656b736873` |
| 36 | `theorem` | [ResidueTheoremAtOrigin_aux1c](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/residuetheorematorigin-aux1c.md) | 424 | `result-track:56be443ea36dec0fb5f04a2cfe4fd25d8f7a32d5b4ca57d021e759593160781b` |
| 37 | `theorem` | [ResidueTheoremAtOrigin_aux1c'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/residuetheorematorigin-aux1c-source-edition-2.md) | 430 | `result-track:62c4f795139443d0ca290a3fe827eb60869908768da34a26e47d4d943b309e81` |
| 38 | `theorem` | [ResidueTheoremAtOrigin_aux2c](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/residuetheorematorigin-aux2c.md) | 436 | `result-track:d0e4036af65015d20f54f1f2801cbd2a4a39467c4a0d9f55206dc883628af1fa` |
| 39 | `theorem` | [ResidueTheoremAtOrigin_aux2c'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/residuetheorematorigin-aux2c-source-edition-2.md) | 442 | `result-track:f6e3be234210e22f392ea3c5dffa0dda4e729d0ea61afaede73275c73aa233d5` |
| 40 | `theorem` | [RectangleIntegral.const_smul](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/rectangleintegral-const-smul.md) | 448 | `result-track:3f45e63a3307737cb7ddb4652f1b863950aa8a89fa4adcd1db23e03b0328ffea` |
| 41 | `theorem` | [RectangleIntegral.const_mul'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/rectangleintegral-const-mul.md) | 452 | `result-track:de51846bdd1e292a0d076a41f8b4e1410bc3b06ddc4c963264bc4915f24830a6` |
| 42 | `theorem` | [RectangleIntegral.translate](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/rectangleintegral-translate.md) | 457 | `result-track:139bbb31b3da9623274ab9dfc5b3f744304f26197ee95ff1c2bbd659c9cff9b8` |
| 43 | `theorem` | [RectangleIntegral.translate'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/rectangleintegral-translate-source-edition-2.md) | 463 | `result-track:e21c9dda4dd682ee45f420565e93cd4686dae2c47b111dd6cb5387aa5232bbbc` |
| 44 | `lemma` | [Complex.inv_re_add_im](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/complex-inv-re-add-im.md) | 467 | `result-track:268a273b1d7db48089106527ecbb3d2fd0eb18af3cf4faa872807cd21006453c` |
| 45 | `lemma` | [sq_add_sq_ne_zero](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/sq-add-sq-ne-zero.md) | 471 | `result-track:a92844f1fa910e3273880aba94490bcf541f9c1e7208601138b53c1f8c4af4b7` |
| 46 | `lemma` | [continuous_self_div_sq_add_sq](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/continuous-self-div-sq-add-sq.md) | 474 | `result-track:2539c0fcb6492cbb148071ca0ed4e01fb52532371c72d2f3c29a7d9af667eb5f` |
| 47 | `lemma` | [integral_self_div_sq_add_sq](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/integral-self-div-sq-add-sq.md) | 478 | `result-track:77f2396dfe76eccf17c35fcc76b89ad4bb6b45b2a3969154abc72af0e897ba31` |
| 48 | `lemma` | [integral_const_div_sq_add_sq](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/integral-const-div-sq-add-sq.md) | 491 | `result-track:d7960cb6fe7c837eaed7b4eb080fa4676d2af3723296730da41705971296813e` |
| 49 | `lemma` | [integral_const_div_self_add_im](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/integral-const-div-self-add-im.md) | 501 | `result-track:06f3bd1294ac800ffcc3e4afe69a8cfffc24a04062e839d16403438e64a08de0` |
| 50 | `lemma` | [integral_const_div_re_add_self](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/integral-const-div-re-add-self.md) | 524 | `result-track:8c70bd84b03e8287df1770c7e0dc4f4c3b3ac8b9935874aa7f5eae8575412af2` |
| 51 | `lemma` | [ResidueTheoremAtOrigin'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/residuetheorematorigin-source-edition-2.md) | 542 | `result-track:66fb6693a73b297da521e088e7dd4e3dd2477fe7a5df9457ba03ca38a6f3b816` |
| 52 | `theorem` | [ResidueTheoremInRectangle](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/residuetheoreminrectangle.md) | 564 | `result-track:01c6d7a18751655ee821db55c66e5b4d1fdc64c604c1274d1b47939010ec6f38` |
| 53 | `lemma` | [ResidueTheoremAtOrigin](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/residuetheorematorigin.md) | 585 | `result-track:238c1fcf79d7d65e1dab57555c4f1899f65e588fc89db21b651e04c47bc5351a` |
| 54 | `lemma` | [ResidueTheoremOnRectangleWithSimplePole](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/residuetheoremonrectanglewithsimplepole.md) | 611 | `result-track:91a98f5b1e5f5b34da6a479a4e1a4c8fba2079cb554f195b6865ee7ce4ece3f8` |
| 55 | `lemma` | [IsBigO_to_BddAbove](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/isbigo-to-bddabove.md) | 642 | `result-track:60d0189d752292b1612801650e0db6fbfa6735c38fb20297583b9e7812ecc05d` |
| 56 | `theorem` | [BddAbove_on_rectangle_of_bdd_near](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/bddabove-on-rectangle-of-bdd-near.md) | 661 | `result-track:2132497c3a02590cc212cf268c04834787cefaa4f249d6aa8a3d8fd98314d250` |
| 57 | `theorem` | [ResidueTheoremOnRectangleWithSimplePole'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition2.lean/declarations/residuetheoremonrectanglewithsimplepole-source-edition-2.md) | 693 | `result-track:a6f3063ff035c659f2555f8f416d87e8b1ce92ca6e71eabf9e88f9bfc4275dc3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=116c74f3e02b9a96edf58495591726cb4b1f76392c784767e6741843a4e8f2e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ResidueCalcOnRectangles/Variantaeabc76c9f569228b483b50ef200de32507fe297cdd432eab7657144c8af6cb1.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ResidueCalcOnRectangles/Variantaeabc76c9f569228b483b50ef200de32507fe297cdd432eab7657144c8af6cb1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
