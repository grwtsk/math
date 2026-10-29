# Verification target: Zone Rules Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9857193f0ab234591af258ab7061d6929b73eff",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZoneRules/Variant7b98440e87bc51a4b045ab85bf203d38754b43b567d8c088aa1ae34270b6877a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ZoneRulesNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ZoneRulesNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9857193f0ab234591af258ab7061d6929b73eff`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZoneRules/Variant7b98440e87bc51a4b045ab85bf203d38754b43b567d8c088aa1ae34270b6877a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZoneRules/Variant7b98440e87bc51a4b045ab85bf203d38754b43b567d8c088aa1ae34270b6877a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [UTLocal](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ZoneRulesNamespacedPublic.lean/declarations/utlocal.md) | 34 | `declaration-track:01852cd0fb334315e7b7428f9ee8a178be158cfefa233905f02fcfa4d0a15673` |
| 2 | `inductive` | [StdWall](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ZoneRulesNamespacedPublic.lean/declarations/stdwall.md) | 49 | `declaration-track:4fffcd09df8a862564f324e24e4fe1ad222ff67dbfa0a4e8e90b39a2350d4854` |
| 3 | `structure` | [LocalTimeType](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ZoneRulesNamespacedPublic.lean/declarations/localtimetype.md) | 64 | `declaration-track:a64900cd0fe319aacd40b600699f75b58c9ddcc0f93a70124ca191032e33ca3c` |
| 4 | `def` | [getTimeZone](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ZoneRulesNamespacedPublic.lean/declarations/gettimezone.md) | 102 | `declaration-track:598788e6647ac0056f139edf5e427b67c5665aba4a0cd096bf63460b1eced0ec` |
| 5 | `structure` | [Transition](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ZoneRulesNamespacedPublic.lean/declarations/transition.md) | 110 | `declaration-track:0a8cdf7275eee9660bc8b505623fa253b5bd150a0da38713ef04086844b5d014` |
| 6 | `structure` | [ZoneRules](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ZoneRulesNamespacedPublic.lean/declarations/zonerules.md) | 126 | `declaration-track:679f5a32611ae4ea4c30cabfc35cfb273a7b99bbb4df8199ffb977fe29ec4d38` |
| 7 | `def` | [timestamp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ZoneRulesNamespacedPublic.lean/declarations/timestamp.md) | 149 | `declaration-track:690c67ad585342e66af576551766c721c99303d9596516fc9eb7c0edb58a97bc` |
| 8 | `def` | [createTimeZoneFromTransition](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ZoneRulesNamespacedPublic.lean/declarations/createtimezonefromtransition.md) | 155 | `declaration-track:0be81ded80587bfd2996df25fd581fe98d3980121d82945da4c9cdd83c77c124` |
| 9 | `def` | [findTransitionIndexForTimestamp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ZoneRulesNamespacedPublic.lean/declarations/findtransitionindexfortimestamp.md) | 166 | `declaration-track:63e049aba347c09d15ca8aa673d04d061ff46b5e22b4ddaad0083bfcd51bd8ae` |
| 10 | `def` | [findTransitionForTimestamp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ZoneRulesNamespacedPublic.lean/declarations/findtransitionfortimestamp.md) | 178 | `declaration-track:fd0fb99a9d8c4659ad13e1daa1dc2062bec1aacae19ef16709e026b4f571b194` |
| 11 | `def` | [timezoneAt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ZoneRulesNamespacedPublic.lean/declarations/timezoneat.md) | 186 | `declaration-track:28b551b96d0c7603161c253902a319b61372cf2846ce0746210a6eddabb482a4` |
| 12 | `def` | [transitionUtcSeconds](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ZoneRulesNamespacedPublic.lean/declarations/transitionutcseconds.md) | 196 | `declaration-track:9c6214be02ddc6e49f51842a0265929f949a5f477e5bcdc32a5edd111c46c2e6` |
| 13 | `def` | [timezoneAt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ZoneRulesNamespacedPublic.lean/declarations/timezoneat-source-edition-2.md) | 207 | `declaration-track:741f39a01039c0cbe3c8fb0283592edad03759a659c45532e638916f1455b777` |
| 14 | `def` | [fixedOffsetZone](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ZoneRulesNamespacedPublic.lean/declarations/fixedoffsetzone.md) | 236 | `declaration-track:4e41efc5b4b3b192813626bffabc98528c103045894b5f844e8bf0fa9b44b822` |
| 15 | `def` | [UTC](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ZoneRulesNamespacedPublic.lean/declarations/utc.md) | 253 | `declaration-track:46655b8364fd39687636f4b32fecde3cf296b38c9c32a2230a5c208c8e504790` |
| 16 | `def` | [findLocalTimeTypeForTimestamp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ZoneRulesNamespacedPublic.lean/declarations/findlocaltimetypefortimestamp.md) | 262 | `declaration-track:4dc7652aac4a806050b5a2a5df37b673ad33aa290501e2b21e223965bbbe68a5` |
| 17 | `def` | [findLocalTimeTypeForWallTime](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ZoneRulesNamespacedPublic.lean/declarations/findlocaltimetypeforwalltime.md) | 285 | `declaration-track:941c091ab852edc2deeb080daaf429e6e93f99bb9acf68e1a360fcb10ce15cbc` |
| 18 | `def` | [timezoneAt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ZoneRulesNamespacedPublic.lean/declarations/timezoneat-source-edition-3.md) | 305 | `declaration-track:f715bad65b63bdd7e34c6c8c863a80b3bf0c9b493565c30b35407e5336ea9c04` |
| 19 | `def` | [ofTimeZone](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ZoneRulesNamespacedPublic.lean/declarations/oftimezone.md) | 312 | `declaration-track:720777ff245ff07dc1c3db7f1e46997f9da305dbeb1bf5f083a67834efc73f6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=16cbfbe785a702d3b186d248817ed2f18a67df0a4faaf87d5588774bc44b3018 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZoneRules/Variant7b98440e87bc51a4b045ab85bf203d38754b43b567d8c088aa1ae34270b6877a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ZoneRules/Variant7b98440e87bc51a4b045ab85bf203d38754b43b567d8c088aa1ae34270b6877a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
