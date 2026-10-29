# Verification target: Surreal Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "075a1a030312203a2fab9f76aa32a8df8b1ae377",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8330b02846a7cdd9bbbfdc7d4271bf2d4137416d2029f14f4e8f6a7aba3b815.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `075a1a030312203a2fab9f76aa32a8df8b1ae377`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8330b02846a7cdd9bbbfdc7d4271bf2d4137416d2029f14f4e8f6a7aba3b815.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8330b02846a7cdd9bbbfdc7d4271bf2d4137416d2029f14f4e8f6a7aba3b815.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Hom.Monoid` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Game.Ordinal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Numeric](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/numeric.md) | 67 | `declaration-track:9dea995526da8847e761aad3f6cb836f92bc6c44268201b9931ab0722d4da391` |
| 2 | `theorem` | [numeric_def](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/numeric-def.md) | 71 | `result-track:7514264d1dad39d1494b2f261cad081fb1a1ddabf32616ecf8282c0c17fc298b` |
| 3 | `theorem` | [mk](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/mk-source-edition-2.md) | 80 | `result-track:a8c95b13b5129dce5d20d42c8aedef655bf720b0a51e2c5b19ae5f388dd627e6` |
| 4 | `theorem` | [left_lt_right](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/left-lt-right.md) | 85 | `result-track:61b7da9120be8b46569c7d867d53faac4e59dd14945aecc2d328a785587223e9` |
| 5 | `theorem` | [moveLeft](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/moveleft.md) | 89 | `result-track:c463a87bdcbb66adcaba8d37e90d025eb5ee1089b29f579f0f11a126c00cb96e` |
| 6 | `theorem` | [moveRight](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/moveright.md) | 93 | `result-track:1a58e9161df6aee1d7999111a444770951513bc0ae3f6d80eb1e3152678f81ec` |
| 7 | `theorem` | [numeric_rec](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/numeric-rec.md) | 100 | `result-track:035fe4e8ed51720b9fc2ca883c4cfebbd8ec8d50adc2b0a8b101b2e55780f96a` |
| 8 | `theorem` | [Relabelling.numeric_imp](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/relabelling-numeric-imp.md) | 109 | `result-track:39983f9079bc51822225267d9cf3455fe5255ee6dba112d64c20fbb6009fc6e3` |
| 9 | `theorem` | [Relabelling.numeric_congr](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/relabelling-numeric-congr.md) | 119 | `result-track:5883c6ac5c07e59fd8612c208dcb2ba2542a7a9a747c3dfe4b11bc512000a4e3` |
| 10 | `theorem` | [lf_asymm](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/lf-asymm.md) | 123 | `result-track:6bab9604a17c95675c2f34e090b29e22943ff0acce4b8896b2765bb5a694b35f` |
| 11 | `theorem` | [le_of_lf](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/le-of-lf.md) | 134 | `result-track:dd12672ffa84b07426604b52858012347826fea657b3275dcc6adce4456099bd` |
| 12 | `theorem` | [lt_of_lf](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/lt-of-lf.md) | 141 | `result-track:88f447028ad4f24e6538feac70652ba82228820fd904f8aa3debb78a2da03e66` |
| 13 | `theorem` | [lf_iff_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/lf-iff-lt.md) | 148 | `result-track:fb41f02a8842e83622950980597f1f58cc7cb28dabdf2b8e0ec9b14140e50d02` |
| 14 | `theorem` | [le_iff_forall_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/le-iff-forall-lt.md) | 153 | `result-track:d89191c5405803446ca8fd51d56f5fefcb040cecbc020b78d1b6ead1a35fe9cf` |
| 15 | `theorem` | [lt_iff_exists_le](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/lt-iff-exists-le.md) | 161 | `result-track:ab46869709d9c872c8ee1c42de53fbf3a741f89e5e643ada7376618133343af0` |
| 16 | `theorem` | [lt_of_exists_le](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/lt-of-exists-le.md) | 166 | `result-track:a9ccda715ef54c8936cb12ebc66aa5a2cd28d96021061535f558b4b91577eee0` |
| 17 | `theorem` | [lt_def](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/lt-def.md) | 172 | `result-track:f6662e106e4686ce395d1c8b7023be2fbe77e02515abb96994c64ef0096b891a` |
| 18 | `theorem` | [not_fuzzy](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/not-fuzzy.md) | 182 | `result-track:af34df81c7202c50b48d0121b67e5596980bb73bee1ad95b05a3de3decd7efec` |
| 19 | `theorem` | [lt_or_equiv_or_gt](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/lt-or-equiv-or-gt.md) | 186 | `result-track:ac11376bcd6dfc28c891b19551c2a73d2cfab929ab041188ad83a85466461801` |
| 20 | `theorem` | [numeric_of_isEmpty](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/numeric-of-isempty.md) | 191 | `result-track:7a9cc61c62deeb1a482cc0ea63ae34fca0c1d1808f33527885d20076250c5218` |
| 21 | `theorem` | [numeric_of_isEmpty_leftMoves](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/numeric-of-isempty-leftmoves.md) | 195 | `result-track:60d227a71c7136e3ec442bfc27004d87bbe0aa6c85c010740ae4402286a2680f` |
| 22 | `theorem` | [numeric_of_isEmpty_rightMoves](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/numeric-of-isempty-rightmoves.md) | 200 | `result-track:7390b9c12f3bfa3df489aa2f7500cc89a85a02ed8fec2b4b649e5d0602e2893f` |
| 23 | `theorem` | [numeric_zero](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/numeric-zero.md) | 205 | `result-track:3cebf3c38661ac9a5bfffccfa981fe81d11f664d5a4113e67f259326c7873c61` |
| 24 | `theorem` | [numeric_one](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/numeric-one.md) | 209 | `result-track:4dbaf7fe372f5f01150cd0329ba6a73e6b130ebd3cd92153b9e726134ba8eb72` |
| 25 | `theorem` | [Numeric.neg](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/numeric-neg.md) | 213 | `result-track:bfe84f70159e37cc12dea98adb037fa5ac31966cf5cff28d1db4578f9c2af57f` |
| 26 | `theorem` | [moveLeft_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/moveleft-lt.md) | 220 | `result-track:3752fdcc4924812592ddd3c55f1e256f60c0dc743ca08d6b0c2ed341290fdef5` |
| 27 | `theorem` | [moveLeft_le](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/moveleft-le.md) | 224 | `result-track:65c6a3f6dee27d1ce3f33d39ed8fb509ace02ca1748cbebb0ab53a067712d962` |
| 28 | `theorem` | [lt_moveRight](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/lt-moveright.md) | 228 | `result-track:8b45dd28d8ad915b552535d15e352e89b91b43845032327ae1376d3c389769c9` |
| 29 | `theorem` | [le_moveRight](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/le-moveright.md) | 232 | `result-track:d8c976b763de2d09eb4a06087b99967e7e18c658abf5b72d4a9e0938ce621b2b` |
| 30 | `theorem` | [add](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/add.md) | 236 | `result-track:fba83a4da5723b3156184d420b1852e5e9b2d7c8746d6d5f3703c5b5c834a40c` |
| 31 | `theorem` | [sub](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/sub.md) | 257 | `result-track:2f6663478f052c26f894d0a796bf7c7e40cb4e07fac4b1a74a519e86736d02ed` |
| 32 | `theorem` | [numeric_nat](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/numeric-nat.md) | 264 | `result-track:863f4acb0ad0dd1d3913ad04fa2e5a6161bf6b55ac189bfcc56b8da566560b01` |
| 33 | `theorem` | [numeric_toPGame](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/numeric-topgame.md) | 270 | `result-track:89bbcc715d8e9f6e985e5934a3858072d2dd3bfd7303a1c44dc57db103a26033` |
| 34 | `def` | [Surreal](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/surreal.md) | 285 | `declaration-track:46db1c549e72f8df9918d68bfb1491e3cf4130771689dcd0acf2da388a6448b7` |
| 35 | `def` | [mk](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/mk.md) | 292 | `declaration-track:6ed310b00c86eb14a346c9fff94c4440760459073eaaf0c16768a3f915470a32` |
| 36 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/instance-source-edition-2.md) | 296 | `declaration-track:4cf814c9596e492090eb13eb40220e14fff85153ca642d691947d1ab63a723e4` |
| 37 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/instance-source-edition-7.md) | 299 | `declaration-track:d672c3978c87fc43191fc163532fa379c3a80d781c1ca3146f8bc2381e3c60f8` |
| 38 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/instance-source-edition-6.md) | 302 | `declaration-track:b47a8ccad2f8ef26bf8783712817697dad88bb1ae4de9256037034f033dc82ae` |
| 39 | `def` | [lift](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/lift.md) | 306 | `declaration-track:3b54d2b31d5932e4de707388ac51df64566786fe41076f55d82be494dd97c976` |
| 40 | `def` | [lift₂](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/lift-source-edition-2.md) | 312 | `declaration-track:438eb0732eefc936a1395e1e18fbb0650cfa60173911410241c82628c914b0e0` |
| 41 | `instance` | [instLE](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/instle.md) | 321 | `declaration-track:977952dcba9ab626a80b5a15a56cd16a4a8de18361fe9e429ab93fa80051bbec` |
| 42 | `instance` | [instLT](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/instlt.md) | 325 | `declaration-track:857f3f187cabfa2c959150825b792a30313da90ef498d92b1fea50669f80205e` |
| 43 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/instance.md) | 331 | `declaration-track:0b6cbfdee13b595fea848977b1b4ee0dd9620b25c35151f851564d17d001d854` |
| 44 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/instance-source-edition-3.md) | 337 | `declaration-track:542ce0d72637db7080bf99af1616641d19e77f40cb006ac1f94f0ef89fd675eb` |
| 45 | `instance` | [orderedAddCommGroup](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/orderedaddcommgroup.md) | 340 | `declaration-track:ba9a5a9b8c51cbf77c6e464ffb8034b8ef60e962927cf1aa5f72e130b86ad20f` |
| 46 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/instance-source-edition-4.md) | 357 | `declaration-track:7a3185e9cefd6dd71b2279fb6827265daaa80102ae02c05b8fbf67672a366cb6` |
| 47 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/instance-source-edition-5.md) | 364 | `declaration-track:b23e1d96d33be059bcbbdcb47d5ff58fef60d0e476dddfa95367c7fe3c2e9370` |
| 48 | `def` | [toGame](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/togame.md) | 368 | `declaration-track:08411a4d231e897c9c7fa77bdd2e5e190f19052888f5e13a802047068c38770d` |
| 49 | `theorem` | [zero_toGame](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/zero-togame.md) | 375 | `result-track:ac61f3a9041168fd24ac66322bf43a2a57031ab16e8fde8987696c1fe0d2a86e` |
| 50 | `theorem` | [one_toGame](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/one-togame.md) | 380 | `result-track:a3e36b771b3fb276d7358b55961d4909415b27a60300ad21bcc75c6baf846ce0` |
| 51 | `theorem` | [nat_toGame](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/nat-togame.md) | 385 | `result-track:5c8ae14fef70cb029dfec4b20ec96703065bad1eca65cc468c1706d7b795e04c` |
| 52 | `def` | [toSurreal](../../../../../MathematicalLogicAndFoundations/SetTheory/SurrealBasic.lean/declarations/tosurreal.md) | 396 | `declaration-track:1925025ab674f88f64f055be40721ff3cd8efa25b61a56813f747dab6efdebff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7853f23f65872fe00409784d4fa1a841bca4def6b13dfaebe83e38cab2b94066 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8330b02846a7cdd9bbbfdc7d4271bf2d4137416d2029f14f4e8f6a7aba3b815.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc8330b02846a7cdd9bbbfdc7d4271bf2d4137416d2029f14f4e8f6a7aba3b815.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
