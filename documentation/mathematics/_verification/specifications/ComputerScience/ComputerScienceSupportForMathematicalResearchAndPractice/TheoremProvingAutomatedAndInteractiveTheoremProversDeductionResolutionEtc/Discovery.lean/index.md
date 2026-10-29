# Verification target: Discovery

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92fb150c1d062d61fbe2ce8022786a50a261615a",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92fb150c1d062d61fbe2ce8022786a50a261615a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Discovery.Find` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ToExpr` — import line 8; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ProveSupported` — import line 9; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ProveContinuous` — import line 10; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.IntervalAuto` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.Global` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.Guided` — import line 13; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.Gradient` — import line 14; external provider; requires a separately pinned dependency.
- `LeanCert.Validity.Bounds` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/initialize.md) | 59 | `declaration-track:6f48bc6f0710749f502f515614ef8b2c0f4d74770273967ef01fdb6d1af37738` |
| 2 | `abbrev` | [LExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/lexpr.md) | 62 | `declaration-track:564459fd1e3ccf16c3c2f385437a4d51df3cad9fa67af2b4426b6f0dc7c7e764` |
| 3 | `def` | [parseDomainToBox](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/parsedomaintobox.md) | 67 | `declaration-track:15978c606019b0ff5d77ce93a7a034a6f07d436f839c95c0b3b02f140b9abf15` |
| 4 | `inductive` | [ExistentialBoundGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/existentialboundgoal.md) | 79 | `declaration-track:fe8edb033cc8d4b9831933a8e92068425ee3003733acfebb0790b4251a9d7e3d` |
| 5 | `def` | [parseExistentialGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/parseexistentialgoal.md) | 93 | `declaration-track:6dbaab11b17593667d3b8071f8b70cd7f3c16fe6ea5d1ced546282da115be5a5` |
| 6 | `def` | [getAstFromFunc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/getastfromfunc.md) | 129 | `declaration-track:3b400bb853badf51c16a5ed1097aa137112317bc4d7798ce9b67a54df2212777` |
| 7 | `def` | [extractNatLit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/extractnatlit.md) | 160 | `declaration-track:242db9bd2e4d84b4d90d4774bddb63b02f3c96528cc68dcbfaef383e54d5ecee` |
| 8 | `def` | [extractIntLit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/extractintlit.md) | 168 | `declaration-track:417ebafbb5becb180ffc442fd477cba329228d38aee4627b573fbcdc33c1a34e` |
| 9 | `def` | [extractRatFromRat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/extractratfromrat.md) | 185 | `declaration-track:b017a00005a81feefe916551940b04deff0c60a63295639ad5ae0c92e307601b` |
| 10 | `def` | [extractRatFromReal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/extractratfromreal.md) | 226 | `declaration-track:2b437f48631d70d4e714ab7f12c6bf004f1b82ee3a6e39a97983ee0a812d7205` |
| 11 | `def` | [tryConvertSetIcc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/tryconvertseticc.md) | 300 | `declaration-track:de2f4207858533cf49ba583437b4752d1177ec5020281e28b864f08b7acbe21a` |
| 12 | `def` | [intervalMinimizeCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/intervalminimizecore.md) | 375 | `declaration-track:a097fb2df33c861eee85352cdd4739ea6428cf9df70c0812f756d2bdeaadb304` |
| 13 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/syntax-source-edition-8.md) | 461 | `declaration-track:d9145b6e9444e3905b436f09dbc51c129a0f9bd5d1d818de4b5b5c64b3763260` |
| 14 | `def` | [elabIntervalMinimize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/elabintervalminimize.md) | 464 | `declaration-track:cc6d7fa0bedb97eff57d761940fe770d870a9fffb6cce87cc460c1b9198a5554` |
| 15 | `def` | [intervalMaximizeCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/intervalmaximizecore.md) | 473 | `declaration-track:c3375bf76bfc76e90a01e5d241dae3940c6f3a645205e4f3975b462c088a8268` |
| 16 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/syntax-source-edition-7.md) | 551 | `declaration-track:a84e4d7f98ed523622b9af4d637acbd401b9ede914e62449e64e5c5743402ba8` |
| 17 | `def` | [elabIntervalMaximize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/elabintervalmaximize.md) | 554 | `declaration-track:f17fa077c5202a6ddb4d5f424e1a75e1d7da107b71e5fced0fe02d1e6fbe9191` |
| 18 | `inductive` | [ArgmaxGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/argmaxgoal.md) | 563 | `declaration-track:abfdb74657a9c58815bd0f1a864c7055f824947a96be67606fe145a2171c9bf4` |
| 19 | `def` | [parseArgmaxGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/parseargmaxgoal.md) | 569 | `declaration-track:74af12f9cef21ff81036572555bcb709c961d1486fc9e61896e97fbab7b51186` |
| 20 | `inductive` | [ArgminGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/argmingoal.md) | 616 | `declaration-track:41d1cb6a6d9563b75cf1e7bff4353613e2e26c56034acfa8bed387a91d1fe1c1` |
| 21 | `def` | [parseArgminGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/parseargmingoal.md) | 622 | `declaration-track:813833dbb1a86a90dcd5003a8034aa8abef29ac7bf9bc6b323051648cea04903` |
| 22 | `def` | [isExprEvalFunc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/isexprevalfunc.md) | 669 | `declaration-track:ec262e3339e603693963bd65fb2b37e8640c4fde80269f4be1883a420088d60c` |
| 23 | `def` | [intervalArgmaxCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/intervalargmaxcore.md) | 675 | `declaration-track:7d1a30572e6e2dd8b2e8c764fe492b31886500429151298ac43cec8335651aa8` |
| 24 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/syntax-source-edition-6.md) | 865 | `declaration-track:a1f8245d77dadb081a821ecad333e583eff82a4fa7d1ad91762942153d7b0712` |
| 25 | `def` | [elabIntervalArgmax](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/elabintervalargmax.md) | 868 | `declaration-track:768943e849073c21593e977767e4857c75cb2b62820679e2d4a16d13d3d6786d` |
| 26 | `def` | [intervalArgminCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/intervalargmincore.md) | 875 | `declaration-track:1436a651ab7d8e44356ee5dfedf40cd90bcdfa28fecc75267c9c58b5e9de3343` |
| 27 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/syntax-source-edition-11.md) | 1061 | `declaration-track:f7b4eb13995d35195983fce16edeb5d85689d99a3775dc3472366cfed2c335bb` |
| 28 | `def` | [elabIntervalArgmin](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/elabintervalargmin.md) | 1064 | `declaration-track:5467f2ea79a89eae54c4b14bfac5a0975a1d60c81b73568a80bf176ac19fe9d5` |
| 29 | `inductive` | [MultivariateExistentialGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/multivariateexistentialgoal.md) | 1073 | `declaration-track:7d8f3fac1258054fae34c0f138c37a572f39fef2d3161de094fc025516b4abb1` |
| 30 | `def` | [parseMultivariateExistentialGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/parsemultivariateexistentialgoal.md) | 1083 | `declaration-track:bd93323bec994ead192be03fc9f9167381ba64229b579adfa14fcbe0a4586e8d` |
| 31 | `def` | [intervalMinimizeMvCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/intervalminimizemvcore.md) | 1111 | `declaration-track:98989f093c69b28444664074c6dd1e284830aa0635b8cd823cb601bb9f125e22` |
| 32 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/syntax-source-edition-9.md) | 1192 | `declaration-track:db5b7f57838061b37679da07d14aa549e291821a6d9f2db4e156db905605c2af` |
| 33 | `def` | [elabIntervalMinimizeMv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/elabintervalminimizemv.md) | 1195 | `declaration-track:ec9d3c6fc4ae86832eb46223e2edc7c4d7a999eb4f519d579ac2e9794cc3fd24` |
| 34 | `def` | [intervalMaximizeMvCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/intervalmaximizemvcore.md) | 1202 | `declaration-track:e3b7d31f409bc7904d948053e189e9147f24fb4a3b533a33e71a77f74d449add` |
| 35 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/syntax.md) | 1283 | `declaration-track:2427d8ec1c49a3db656b36859737870f314b4dbdbb1df33ac3efd027ad07a951` |
| 36 | `def` | [elabIntervalMaximizeMv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/elabintervalmaximizemv.md) | 1286 | `declaration-track:379829f4de8d0e124bb73d69544fecb96432dde065728b9fe4e9673f3c722fa1` |
| 37 | `inductive` | [RootExistsGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/rootexistsgoal.md) | 1295 | `declaration-track:7f33d83bb1f6b2e16f0d0f7996123b15e088562ad3a008b0eb82806e283a3e08` |
| 38 | `def` | [parseRootExistsGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/parserootexistsgoal.md) | 1301 | `declaration-track:3ac36ad035aadcc160549586ca5e7cc23b60fe1f23c670dde18908bc823bfe0d` |
| 39 | `def` | [needsRootNormalization](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/needsrootnormalization.md) | 1393 | `declaration-track:aa70f6b1aa4762d02ce590ec246926d231e3f37e44aeca7a52c9fcf26f667488` |
| 40 | `def` | [intervalRootsCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/intervalrootscore.md) | 1413 | `declaration-track:37d5a27c9a8f43e77d370726ffba10cfea090e40f6f3afeaa695ad1d2482f4c1` |
| 41 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/elab-source-edition-2.md) | 1501 | `declaration-track:cb682d58972e0205bc0c6d799c39c2e8e6e8275d2f6dbcce83bffed45165d0c4` |
| 42 | `def` | [parseUniqueRootGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/parseuniquerootgoal.md) | 1510 | `declaration-track:cc5834555f3be093a7b1a821c1caaf5be7436404d6bd4bdf0bb20e7ffd28a512` |
| 43 | `def` | [intervalUniqueRootCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/intervaluniquerootcore.md) | 1594 | `declaration-track:fcbfa88de1ef9ebd9ea07f8e531aef4ec77ca13b9aebf553245ef3ccbb98276b` |
| 44 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/syntax-source-edition-5.md) | 1668 | `declaration-track:77c32aee079d3435b07c054dd4e3c1908761c91428334ac1990d6cb5b4b1a74a` |
| 45 | `def` | [elabIntervalUniqueRoot](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/elabintervaluniqueroot.md) | 1671 | `declaration-track:503824999d06c8481e0fb4286700a62b15f9e6cd5a6098e9d6e2f2565d008ca9` |
| 46 | `def` | [parseIntegrationGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/parseintegrationgoal.md) | 1682 | `declaration-track:3631b22e81a772aeb7cffc374e3fab8209646a8857903335a9d9ac6709489918` |
| 47 | `def` | [intervalIntegrateCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/intervalintegratecore.md) | 1706 | `declaration-track:e9a45f73cb57ff886f0ef840c4db1452d4fcb3fc0c2c06e65e71adfb6c4c3736` |
| 48 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/syntax-source-edition-10.md) | 1791 | `declaration-track:f7b416fea425ff92094c5bb13d631c4e2f770c9e95f4ab7a2d85ddf19a6aa721` |
| 49 | `def` | [elabIntervalIntegrate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/elabintervalintegrate.md) | 1794 | `declaration-track:c46c3bc9b156ca89d83a354e70ea5541314172261b7137dc2007191023c6d010` |
| 50 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/syntax-source-edition-4.md) | 1806 | `declaration-track:3da390181ebc60c47417e269aa761d9d2e66a01b7b39419dbf026a2d20958d61` |
| 51 | `def` | [elabDiscover](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/elabdiscover.md) | 1809 | `declaration-track:eba1d138ac93e2e23d2d6521a8a06863a5729a00674510fe5ec9fd734443871c` |
| 52 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/syntax-source-edition-2.md) | 1829 | `declaration-track:24e5602bb4a69d79989af30b1e31f65e9a60b0a44c83ecf6cd9c145d35e1b768` |
| 53 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/syntax-source-edition-3.md) | 1830 | `declaration-track:25acc9fab898be8697917e9985201226783b9767ca3e49e90ced59eb5d8af3b2` |
| 54 | `def` | [parseSignedInt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/parsesignedint.md) | 1833 | `declaration-track:36c49a752d6bbf05d16761013d8cbeb9b429ff7e0eeb9af7429352cb7d6bfb1b` |
| 55 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Discovery.lean/declarations/elab.md) | 1854 | `declaration-track:4f0c7254e97ed0fadd50d8d6b61c03b973345cec43c8856a00146a8b2463da41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=80e37a80fe08d9c3beea3e530dcf6d2bea2886d75139377465cc5c618a52e02d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
