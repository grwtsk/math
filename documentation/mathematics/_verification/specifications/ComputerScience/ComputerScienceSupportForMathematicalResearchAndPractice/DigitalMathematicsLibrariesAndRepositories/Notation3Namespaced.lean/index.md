# Verification target: Notation3 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da3495eb27113446f9245c878a4937b20f43410c",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation3/Variant173cdec06f637cae8d71b2918971a792706edf0442cf638ad0bc8e296112fcd5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da3495eb27113446f9245c878a4937b20f43410c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation3/Variant173cdec06f637cae8d71b2918971a792706edf0442cf638ad0bc8e296112fcd5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation3/Variant173cdec06f637cae8d71b2918971a792706edf0442cf638ad0bc8e296112fcd5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.BuiltinCommand` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.MacroArgUtil` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Elab.Term` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.PrettyPrinter.Delaborator` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ScopedNS` — import line 15; external provider; requires a separately pinned dependency.
- `Batteries.Linter.UnreachableTactic` — import line 16; external provider; requires a separately pinned dependency.
- `Batteries.Util.ExtendedBinder` — import line 17; external provider; requires a separately pinned dependency.
- `Batteries.Lean.Syntax` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/initialize-source-edition-2.md) | 34 | `declaration-track:69c128ae89fc9b17f78d3243078d57d57e1c8ccbaa7279d536a6255ead09f82b` |
| 2 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/syntax-source-edition-2.md) | 45 | `declaration-track:3af59b16aaefa373c5d1959ac1bdcb70a8be736c71cd94fc47c266012a781285` |
| 3 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/macro-rules-source-edition-3.md) | 47 | `declaration-track:3a5b2a4c077629b32fe724db4efd7c237daaac860c4367b25ed050254563ade7` |
| 4 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/macro-rules.md) | 51 | `declaration-track:1cbb87cba4a2a60398ff7b3fcf79bd09709bb19606aec2f1c7b10da43d3b9456` |
| 5 | `macro` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/macro.md) | 73 | `declaration-track:6fcca4a69bdcd9e1b64b75047401ab700e95f82a7937f7f4343594337913d02f` |
| 6 | `macro` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/macro-source-edition-2.md) | 78 | `declaration-track:f944961d229d196f8e380c5a9c0ba788a1b2ffc2b6f4320d4ae91e5e421f7e6a` |
| 7 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/syntax-source-edition-7.md) | 85 | `declaration-track:d61782d0b048d3f2e7184d4326ea3b0f16059052bea69e30fad8308d89c6283a` |
| 8 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/syntax-source-edition-6.md) | 87 | `declaration-track:bf96fd5686305d0150fca1a43580050148391e44107aceba856a10a94fa4a6e9` |
| 9 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/syntax-source-edition-3.md) | 89 | `declaration-track:8b166ff5a8e4a426b51e4088827a06f86b09cce8563592ca2b52592dba9653fa` |
| 10 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/syntax-source-edition-8.md) | 92 | `declaration-track:ec81eef28bf834d2cecac1b03604c9fd6c55648621e2b70d072b3e64b3ea7f43` |
| 11 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/syntax-source-edition-4.md) | 97 | `declaration-track:b26a0ee18f769c5920daefeed1fe04bcf185803a1901d4350312b36216657e45` |
| 12 | `structure` | [MatchState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/matchstate.md) | 110 | `declaration-track:2a761fb84c0c9cd346c8c39cf12cba83b74c1254092799571315eade9b825992` |
| 13 | `def` | [Matcher](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/matcher.md) | 123 | `declaration-track:3a52a57149295e0d965cdc87be4f5e9f84f9dc9887d1a29a9c618d8bf1541436` |
| 14 | `def` | [MatchState.empty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/matchstate-empty.md) | 127 | `declaration-track:921449f9a1e47f079fc96443fb82ad50bfbadc0c9ddcef67dfd8b7efe9deb62d` |
| 15 | `def` | [MatchState.withVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/matchstate-withvar.md) | 134 | `declaration-track:58315c320873a90a810d541d5a3cc6aaaa5d0c4ca5d2d263c3924d5458c556d5` |
| 16 | `def` | [MatchState.delabVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/matchstate-delabvar.md) | 142 | `declaration-track:3db42c4c2a82b4906ecf76f0c3c99b05b9024ff156f5ed2f336df68e0e39ea2f` |
| 17 | `def` | [MatchState.captureSubexpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/matchstate-capturesubexpr.md) | 150 | `declaration-track:126bd08ff65ce0db185616e31e97ff65087d3ccf8df1d1851a555dfb85fc459d` |
| 18 | `def` | [MatchState.getFoldArray](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/matchstate-getfoldarray.md) | 155 | `declaration-track:06e05fc081baceef2d6785e791763b750158a677ac574ad88af5acd8f41a3451` |
| 19 | `def` | [MatchState.getBinders](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/matchstate-getbinders.md) | 160 | `declaration-track:78179bd189f4547b93d6d8099c3da080e878e6c6720e04c91ca55145124c96a3` |
| 20 | `def` | [MatchState.pushFold](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/matchstate-pushfold.md) | 164 | `declaration-track:560321bc5b4b5af6bc8cc35ef7ae4040c68c575f41b7ad151e6c76e834d8a9de` |
| 21 | `def` | [matchVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/matchvar.md) | 170 | `declaration-track:c26acdcb69e3b4b70c1e420072c53b25ddd07d8df0933809e33f17df2ed2eb64` |
| 22 | `def` | [matchExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/matchexpr.md) | 178 | `declaration-track:6916691c1118b0026672dc8daab01ef9c6e1338b6edfc7863fe2a810e3deda89` |
| 23 | `def` | [matchFVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/matchfvar.md) | 184 | `declaration-track:660181070bdea212ae266b81af59572db5d03e675ec34cc890d71a8ecc25cf74` |
| 24 | `def` | [matchTypeOf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/matchtypeof.md) | 190 | `declaration-track:bb158024ea08c4203a1b3d33909a0776bb2867bbf4ddbb20db9a7942b4970eae` |
| 25 | `def` | [natLitMatcher](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/natlitmatcher.md) | 194 | `declaration-track:c5319714371187b57871fa9de3f7495d4b9c2ec1c82d7bcad3fecbb9f73fe8e8` |
| 26 | `def` | [matchApp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/matchapp.md) | 199 | `declaration-track:b6b0226fb28de4caccec39a1b5e1929b746f7bcfceb0e13db25fc668d44117e7` |
| 27 | `def` | [matchForall](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/matchforall.md) | 207 | `declaration-track:e8607fa33095197114c30922acc3e4b21cb93d839b5fdc41e39f93bca6f570ba` |
| 28 | `def` | [matchLambda](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/matchlambda.md) | 214 | `declaration-track:d8cbce8aa854270867c619997abfa3829c7e181e4541bb5e106fa9f495a3c621` |
| 29 | `def` | [setupLCtx](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/setuplctx.md) | 223 | `declaration-track:0f1a0b6c1847ed1faa5be342564f8215441de047e33d28409a3658f24d5c8bb0` |
| 30 | `def` | [isType'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/istype.md) | 237 | `declaration-track:56a6d02f0745714f4d576f6ada2bb00f6367f8bc286e4540c9ae45cce0d2f056` |
| 31 | `inductive` | [DelabKey](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/delabkey.md) | 245 | `declaration-track:2fcbd76faf1edf9380c8e145dd1225bfc5f9abde5744b7de6cb2b1f55b8fc3ee` |
| 32 | `def` | [DelabKey.key](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/delabkey-key.md) | 254 | `declaration-track:ce0715b998d0526c7d62e1e7418cf463323c4cb65f3e13e9e2e3e6265c8421e9` |
| 33 | `def` | [exprToMatcher](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/exprtomatcher.md) | 268 | `declaration-track:22647fa928128381e0b9549d3f8cff2594715d21c8cdf52b0efebeab38a6a959` |
| 34 | `def` | [mkExprMatcher](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/mkexprmatcher.md) | 358 | `declaration-track:907c4ca02056f7a940f175f33865444c052d567edd35478851ad24d957048e3c` |
| 35 | `def` | [matchScoped](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/matchscoped.md) | 379 | `declaration-track:213fd9654d7d42662e6c0cf0d3a9eb81297bd843dd7a7755ae04fc6ece6c1c85` |
| 36 | `def` | [mkScopedMatcher](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/mkscopedmatcher.md) | 421 | `declaration-track:6a0ca40cca4f5658556753d409c5e9192a76bba7edb46a126197b99f6aa321b5` |
| 37 | `def` | [matchFoldl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/matchfoldl.md) | 428 | `declaration-track:5cb84801fdb4b90941f247bab9e1ba2806f5c0554c079f177d96db6f33081ae0` |
| 38 | `def` | [mkFoldlMatcher](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/mkfoldlmatcher.md) | 450 | `declaration-track:3677a4945a4a7ad80ca4cae87988377a450a9f842acac1b1b776b429d7d93101` |
| 39 | `def` | [mkFoldrMatcher](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/mkfoldrmatcher.md) | 460 | `declaration-track:c706385e448cc10ea38bc638b1f666f27041d75c741c732248584db622a4329d` |
| 40 | `def` | [mkNameFromSyntax](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/mknamefromsyntax.md) | 473 | `declaration-track:18bdbb983eca6a0c331bccc9d4804aa0eee9b94b8869f9eb495aa87020264cb7` |
| 41 | `inductive` | [BoundValueType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/boundvaluetype.md) | 485 | `declaration-track:a0da9594c4ee6949d92bffdbe290e4fb441fc95cf75fdaf2cbfc545c5894f2df` |
| 42 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/syntax-source-edition-5.md) | 493 | `declaration-track:b9169af804d852ad074b84492f092d75cf336fb3e8c00ee48832ae9e32728408` |
| 43 | `def` | [getPrettyPrintOpt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/getprettyprintopt.md) | 496 | `declaration-track:bf59770afad60561b38289d27c899492ec49b5f562810c0f70bb636288c86057` |
| 44 | `def` | [withHeadRefIfTagAppFns](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/withheadrefiftagappfns.md) | 510 | `declaration-track:54f077dec3b7abcf5cfffc6c42585c077ef442b4c207cf01440a37e30b67d078` |
| 45 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/elab.md) | 539 | `declaration-track:d664fc7419b972f3b343619e443708f23c92835b813c1a0a5bfded1b8a569b57` |
| 46 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/syntax.md) | 633 | `declaration-track:08472ccf005be0a538e07efd5b296a3a11a791dcf5b7de8a397c9104c5cbf8b3` |
| 47 | `def` | [$](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/anonymous.md) | 684 | `declaration-track:2206dff8e94d2fdaa7833ce1cdfcdaf130b7d36795d74374f79a202a21295ce1` |
| 48 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/initialize.md) | 699 | `declaration-track:2b104605aefbb0a5390e69586c6558c314d6bd8e0dc37d52f8237a2298f8e901` |
| 49 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/Notation3Namespaced.lean/declarations/macro-rules-source-edition-2.md) | 703 | `declaration-track:21021c38ab667879fd175f800b4416d3ecf7abf3f7edad8b40242964bf14b7cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a15cfc2a5f0a7096bbd1f35df695f5dd958ce3caa6c9ebe8e7c41517cf73738d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation3/Variant173cdec06f637cae8d71b2918971a792706edf0442cf638ad0bc8e296112fcd5.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation3/Variant173cdec06f637cae8d71b2918971a792706edf0442cf638ad0bc8e296112fcd5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
