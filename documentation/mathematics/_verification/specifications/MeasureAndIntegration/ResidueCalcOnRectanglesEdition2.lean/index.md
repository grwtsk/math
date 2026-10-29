# Verification target: Residue Calc On Rectangles Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "377b24f1b641c133d77964e6af5698c101bc8458",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ResidueCalcOnRectangles/Variantfc2f7e1e908d2aefd69948a5214883ce6fcf4b5547ebe286112da6bce0fea772.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `377b24f1b641c133d77964e6af5698c101bc8458`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ResidueCalcOnRectangles/Variantfc2f7e1e908d2aefd69948a5214883ce6fcf4b5547ebe286112da6bce0fea772.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ResidueCalcOnRectangles/Variantfc2f7e1e908d2aefd69948a5214883ce6fcf4b5547ebe286112da6bce0fea772.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Convex` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Rectangle` — import line 6; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Tactic.AdditiveCombination` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HIntegral](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/hintegral.md) | 17 | `declaration-track:00239c89314e6c013b38b001e4cbcfc363ce63a6c068443231f13e20910b9c21` |
| 2 | `def` | [VIntegral](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/vintegral-source-edition-2.md) | 20 | `declaration-track:b46a0b589508926ceed0ba18a48e310a236592b0a2254f5df9193fea9cc06604` |
| 3 | `def` | [HIntegral'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/hintegral-source-edition-2.md) | 23 | `declaration-track:e702c14208dcda184dc88fb25a4ec7e6a40197194fd852653cc667f4fe4630d8` |
| 4 | `def` | [VIntegral'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/vintegral.md) | 26 | `declaration-track:6413c5f793739ec6a4a19b2c744150ee44c47d0486b45dfdad3590fee6d70736` |
| 5 | `lemma` | [HIntegral_symm](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/hintegral-symm.md) | 29 | `result-track:1419e1b268f07926f93d6eff9bcd4bb33f06658fa630885563492753877b70c0` |
| 6 | `lemma` | [VIntegral_symm](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/vintegral-symm.md) | 32 | `result-track:8dc94170590c3b4389825720e6fc540f7a5a45f4f746b059616cd46a98b2a527` |
| 7 | `def` | [RectangleIntegral](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/rectangleintegral.md) | 47 | `declaration-track:5a7e4776d33130be081582031d11a5efff673cf8d1065833430fdc4ae39d00c0` |
| 8 | `abbrev` | [RectangleIntegral'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/rectangleintegral-source-edition-2.md) | 53 | `declaration-track:7d5cac73288c275482e6d81f92c44ad28fa13b0555dcbe26d756ec57073cb0eb` |
| 9 | `def` | [UpperUIntegral](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/upperuintegral.md) | 63 | `declaration-track:04dec86a18fa2def908f53e694616fdd70234a1b468cb7226921cdb1f096f6f7` |
| 10 | `def` | [LowerUIntegral](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/loweruintegral.md) | 76 | `declaration-track:f43591bb19ace438716bf5c06470eb61fe00b2816a4f1f3435c266d7a7331b76` |
| 11 | `def` | [VerticalIntegral](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/verticalintegral-source-edition-2.md) | 93 | `declaration-track:5d654d614573757d265c868465672734b5473ddb71d8ec3d93867ae8982d0a49` |
| 12 | `abbrev` | [VerticalIntegral'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/verticalintegral.md) | 98 | `declaration-track:4687a7ca8aa99ed4e710e29ef37b52327e070d3d454940f31d327f485508b0e4` |
| 13 | `lemma` | [verticalIntegral_split_three](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/verticalintegral-split-three.md) | 101 | `result-track:f229f53111300687fe76853d65bc80dc40b6b8b24b5176f2af17543714f55acd` |
| 14 | `lemma` | [DiffVertRect_eq_UpperLowerUs](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/diffvertrect-eq-upperlowerus.md) | 120 | `result-track:c2d7bb0aa05aa29d392c1eaf52b849abfef694ab1b0d1e8fec4df8868bf21885` |
| 15 | `abbrev` | [HolomorphicOn](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/holomorphicon.md) | 134 | `declaration-track:341489b6bd419b440743b806fdad32099876ddec3fc90bb6e45d8d64b954a95a` |
| 16 | `theorem` | [existsDifferentiableOn_of_bddAbove](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/existsdifferentiableon-of-bddabove.md) | 150 | `result-track:d11ef61e3c869c7ebf305ca39d207f0ba8736004446810f25e5ba8ba5ed8b3d5` |
| 17 | `theorem` | [HolomorphicOn.vanishesOnRectangle](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/holomorphicon-vanishesonrectangle.md) | 169 | `result-track:08da6f50e5f11731565dbbd47efc9afa5f8993526ed599edffd0dfaa6e6f83b1` |
| 18 | `theorem` | [RectangleIntegral_congr](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/rectangleintegral-congr.md) | 176 | `result-track:ad9d8a46d44bad96ebd947e376d0e28b82b452613de835f0eefec74a57771962` |
| 19 | `theorem` | [RectangleIntegral'_congr](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/rectangleintegral-congr-source-edition-2.md) | 186 | `result-track:e6b04b65c7266a78039ffaa2ee56d085fc6cb57d83851becfa3c8571bcdbdaf2` |
| 20 | `theorem` | [rectangleIntegral_symm](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/rectangleintegral-symm.md) | 190 | `result-track:a35f347993ba6e039d0aae155a86c28238d4ed29b322f3a23b621725e2d6cae2` |
| 21 | `theorem` | [rectangleIntegral_symm_re](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/rectangleintegral-symm-re.md) | 196 | `result-track:b00046fadf0e1393fa0c8474d43320e5f93f1cd2b5313588fc01db75b4d6e778` |
| 22 | `def` | [RectangleBorderIntegrable](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/rectangleborderintegrable.md) | 203 | `declaration-track:e3b5736768073e254aa243bcc866839dfd9bc76b980dda03ef21668d17802890` |
| 23 | `theorem` | [RectangleBorderIntegrable.add](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/rectangleborderintegrable-add.md) | 209 | `result-track:dfdb60e4c5c677ad7adc80c0f005a7d96d82865a42141bbcf5ee78143aba22ab` |
| 24 | `theorem` | [ContinuousOn.rectangleBorder_integrable](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/continuouson-rectangleborder-integrable.md) | 221 | `result-track:97806141e193cd4017287ba09693660e05134bd95fa222252e994eea24aeccbe` |
| 25 | `theorem` | [ContinuousOn.rectangleBorderIntegrable](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/continuouson-rectangleborderintegrable.md) | 229 | `result-track:8fac7db8f4eafe222a3f18d6cb0d5c6ef3f5bda0930d707a1198ba8901da6fd8` |
| 26 | `theorem` | [ContinuousOn.rectangleBorderNoPIntegrable](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/continuouson-rectanglebordernopintegrable.md) | 234 | `result-track:64525cffb471e42f1cc097cb98421303e72923b4a02c05d78c79e4edbbec0f3e` |
| 27 | `theorem` | [HolomorphicOn.rectangleBorderIntegrable'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/holomorphicon-rectangleborderintegrable.md) | 240 | `result-track:329d7f0cbc4528d1ccb42ca50b2d3749181ed003ad65de6dbd38dfe65bfae500` |
| 28 | `theorem` | [HolomorphicOn.rectangleBorderIntegrable](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/holomorphicon-rectangleborderintegrable-source-edition-2.md) | 245 | `result-track:e5097848384ce07e59774f5398d63b84f715a091b37804a296e7068dd9252f76` |
| 29 | `lemma` | [RectangleIntegralHSplit](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/rectangleintegralhsplit.md) | 255 | `result-track:9218171cf469776f186cdd082fae44fac22635c4366ad30f7f999bcc700b1ce9` |
| 30 | `lemma` | [RectangleIntegralHSplit'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/rectangleintegralhsplit-source-edition-2.md) | 269 | `result-track:dc4ccb7dadb30571e70ff3b6d3cd7af1e2c2987d30c8f4f3eb1a91e6282892ee` |
| 31 | `lemma` | [RectangleIntegralVSplit](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/rectangleintegralvsplit.md) | 281 | `result-track:3c2dae140916c09a7a1713f41809e841a5de3677929ad0cb67c22293d3d5f9f1` |
| 32 | `lemma` | [RectangleIntegralVSplit'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/rectangleintegralvsplit-source-edition-2.md) | 296 | `result-track:b2bfabcd6f971392f221f43ccb10fb1d852dde997335b276e270de6f0ae3046d` |
| 33 | `lemma` | [RectanglePullToNhdOfPole'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/rectanglepulltonhdofpole-source-edition-3.md) | 309 | `result-track:d99ca4ada01a27615a00e51d43c7f5f0f59aa4664a6a6f0adafa8d814f22f19e` |
| 34 | `lemma` | [RectanglePullToNhdOfPole](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/rectanglepulltonhdofpole-source-edition-2.md) | 397 | `result-track:5bab0d8b6e641835cbc20ecb4674e6e9ad5c0af7ca0bd13afd890f79b52bd371` |
| 35 | `lemma` | [RectanglePullToNhdOfPole''](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/rectanglepulltonhdofpole.md) | 408 | `result-track:42060af5458bfc6c621e1cafbac4aa2e9cf3f607fc7826880ed7692e207eee7d` |
| 36 | `theorem` | [ResidueTheoremAtOrigin_aux1c](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/residuetheorematorigin-aux1c-source-edition-2.md) | 416 | `result-track:9127310035efb267653799e7fb649b45d605c5c68ea4733f83db6b947a4630b6` |
| 37 | `theorem` | [ResidueTheoremAtOrigin_aux1c'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/residuetheorematorigin-aux1c.md) | 422 | `result-track:12d2b25a51c882132fc8b536ab03758426321c231dda1f9162ed6fb81ae8207e` |
| 38 | `theorem` | [ResidueTheoremAtOrigin_aux2c](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/residuetheorematorigin-aux2c-source-edition-2.md) | 428 | `result-track:38e6a7252037907fe8899e5232013885d84c3d541942deeda3aa2a73966c16a4` |
| 39 | `theorem` | [ResidueTheoremAtOrigin_aux2c'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/residuetheorematorigin-aux2c.md) | 434 | `result-track:2d8e40991ed38feaa76f631abee6929891ea6b1f2177c14a42f0e99c073c94df` |
| 40 | `theorem` | [RectangleIntegral.const_smul](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/rectangleintegral-const-smul.md) | 440 | `result-track:daa2242aa0a771efab25cb3eae7d489b1e032e491fb53849237a34caf7d69191` |
| 41 | `theorem` | [RectangleIntegral.const_mul'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/rectangleintegral-const-mul.md) | 444 | `result-track:b462ba0ad782779faac8c3d9fb6913fd8e9964203320a11b67755b2f57960dc1` |
| 42 | `theorem` | [RectangleIntegral.translate](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/rectangleintegral-translate.md) | 449 | `result-track:1534047396929b7a5dc5eb395005a59f9565403af3833f35b7f82a3907fd32e0` |
| 43 | `theorem` | [RectangleIntegral.translate'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/rectangleintegral-translate-source-edition-2.md) | 455 | `result-track:bb71182d103f6fd5d47294761ab7be0f65aeef270599f3fb2b91c82fa472b792` |
| 44 | `lemma` | [Complex.inv_re_add_im](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/complex-inv-re-add-im.md) | 459 | `result-track:bd86f1892a5323b75d0068e41773942eafab82d3898d2e52535047b984073a95` |
| 45 | `lemma` | [sq_add_sq_ne_zero](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/sq-add-sq-ne-zero.md) | 463 | `result-track:362e8608055549bc8c594c0db16ae3fbeff39064eee780fd31e7f7cafa989788` |
| 46 | `lemma` | [continuous_self_div_sq_add_sq](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/continuous-self-div-sq-add-sq.md) | 466 | `result-track:f43f6e97448b42a9015516268719ea179997e615ac52384eccca413740e2e202` |
| 47 | `lemma` | [integral_self_div_sq_add_sq](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/integral-self-div-sq-add-sq.md) | 470 | `result-track:e9291db6f6da2b11fc6036797673709b7ed557ad21cb505301a1244a8833d52b` |
| 48 | `lemma` | [integral_const_div_sq_add_sq](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/integral-const-div-sq-add-sq.md) | 483 | `result-track:818cb5470f12424054ff1fa3e92f0cd3fabe9ab256e4a6cc7a2c177b861aee23` |
| 49 | `lemma` | [integral_const_div_self_add_im](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/integral-const-div-self-add-im.md) | 493 | `result-track:9d4eb6901e06d4e73c49d9a39aca0dfac21929dc07e14f8c09ba77e56e75df49` |
| 50 | `lemma` | [integral_const_div_re_add_self](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/integral-const-div-re-add-self.md) | 516 | `result-track:cee588ea6317c39fb7f6ce00a11cd044b611a210fbed7af2b06865e332175bd3` |
| 51 | `lemma` | [ResidueTheoremAtOrigin'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/residuetheorematorigin.md) | 534 | `result-track:0fa4abe597c44f5f33c0dad744a6c75d79c6163261c22ef23ecdbc0c0a92ffaf` |
| 52 | `theorem` | [ResidueTheoremInRectangle](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/residuetheoreminrectangle.md) | 556 | `result-track:af5541d9ead15b7c582b68ef38572953ff3dda2688924f80d43395c4b9c27d29` |
| 53 | `lemma` | [ResidueTheoremAtOrigin](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/residuetheorematorigin-source-edition-2.md) | 577 | `result-track:b7a5798d5bad7945ab28720d2c66b385ecf7e674d0b701d879bfaddc312a4b81` |
| 54 | `lemma` | [ResidueTheoremOnRectangleWithSimplePole](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/residuetheoremonrectanglewithsimplepole-source-edition-2.md) | 603 | `result-track:e52d897bafe29ba7c7f352ffb2e13007a9a9dba0ba57eeb789af4209c6a1b96a` |
| 55 | `lemma` | [IsBigO_to_BddAbove](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/isbigo-to-bddabove.md) | 634 | `result-track:33d30aadf50a0fff572e63091d87c49ae7a2ec5e9801cfff098aaa2b1318c569` |
| 56 | `theorem` | [BddAbove_on_rectangle_of_bdd_near](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/bddabove-on-rectangle-of-bdd-near.md) | 653 | `result-track:86c8c0c12aad36a9a23913e94a3d5ad3d21d79b8d47d53089df7bd56fd9452b5` |
| 57 | `theorem` | [ResidueTheoremOnRectangleWithSimplePole'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition2.lean/declarations/residuetheoremonrectanglewithsimplepole.md) | 685 | `result-track:1823494b061426e7549713f8ea893110f40a2f25e46c7edac0a0a9f5423852bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=72ef4416f59db993c15ef653e6df37dddecce78a3854b59532ca6d52c58a4a4f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ResidueCalcOnRectangles/Variantfc2f7e1e908d2aefd69948a5214883ce6fcf4b5547ebe286112da6bce0fea772.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ResidueCalcOnRectangles/Variantfc2f7e1e908d2aefd69948a5214883ce6fcf4b5547ebe286112da6bce0fea772.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
