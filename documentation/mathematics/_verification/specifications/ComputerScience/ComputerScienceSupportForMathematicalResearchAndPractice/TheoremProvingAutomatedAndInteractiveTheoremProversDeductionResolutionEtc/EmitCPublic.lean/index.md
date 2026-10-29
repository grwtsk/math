# Verification target: Emit CPublic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "849a1be3e4db322a5391a667acadecff93c67642",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variantb583be256c880a879bf723bb4c2cd87bd80d433d0539ea67d87c28a6da500216.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `849a1be3e4db322a5391a667acadecff93c67642`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variantb583be256c880a879bf723bb4c2cd87bd80d433d0539ea67d87c28a6da500216.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variantb583be256c880a879bf723bb4c2cd87bd80d433d0539ea67d87c28a6da500216.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.LCNF.EmitUtil` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Compiler.NameMangling` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.PhaseExt` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Compiler.ExportAttr` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Compiler.ModPkgExt` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.SimpleGroundExpr` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Compiler.ClosedTermCache` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Runtime` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.Internalize` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Compiler.InitAttr` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 20; external provider; requires a separately pinned dependency.
- `Init.While` — import line 21; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.SimpCase` — import line 22; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.PrettyPrinter` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leanMainFn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/leanmainfn.md) | 27 | `declaration-track:6f01337a6500800645073477ee779807eab08c7642ac071e15c03bcd2f955636` |
| 2 | `def` | [Lean.Expr.toCType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/lean-expr-toctype.md) | 31 | `declaration-track:127713efee375af3018fa7447f2ce7a60079637378064bac47269d5da06ac838` |
| 3 | `def` | [Lean.Expr.unboxOpName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/lean-expr-unboxopname.md) | 46 | `declaration-track:95ce8f1519048099951507c4c3cfc6bc9707775a6a85df2f836985fa042ef528` |
| 4 | `def` | [Lean.Expr.boxOpName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/lean-expr-boxopname.md) | 55 | `declaration-track:e6e1b6519f1c73c57eead19ba49b31f9742af4899895f4b6645b54447b719a29` |
| 5 | `def` | [Lean.Expr.sprojOpName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/lean-expr-sprojopname.md) | 64 | `declaration-track:00db2767eb7c71919da777c4869bab8f91dbc2a7fcad7c08761151139ee62fba` |
| 6 | `def` | [Lean.Expr.ssetOpName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/lean-expr-ssetopname.md) | 74 | `declaration-track:da56de0a35af6d589f335fa7f6ce381d612602bbb56442adc91362b507fb963a` |
| 7 | `def` | [Lean.Expr.closedTermReadOpName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/lean-expr-closedtermreadopname.md) | 84 | `declaration-track:cca739ee475de5802d075fac5d03a05896e4682464fdb1183d7c448ac940c37d` |
| 8 | `structure` | [Context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/context.md) | 100 | `declaration-track:69b4b5f35bf387ef41a29bcaf2fd853bff9c5bbe79f0634a7cebb4715cf4fbed` |
| 9 | `structure` | [State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/state.md) | 122 | `declaration-track:2c855408fa177672e29a71b5e5eec9d87b71f2269039c24cd8e0fe0f76fd6072` |
| 10 | `abbrev` | [EmitM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/emitm.md) | 128 | `declaration-track:9f1048b4d87a22233c1e35f39cb2eb29fa596f61b819548b091cba49e4a619ca` |
| 11 | `def` | [getModName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/getmodname.md) | 130 | `declaration-track:d2dd6bd4f0c9c5ac4c8c8bb7d305f67babe677c775bdb40e946c6e7f8d0e421e` |
| 12 | `def` | [getModInitFn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/getmodinitfn.md) | 132 | `declaration-track:5b215dd2b984bd577ca07f18dd6668751dd8ceb83371533ea8ab68ccdb36220b` |
| 13 | `def` | [getCurrFn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/getcurrfn.md) | 136 | `declaration-track:e67d6fdb009bd243e12bcb0e905391951e7aa2d81c5c9a6f5df5d299fd73c51c` |
| 14 | `def` | [getCurrParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/getcurrparams.md) | 138 | `declaration-track:59ea54ea0098fbed4644f0f5d8d580c442f2021f44462813f268530fef24d9a4` |
| 15 | `def` | [getLocalDecls](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/getlocaldecls.md) | 140 | `declaration-track:dd8fab3af1d6962a2ababf8111b314918922a3d8fbe5ebaa73cfe89c4645191a` |
| 16 | `def` | [getOtherModuleDecls](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/getothermoduledecls.md) | 142 | `declaration-track:f29312744cd570010ad90eeea5b6e89095705c8a23035d05419e8da489b65ebb` |
| 17 | `class` | [EmitToString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/emittostring.md) | 145 | `declaration-track:b6acdd6d68a114152bcb571224f993c107f1fc1953aaa52363be5cb845a21953` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/instance-source-edition-4.md) | 148 | `declaration-track:ba1431ac0a134389aa4a4ebb7e1330ca47c22d6aa0f87f8e6ab40d826a985e7f` |
| 19 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/instance-source-edition-2.md) | 151 | `declaration-track:702f2cf9eb8923ec542f574689d17193fdc8e7b981acbcc0652bafacf4ad0fc6` |
| 20 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/instance-source-edition-3.md) | 160 | `declaration-track:7f9c7bbcdaf319c8c9585125981773cd796348e3be4b3fb29df336fdbd81aa9c` |
| 21 | `def` | [Arg.toCString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/arg-tocstring.md) | 163 | `declaration-track:9f36faa28acd839a2f8718748dc3ece6a432a21ccd18953255fbed3ee18b55cc` |
| 22 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/instance.md) | 168 | `declaration-track:331f5d18ee68bb173e5a863b09a66c844eb6611cb7a82aa99bd9308b1ffdb837` |
| 23 | `def` | [emit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/emit.md) | 172 | `declaration-track:6c2789d0164f68a12345ceab9dd99ee275be78b97e24067a2a0a7ce128059c7a` |
| 24 | `def` | [emitLn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/emitln.md) | 176 | `declaration-track:d6d3f16402056e7c13eb9daeac92daa6c7da8c7ab75e77aa0b074f6757e675b0` |
| 25 | `def` | [emitCApp1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/emitcapp1.md) | 180 | `declaration-track:4a14eebbeec63c79004993a309d738992cf7467ebe2aa43f5fadfd97916a1a27` |
| 26 | `def` | [emitCApp2](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/emitcapp2.md) | 184 | `declaration-track:b25a3c36cb20be498c38d312f4ae0f89b53586b6af1cbc6fc6eb0208d64b285f` |
| 27 | `def` | [emitCApp3](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/emitcapp3.md) | 189 | `declaration-track:ac6951cda85fbf4d075985c9969564de175a03da952b14a2a01eeac4ea1ff784` |
| 28 | `def` | [toStringArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/tostringargs.md) | 193 | `declaration-track:630b8dbbc7d14578d4a1ac204d2dfad8bd2521a34fa114f84eb428cbc4a4bc7b` |
| 29 | `def` | [emitArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/emitargs.md) | 196 | `declaration-track:1fa2341fabf740e818952f7dca39c849c18c6e01e6262f6b7725893abf2fe546` |
| 30 | `def` | [emitLns](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/emitlns.md) | 201 | `declaration-track:252b1ab160eae9d9d65bde50fcb1ca74ea9520893bba3e8fcbab014829f95198` |
| 31 | `def` | [withEmitBlock](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/withemitblock.md) | 204 | `declaration-track:1aef7fd14891dee4cc61a2756401e3d2248bf032610ff0a41ae1fe9340b5ddd2` |
| 32 | `def` | [toDigit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/todigit.md) | 210 | `declaration-track:49e080baee9dcbd64efdddd529615da303090f978a8a9b93bc1614eb105bb084` |
| 33 | `def` | [quoteString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/quotestring.md) | 213 | `declaration-track:173944425f92b6269280178cfdfb52eab30f6e014c8fc523c71c89e0f0b825c7` |
| 34 | `def` | [throwInvalidExportName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/throwinvalidexportname.md) | 234 | `declaration-track:76a0aa1e9430b510f40899fbf9918ca6fc8d2d021fa622a547093bc523616956` |
| 35 | `def` | [toCName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/tocname.md) | 237 | `declaration-track:9649250b87a825e73998c7f25bb845a081e3a0eef755bce52846593b03abe143` |
| 36 | `def` | [emitCName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/emitcname.md) | 252 | `declaration-track:4f3757506db1b1ef8af943ba48c00163f4a53efa4e25037c2b76e9e6585185dd` |
| 37 | `def` | [toCInitName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/tocinitname.md) | 255 | `declaration-track:e2690edbc5628ef1ef46551d2a7d9def236d865c10d240fcd4664e1ee46a1bfd` |
| 38 | `def` | [emitCInitName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/emitcinitname.md) | 270 | `declaration-track:2c84efe88acac1cc2102b29cf9ae0e3638a14d8b1e5e36cc23f733e0861d6f1f` |
| 39 | `def` | [emitFileHeader](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/emitfileheader.md) | 273 | `declaration-track:faa17b57fc5caa182cf6694b565ae4ec70f995e0ed4a61d0cd91290d28135ef3` |
| 40 | `def` | [ctorScalarSizeExpression](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/ctorscalarsizeexpression.md) | 296 | `declaration-track:ddbb34624cb754536c2dd21350e278997f5c5b9b5aae83cd5d75aef6297bb28d` |
| 41 | `structure` | [GroundState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/groundstate.md) | 304 | `declaration-track:11e95e64c23f466db962bf278391955becb69af162d93279b9430176b9e04529` |
| 42 | `abbrev` | [GroundM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/groundm.md) | 307 | `declaration-track:334b9d76abcfd919a0ac782461b58e2d9047851893f1169a3b94f4176878b665` |
| 43 | `def` | [emitGroundDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/emitgrounddecl.md) | 309 | `declaration-track:21ebfca9c1c4e11b35c4f15c0204041bfd1493c48bab6c85497f607e93c15f4d` |
| 44 | `def` | [toOnceTokenName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/tooncetokenname.md) | 445 | `declaration-track:cf6e7ffbb61a2af95abed8d83bf11ab2f0d41c20355cc3ef21ea7b8f4787c7d5` |
| 45 | `def` | [paramsWithoutVoid](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/paramswithoutvoid.md) | 449 | `declaration-track:191e51d650125dd35c6d43e797d88b725bea07a58ca2ecab75d0538f35de3ad2` |
| 46 | `def` | [paramsWithoutErased](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/paramswithouterased.md) | 453 | `declaration-track:ff46baeeac8854f728ba132ddb24d2a273811cf42649555366e711bb0c98569f` |
| 47 | `def` | [emitFnDecls](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/emitfndecls.md) | 456 | `declaration-track:2e7c8f49eb1730055bbd184ee086e4e24a179304a7544e5bd96de17a2f95cbfe` |
| 48 | `def` | [offsetExpression](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/offsetexpression.md) | 518 | `declaration-track:de73a6521bb011341b0fa69dcd1c853d4669a37dc3f9f5ae7dcca97b855b7a63` |
| 49 | `def` | [isTailCall](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/istailcall.md) | 527 | `declaration-track:577654bfd3098bbd200337c5de3d17cac915e6c5d811b7770c08811fbb137792` |
| 50 | `def` | [declareVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/declarevars.md) | 533 | `declaration-track:31ea368d289f08f727c30f8649bd2e5c52274d6fafb99feee88e21889a6f2252` |
| 51 | `def` | [emitLetDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/emitletdecl.md) | 558 | `declaration-track:d3a5293908f300bac23f886a847861d1d24091baaf6267e4cf03d51e7e14adb5` |
| 52 | `def` | [emitTailCall](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/emittailcall.md) | 725 | `declaration-track:c3015e23dbf00e60958a30891397cad8498d5a1ddb382abae866b8ceb5c07564` |
| 53 | `def` | [emitBasicBlock](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/emitbasicblock.md) | 780 | `declaration-track:36b9afcabb3061686e76eb37c82fe5d897004f8bc5e407a62cf8a656bb6af429` |
| 54 | `def` | [emitJoinPoints](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/emitjoinpoints.md) | 906 | `declaration-track:e4b7ef6d301c91f64223e2794176f811fbc40fee88329f3e5578650882c0c5b3` |
| 55 | `def` | [emitCode](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/emitcode.md) | 916 | `declaration-track:437f50c3c234cc6d8968e70b53d4662938d8cea05176adb818588eec1c646ccb` |
| 56 | `def` | [emitDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/emitdecl.md) | 925 | `declaration-track:3d92459833350eb99fb982a041d9f3418b45620129df2bd500b13901e793516e` |
| 57 | `def` | [emitFns](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/emitfns.md) | 968 | `declaration-track:cbde253c87e5ca6bdb01bf8c988f70e39a0c2c895b9afb3407baa7cb86155b78` |
| 58 | `def` | [withErrRet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/witherrret.md) | 978 | `declaration-track:2135345fe34428940b6a55ddca92980f78f27a55dc6293c32f2f1d60762a7406` |
| 59 | `def` | [emitMarkPersistent](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/emitmarkpersistent.md) | 982 | `declaration-track:9d968b3db4dc108fe31a0beed7031b99dcea5e9de3bff42000b4da6f8515314e` |
| 60 | `def` | [emitDeclInit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/emitdeclinit.md) | 986 | `declaration-track:e760b23f3d7b6273b6670a4e365200df880210beb549eda9af43fa0525f770fe` |
| 61 | `def` | [emitInitFn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/emitinitfn.md) | 1007 | `declaration-track:f5d66091af0b7b6583bf8c57622e46eef490e61c661b723901ec3090609b7d4b` |
| 62 | `def` | [emitLegacyInitFn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/emitlegacyinitfn.md) | 1037 | `declaration-track:e3785e52948f574c1f438562734fb8b82239082260d4f7c12aaab0d701b35421` |
| 63 | `def` | [emitMainFnIfNeeded](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/emitmainfnifneeded.md) | 1067 | `declaration-track:603f46d6555bc9024fc4898260f1745b618561454ed56ab976dc33fc34d7d435` |
| 64 | `def` | [emitFileFooter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/emitfilefooter.md) | 1140 | `declaration-track:1a29f8e41874e7edfa3d6482a74a78fa8b9d6f21eacaaa5edd85763b939b48a9` |
| 65 | `def` | [main](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/main.md) | 1147 | `declaration-track:73a186da60469573acbe17a87a87414166f61c1556abeda0d6f3c2d8b8fd47aa` |
| 66 | `def` | [emitCForDecls](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/emitcfordecls.md) | 1160 | `declaration-track:9e54664099f3e6e14c5345c3453a9b1776c85845e1136405b2831f87091f1c91` |
| 67 | `def` | [emitC](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/declarations/emitc.md) | 1172 | `declaration-track:abb3a058d45926005a5dc65e5a81da6e26d5cf474ad79e06368ffa486c6de8ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0392dcce2073dc28222dea66402565a0a133b23fcc5b71678ba16bda8403a9ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variantb583be256c880a879bf723bb4c2cd87bd80d433d0539ea67d87c28a6da500216.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variantb583be256c880a879bf723bb4c2cd87bd80d433d0539ea67d87c28a6da500216.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
