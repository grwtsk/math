# Verification target: Constraint Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b543af3cc82257c25c53f58a358d52d5cd489d1",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Constraint/Variantd3f85c1a1ecfa9fa8c68987debfc1a9ce6646f832e112a683ad6ece3a18dd69a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b543af3cc82257c25c53f58a358d52d5cd489d1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Constraint/Variantd3f85c1a1ecfa9fa8c68987debfc1a9ce6646f832e112a683ad6ece3a18dd69a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Constraint/Variantd3f85c1a1ecfa9fa8c68987debfc1a9ce6646f832e112a683ad6ece3a18dd69a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Int.Lemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.ToString.Macro` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Omega.Int` — import line 13; external provider; requires a separately pinned dependency.
- `Init.PropLemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LowerBound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/lowerbound.md) | 30 | `declaration-track:22dd0b90909c027950db2505b19f44be08528aeaea53a99bb4f8567e986c1880` |
| 2 | `abbrev` | [UpperBound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/upperbound.md) | 32 | `declaration-track:71ec92eefcce2ce66c4566523bfebec1235f5bb2c2f7278cdb5480f2e82c3e64` |
| 3 | `abbrev` | [LowerBound.sat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/lowerbound-sat.md) | 35 | `declaration-track:a7ba2f38f957f84a7e770592fdd7ceec08aa03489534a92a8b6411303ceeb69f` |
| 4 | `abbrev` | [UpperBound.sat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/upperbound-sat.md) | 37 | `declaration-track:20f98a7e1cd2a9adc77c4e375eb5c20eb69b5ed0d68110cea4e6ffa36ee105a0` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/instance-source-edition-4.md) | 39 | `declaration-track:c557c75f1a896a8cb586d057aafc76976cec4d57d5f7f377b05498e285b9d9a4` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/instance-source-edition-2.md) | 42 | `declaration-track:83a331ccadc47fbfd3e99ba4b751e36ce9fc9539fd75b8766721faeabd30322c` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/instance.md) | 47 | `declaration-track:78f105f0af167e60a89ac8b6280242a6f65778af91eb3bfd8bc8d7b526be5905` |
| 8 | `structure` | [Constraint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/constraint.md) | 54 | `declaration-track:87ae8b3a538c9e3089aed3477e13768b32f64b196a03b9e08b32ff14a03e0783` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/instance-source-edition-3.md) | 63 | `declaration-track:b5f6b90365efdd5877cf5b5fb953707f9d9b6cd3b34d2407b9af01068c7257ec` |
| 10 | `def` | [sat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/sat-source-edition-2.md) | 72 | `declaration-track:ae40a9b9038e9e4099824dd863fe3ae3f19a5e2f3decc9e8fd201b660a08ba19` |
| 11 | `def` | [map](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/map.md) | 75 | `declaration-track:0b83a3dafa2f5ad1dde870c50bef96c024b968c8e71feaf0aa2f9520d0027cf1` |
| 12 | `def` | [translate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/translate.md) | 80 | `declaration-track:0fa27ff3578bc77aeffbef9b1ecdfcc165160f33218d9700fca92d06569f3026` |
| 13 | `theorem` | [translate_sat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/translate-sat.md) | 82 | `result-track:f6d9a9eec4313cbfc9e305ef64ee0fbc3c8d5bbdc80bcb1b2bf27bfa267ea5e9` |
| 14 | `def` | [flip](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/flip.md) | 89 | `declaration-track:a46c9b21e2cb733907ee15595d054f4c890d59cc954382e2e1004d24ee2bf6be` |
| 15 | `def` | [neg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/neg.md) | 96 | `declaration-track:f0e0b41541cad791e0be0a8fc7a2f74a3bec83ced1d13d1c2039df3b8682d0b3` |
| 16 | `theorem` | [neg_sat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/neg-sat.md) | 98 | `result-track:3334c1561825c3767c027f48a07841a7256446aff43f8325c69a7531361f7460` |
| 17 | `def` | [trivial](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/trivial.md) | 102 | `declaration-track:e3642cc24b92fe01db1a77b1641df87f444316a5fc019c8624f019f7f57ead41` |
| 18 | `def` | [impossible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/impossible.md) | 104 | `declaration-track:75a326d2fd96536f1f919c5a84a1d1994082370777418247bf2b356ee7b0f04b` |
| 19 | `def` | [exact](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/exact.md) | 106 | `declaration-track:0dd62e18826c6edfbd7dad9728b7f1bf358ec6de5718c8f1a68dce822b4b75d4` |
| 20 | `theorem` | [trivial_say](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/trivial-say.md) | 108 | `result-track:22747ac4e07a2c7d970840ba5ab0a73d283743885c3259946ae1ef840f8e9a8a` |
| 21 | `theorem` | [exact_sat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/exact-sat.md) | 111 | `result-track:439ef1670f51a0a90f21a71cb832ba8a5d8d65267a7c7084290706a8c1a32fad` |
| 22 | `def` | [isImpossible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/isimpossible.md) | 116 | `declaration-track:7c409bfab9f4338ee41f98c61680c125c97a299861f54164da106d0fd5116ec0` |
| 23 | `def` | [isExact](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/isexact.md) | 121 | `declaration-track:c9644ef178cdc5ef8ec932e35940f4b0637ffa408c26bd362d1de59ce01f8353` |
| 24 | `theorem` | [not_sat_of_isImpossible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/not-sat-of-isimpossible.md) | 125 | `result-track:1993279b8f44ff8d68f3943136572959413224f4a14dfa32b534c33bacd8bc52` |
| 25 | `def` | [scale](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/scale.md) | 136 | `declaration-track:46b52e3dcf06e1c5c9731da1fd7f0a663f72ad677ca1500ee31d7d77c7f702cf` |
| 26 | `theorem` | [scale_sat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/scale-sat.md) | 144 | `result-track:8a8da2ee71744107e49a5864e906ab2030722f6069893a35b663f9f29fc5ccc7` |
| 27 | `def` | [add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/add.md) | 165 | `declaration-track:6391f06b07fca6597c58aa2467f5660770055f697fc164257fae619e213d5071` |
| 28 | `theorem` | [add_sat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/add-sat.md) | 169 | `result-track:f34b193ced4c973292f2c15fb3075dc697367a51bc67c6f09737a346a6f8503d` |
| 29 | `def` | [combo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/combo.md) | 183 | `declaration-track:b11c1bc1081c662acc1f9857b18f907ab5cfc8ffe1fc8b0751bbef452af7a2b1` |
| 30 | `theorem` | [combo_sat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/combo-sat-source-edition-2.md) | 186 | `result-track:e63234ed19ccecb877e499dcc8bc9feeafb31e7b7a57c2be8b83103a3fddf8e9` |
| 31 | `def` | [combine](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/combine.md) | 191 | `declaration-track:60fdb05859b5d998767de0aa96bf6632e4ec617364db04c9f74b3113f62134b6` |
| 32 | `theorem` | [combine_sat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/combine-sat-source-edition-2.md) | 195 | `result-track:81fe9399a56709c54b6f27ceacb814a209a8f784795ec375ca057903842ef54f` |
| 33 | `def` | [div](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/div.md) | 210 | `declaration-track:6f64f9ca644f5b6f06df7cef09a61ff742d6fe695edcc8fc5dfdee2c9bcdf1f5` |
| 34 | `theorem` | [div_sat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/div-sat.md) | 214 | `result-track:33d860e2f973bd059701277e5e02dba4b854c820d9d3e73050abf35cad034e64` |
| 35 | `abbrev` | [sat'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/sat.md) | 240 | `declaration-track:28f8f2fe3e8c8b1e281ab9a7c79496c2e71d5f03238653e3610317b54ada69b0` |
| 36 | `theorem` | [combine_sat'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/combine-sat.md) | 242 | `result-track:04173a8e682f6093c2c457621158af8a51821f6f3eef73d85cf4ccf21b9dae84` |
| 37 | `theorem` | [div_sat'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/div-sat-source-edition-2.md) | 245 | `result-track:c94c22a48cb106746ff4907739bbdd43b8156f1dcb5ff8356a5bb474c29d627d` |
| 38 | `theorem` | [not_sat'_of_isImpossible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/not-sat-of-isimpossible-source-edition-2.md) | 251 | `result-track:c3bce870e4028e51ff38f994f0bb410e2bc7daeceb4230890b9742d1d726207b` |
| 39 | `theorem` | [addInequality_sat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/addinequality-sat.md) | 254 | `result-track:3a4a12b6f3ff85f65dd6d877438a3a8dc26b7c28504bacf3e1bbe807a61d88d7` |
| 40 | `theorem` | [addEquality_sat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/addequality-sat.md) | 260 | `result-track:15ada568218e43d73b39092ad9244b5057f05ab0fe6d5ad8313f2853cb3fbf02` |
| 41 | `def` | [normalize?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/normalize-source-edition-2.md) | 273 | `declaration-track:e5994ce7307bdc4e5d40d541269d5d442ab037d98fcd5bf60868584c6f0a2d2b` |
| 42 | `def` | [normalize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/normalize.md) | 287 | `declaration-track:61be863aec6a22b0e37b2a89cb86d709fe3089dac5a559edcc0a821249ac1a10` |
| 43 | `abbrev` | [normalizeConstraint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/normalizeconstraint.md) | 292 | `declaration-track:6c2303f1969093073595a656bf73b27f5deebcbf3b49d5583bacf8c69be255bf` |
| 44 | `abbrev` | [normalizeCoeffs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/normalizecoeffs.md) | 295 | `declaration-track:be3c1555d0cc5a00ad8dd835d5b3b07af89d2f3fafca48b27ca56f37be5c4127` |
| 45 | `theorem` | [normalize?_eq_some](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/normalize-eq-some.md) | 298 | `result-track:9ee4f557380a7989b0c91c26cd12a99327051c27cf7ebbf8795aea06949c7d66` |
| 46 | `theorem` | [normalize_sat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/normalize-sat.md) | 302 | `result-track:179b4f71d8818afdbcafb418a7ef35732ca2923671c05192e9b43af14c0def85` |
| 47 | `def` | [positivize?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/positivize.md) | 317 | `declaration-track:70d05b481ad83d73451338769f6758725e49d2be7a4957128981e2fcf1a03a6d` |
| 48 | `def` | [positivize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/positivize-source-edition-2.md) | 325 | `declaration-track:d5760dbc63fe9fea40f4cb8a82acb89433f8913e87a6b815902bee1917e7639b` |
| 49 | `abbrev` | [positivizeConstraint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/positivizeconstraint.md) | 329 | `declaration-track:5cc229c3388e925fe04c10245b36a663617547aeb014095d93713747f802354a` |
| 50 | `abbrev` | [positivizeCoeffs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/positivizecoeffs.md) | 332 | `declaration-track:5582957872fe1ae5caa8ac503e02ff9c5f53468b0a8e1e79271c15260f3a4b83` |
| 51 | `theorem` | [positivize?_eq_some](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/positivize-eq-some.md) | 335 | `result-track:16b973bf93454552b910bf02b318c5859b06cde4ab7fede99ccd58307358fcb6` |
| 52 | `theorem` | [positivize_sat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/positivize-sat.md) | 339 | `result-track:48e521b10aded6d14c4fb1ce2569abbdd86767544a752b241adb5cac2b089482` |
| 53 | `def` | [tidy?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/tidy.md) | 349 | `declaration-track:3ac6331b3b2329134ec0d12c9a14c2d437ca46b0277a33d5d6ac15f841234cef` |
| 54 | `def` | [tidy](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/tidy-source-edition-2.md) | 358 | `declaration-track:aee651fb5777c64129896000c2c4e54f0b4a2384a176f841af800c67e5a79109` |
| 55 | `abbrev` | [tidyConstraint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/tidyconstraint.md) | 362 | `declaration-track:9e10d4d33128099664ed885298aa1685b685a59542d01e42ac7655e4261fb2a8` |
| 56 | `abbrev` | [tidyCoeffs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/tidycoeffs.md) | 364 | `declaration-track:9a651ebdd6b04b4eecad2053260229ab1dd307e9290c943516cbbb34fa16d8a1` |
| 57 | `theorem` | [tidy_sat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/tidy-sat.md) | 366 | `result-track:c6e1d04ddc34703bae70aaf58b731e2ab1ea1047cfd70763525a41ba3aabd587` |
| 58 | `theorem` | [combo_sat'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/combo-sat.md) | 376 | `result-track:0f373c6ea4fbd189614d7956777be116fd945058e9885635d4fc13c339a8b97e` |
| 59 | `abbrev` | [bmod_div_term](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/bmod-div-term.md) | 385 | `declaration-track:12c796904f96786b69ef616e6905a16dfd72650c52dc2127c163d0a329930e02` |
| 60 | `def` | [bmod_coeffs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/bmod-coeffs.md) | 388 | `declaration-track:4857da43f7a652ea9239220cb90d153868dd74c703a2da932e78680a9a34e8b7` |
| 61 | `theorem` | [bmod_sat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstraintPublic.lean/declarations/bmod-sat.md) | 391 | `result-track:79d996439fa1a8e1e985f69addadb8be8e0803ee62db22cde5405a19db907bde` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e40471dc993b1c4ef43c5274984d5ff6b0a445d2dce2c7522ed8cb17af210b6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Constraint/Variantd3f85c1a1ecfa9fa8c68987debfc1a9ce6646f832e112a683ad6ece3a18dd69a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Constraint/Variantd3f85c1a1ecfa9fa8c68987debfc1a9ce6646f832e112a683ad6ece3a18dd69a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
