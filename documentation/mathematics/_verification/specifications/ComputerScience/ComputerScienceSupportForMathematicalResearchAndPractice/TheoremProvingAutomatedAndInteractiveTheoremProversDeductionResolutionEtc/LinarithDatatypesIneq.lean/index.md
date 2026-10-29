# Verification target: Linarith Datatypes Ineq

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9beff35eebc0cff23c4eb0943a5c48aac3d6af74",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant0389df601e17e1755207c57400ea8e7ac6e3095dd37db938ea36f14954abc340.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9beff35eebc0cff23c4eb0943a5c48aac3d6af74`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant0389df601e17e1755207c57400ea8e7ac6e3095dd37db938ea36f14954abc340.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant0389df601e17e1755207c57400ea8e7ac6e3095dd37db938ea36f14954abc340.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Linarith.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Util.SynthesizeUsing` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/initialize-source-edition-2.md) | 21 | `declaration-track:df2d2b4357161ebe16aacb2515f759edfa84d9804976ea4ad611995043801da2` |
| 2 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/initialize.md) | 22 | `declaration-track:ad93aed49310d2f7d5b8c6eb19ca5de72a4b0d249b3181885ab0bb74e9c38a00` |
| 3 | `def` | [linarithTraceProofs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/linarithtraceproofs.md) | 30 | `declaration-track:dc72b13ec54ea525bdab4f839c15b0e9c0cafd72f64460d79e56df97220b8101` |
| 4 | `def` | [Linexp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/linexp.md) | 45 | `declaration-track:0ff8af7dc54fc85e0c12624a3fb78d943c26e44b0a760a17aa2d23f3e91e5dd8` |
| 5 | `def` | [add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/add.md) | 52 | `declaration-track:fe839d3b3071482959265abcf773609c4bef5be05264445291419aa90616d3ec` |
| 6 | `def` | [scale](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/scale.md) | 63 | `declaration-track:6a35a7e96f7c3c881de9218bf6b4166a7b242edf5dbdaee423756dd51579b550` |
| 7 | `def` | [get](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/get.md) | 73 | `declaration-track:cdca2c1868b42b90af5da12fba0036d26b48c07795892373754cd0889e5cc68c` |
| 8 | `def` | [contains](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/contains.md) | 83 | `declaration-track:60cf7bb3746cc970eb0d8ef1f9b364089a3ecc6f410a62ec09b846bcfbbe9713` |
| 9 | `def` | [zfind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/zfind.md) | 88 | `declaration-track:f9b72f2c93b21223d6374875917aa14a335ce8d52e04d227d2bccaf7559b2e1d` |
| 10 | `def` | [vars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/vars.md) | 94 | `declaration-track:175055d2479652910b54fc605af0c824130f33a0c07bf4fd3c830663a9b53b94` |
| 11 | `def` | [cmp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/cmp.md) | 100 | `declaration-track:00f456af9dd2286dc72c977052206cdf2772822c0fed35a39669f5069ea3b0d6` |
| 12 | `inductive` | [Ineq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/ineq.md) | 117 | `declaration-track:29f4f3da5618b83d6833b24a364a1fcc97c686daed322b4088f79990c288a4c5` |
| 13 | `def` | [max](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/max.md) | 127 | `declaration-track:40c781b32693f4552d264d55a29fa7d2f7eec020dc9fb558214087862e408790` |
| 14 | `def` | [cmp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/cmp-source-edition-2.md) | 135 | `declaration-track:6484296d590af1431ebe8f8cffe76ae6f7b254a3d146644d94a3d2c07dfdd338` |
| 15 | `def` | [toString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/tostring.md) | 144 | `declaration-track:8c75560f9bc6be979bca25a14e3b4ecf31d57f7d2b5765d8a2c7eb2e33e5fb01` |
| 16 | `def` | [toConstMulName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/toconstmulname.md) | 150 | `declaration-track:403cda17011872d8e5d65d74858ee8639c659b2d16e13e5fb3ca7930d99829ac` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/instance.md) | 155 | `declaration-track:59b80ca27697b66d7b93641a3d4cd5d59352969f1b08b2520b7cfdb8c54da653` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/instance-source-edition-2.md) | 157 | `declaration-track:cbcdef30a60bf9cd77ee4a8491d3c438e57e94550c8d123f7a26a6aa93a7dc03` |
| 19 | `structure` | [Comp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/comp.md) | 170 | `declaration-track:0134632509c24b6d804cef06a1734efc0c260cd66eebd991ae48f398217bd472` |
| 20 | `def` | [Comp.vars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/comp-vars.md) | 179 | `declaration-track:c32d6404271d051173db922c17d03b491a0539c533ac6cd65495f0f289d879e8` |
| 21 | `def` | [Comp.coeffOf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/comp-coeffof.md) | 182 | `declaration-track:bbd8d9d79ecea7ccf646038b8c353ce8653f63df0756039135ab52e82b0e9406` |
| 22 | `def` | [Comp.scale](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/comp-scale.md) | 186 | `declaration-track:96e2eb261e800ff0f65888434f87ec6b5b400f93b1491d0bab4b9c68b71d4bc5` |
| 23 | `def` | [Comp.add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/comp-add.md) | 194 | `declaration-track:2b617f3344d132416730a32191f77fa1883bcb9f3d5ffe9ca2cc2f412a645156` |
| 24 | `def` | [Comp.cmp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/comp-cmp.md) | 198 | `declaration-track:2a5f4c30d2b82cf5ccd7046fc7144af7fc845761723343662cc1c0e75eb6ea27` |
| 25 | `def` | [Comp.isContr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/comp-iscontr.md) | 209 | `declaration-track:b109062a4de1a4a9b09afdb28935ea78bd66d4c60d690cddfa6078c196c373b4` |
| 26 | `instance` | [Comp.ToFormat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/comp-toformat.md) | 211 | `declaration-track:d7c0c2e30a02edd0815ded8d3cf4eea74a23579ab81606a88b2b338ccf03132f` |
| 27 | `structure` | [Preprocessor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/preprocessor.md) | 225 | `declaration-track:e158aa0c3e933f939f910c3889535a1ef3bbb77fb91d1fa2790ae83d4fc186d7` |
| 28 | `structure` | [GlobalPreprocessor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/globalpreprocessor.md) | 236 | `declaration-track:d78bd5016d82b2795266dddcb8303dacbe9f42728592e54ee6fcbd93ca2bfce6` |
| 29 | `def` | [Branch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/branch.md) | 249 | `declaration-track:16d60de5802b9067cf59d11a00d985304cac2c05e0745ac4277e42b851955085` |
| 30 | `structure` | [GlobalBranchingPreprocessor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/globalbranchingpreprocessor.md) | 258 | `declaration-track:ea4ebb039635291697a5c1fc217093c8c78a7e77933e3375b98b3599eac4cf0a` |
| 31 | `def` | [Preprocessor.globalize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/preprocessor-globalize.md) | 268 | `declaration-track:b03c70abac10e6001d0a30d6527085a23cd23017fb731d9d4dc3e4f7e051fd55` |
| 32 | `def` | [GlobalPreprocessor.branching](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/globalpreprocessor-branching.md) | 275 | `declaration-track:0cbcc428cd1b5a4f14dddaa95f01f8248a806b9ccf966d2131e2758f3f19e658` |
| 33 | `def` | [GlobalBranchingPreprocessor.process](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/globalbranchingpreprocessor-process.md) | 283 | `declaration-track:c400e67bccf7ba86132a56878661ada39b60803fad9bc08ccc1df6014bf5f87f` |
| 34 | `instance` | [PreprocessorToGlobalBranchingPreprocessor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/preprocessortoglobalbranchingpreprocessor.md) | 293 | `declaration-track:f2be56af54fb505640caf28df465c02507fba9b303cba2da7030a2ad44b363db` |
| 35 | `instance` | [GlobalPreprocessorToGlobalBranchingPreprocessor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/globalpreprocessortoglobalbranchingpreprocessor.md) | 297 | `declaration-track:fc220578d1d67c9cb48ed0bb4530c8a2d16b10450e4823c97bf60f0cd9040f46` |
| 36 | `def` | [CertificateOracle](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/certificateoracle.md) | 312 | `declaration-track:474ace617c1111472d5f6f8dde850c672b7dde0b667e01fe778ed852bd20fcef` |
| 37 | `structure` | [LinarithConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/linarithconfig.md) | 318 | `declaration-track:d444cf5851c41a1e82bd79425e6bfcf31a7c5d9bae3b28270b1d80df7f409dba` |
| 38 | `def` | [LinarithConfig.updateReducibility](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/linarithconfig-updatereducibility.md) | 346 | `declaration-track:c2150f3b74bcc0099e5f3fd9ef935859e17e21117b389a124d22ce0e75e7df25` |
| 39 | `def` | [getRelSides](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/getrelsides.md) | 364 | `declaration-track:72937c4dd0be5df3eda4adf914bc4ed954e39da2a287a19ebee08cdaab0ed22c` |
| 40 | `def` | [parseCompAndExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/parsecompandexpr.md) | 378 | `declaration-track:3ae869f5f4d1fa89998ce555d3ba0d4354bc84bd9874dcc852cb5c5a539584aa` |
| 41 | `def` | [mkSingleCompZeroOf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithDatatypesIneq.lean/declarations/mksinglecompzeroof.md) | 394 | `declaration-track:bf430f5dce537c3b17bdb61831c9f3563d9ff0dd2a0dcd18b83c30c1873d0589` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b8f54eacf4ab9ffc64fd751819e80d0e4647b7496d17ed63f3e024696d67fdfe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant0389df601e17e1755207c57400ea8e7ac6e3095dd37db938ea36f14954abc340.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variant0389df601e17e1755207c57400ea8e7ac6e3095dd37db938ea36f14954abc340.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
