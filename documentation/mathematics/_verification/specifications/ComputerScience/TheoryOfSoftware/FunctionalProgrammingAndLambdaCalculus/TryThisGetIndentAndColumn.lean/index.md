# Verification target: Try This Get Indent And Column

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f62933eeebe64c6ed0135dd28b13636a908c6f4",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant7e7c308a0fbc6a577b0f92144e5a610b0e4a6a774088a8a0b05c49a8b8679129.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f62933eeebe64c6ed0135dd28b13636a908c6f4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant7e7c308a0fbc6a577b0f92144e5a610b0e4a6a774088a8a0b05c49a8b8679129.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant7e7c308a0fbc6a577b0f92144e5a610b0e4a6a774088a8a0b05c49a8b8679129.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Server.CodeActions` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Widget.UserWidget` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Lean.Name` — import line 8; external provider; requires a separately pinned dependency.
- `Std.Lean.Format` — import line 9; external provider; requires a separately pinned dependency.
- `Std.Lean.Position` — import line 10; external provider; requires a separately pinned dependency.
- `Std.Data.Json` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tryThisWidget](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/trythiswidget.md) | 43 | `declaration-track:ad63b084f9d8618a9566bfb5bbef111015a093d11c79baa458c42240e7b92aa9` |
| 2 | `def` | [tryThisProvider](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/trythisprovider.md) | 86 | `declaration-track:db8345410dfa0dbe0e12c3d7971bf6f0e0c1edb47aab81e438a4eff987e6f60d` |
| 3 | `def` | [getIndentAndColumn](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/getindentandcolumn.md) | 114 | `declaration-track:93c36b2493c623c49ee7441fecbb596d7525caeef1a30f3323273c8a9b2b746f` |
| 4 | `def` | [replaceMVarsByUnderscores](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/replacemvarsbyunderscores.md) | 120 | `declaration-track:ae75b687678d355abc5b8da11a94aa5684fd151c217f401f495a1d6e9bc4d85a` |
| 5 | `def` | [delabToRefinableSyntax](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/delabtorefinablesyntax.md) | 127 | `declaration-track:ddfd07bb5e21a7cbd60abf5bb8e02a9264af4026d2380bd50e25bc9965dcc61a` |
| 6 | `def` | [inputWidth](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/inputwidth.md) | 131 | `declaration-track:8c739354ce83e941d8d72e7ec52cf255042c0246e050ec9bd65d4113f7321898` |
| 7 | `register_option` | [format.inputWidth](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/format-inputwidth.md) | 135 | `declaration-track:68a7a2897c878e0fb5f61267020b9f042b5a52241267755c69901ff0b7dfb3c3` |
| 8 | `def` | [getInputWidth](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/getinputwidth.md) | 141 | `declaration-track:cff4d86bd97dbc84c77e204b230e16cbbd65128028b6c48257b95a9e09b7cbfa` |
| 9 | `inductive` | [SuggestionText](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/suggestiontext.md) | 151 | `declaration-track:2d0a50f28c26cec1664497a88f2c429b8332e4d65f972cd864831124d4390b06` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/instance-source-edition-2.md) | 160 | `declaration-track:33fb00dbeda5f908f507f5fc610500ffda509cf189760137ad8324d5eaefd1a1` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/instance-source-edition-4.md) | 165 | `declaration-track:83be36d23816934437946741edd3fa2c0df648994ceacd94eb09e0dd48d6fd7b` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/instance.md) | 168 | `declaration-track:2dc74eef850abca3e36a502f8412986813bf7ac536375f4defa6402c6c53ab3b` |
| 13 | `def` | [pretty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/pretty.md) | 175 | `declaration-track:069ed1e1ab75c31decec5f0126c89c9486b79ca5ffb78e6b43282a8724356b15` |
| 14 | `def` | [prettyExtra](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/prettyextra.md) | 184 | `declaration-track:bb5f50dd38273a5c492992749abb56d60baa0be669068f8959d6e280d075fa11` |
| 15 | `def` | [SuggestionStyle](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/suggestionstyle.md) | 202 | `declaration-track:810ad2b923671bd5a085740039f50af85c9c6c6008008a853206af3a57b5ccb4` |
| 16 | `def` | [SuggestionStyle.error](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/suggestionstyle-error.md) | 206 | `declaration-track:6c4d2b651e807e29cbc54a3c1635a85f36c6a744105481cda939ff1cd09b3949` |
| 17 | `def` | [SuggestionStyle.warning](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/suggestionstyle-warning.md) | 218 | `declaration-track:c293ae11f6ec94e92a5e7e5f9df623dd5b374fb1bab4be6083ac8b1fce998588` |
| 18 | `def` | [SuggestionStyle.success](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/suggestionstyle-success.md) | 228 | `declaration-track:fb035f87f4ffda8b78e3e94c53057b46ac1996d7be01df723cde05f062a42a65` |
| 19 | `def` | [SuggestionStyle.asHypothesis](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/suggestionstyle-ashypothesis.md) | 233 | `declaration-track:85f07ac8372fa8556397e4a764386d1d56c74a09e6df3b7dd390b41e1fb2e6d1` |
| 20 | `def` | [SuggestionStyle.asInaccessible](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/suggestionstyle-asinaccessible.md) | 237 | `declaration-track:6e5fe67a518a43cb44e169ebd8be1f08d15251fe562b55efe41e14e306a4a13d` |
| 21 | `def` | [SuggestionStyle.value](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/suggestionstyle-value.md) | 245 | `declaration-track:4e9ddc99b960206f137512972d9805acb120241ecac1febcf13977834fb52d91` |
| 22 | `structure` | [Suggestion](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/suggestion.md) | 259 | `declaration-track:9d878fc2e2b80dfb0fe4685ecb18fb49285fe209459eee0be2b8416f64bc21c4` |
| 23 | `def` | [Suggestion.toJsonM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/suggestion-tojsonm.md) | 284 | `declaration-track:e1823777aed7651a9cad7f0fd330b37a90cfe7dbaa63b40e3da3700c393d0143` |
| 24 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/instance-source-edition-3.md) | 295 | `declaration-track:60dfb354ab51e07a0ffe56115f253cb8f26b9a2ed9384fb56244714293ecc86b` |
| 25 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/instance-source-edition-5.md) | 298 | `declaration-track:91d5cbf97505fc4be609ab8c17573271fc831670eeae7be462d84e8237d75623` |
| 26 | `def` | [delabToRefinableSuggestion](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/delabtorefinablesuggestion.md) | 302 | `declaration-track:6c587475240d0c1f58ffa0cc2059b8c8c79501715522d90a88c9fd0082a37d4c` |
| 27 | `def` | [addSuggestionCore](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/addsuggestioncore.md) | 309 | `declaration-track:dc9dc9e8a9acb2ada9d24f660f71ff493ad1cd211f76e1b4a82e02010cd746aa` |
| 28 | `def` | [addSuggestion](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/addsuggestion.md) | 356 | `declaration-track:9a8fe39b38d7e352cd702fa1f1bc54185981eaa78b0398af578b7391fc52fd54` |
| 29 | `def` | [addSuggestions](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/addsuggestions.md) | 386 | `declaration-track:2d66a112bdb51d94cd6b8c613f983edc7dd0637e4e9611d9629c1b64a031a6bb` |
| 30 | `def` | [addExactSuggestionCore](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/addexactsuggestioncore.md) | 395 | `declaration-track:788f202805f92eaccfb5b15ee2f69bb23a9c11527a8ddbce9f6dbc01a51d1956` |
| 31 | `def` | [addExactSuggestion](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/addexactsuggestion.md) | 419 | `declaration-track:fe2c21dbcfd923bba1542a56e7edcc493530656fb5f1aae5df4ed88ee627d327` |
| 32 | `def` | [addExactSuggestions](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/addexactsuggestions.md) | 434 | `declaration-track:a97accdb1979ef59e4473f8317e4b039095dffe76c01a5ca5fecc2a7d1914761` |
| 33 | `def` | [addTermSuggestion](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/addtermsuggestion.md) | 448 | `declaration-track:ac05e4809aafe7aaba704a96ebf38a806acb5c1492fd7684c8725743d14e576f` |
| 34 | `def` | [addTermSuggestions](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/TryThisGetIndentAndColumn.lean/declarations/addtermsuggestions.md) | 461 | `declaration-track:c7556037891512434fb7f87146f5ee76411d72f6c7d3cfbec54d37b89a2b9875` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8de4fc0915953abe03eb94c65f275cf227005b2caedcb6163bf38da02e4a3fc0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant7e7c308a0fbc6a577b0f92144e5a610b0e4a6a774088a8a0b05c49a8b8679129.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant7e7c308a0fbc6a577b0f92144e5a610b0e4a6a774088a8a0b05c49a8b8679129.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
