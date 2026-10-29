# Verification target: Main Namespaced Context

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66af9e1b7f067abfd1932f968c3ec6f015381571",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variante4cdad8c83b9ad3535e42213076593fc8576f35b86b48fa9fbc0be87416f245b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66af9e1b7f067abfd1932f968c3ec6f015381571`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variante4cdad8c83b9ad3535e42213076593fc8576f35b86b48fa9fbc0be87416f245b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variante4cdad8c83b9ad3535e42213076593fc8576f35b86b48fa9fbc0be87416f245b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 11; external provider; requires a separately pinned dependency.
- `Comparator` — import line 12; external provider; requires a separately pinned dependency.
- `Export.Parse` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/declarations/context.md) | 20 | `declaration-track:e6c2e298a704394b9b139d8e675f6cde5cbebf3ebc1415e370859b20f429416c` |
| 2 | `abbrev` | [M](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/declarations/m.md) | 33 | `declaration-track:ad53fd08c179e0be69e50bcf6397683f2f179dd06abea110ca095021698c8c01` |
| 3 | `structure` | [LandrunArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/declarations/landrunargs.md) | 35 | `declaration-track:d30a3d3d65fae2d342e027ce2593838d7a9f747c7360b0f5182af83cfe136851` |
| 4 | `def` | [getExternalKernels](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/declarations/getexternalkernels.md) | 45 | `declaration-track:57e135ac1f7b6b6eb98ba2359edaf0598ddc5592e2614ebde29c9c0753d59ac1` |
| 5 | `def` | [getTheoremNames](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/declarations/gettheoremnames.md) | 48 | `declaration-track:8283dd3324766cf5f21ae5da052571d56b3ccecf56cb0c65ad844af0f3288ce6` |
| 6 | `def` | [getDefinitionNames](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/declarations/getdefinitionnames.md) | 51 | `declaration-track:8f2f1948491b78d297e938082f02f31b2ed7dba3ef024e66205096880f24eafb` |
| 7 | `def` | [getProjectDir](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/declarations/getprojectdir.md) | 54 | `declaration-track:45df10873c8b4b8542efa86aaf4bc8509d7af28694478420ee469cb2ae6330b1` |
| 8 | `def` | [getChallengeModule](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/declarations/getchallengemodule.md) | 57 | `declaration-track:2bb64e4ec7efb349a9020e78a0e74ca9d40bc0835e864143e03fe52855241607` |
| 9 | `def` | [getSolutionModule](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/declarations/getsolutionmodule.md) | 60 | `declaration-track:cf051adf07ef23fad3f2a2e076f70c2caddeeb6ba62541dcc9a8d6bf5e71e61c` |
| 10 | `def` | [getLegalAxioms](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/declarations/getlegalaxioms.md) | 63 | `declaration-track:0474107d72cd002ce0c1cf76517d1b4b1e9807f3d3e96560df6fdb5728f50513` |
| 11 | `def` | [getLeanPrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/declarations/getleanprefix.md) | 66 | `declaration-track:d141ff458d8490d8d70d5906d95b6167f3513e9a207a40446adeef018a208547` |
| 12 | `def` | [getGitLocation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/declarations/getgitlocation.md) | 69 | `declaration-track:c778af41b7f5f56bab824d6241fe37d3bbdcc6f4dd30c546fbe6f426fcfc49b0` |
| 13 | `def` | [queryGitLocation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/declarations/querygitlocation.md) | 71 | `declaration-track:c7292479ba5ed3dd5bb419c1274b32487e58e2cf41ce8548fb0b7d2ce8ff6e64` |
| 14 | `def` | [queryLeanPrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/declarations/queryleanprefix.md) | 79 | `declaration-track:0513fc9c5b267ee90c26b189c40befb6ede9378045104778c90654c1502282f6` |
| 15 | `def` | [buildLandrunArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/declarations/buildlandrunargs.md) | 88 | `declaration-track:1d77d8d928d5ad53ea82eefb4aa1e24664f023cb9281dabbd6c9e68e0206a8d8` |
| 16 | `def` | [runSandBoxedWithStdout](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/declarations/runsandboxedwithstdout.md) | 96 | `declaration-track:fd9e82059dbbcc5143352d9fbf49f8601ba3260498af61323be633a8a10725a7` |
| 17 | `def` | [runSandBoxed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/declarations/runsandboxed.md) | 110 | `declaration-track:cc715771b9d7739158dde865d79a7ddf792ab636ee59ec21cb26cf45521f6a6f` |
| 18 | `def` | [safeLakeBuild](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/declarations/safelakebuild.md) | 122 | `declaration-track:f3bac024956a99b223fc7464751d2c14cbb2d5488fe0065234f6b2152f3ee6a4` |
| 19 | `def` | [safeExport](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/declarations/safeexport.md) | 142 | `declaration-track:fd34e65581b487807d600e3217f0f7224ae6b0270d4ef0e74b7d8bfc009f2857` |
| 20 | `def` | [runExternalKernel](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/declarations/runexternalkernel.md) | 160 | `declaration-track:9d29f25f87106e134a2cce08a78ea4413dd1e8f1fdb50271516edaa699742e0d` |
| 21 | `def` | [runBuiltinKernel](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/declarations/runbuiltinkernel.md) | 220 | `declaration-track:8fd8cb1af9b58d46728f95ea4ffe9ec03b6e6d77a63a78eb02ff275dbb8df037` |
| 22 | `def` | [primitiveTargets](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/declarations/primitivetargets.md) | 249 | `declaration-track:5315d01810cc5c7f2a880368a0b0533d537ac430baa9f227e1869a2b84e1cde8` |
| 23 | `def` | [builtinTargets](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/declarations/builtintargets.md) | 284 | `declaration-track:b2fe9afa78d108dc65fc2e95a8ce5dfe9ecf4bf1f3c18fa71e3b9be0b0ce718a` |
| 24 | `def` | [stringStream](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/declarations/stringstream.md) | 290 | `declaration-track:b79bddb82b79226b506ea8fc5ff10f6838bd7a818d1766727c25255eee7d9fb9` |
| 25 | `def` | [verifyMatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/declarations/verifymatch.md) | 296 | `declaration-track:3cbe85d349d6996169b85fa27d7611a5c0ef3f9a2d8f45973d31c0db3d8e450f` |
| 26 | `def` | [compareIt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/declarations/compareit.md) | 312 | `declaration-track:dd0550c81c27831cdf9130f3f3ab811d9c956fd047be14ed21f7e2f9dcb4f530` |
| 27 | `structure` | [Config](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/declarations/config.md) | 328 | `declaration-track:49da7e486fb95eb8a4815e03f48ff9956d9ab008e3bba32d1fffe79b1672185c` |
| 28 | `def` | [M.run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/declarations/m-run.md) | 338 | `declaration-track:30013f4cf0c120a7bf48721d92e55a1daf08dc76b26ea03c19d4a3711a0a8b2a` |
| 29 | `def` | [main](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedContext.lean/declarations/main.md) | 377 | `declaration-track:a7d1965885c0610ea94da34de75844ce76dc769af3aedd39574ab073b5c8eea8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eaed894a17221d96fe89794933a5a1f1ec872be1abc6a733889101d1c6ff1212 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variante4cdad8c83b9ad3535e42213076593fc8576f35b86b48fa9fbc0be87416f245b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variante4cdad8c83b9ad3535e42213076593fc8576f35b86b48fa9fbc0be87416f245b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
