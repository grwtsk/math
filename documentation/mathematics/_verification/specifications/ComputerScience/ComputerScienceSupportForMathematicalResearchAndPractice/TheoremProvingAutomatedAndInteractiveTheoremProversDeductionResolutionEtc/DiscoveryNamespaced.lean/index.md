# Verification target: Discovery Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fe1a21f41a7973712513ff6cf21d3d729138e3a",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Varianta25030593cb10b1bfe83fb13efc71c052e51b88e5209488a1c83fa40da45711d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fe1a21f41a7973712513ff6cf21d3d729138e3a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Varianta25030593cb10b1bfe83fb13efc71c052e51b88e5209488a1c83fa40da45711d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Discovery/Varianta25030593cb10b1bfe83fb13efc71c052e51b88e5209488a1c83fa40da45711d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Discovery.Find` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ToExpr` — import line 13; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ProveSupported` — import line 14; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.ProveContinuous` — import line 15; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.IntervalAuto` — import line 16; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.Global` — import line 17; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.Guided` — import line 18; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.Gradient` — import line 19; external provider; requires a separately pinned dependency.
- `LeanCert.Validity.Bounds` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/initialize.md) | 67 | `declaration-track:978b94c765f5490472968c80cf6ec2c2d1c2cb562bef983ad78ad418cf51a8f8` |
| 2 | `abbrev` | [LExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/lexpr.md) | 70 | `declaration-track:fd34ba716a6c7e1d86206580f2b667cd9d090ef68fbb6b36275546882466a3ef` |
| 3 | `def` | [parseDomainToBox](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/parsedomaintobox.md) | 75 | `declaration-track:31638b0843a05c17de47ee7183b782c16338c3498a8b7cca22d1b61101e53f64` |
| 4 | `inductive` | [ExistentialBoundGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/existentialboundgoal.md) | 87 | `declaration-track:a0a4960c10e7988b0cd42b951c99b9dc14b80c633453df2e551b615fdf802172` |
| 5 | `def` | [parseExistentialGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/parseexistentialgoal.md) | 101 | `declaration-track:0f3166c7a54d3b4c3763dda50cff2111dfa253f266a116e2a52036274449888f` |
| 6 | `def` | [getAstFromFunc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/getastfromfunc.md) | 137 | `declaration-track:7de0a36efe8b55fe32ed09014d6d1718b419f4aa2360d04bde595b1c1ebb40f3` |
| 7 | `def` | [extractNatLit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/extractnatlit.md) | 168 | `declaration-track:e12b2a14c6f68b752d7cce5f289ce84204aaf422b5997728f173b9f216c4e5af` |
| 8 | `def` | [extractIntLit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/extractintlit.md) | 176 | `declaration-track:af2a950b714e9e49db225e3ed47639dda53adad6b7e8a30376779314c93bd91e` |
| 9 | `def` | [extractRatFromRat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/extractratfromrat.md) | 193 | `declaration-track:63c4322d6f803ed836ed42573d70f14242d9885654cb86de8a54a20f641cde4d` |
| 10 | `def` | [extractRatFromReal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/extractratfromreal.md) | 234 | `declaration-track:eee4253a20a87e53e8979a01806217d1f18881cd058d0ca222dee20a050e0b69` |
| 11 | `def` | [tryConvertSetIcc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/tryconvertseticc.md) | 308 | `declaration-track:6062f1a0c797eb6a8851fb3d7ff6866539abe632caa3f61f4caaac4693091675` |
| 12 | `def` | [intervalMinimizeCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/intervalminimizecore.md) | 383 | `declaration-track:4269a157707c4882d724d3ef89c7808f2c92a01b1b5b6a4b9fbd55c584afba5e` |
| 13 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/syntax-source-edition-2.md) | 469 | `declaration-track:3666c8c33e900362400258bba2a365fb590e53bdf3161440c889f305f1581a98` |
| 14 | `def` | [elabIntervalMinimize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/elabintervalminimize.md) | 472 | `declaration-track:6df15af58b80cfab8c99ac6604a8559a14ffe8da6da953271dea476226f6b4a4` |
| 15 | `def` | [intervalMaximizeCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/intervalmaximizecore.md) | 481 | `declaration-track:c561bba43d5ea0c4f9c22ba85177fd4249dca821505532eea0c46def266e1226` |
| 16 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/syntax.md) | 559 | `declaration-track:35691896f8e1d3485939a587b6698e4ffdbb509d6bca78a88ed170cfc844dba9` |
| 17 | `def` | [elabIntervalMaximize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/elabintervalmaximize.md) | 562 | `declaration-track:7ab02066f8e90aa909c795c43510e2e9025f1cfda12b812f5c2ba9be001868a5` |
| 18 | `inductive` | [ArgmaxGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/argmaxgoal.md) | 571 | `declaration-track:fe101685721f38ee4649dfd01a6152eba2e056769102aee396c0e6a0c50bff29` |
| 19 | `def` | [parseArgmaxGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/parseargmaxgoal.md) | 577 | `declaration-track:77084bb2c2c5fced6c154ab577c9dddd18d73fe2a0226a522eeed085ab1cea14` |
| 20 | `inductive` | [ArgminGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/argmingoal.md) | 624 | `declaration-track:d2701c3ecfaa8265520fef28d6d0baebf48f59ef41475674a8e198271f4f7347` |
| 21 | `def` | [parseArgminGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/parseargmingoal.md) | 630 | `declaration-track:b825eebb1f90ad2620a7f61f1b80de9c1fad63ba7dad71a88702c03d50484e64` |
| 22 | `def` | [isExprEvalFunc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/isexprevalfunc.md) | 677 | `declaration-track:2b905e79a6d5cf02459cbe7f2d59caa3cded86ef8faeeca1c2b2f1d180f08daa` |
| 23 | `def` | [intervalArgmaxCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/intervalargmaxcore.md) | 683 | `declaration-track:bad2a96910eb93454e2f49c5a017512ec955666d6a30bb0e43ed21772c5861be` |
| 24 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/syntax-source-edition-4.md) | 873 | `declaration-track:7e637b569c3168eab2aa340c31fe575b7ffcd4cf82007a6cfe77abf18e454ea7` |
| 25 | `def` | [elabIntervalArgmax](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/elabintervalargmax.md) | 876 | `declaration-track:37d638e116b8c7d83054592feba1e12bd204fb45221bb642b21019f4a40ea94a` |
| 26 | `def` | [intervalArgminCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/intervalargmincore.md) | 883 | `declaration-track:c7af3f2e5e2fa6647e647285d17141d9c306235d0f166c56c698dcd3b9f6970b` |
| 27 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/syntax-source-edition-8.md) | 1069 | `declaration-track:dd4fdb034a9b3c1a909537e900cc3cea0af08beb262c1fcb6ce9d20c56dc63f0` |
| 28 | `def` | [elabIntervalArgmin](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/elabintervalargmin.md) | 1072 | `declaration-track:7774e4fbb7f96f898dc14c486a6cef6f36b97c529a72edee2450ff64a8e8b30a` |
| 29 | `inductive` | [MultivariateExistentialGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/multivariateexistentialgoal.md) | 1081 | `declaration-track:01a90e61587f37804b0d2d897c72ff4b28f6392710d4a6409d3afc3d5b08f704` |
| 30 | `def` | [parseMultivariateExistentialGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/parsemultivariateexistentialgoal.md) | 1091 | `declaration-track:df1a86ca1ee5f40ea65a89d72eda08353de57e8145159778c06173b1503e88f3` |
| 31 | `def` | [intervalMinimizeMvCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/intervalminimizemvcore.md) | 1119 | `declaration-track:90d3848407f8846d5edb56c13ac181c6eb12956c92b3d1d693ee93ebcce4818d` |
| 32 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/syntax-source-edition-10.md) | 1200 | `declaration-track:f162a103f1d38bd4d89a48534b480b76578ce5c7126e7a90a9b778a10f357cf5` |
| 33 | `def` | [elabIntervalMinimizeMv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/elabintervalminimizemv.md) | 1203 | `declaration-track:39e087b5a33a82554bb535ead1cb4b78ec13a0a0619da3c909803ef0a3f8bfd4` |
| 34 | `def` | [intervalMaximizeMvCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/intervalmaximizemvcore.md) | 1210 | `declaration-track:bbdd4553f0d5b77ab2c20b95e383c8ad772bcaeb133a3227e85bfc8cfd1ae038` |
| 35 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/syntax-source-edition-11.md) | 1291 | `declaration-track:fdfe1da448f624c06f14ad6db0876264e53f09df8dd6f0563dcc2dce6cf99854` |
| 36 | `def` | [elabIntervalMaximizeMv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/elabintervalmaximizemv.md) | 1294 | `declaration-track:dc5d5f6c20f3e71322f9e6e7c2e3d0333f421b96329a03adb25e18e1d0765e9f` |
| 37 | `inductive` | [RootExistsGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/rootexistsgoal.md) | 1303 | `declaration-track:b07aba155f04d6db5d38e7ef62fe9021a45a773a06bc8fd488485fe98453cfb0` |
| 38 | `def` | [parseRootExistsGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/parserootexistsgoal.md) | 1309 | `declaration-track:c98c0b0b88b94fd19d4638c259d6e7d3c24975a19dec27a7ac9e27c468ab2f6d` |
| 39 | `def` | [needsRootNormalization](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/needsrootnormalization.md) | 1401 | `declaration-track:6eb231b7f4bf4137df12e609791b8535b0f648b64ce5ee8e6bf2ac6db4293e16` |
| 40 | `def` | [intervalRootsCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/intervalrootscore.md) | 1421 | `declaration-track:5b2e85864715ea47ce6721ac9feecb53592ccc4c557eeabb95e7f4026ff93949` |
| 41 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/elab.md) | 1509 | `declaration-track:1a733268611d3641aae4263331c2be84a3bf007437d2a7c19be9ac2c9f02ab91` |
| 42 | `def` | [parseUniqueRootGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/parseuniquerootgoal.md) | 1518 | `declaration-track:1533a76949e6560ba6146cd6d21adb7fd8760b37aaf28cbba2c0f2a6360ab4e8` |
| 43 | `def` | [intervalUniqueRootCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/intervaluniquerootcore.md) | 1602 | `declaration-track:afcd98918aca3aaa5721a37a0818ecdefc034f5c2b6bfd31076056387a83f100` |
| 44 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/syntax-source-edition-9.md) | 1676 | `declaration-track:ebca96daad1938bd95ceaab1620154140eb1c39cc83a0a1c0b4a2640ef716266` |
| 45 | `def` | [elabIntervalUniqueRoot](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/elabintervaluniqueroot.md) | 1679 | `declaration-track:df807fc1aa58f093cc23bf25c213b1e983d235c352d57c5d12e029a233135d97` |
| 46 | `def` | [parseIntegrationGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/parseintegrationgoal.md) | 1690 | `declaration-track:1c274b27c7daa89073be14180d5dea02b21f950587243ffb1cdfd0bf62ab8635` |
| 47 | `def` | [intervalIntegrateCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/intervalintegratecore.md) | 1714 | `declaration-track:1d54a4c194dab4c1bacaf7e112cac461228f7d703cf71ca206b43bbf7d5b08d0` |
| 48 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/syntax-source-edition-6.md) | 1799 | `declaration-track:a31e4a1ee9cd53596a3911ec2959b36c797955725354180651169f2804f5435d` |
| 49 | `def` | [elabIntervalIntegrate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/elabintervalintegrate.md) | 1802 | `declaration-track:3b73fdda00d79b755e2e6c565aa4c3c81e5072d3179ebabc565c8a9b523430db` |
| 50 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/syntax-source-edition-7.md) | 1814 | `declaration-track:b646c04ba526e0f949f06c255cf9acb2348068b70b637bc586dae2d5fd2d4c55` |
| 51 | `def` | [elabDiscover](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/elabdiscover.md) | 1817 | `declaration-track:f43fa9c69daae667751a508f44ded5fb6667a9eb1d41631660ec07551b575627` |
| 52 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/syntax-source-edition-5.md) | 1837 | `declaration-track:87d6cd5db34e9cef1bc5d4c26407e9ddf5d7979ee0be3d8b46d7a7defb82c066` |
| 53 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/syntax-source-edition-3.md) | 1838 | `declaration-track:6f73e12bf0118fbefa1581b92e603a35f8c8ca651573c0872c081af5133998f2` |
| 54 | `def` | [parseSignedInt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/parsesignedint.md) | 1841 | `declaration-track:a926711a74175f421d1a9d9d45a97c8aa05ed91944ae23ea1eff6ab9b7ae0c87` |
| 55 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiscoveryNamespaced.lean/declarations/elab-source-edition-2.md) | 1862 | `declaration-track:4d39acbe34ce6b91bf5204602aea67c3ecfab62c8abf3d7b67413b884b4da1ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12dabeaccbb69dc808a0eceb8d611d01c51985c8146882cfdffa4ee81dab7a3a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Varianta25030593cb10b1bfe83fb13efc71c052e51b88e5209488a1c83fa40da45711d.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Discovery/Varianta25030593cb10b1bfe83fb13efc71c052e51b88e5209488a1c83fa40da45711d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
