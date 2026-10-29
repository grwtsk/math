# Verification target: Residue Calc On Rectangles Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "349ef03144a8a1ad63651157ba9d40c6344a51ce",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ResidueCalcOnRectangles/Variant8a34f233a9182099d1316caf9dc93c729bf741c748270cef308dfc5912f803a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `349ef03144a8a1ad63651157ba9d40c6344a51ce`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ResidueCalcOnRectangles/Variant8a34f233a9182099d1316caf9dc93c729bf741c748270cef308dfc5912f803a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ResidueCalcOnRectangles/Variant8a34f233a9182099d1316caf9dc93c729bf741c748270cef308dfc5912f803a6.lean.json)

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
| 1 | `def` | [HIntegral](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/hintegral-source-edition-2.md) | 17 | `declaration-track:f194101926cc36e774a60da38acdc581ee71afb538d37903a51c0ac522724e37` |
| 2 | `def` | [VIntegral](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/vintegral.md) | 20 | `declaration-track:9234ca4c2625ccbb47767536b1cc64c1799df290289511b2959814f62f68b653` |
| 3 | `def` | [HIntegral'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/hintegral.md) | 23 | `declaration-track:e54f5fae03bd7606af120364a66fb99703412af58b41b0b507a59956fcdecc1e` |
| 4 | `def` | [VIntegral'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/vintegral-source-edition-2.md) | 26 | `declaration-track:e760faf0a5aff2178cfec9e88f8113f65c675197a8d54475064205eb0b839f95` |
| 5 | `lemma` | [HIntegral_symm](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/hintegral-symm.md) | 29 | `result-track:bcee15c54585c576b7974e6e1720006fab83da5a6d288b95cf3b97fe5c4edbf1` |
| 6 | `lemma` | [VIntegral_symm](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/vintegral-symm.md) | 32 | `result-track:110ddffb7efabdf1047c6834d79a725d4d41f1c5307412506e112fc7dbb854a5` |
| 7 | `def` | [RectangleIntegral](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/rectangleintegral-source-edition-2.md) | 47 | `declaration-track:5640af8f4f4fcefc0ffd4c529abd188a89bfa7bd7fe62674de2c9a1a861f272e` |
| 8 | `abbrev` | [RectangleIntegral'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/rectangleintegral.md) | 53 | `declaration-track:186befc40d0ee7c0d9640167842dde0931697841dca3c2ce688593431af3af27` |
| 9 | `def` | [UpperUIntegral](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/upperuintegral.md) | 63 | `declaration-track:2e5fcfe1086d2ab8ed62c73b385829f01a9504f42df29810d18fc8b75d4f711e` |
| 10 | `def` | [LowerUIntegral](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/loweruintegral.md) | 76 | `declaration-track:fb7a033441688b6adb05982637a704659e748cd5e1be6cc32e90c07d97583bf6` |
| 11 | `def` | [VerticalIntegral](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/verticalintegral.md) | 93 | `declaration-track:81b3f3799d51c5d3474d5d07571de4c1057651035e803e66601b0d496189c5a8` |
| 12 | `abbrev` | [VerticalIntegral'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/verticalintegral-source-edition-2.md) | 98 | `declaration-track:e987577a81df92896a001050019340b3d703b43bfbbec9ba94de60362fad397a` |
| 13 | `lemma` | [verticalIntegral_split_three](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/verticalintegral-split-three.md) | 101 | `result-track:5e668d4c70400c868a01f591e085120298e227a68a7c71bac421121939036a31` |
| 14 | `lemma` | [DiffVertRect_eq_UpperLowerUs](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/diffvertrect-eq-upperlowerus.md) | 120 | `result-track:480a55550dd5ba9eb6513ceeadb9226b536e5f2d67c4644ad4bea28f382344f2` |
| 15 | `abbrev` | [HolomorphicOn](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/holomorphicon.md) | 134 | `declaration-track:f5e9563c02245a2b0e9983e1c001c931ee55726ae42c1c82c659220a93a44555` |
| 16 | `theorem` | [existsDifferentiableOn_of_bddAbove](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/existsdifferentiableon-of-bddabove.md) | 150 | `result-track:f433f11042761d2dd0d49d29fc5b3fb569a405f4236aaec8dccd74c6ab44eb50` |
| 17 | `theorem` | [HolomorphicOn.vanishesOnRectangle](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/holomorphicon-vanishesonrectangle.md) | 169 | `result-track:ca6c4aa37c3992432bbdba3271036e034a857631c8ad7542277f6368277d977e` |
| 18 | `theorem` | [RectangleIntegral_congr](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/rectangleintegral-congr.md) | 176 | `result-track:3011ac771754d8d746c52719e9963d4ab9090b626c343bcd2685802d75866d76` |
| 19 | `theorem` | [RectangleIntegral'_congr](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/rectangleintegral-congr-source-edition-2.md) | 186 | `result-track:7f79f45eea62a52aff23c24ea5c9727ea2e302ea8222da70a53ffef1925c9279` |
| 20 | `theorem` | [rectangleIntegral_symm](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/rectangleintegral-symm.md) | 190 | `result-track:8ce5f2498b2596aa0d022df90c37914f98afc2a4fe324d52be771a01e46fbb12` |
| 21 | `theorem` | [rectangleIntegral_symm_re](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/rectangleintegral-symm-re.md) | 196 | `result-track:d8c8b45dab70279b927456361061c7df3a72951da51a05451e99d3562c36f41e` |
| 22 | `def` | [RectangleBorderIntegrable](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/rectangleborderintegrable.md) | 203 | `declaration-track:b99e2e5870e2a33d1eff0c92a8190038d64d683f32a9879ea048fd6c65f7e57d` |
| 23 | `theorem` | [RectangleBorderIntegrable.add](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/rectangleborderintegrable-add.md) | 209 | `result-track:b3107457afcef1e51ff0befd8940e382fb2549e6bd96e28419041a33ceb18c2e` |
| 24 | `theorem` | [ContinuousOn.rectangleBorder_integrable](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/continuouson-rectangleborder-integrable.md) | 221 | `result-track:5fe9662a559df637e8bd1bd33f74bb842a9ed3df6f17196698075b4609ec2856` |
| 25 | `theorem` | [ContinuousOn.rectangleBorderIntegrable](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/continuouson-rectangleborderintegrable.md) | 229 | `result-track:5b342a558fa014e0213dc7a35bc97dfb329f461890a2d28cc4d673e568b26a99` |
| 26 | `theorem` | [ContinuousOn.rectangleBorderNoPIntegrable](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/continuouson-rectanglebordernopintegrable.md) | 234 | `result-track:b9a3b1309c0befaeda0b24181a6ca5501037a21a4e8c42ea3e998592b8e061ac` |
| 27 | `theorem` | [HolomorphicOn.rectangleBorderIntegrable'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/holomorphicon-rectangleborderintegrable.md) | 240 | `result-track:3e28ee88030c3942b3d54af055394d841cc3b1ba7fd5d800df7d72b519587b93` |
| 28 | `theorem` | [HolomorphicOn.rectangleBorderIntegrable](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/holomorphicon-rectangleborderintegrable-source-edition-2.md) | 245 | `result-track:7af0cef76ee29b3e3777a6429782d0e1932c1d20daa1a63718f5fde92a6970a6` |
| 29 | `lemma` | [RectangleIntegralHSplit](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/rectangleintegralhsplit.md) | 255 | `result-track:d9279d6d0980a47252112729200bb80ed3c0f18b48ea0b92679c2947c3096ae9` |
| 30 | `lemma` | [RectangleIntegralHSplit'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/rectangleintegralhsplit-source-edition-2.md) | 294 | `result-track:f8196e355ddd476c43eeabedb1d0c78a545abb58b0f9040e90696cadebf383ff` |
| 31 | `lemma` | [RectangleIntegralVSplit](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/rectangleintegralvsplit.md) | 306 | `result-track:52f4c60dd5982c982effc87a8d819682f5c1c8f1f192e7cfab7ee52330683cbb` |
| 32 | `lemma` | [RectangleIntegralVSplit'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/rectangleintegralvsplit-source-edition-2.md) | 322 | `result-track:a51d46cf4419441302359a8fd7a64b3edcd0e9ab41fcedb12a7ecb06c5f02954` |
| 33 | `lemma` | [RectanglePullToNhdOfPole'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/rectanglepulltonhdofpole-source-edition-2.md) | 335 | `result-track:9f223362dbd212c447c2fd26c91c2871e46b0dee30dc31fdc7eec2c87ea86aac` |
| 34 | `lemma` | [RectanglePullToNhdOfPole](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/rectanglepulltonhdofpole-source-edition-3.md) | 423 | `result-track:c2e3364dd9a343106534aa7d4db99378c84a6c988565d11345f3f831e081256d` |
| 35 | `lemma` | [RectanglePullToNhdOfPole''](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/rectanglepulltonhdofpole.md) | 434 | `result-track:17e50cff75f61e70723c2d098839c00e6098751801a823fe55e1a5b36856d438` |
| 36 | `theorem` | [ResidueTheoremAtOrigin_aux1c](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/residuetheorematorigin-aux1c.md) | 442 | `result-track:481e0a71059c9b7a0f70a8d9ce99e73919ec97843e0e30e95ec7ed162a9cf539` |
| 37 | `theorem` | [ResidueTheoremAtOrigin_aux1c'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/residuetheorematorigin-aux1c-source-edition-2.md) | 448 | `result-track:7a8e70511595148e3a73f9ddfacf2172eb262f3da500ab1baf100baa465d2a1e` |
| 38 | `theorem` | [ResidueTheoremAtOrigin_aux2c](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/residuetheorematorigin-aux2c-source-edition-2.md) | 454 | `result-track:f74c64f0ba739821c45254abddac90fd04df3be67d7e9aa13249b65c88db4007` |
| 39 | `theorem` | [ResidueTheoremAtOrigin_aux2c'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/residuetheorematorigin-aux2c.md) | 460 | `result-track:31fb2ff0d15d412a5bcdc22925287eea9908bce02c449d27b36916da2bfc4318` |
| 40 | `theorem` | [RectangleIntegral.const_smul](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/rectangleintegral-const-smul.md) | 466 | `result-track:bc1818d23ad204724dcaabe147eee0508cfc5c53ea14ef57d12397d01afec9dd` |
| 41 | `theorem` | [RectangleIntegral.const_mul'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/rectangleintegral-const-mul.md) | 470 | `result-track:269648f0aae4d5df5f78c10988c937fb0e9e323aa7700b933e1486dec7b7fbe0` |
| 42 | `theorem` | [RectangleIntegral.translate](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/rectangleintegral-translate.md) | 475 | `result-track:252f1f394009874ebfa2215fd8fb6f0170907574ec1bca4655f0b66dd0c6d3c6` |
| 43 | `theorem` | [RectangleIntegral.translate'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/rectangleintegral-translate-source-edition-2.md) | 481 | `result-track:511b21632f61cd2dc0189446e0f4e4fb1824515a4e8d68a8f94eac0959d3c27e` |
| 44 | `lemma` | [Complex.inv_re_add_im](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/complex-inv-re-add-im.md) | 485 | `result-track:55ef5255170755ebe81c04b73cdeb773a12926637bdbd05246d2b7ce4736bce7` |
| 45 | `lemma` | [sq_add_sq_ne_zero](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/sq-add-sq-ne-zero.md) | 489 | `result-track:357fa3b59b147ec4426be25cd1a7cca18d78c4a56e031a24c1ffa564687464be` |
| 46 | `lemma` | [continuous_self_div_sq_add_sq](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/continuous-self-div-sq-add-sq.md) | 492 | `result-track:2aa1b95b21702ccdb7c6e291a1abd67e114b8b7ebeaf500954d422b0b8b56de2` |
| 47 | `lemma` | [integral_self_div_sq_add_sq](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/integral-self-div-sq-add-sq.md) | 496 | `result-track:edaa91c0ccdeb1c725e54401efae899c71447d7a815cac06ba1dd41bc795f2eb` |
| 48 | `lemma` | [integral_const_div_sq_add_sq](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/integral-const-div-sq-add-sq.md) | 509 | `result-track:5571c94a2cfa8f3080a6ee93b0c3ff499f177bdd09ccd1c4c96b375a2d4a1db2` |
| 49 | `lemma` | [integral_const_div_self_add_im](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/integral-const-div-self-add-im.md) | 519 | `result-track:dedff587322f5f24130f43f201162d317f138b6b8c7df132f5e4159357527f4b` |
| 50 | `lemma` | [integral_const_div_re_add_self](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/integral-const-div-re-add-self.md) | 542 | `result-track:d2a1688e27850ddf37f9c6d4ba0c33042f72fde3b945010ad77967ee5506ae1e` |
| 51 | `lemma` | [ResidueTheoremAtOrigin'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/residuetheorematorigin-source-edition-2.md) | 560 | `result-track:e0321730a4e9d9d2b14067ddfff7e327c8e1307167720b57ab46218c03668bc8` |
| 52 | `theorem` | [ResidueTheoremInRectangle](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/residuetheoreminrectangle.md) | 582 | `result-track:c13fffb49db89f7a9f76235b85a29f8e0c8b5e68fab369d993fd124675590b59` |
| 53 | `lemma` | [ResidueTheoremAtOrigin](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/residuetheorematorigin.md) | 603 | `result-track:ce8a51541f46adea1ad0dc40ff1f293de29497be10277fdd02484e548653b530` |
| 54 | `lemma` | [ResidueTheoremOnRectangleWithSimplePole](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/residuetheoremonrectanglewithsimplepole-source-edition-2.md) | 629 | `result-track:aaacac99b5b661063c6f1f0cbcc8af7c2dc9a076c99f5aa7ebca62c6757b9c06` |
| 55 | `lemma` | [IsBigO_to_BddAbove](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/isbigo-to-bddabove.md) | 660 | `result-track:6d5b37d2bf571b282103923239889b1b5871a3aff4e1cd3bc92d8afbf7faf1c7` |
| 56 | `theorem` | [BddAbove_on_rectangle_of_bdd_near](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/bddabove-on-rectangle-of-bdd-near.md) | 679 | `result-track:d192a574302407bb76b6b74d544e49575122c08caf63059b0fb73cfc34401fe3` |
| 57 | `theorem` | [ResidueTheoremOnRectangleWithSimplePole'](../../../../MeasureAndIntegration/ResidueCalcOnRectanglesEdition1.lean/declarations/residuetheoremonrectanglewithsimplepole.md) | 711 | `result-track:6d9045a884a2904af55fa172da9eaae4b3644b188aceb9469dba6aff2a64123b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=95e820f5ab47351556a083667a0b7450289f6d0332558de303b901222b17b53c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ResidueCalcOnRectangles/Variant8a34f233a9182099d1316caf9dc93c729bf741c748270cef308dfc5912f803a6.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ResidueCalcOnRectangles/Variant8a34f233a9182099d1316caf9dc93c729bf741c748270cef308dfc5912f803a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
