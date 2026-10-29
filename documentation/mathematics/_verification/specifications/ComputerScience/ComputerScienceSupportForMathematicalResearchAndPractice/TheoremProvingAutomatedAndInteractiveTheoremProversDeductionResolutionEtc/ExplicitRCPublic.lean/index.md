# Verification target: Explicit RCPublic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b7ef1e41b5cea84d054d59625e52fafc96b4c26",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitRC/Variant92ddda0e93a0736bcc7bd9accbe702e60c9bf613313a90c34f1b2a46bb6ca1b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b7ef1e41b5cea84d054d59625e52fafc96b4c26`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitRC/Variant92ddda0e93a0736bcc7bd9accbe702e60c9bf613313a90c34f1b2a46bb6ca1b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitRC/Variant92ddda0e93a0736bcc7bd9accbe702e60c9bf613313a90c34f1b2a46bb6ca1b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.LCNF.PhaseExt` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.PrettyPrinter` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DerivedValInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/derivedvalinfo.md) | 45 | `declaration-track:2f5f2fdcd5df033387e43b23e066dde44355af43db98dd9e23954bff4b23e488` |
| 2 | `abbrev` | [DerivedValMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/derivedvalmap.md) | 57 | `declaration-track:6a09cb8767fafa8fa03f870c7b9b3a074c3e1fa046cd6c53d07f214cd30d94d7` |
| 3 | `structure` | [State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/state-source-edition-2.md) | 61 | `declaration-track:207fb7474f4debaeb6d574e22b2995f7d651231cd55188ff0a9ecb0b78e40ba5` |
| 4 | `abbrev` | [M](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/m.md) | 73 | `declaration-track:1aef74350ed49966d4da4ff53651ed6b3f31827316721ea0e9478514ecec01a1` |
| 5 | `def` | [addDerivedValue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/addderivedvalue.md) | 76 | `declaration-track:d5006c7a1540cccf9dbc5dcc3f29051b9725f831eeea27befd7d812e6ed7da81` |
| 6 | `def` | [addBorrowedValue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/addborrowedvalue.md) | 85 | `declaration-track:fc00d7ad93bc4a0e4e87def1ed3d89feff65deca598f9bb3b99cbc97e5232ed3` |
| 7 | `def` | [addDerivedLetValue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/addderivedletvalue.md) | 88 | `declaration-track:8dc1c732348182541c764759e9ae8f233765e648ed4dab09d2ad7cbcb1499184` |
| 8 | `def` | [visitParam](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/visitparam.md) | 100 | `declaration-track:5c04136b2410fad5a14748328871a05c252047f365fe6781b3356cc799679beb` |
| 9 | `def` | [removeFromParents](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/removefromparents.md) | 105 | `declaration-track:265b372f45e57c354c9fc5b8d5fb5b7d59c9e1588e9745d9655370deddc65427` |
| 10 | `def` | [collectCode](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/collectcode.md) | 113 | `declaration-track:0094eca597469c077c9ed5a4cd5dd0a213784c1deaaa5a1bf8a18b50da476ab7` |
| 11 | `def` | [collect](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/collect.md) | 155 | `declaration-track:54e956593c2ceed08a0db3e13b2ac3cc4da84de63866cf2bd0d08e4ca609b971` |
| 12 | `structure` | [VarInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/varinfo.md) | 166 | `declaration-track:ef84fd99b4eb3326481fb4fe2694c062f161625955f6a5487a3c81a1d417d2cf` |
| 13 | `abbrev` | [VarMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/varmap.md) | 174 | `declaration-track:07dc31ba2b369d31d4a30c9987f2968bbf6088a207303a716cfa68fb485f2b77` |
| 14 | `structure` | [LiveVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/livevars.md) | 179 | `declaration-track:8a38a8a7224edb89b80c56c9f9f130de72fdc729d6fa6f3918d5583d811201d6` |
| 15 | `def` | [LiveVars.union](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/livevars-union.md) | 192 | `declaration-track:15bfa5c66414398acb4b31952b99b48925ff14c498d96d8b6e050cc6a6566c8f` |
| 16 | `def` | [LiveVars.erase](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/livevars-erase.md) | 198 | `declaration-track:80d802682f6c34e893211100fe967c5bcb0237e14ca6be644c8b4f6dcc501f8a` |
| 17 | `def` | [LiveVars.insertBorrow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/livevars-insertborrow.md) | 204 | `declaration-track:98c9024179d5d075edcc194131684316a826903cf75a599825db306a43b64348` |
| 18 | `def` | [LiveVars.insertLive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/livevars-insertlive.md) | 208 | `declaration-track:97d221740be2a50d3eda930fb6d955abc8f67805ce886595921a7871edf60347` |
| 19 | `abbrev` | [JPLiveVarMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/jplivevarmap.md) | 211 | `declaration-track:704d8b65e0870a62917d9b7c7ba98eae14da7b89b90c2de7ae204ffeceb84f74` |
| 20 | `structure` | [Context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/context.md) | 213 | `declaration-track:03ef2698ef150d43fe23d9584626733c34baad9df6b4852eebb5471353b158a6` |
| 21 | `structure` | [State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/state.md) | 237 | `declaration-track:10cb90f6d3b3984911d4f9ff1fd907d0e26871a7b9bb3fdbbb01f30292d0b219` |
| 22 | `abbrev` | [RcM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/rcm.md) | 244 | `declaration-track:697268c6cdd74a5c8e5ace40178dd9ec6dbd8a9aa881147d4b74130d8445a140` |
| 23 | `def` | [getVarInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/getvarinfo.md) | 247 | `declaration-track:6e058db91ae28f2a0b1b9a301ee3a131ed31b497a929218d0d34f6343ac14e1a` |
| 24 | `def` | [getJpLiveVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/getjplivevars.md) | 250 | `declaration-track:6cc5695e207d7e52824f7088323f51b8d06db5d803cd7c842eb69c4ce480e7fa` |
| 25 | `def` | [isLive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/islive.md) | 253 | `declaration-track:6fb7939219d5225a0842319d9e817ce71c95fdf4f4427ec85e2c00d51d082d7c` |
| 26 | `def` | [isBorrowed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/isborrowed.md) | 256 | `declaration-track:b11d632580128b4828c458b3473d64730f2a441370e20a38f032bfc9e3cf4150` |
| 27 | `def` | [modifyLive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/modifylive.md) | 259 | `declaration-track:1aebe5d068c88a3be9e1f3156edb72ec7302809266efbc5cfcffa12d6153c580` |
| 28 | `def` | [withParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/withparams.md) | 264 | `declaration-track:3cb2777310d7c2f1f52d063d1e5177da1704c5fa956353824b67dafe29828d8c` |
| 29 | `def` | [withLetDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/withletdecl.md) | 278 | `declaration-track:1f4b6c02d40ac0311b6466b891f7d7b7ea4ea49a790a8f8f2f65bf3f64587e8c` |
| 30 | `def` | [withCtorAlt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/withctoralt.md) | 296 | `declaration-track:6f6ed822bb86ed855c82d83bfb7fefbda2dbb0d071804e5ca61f95ebed8d72ba` |
| 31 | `def` | [withCollectLiveVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/withcollectlivevars.md) | 316 | `declaration-track:899f5b4d39063bac019c508d200771ae11f46ef86841375783fb106082e3d72b` |
| 32 | `def` | [addDescendants](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/adddescendants.md) | 330 | `declaration-track:6eb08253b098c49013623854665a4c6df1ab3cd7ad8d81d94a91fb7762b3d2b3` |
| 33 | `def` | [useVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/usevar.md) | 347 | `declaration-track:afd72645ec1d82b2f926328b5269e84690c8c4a52e8d4df8f7ece3632d973339` |
| 34 | `def` | [useArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/useargs.md) | 355 | `declaration-track:37c26b19cf2a033d1cfc27ecaa78a10679c2d71c23ce24de5d6e9bbd8a1b2423` |
| 35 | `def` | [useLetValue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/useletvalue.md) | 371 | `declaration-track:df2defd1b694c520f993302d811dd3255abbf1f08b428d1f974a47e6bcd4391f` |
| 36 | `def` | [bindVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/bindvar.md) | 385 | `declaration-track:78926dcb52ef5f72d5e7a348f2695e442a134a18ad0e3067db81c3748476e54a` |
| 37 | `def` | [setRetLiveVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/setretlivevars.md) | 389 | `declaration-track:6fbc21e29c11c28041fdbaf109350090282b111fe240a734f130e9b9a015f05e` |
| 38 | `def` | [addInc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/addinc.md) | 398 | `declaration-track:306fc90e81d17f405756879bdae71851e9406d67693466e071eea1c0addd7b0e` |
| 39 | `def` | [addDec](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/adddec.md) | 405 | `declaration-track:c76dc77d25edcbda03ff63ff4b7dab9352ecf8289bba8bd059362a8442763d95` |
| 40 | `def` | [addPrologForAlt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/addprologforalt.md) | 421 | `declaration-track:01f0541056dd127e36726811616222527375c9314ed587ac418aa44f2f9a83ae` |
| 41 | `def` | [isFirstOcc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/isfirstocc.md) | 447 | `declaration-track:f75fafbf4e3048433d8f5d2c4d73446bdfb1490e6cbc8aa0658630132e71c66d` |
| 42 | `def` | [isBorrowParamAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/isborrowparamaux.md) | 451 | `declaration-track:477e77d1567dc40c641ec7178987f6d1cada8b6a638b1ec71eb5820450fd13a6` |
| 43 | `def` | [isBorrowParam](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/isborrowparam.md) | 463 | `declaration-track:4b519ab159101685a429a4507bd01b64f133965716d09f34c661646b9bd0749f` |
| 44 | `def` | [getNumConsumptions](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/getnumconsumptions.md) | 471 | `declaration-track:02ca376466513c261d748283ceb57a9f772109ba038acfc92ce75ad6cad602db` |
| 45 | `def` | [addIncBeforeAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/addincbeforeaux.md) | 481 | `declaration-track:716665533f3afde6c55881ccb15d56ee1035526d6e93786963472621ee6e1139` |
| 46 | `def` | [addIncBefore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/addincbefore.md) | 506 | `declaration-track:801914928eb4346b666e7dcc9e1fbf5bb0767d7bd8f02b61408e462c613ee75e` |
| 47 | `def` | [addIncBeforeConsumeAll](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/addincbeforeconsumeall.md) | 513 | `declaration-track:6dd3655c1e62a119bbbe8c7fba9858854097428e764278ee7574552930ab3442` |
| 48 | `def` | [addDecAfterFullApp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/adddecafterfullapp.md) | 521 | `declaration-track:539c3147b579aa5e7baed4821c0ff0497f8ab725c3be2fe72316d63541ad7bad` |
| 49 | `def` | [addDecIfNeeded](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/adddecifneeded.md) | 546 | `declaration-track:f5444aa01a4a865cbb8f5ba546dae36e4c413abb25a6cec30643ca7230c6c6f3` |
| 50 | `def` | [addDecForDeadParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/adddecfordeadparams.md) | 557 | `declaration-track:afcc4e3eb16fa11ee01cda4e819687542743a81c3cb4d9e1758bbc0df8556518` |
| 51 | `def` | [LetDecl.explicitRc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/letdecl-explicitrc.md) | 563 | `declaration-track:83bb3f78e1a01d7c5e0526cd38157380834811cb1bc57e7065cf50e88753ee17` |
| 52 | `def` | [Code.explicitRc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/code-explicitrc.md) | 607 | `declaration-track:6673f5273b3a19de7985990fa30f2b9edb62454ff8cf9c37e4e11ac7f3177f30` |
| 53 | `def` | [Decl.explicitRc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/decl-explicitrc.md) | 680 | `declaration-track:bb38508ae2c2b0f53f3d92c0689f2ce010f33eef0727594c3993f240dc74fcc1` |
| 54 | `def` | [runExplicitRc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/runexplicitrc.md) | 695 | `declaration-track:96d18932131cf0629fd29d19df76d9159fc97dd2d6ab738df0d768c7efc942e9` |
| 55 | `def` | [explicitRc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/explicitrc.md) | 698 | `declaration-track:8b9de60a0f26f3b65a1f45ff106b16d379a9c063c371202f27ea6b3b509a5b2f` |
| 56 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/declarations/builtin-initialize.md) | 701 | `declaration-track:de95ff6f6c83fbab5433e7c5dffaafd602324461fad7a8624961011e59d376b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=76ad208c39644b68a91f6a251579d350312c7ee55f5b00586b8057fda24d66a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitRC/Variant92ddda0e93a0736bcc7bd9accbe702e60c9bf613313a90c34f1b2a46bb6ca1b2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitRC/Variant92ddda0e93a0736bcc7bd9accbe702e60c9bf613313a90c34f1b2a46bb6ca1b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
