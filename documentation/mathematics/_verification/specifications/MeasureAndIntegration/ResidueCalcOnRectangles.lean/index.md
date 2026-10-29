# Verification target: Residue Calc On Rectangles

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f0119d42de0d67b003b84a66cb7eddc6e16d6d7",
  "lexical_observation_count": 84,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/ResidueCalcOnRectangles/Variant081d38aa0c5eec725a1582eea3bdf4e51d604f6c2ebb3c9729d91df3aa092956.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f0119d42de0d67b003b84a66cb7eddc6e16d6d7`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/ResidueCalcOnRectangles/Variant081d38aa0c5eec725a1582eea3bdf4e51d604f6c2ebb3c9729d91df3aa092956.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/ResidueCalcOnRectangles/Variant081d38aa0c5eec725a1582eea3bdf4e51d604f6c2ebb3c9729d91df3aa092956.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Convex` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Meromorphic.NormalForm` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.Rectangle` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.Tactic.AdditiveCombination` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HIntegral](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/hintegral.md) | 31 | `declaration-track:029cdb06002932340dbaab6fa023c3107cdf8fd998e8f67497df3c20d69c7508` |
| 2 | `def` | [VIntegral](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/vintegral.md) | 34 | `declaration-track:59bf75babdb9a0ebc0bae07962164f7e63365ef29164b9ac79f3e0b13e2ef384` |
| 3 | `def` | [HIntegral'](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/hintegral-source-edition-2.md) | 37 | `declaration-track:e269a52169932bc47bd375ed01cd88a8ded5876012cbf7f914829f8f00f2c0f7` |
| 4 | `def` | [VIntegral'](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/vintegral-source-edition-2.md) | 40 | `declaration-track:eae2294868984b76b3c08d08be0d7e3ef3c1ad8bed5daffe6b4448469d8479c8` |
| 5 | `lemma` | [HIntegral_symm](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/hintegral-symm.md) | 43 | `result-track:f85c879bb83a581afcfa9765298a7fdec69f23231eae4cf5043c16e62f5a2b30` |
| 6 | `lemma` | [VIntegral_symm](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/vintegral-symm.md) | 46 | `result-track:d6acaaab69e5c9ff35a638a5a090f9a7751c5aa5cbe896565c3e0f8cf07ed0e1` |
| 7 | `def` | [RectangleIntegral](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/rectangleintegral-source-edition-2.md) | 52 | `declaration-track:c541d3decfce323bc0e308c215e9e6244f665a69df832f20dce161e103e6778a` |
| 8 | `abbrev` | [RectangleIntegral'](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/rectangleintegral.md) | 58 | `declaration-track:c5233985c6d6b3a8371a60e18f77a40b8cae8d17217869a537ff4b97e66b993b` |
| 9 | `def` | [UpperUIntegral](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/upperuintegral.md) | 62 | `declaration-track:260fceff9e93b1dd8ec2f5984489f294f0afd637156993c1dca039e93e3343a5` |
| 10 | `def` | [LowerUIntegral](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/loweruintegral.md) | 68 | `declaration-track:a2dd244e97a156accb75e85fc00ce321dc1eb6d79241b8a69cbcadf6974ee63f` |
| 11 | `def` | [VerticalIntegral](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/verticalintegral.md) | 73 | `declaration-track:519d587f0a8197ae77a18fba4bdde1da4221b31a9c1a1800b42593227b8d008e` |
| 12 | `abbrev` | [VerticalIntegral'](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/verticalintegral-source-edition-2.md) | 76 | `declaration-track:b2d3992c23c795b9ab90deac09a509f254760077a4ad05c866d6b7e7b9b672cd` |
| 13 | `lemma` | [verticalIntegral_split_three](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/verticalintegral-split-three.md) | 79 | `result-track:6e6579b238915043a93f392c519ad0ee69cd251c2a41830c6a7530c58fd4a609` |
| 14 | `lemma` | [DiffVertRect_eq_UpperLowerUs](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/diffvertrect-eq-upperlowerus.md) | 89 | `result-track:c0d94437dbc2be984a035d1dc7bd951d7f9edd22eb1f609976bd705b1a8d9733` |
| 15 | `abbrev` | [HolomorphicOn](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/holomorphicon.md) | 103 | `declaration-track:e468b9cb4b0b0e82dd5bc7eb5b2a400ecc5cc58d2a4c703987108084712bfbc5` |
| 16 | `theorem` | [existsDifferentiableOn_of_bddAbove](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/existsdifferentiableon-of-bddabove.md) | 106 | `result-track:a1019565d2736ef88713d8d4c19accd47302d71c63ca4c003bad52cdf886efbb` |
| 17 | `theorem` | [HolomorphicOn.vanishesOnRectangle](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/holomorphicon-vanishesonrectangle.md) | 117 | `result-track:71d9392b9cf9bf7b376db039f2a11d6e7978cbd7d7553351ca30269f81cc16e8` |
| 18 | `theorem` | [RectangleIntegral_congr](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/rectangleintegral-congr.md) | 124 | `result-track:5ecaa6e3cdf7b194450df3ac4d3c8f4934f5270cd5f150a2f5a9930aa70aea32` |
| 19 | `theorem` | [RectangleIntegral'_congr](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/rectangleintegral-congr-source-edition-2.md) | 134 | `result-track:b07be23bcbe2fb80ef4ec807b1cc2b4848d4dfeeca7f030059282747b7059714` |
| 20 | `theorem` | [rectangleIntegral_symm](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/rectangleintegral-symm.md) | 138 | `result-track:6ac2d08e284ca28475a5450a76e60f6dc8dc2598ca408f5378ffe408687007ea` |
| 21 | `theorem` | [rectangleIntegral_symm_re](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/rectangleintegral-symm-re.md) | 144 | `result-track:2a1ec3cf79d0cd284af12e1f03c92eb879ef0f03e2d1019674e102a0d40afa1b` |
| 22 | `def` | [RectangleBorderIntegrable](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/rectangleborderintegrable.md) | 151 | `declaration-track:b6f3dd14de248d4a8225c737d9cf8239d036e034be981b101584f6d94668061c` |
| 23 | `theorem` | [RectangleBorderIntegrable.add](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/rectangleborderintegrable-add.md) | 157 | `result-track:cecbb3d3a201fb506b112dbcc1e5a869ce81d83154771a1fb7deb70a6c4b6fda` |
| 24 | `theorem` | [ContinuousOn.rectangleBorder_integrable](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/continuouson-rectangleborder-integrable.md) | 169 | `result-track:c5857055c4848f0f7dbbbded0f87aec7099fc842b6693caa4aa9a45943438b87` |
| 25 | `theorem` | [ContinuousOn.rectangleBorderIntegrable](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/continuouson-rectangleborderintegrable.md) | 177 | `result-track:569dfdf7d1fa52e6da6dcdbc7cf06e03d4964b9b2b9eea9cd614c9cd1e38d282` |
| 26 | `theorem` | [ContinuousOn.rectangleBorderNoPIntegrable](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/continuouson-rectanglebordernopintegrable.md) | 182 | `result-track:b0d6aa2ed37be9ecf97e964410f21d1b401d46686882b270415ad0818fcec3e8` |
| 27 | `theorem` | [HolomorphicOn.rectangleBorderIntegrable'](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/holomorphicon-rectangleborderintegrable.md) | 188 | `result-track:e56b71458b2aba0d3c5ea6088d356c147805616e757dfcc27082182478cc1e16` |
| 28 | `theorem` | [HolomorphicOn.rectangleBorderIntegrable](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/holomorphicon-rectangleborderintegrable-source-edition-2.md) | 193 | `result-track:ea612eca63af2fc4e0deb1847822889a17685fcb5a67458c2575708d05b6e2d7` |
| 29 | `lemma` | [RectangleIntegralHSplit](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/rectangleintegralhsplit-source-edition-2.md) | 203 | `result-track:e87852ce1c89afa11ed89570026316398fbbd67de1684fbd032def906945925c` |
| 30 | `lemma` | [RectangleIntegralHSplit'](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/rectangleintegralhsplit.md) | 242 | `result-track:045b963fb05177a03f9c1a5c4d057f50d7f37621a238f95ef048c06fdf8051b7` |
| 31 | `lemma` | [RectangleIntegralVSplit](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/rectangleintegralvsplit-source-edition-2.md) | 254 | `result-track:b8ebb3852a4847cf7ce2cdb81e7dc3449f24ba6b0202db311a53810201be4b8d` |
| 32 | `lemma` | [RectangleIntegralVSplit'](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/rectangleintegralvsplit.md) | 270 | `result-track:65227b90a18ec274d9535a509dbc523ec81a84100a97fea91f299e83d04410de` |
| 33 | `lemma` | [RectanglePullToNhdOfPole'](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/rectanglepulltonhdofpole-source-edition-3.md) | 283 | `result-track:f49b42f8549b27998ee3bf854dcb642e767a990ce2da2456ad01d43510bf7080` |
| 34 | `lemma` | [RectanglePullToNhdOfPole](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/rectanglepulltonhdofpole.md) | 349 | `result-track:5ba761e4b6497e32780c7a8dd15a58690025f902b4edf64fa784a531678575b7` |
| 35 | `lemma` | [RectanglePullToNhdOfPole''](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/rectanglepulltonhdofpole-source-edition-2.md) | 360 | `result-track:dd7c7a172abd934f18e817366b2053ef7acd925d228cc7bef962244773602a79` |
| 36 | `theorem` | [ResidueTheoremAtOrigin_aux1c](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/residuetheorematorigin-aux1c-source-edition-2.md) | 368 | `result-track:d2740dad762aea5a73fcdf28ef26584426143ee1cfdbefdac2176f504df30e52` |
| 37 | `theorem` | [ResidueTheoremAtOrigin_aux1c'](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/residuetheorematorigin-aux1c.md) | 374 | `result-track:a37353d01e8eb8ea4c2b890f1f014028d9eb6ef91997fb56acbf6c59efd098dd` |
| 38 | `theorem` | [ResidueTheoremAtOrigin_aux2c](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/residuetheorematorigin-aux2c.md) | 380 | `result-track:2fd531c7f603d2dc871bb407d255bee03059f844d1e5572491832c982b04371a` |
| 39 | `theorem` | [ResidueTheoremAtOrigin_aux2c'](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/residuetheorematorigin-aux2c-source-edition-2.md) | 386 | `result-track:35c0b1123bf92d746c2deb39bbbd604ceb3833979740880e5bed4226e99dcbff` |
| 40 | `theorem` | [RectangleIntegral.const_smul](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/rectangleintegral-const-smul.md) | 392 | `result-track:bc245f85569a52fc81c3d020ca7044892e66c2f59a6b70eba8dd9a9cadc7b44e` |
| 41 | `theorem` | [RectangleIntegral.const_mul'](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/rectangleintegral-const-mul.md) | 396 | `result-track:0f00112d599f6af4c1f04fc392f3b781cd8e48866959eec5235a3454972bca8f` |
| 42 | `theorem` | [RectangleIntegral.translate](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/rectangleintegral-translate-source-edition-2.md) | 401 | `result-track:c685d08290deceb1edf0680364129bdfbb88ff4b74586c7b51a627b54b300075` |
| 43 | `theorem` | [RectangleIntegral.translate'](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/rectangleintegral-translate.md) | 407 | `result-track:47faf5684e0e3a2ac32a40b0d05c5c8e6fc1b5833caccfd6ca535457ca27e14b` |
| 44 | `lemma` | [Complex.inv_re_add_im](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/complex-inv-re-add-im.md) | 411 | `result-track:7632dccbe819dceb59723a6e5bd6fa6dd14108affe3db6639d16c74a01c98992` |
| 45 | `lemma` | [sq_add_sq_ne_zero](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/sq-add-sq-ne-zero.md) | 415 | `result-track:2fa114057e6ca8e38fdc9652b00e855cdd5b117a5156abb7327ea59675e0bff6` |
| 46 | `lemma` | [continuous_self_div_sq_add_sq](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/continuous-self-div-sq-add-sq.md) | 418 | `result-track:d7d17816bdab707be212ce24621b9540af23725c82bf77e269a59b7c257119a6` |
| 47 | `lemma` | [integral_self_div_sq_add_sq](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/integral-self-div-sq-add-sq.md) | 422 | `result-track:86ea8bd43d3d24e871ff684f90c0fdb7f9ba82671452abeb34b58943ae8d33ff` |
| 48 | `lemma` | [integral_const_div_sq_add_sq](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/integral-const-div-sq-add-sq.md) | 435 | `result-track:0c57e7bca0b23302729ee7d23e602061d40a0042d416b4ff5d1915273525af98` |
| 49 | `lemma` | [integral_const_div_self_add_im](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/integral-const-div-self-add-im.md) | 445 | `result-track:0bd6a930f16fdf3363834bc5869ca2db75e550275317c4494dfe2f0c2e592fd6` |
| 50 | `lemma` | [integral_const_div_re_add_self](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/integral-const-div-re-add-self.md) | 468 | `result-track:e880e5aada43ec30189348daa0f4546703e0c406c64608ba5dd6de0b9bc8f47c` |
| 51 | `lemma` | [ResidueTheoremAtOrigin'](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/residuetheorematorigin-source-edition-2.md) | 486 | `result-track:aebf41bc8112087bc2098a0b27152496ba08b0af892d6df92b99e9cd4ed5cb26` |
| 52 | `theorem` | [ResidueTheoremInRectangle](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/residuetheoreminrectangle.md) | 508 | `result-track:951e9bf09b65ae8450c3c129ced9653054db93c0be2b57924e177184fa5439ee` |
| 53 | `lemma` | [ResidueTheoremAtOrigin](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/residuetheorematorigin.md) | 520 | `result-track:69980adfacb268c9b9deb08101f8e34cfa909097c74c56f7cd16ca76edbd1df3` |
| 54 | `lemma` | [ResidueTheoremOnRectangleWithSimplePole](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/residuetheoremonrectanglewithsimplepole.md) | 525 | `result-track:5200b33b622b2d55576fe856ce14ea39dff55cedda47cb47204d9d4a61c59bb6` |
| 55 | `lemma` | [IsBigO_to_BddAbove](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/isbigo-to-bddabove.md) | 556 | `result-track:2b1e71d0e4f7c8fff558e8bc56b6f5a65ee0a214e318d9b6f15a3e3030d4e149` |
| 56 | `theorem` | [BddAbove_on_rectangle_of_bdd_near](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/bddabove-on-rectangle-of-bdd-near.md) | 575 | `result-track:0ea39f66c4795a72365077ed537554bc0c5176cb292d5d47a6031aab9fcf56af` |
| 57 | `theorem` | [ResidueTheoremOnRectangleWithSimplePole'](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/residuetheoremonrectanglewithsimplepole-source-edition-2.md) | 607 | `result-track:52749b71aba8820474e549f2ca11500bda77796858db86a7992e76aa3fd05079` |
| 58 | `def` | [HasSimplePolesOn](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/hassimplepoleson.md) | 636 | `declaration-track:681ab969d2324c157dc1c3bade4b7e18edb0a796d6adbebc4b3af66c6ae5a1e2` |
| 59 | `lemma` | [HasSimplePolesOn.mono](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/hassimplepoleson-mono.md) | 639 | `result-track:dab487a3ff27d3b4f6287c38c9d3b94e42b83e26d375ed6414be8f461e5fbdf8` |
| 60 | `def` | [residue](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/residue.md) | 654 | `declaration-track:fc11cf8b0b10ad6c22acc6f2cd3af98bedb2cd8ab0bcd0e38168bcfcab8c0258` |
| 61 | `def` | [sumResiduesIn](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/sumresiduesin.md) | 661 | `declaration-track:cb28fef3075bd8b8eb2267884c70a3de34084d0e150b0e9010f94db3039d423f` |
| 62 | `lemma` | [residue_eq_of_tendsto](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/residue-eq-of-tendsto.md) | 664 | `result-track:2f7ff6f4daae7a1325cf0920c4a1c2772b21b7f5315055f2ccea0a0b0ad1a370` |
| 63 | `lemma` | [residue_analyticAt_eq_zero](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/residue-analyticat-eq-zero.md) | 670 | `result-track:cfd7bee1a9eebbd285fa04c18a9e5ffdd121cb9578eb794d842be81ec2a001e7` |
| 64 | `lemma` | [simplePole_sub_residue_isBigO_one](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/simplepole-sub-residue-isbigo-one.md) | 679 | `result-track:6a3ecbfcecc4506c2c561283ee789b831c6b68e094d6c45b61fd7f8875364c62` |
| 65 | `lemma` | [intervalIntegral_congr_ae_of_codiscreteWithin_along_path](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/intervalintegral-congr-ae-of-codiscretewithin-along-path.md) | 703 | `result-track:8afe073ac8172c2677b03199eaa0d4acd791b20189db60922bb84d7168aa154c` |
| 66 | `lemma` | [meromorphicOrderAt_eq_neg_one_of_simplePole](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/meromorphicorderat-eq-neg-one-of-simplepole.md) | 722 | `result-track:7450d9352975f68f6d83701bddff26afd8e75bc8484167b704bddd4e3ff0b74b` |
| 67 | `lemma` | [residue_toMeromorphicNFOn_eq_residue](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/residue-tomeromorphicnfon-eq-residue.md) | 737 | `result-track:f683fb884fd78e093d725b0cb5c62eab2339d94ee796a75472c55a34fb991c18` |
| 68 | `lemma` | [horizontalPath_not_eventuallyConst](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/horizontalpath-not-eventuallyconst.md) | 766 | `result-track:03bbc1eb7e2f2e6d85a22ea1f652cb91b71e75babfb81aaf7695966790c7aca0` |
| 69 | `lemma` | [verticalPath_not_eventuallyConst](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/verticalpath-not-eventuallyconst.md) | 777 | `result-track:05cc92f20ceece7319fea49b526c9063474461617801b663db4c25b895b8f820` |
| 70 | `lemma` | [HIntegral_congr_codiscreteWithin](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/hintegral-congr-codiscretewithin.md) | 788 | `result-track:e31f15fb0b1a45670622d5c9add4aa14529a9fe9374f9e86c67452d4d35809d2` |
| 71 | `lemma` | [VIntegral_congr_codiscreteWithin](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/vintegral-congr-codiscretewithin.md) | 798 | `result-track:184dbf2fdd6eaf3a5e363b14679a1aa89c9720933d0314e5a8ff1f88e01b0385` |
| 72 | `lemma` | [rectangleIntegral'_toMeromorphicNFOn_eq](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/rectangleintegral-tomeromorphicnfon-eq.md) | 809 | `result-track:9133da94982381274fcee9fecf1a2fd3b7ce869b3bf32d2d69d8b0cbb5ae3ae5` |
| 73 | `lemma` | [principalPart_meromorphicOn](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/principalpart-meromorphicon.md) | 825 | `result-track:bae23cd9f3bc09cf2a963d0afacb97cdc4792f6a09beb8b059531f45cd746c91` |
| 74 | `lemma` | [sub_principalPart_analyticAt_of_not_mem_poles](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/sub-principalpart-analyticat-of-not-mem-poles.md) | 833 | `result-track:75fc733362dce509eb10ff6717e298b30a6b291f4d612e1170363109553b15e6` |
| 75 | `lemma` | [meromorphicOrderAt_sub_principalPart_nonneg](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/meromorphicorderat-sub-principalpart-nonneg.md) | 853 | `result-track:5370aaa59b80e899b00c112fd4139bcbe2fe9ac05cbf0b97a98e72d4b8a73cfc` |
| 76 | `lemma` | [holoPart_holomorphicOn](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/holopart-holomorphicon.md) | 889 | `result-track:37aa0ebc6c665a832ad068afc886a4afebc6c086e673f288d6b8f5af7e76418a` |
| 77 | `lemma` | [principalPart_borderIntegrable](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/principalpart-borderintegrable.md) | 942 | `result-track:27c69b550dc18d62a91b772398b342511d60e1dadecbea4638203c1f4499f604` |
| 78 | `lemma` | [rectangle_mem_nhds_of_interior](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/rectangle-mem-nhds-of-interior.md) | 961 | `result-track:6b09836ab8f41e91200e334d2fc85b29c66803b2b7b4d9fbd8e62e27d56eabb4` |
| 79 | `lemma` | [sum_div_rectangleBorderIntegrable](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/sum-div-rectangleborderintegrable.md) | 981 | `result-track:643d610471533f42f447eb7a7676b4fdf7925bfc59e99a75d67a0ddf217f3a03` |
| 80 | `lemma` | [rectangleIntegral'_sum_div_sub](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/rectangleintegral-sum-div-sub.md) | 994 | `result-track:0c65ea308f98d4e63375276ad1bc51556ae2fe14022c401b93b97e8e695a82e7` |
| 81 | `lemma` | [toMeromorphicNFOn_add_integral](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/tomeromorphicnfon-add-integral.md) | 1036 | `result-track:bc522e46564d22ce9ed998cf8a19cb8c759f7469be2265dd4d12b9b0b37cf61c` |
| 82 | `lemma` | [RectangleIntegral'_eq_sumResiduesIn](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/rectangleintegral-eq-sumresiduesin.md) | 1084 | `result-track:755a25a678990775a512c9d927f850bd6360fe93a03f74dfff7597cf3e1f0b60` |
| 83 | `lemma` | [residue_eq_zero_of_not_pole_of_meromorphicAt](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/residue-eq-zero-of-not-pole-of-meromorphicat.md) | 1129 | `result-track:1d69b5837cfcd2a4dbfa48605eaf8333813c8f6acf99a1db643719d2725d2621` |
| 84 | `lemma` | [sumResiduesIn_inter_eq_of_set_eq](../../../../MeasureAndIntegration/ResidueCalcOnRectangles.lean/declarations/sumresiduesin-inter-eq-of-set-eq.md) | 1138 | `result-track:77f90d96d85d100a1a98b45d352b41f445870fd4e7cbf399a3594b502cfc9c8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f6e8b19dcd1314dca04091ea0918e30b8d9cf7fb8a8a24a1048a25193bc9ca1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/ResidueCalcOnRectangles/Variant081d38aa0c5eec725a1582eea3bdf4e51d604f6c2ebb3c9729d91df3aa092956.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/ResidueCalcOnRectangles/Variant081d38aa0c5eec725a1582eea3bdf4e51d604f6c2ebb3c9729d91df3aa092956.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
