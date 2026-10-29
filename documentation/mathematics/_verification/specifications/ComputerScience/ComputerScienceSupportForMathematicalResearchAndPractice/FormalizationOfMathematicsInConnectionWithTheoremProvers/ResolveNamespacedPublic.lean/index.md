# Verification target: Resolve Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65f8fed0afd70a439a4e611a1d9aa029e0f7f523",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variant9c8d3a0c27b06e650ba643bc6a4b82373ba572da051b3b33e516b4014ff0d2f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65f8fed0afd70a439a4e611a1d9aa029e0f7f523`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variant9c8d3a0c27b06e650ba643bc6a4b82373ba572da051b3b33e516b4014ff0d2f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variant9c8d3a0c27b06e650ba643bc6a4b82373ba572da051b3b33e516b4014ff0d2f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.Util.IO` — import line 16; external provider; requires a separately pinned dependency.
- `Lake.Util.StoreInsts` — import line 17; external provider; requires a separately pinned dependency.
- `Lake.Config.Monad` — import line 18; external provider; requires a separately pinned dependency.
- `Lake.Load.Materialize` — import line 19; external provider; requires a separately pinned dependency.
- `Lake.Load.Lean.Eval` — import line 20; external provider; requires a separately pinned dependency.
- `Lake.Load.Package` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.Vector.Lemmas` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Data.Range.Polymorphic.Iterators` — import line 23; external provider; requires a separately pinned dependency.
- `Init.Data.Range.Polymorphic.Lemmas` — import line 24; external provider; requires a separately pinned dependency.
- `Init.TacticsExtra` — import line 25; external provider; requires a separately pinned dependency.
- `Lean.Runtime` — import line 26; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkDepLoadConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/mkdeploadconfig.md) | 41 | `declaration-track:23b6ae8bccf7470ae1d670dfe73f3f9d2de40b7d777fb0624c58bdc937082273` |
| 2 | `def` | [Workspace.addFacetDecls](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/workspace-addfacetdecls.md) | 57 | `declaration-track:9f342d0df0905cf8d8e0c8cfe94679640123c8f3340ed8b3f160c0334c7b196b` |
| 3 | `theorem` | [Workspace.packages_addFacetDecls](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/workspace-packages-addfacetdecls.md) | 60 | `result-track:4163e4d5fb9a2fad25e55f4cabfe01eaead7f9b11d2f92f47f9b36762fac0ddd` |
| 4 | `def` | [Workspace.addDepPackage'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/workspace-adddeppackage.md) | 72 | `declaration-track:62f8d273006582ca2a5e358609b8f30e81161115cdb5fc364b02ac5a391c8262` |
| 5 | `def` | [Workspace.setDepIdxs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/workspace-setdepidxs.md) | 85 | `declaration-track:e7ff7fd8fca03087c438b990c193556b720481f6c9edc03358fa35bf4805d5cb` |
| 6 | `theorem` | [Workspace.size_packages_setDepIdxs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/workspace-size-packages-setdepidxs.md) | 108 | `result-track:dc624e4b83f5fab6efaf37cebb750aedb4911cc41612a5845a2114855e364c36` |
| 7 | `def` | [Workspace.updateDepPkgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/workspace-updatedeppkgs.md) | 112 | `declaration-track:588c8fd1b719b30fbdecc6f4b24cb82ddc67dc9fa1cb57ab73244d6dbb8f80ee` |
| 8 | `structure` | [ResolveState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/resolvestate.md) | 142 | `declaration-track:424f9599a6ac6b7cf1b975673331ec7fd6dd42334ba085035549ac52a5200e18` |
| 9 | `def` | [init](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/init.md) | 150 | `declaration-track:22326f482b214ac613f26bfb01f9c751453ac1d9713e2a756982db4c08fa7b73` |
| 10 | `def` | [reuseDep](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/reusedep.md) | 153 | `declaration-track:4ad2b5a5aa10695ee2a80a037125accdfb742f026306c45b74be985b42d92e96` |
| 11 | `def` | [newDep](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/newdep.md) | 161 | `declaration-track:04a5bde0edbfbebda323bbdd1ca57ec4fe7339bf1b465457a4d413718243bac9` |
| 12 | `def` | [guardBySizeImpl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/guardbysizeimpl.md) | 178 | `declaration-track:e81423b0362985bcc03e7c2d8f0734eb3843d10464555b27b36062b148c89dbe` |
| 13 | `def` | [guardBySize!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/guardbysize.md) | 190 | `declaration-track:9708389d0f1bf3c6824d5b6944e0bf4f1c6560e0d56399c2765e8b26d0c42076` |
| 14 | `def` | [Workspace.resolveDepsCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/workspace-resolvedepscore.md) | 203 | `declaration-track:9cacfda56307ae754b7f71db3e2e44cee39cfb6ca91822abc04606f6c774708e` |
| 15 | `abbrev` | [UpdateT](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/updatet.md) | 244 | `declaration-track:8134903194455e4ca02d4eb51a340eebe7d85c3bca85e5cffca09f0a5d94f3da` |
| 16 | `def` | [UpdateT.run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/updatet-run.md) | 246 | `declaration-track:ea71de29b8685e8ff25dc58cadd79f46d94827cb425a106c1bad0438ca6875a4` |
| 17 | `def` | [reuseManifest](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/reusemanifest.md) | 253 | `declaration-track:28c0fd43413d0fed042c4ecd7eedcbe193a30a00161975774c46680b60c609cc` |
| 18 | `def` | [addDependencyEntries](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/adddependencyentries.md) | 283 | `declaration-track:154bf01294c8d668e656ae59d25424a2004321a8e263f63b5ee447cf7b221713` |
| 19 | `def` | [updateAndMaterializeDep](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/updateandmaterializedep.md) | 296 | `declaration-track:367f8a658f013174591d4945b7d3d811df72f94c3df2fee11772cf8f71e0325d` |
| 20 | `def` | [restartCode](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/restartcode.md) | 320 | `declaration-track:5ee2fd0568ee77ffcdbfb897685cadb1c11819a830b5ebc71cba80f446bb7b4d` |
| 21 | `structure` | [ToolchainCandidate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/toolchaincandidate.md) | 323 | `declaration-track:f6091e57a07ea95e0bcd337f5ab55cfcfde67436ba7889e6b9a2ec8c21da6f5c` |
| 22 | `structure` | [ToolchainState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/toolchainstate.md) | 331 | `declaration-track:fdd2c609c3c06e84abd04e3ee0d01ef14de268f825a2840c4ec4145b9ae998cb` |
| 23 | `def` | [ToolchainState.replace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/toolchainstate-replace.md) | 344 | `declaration-track:e359d64d4aee07cff124ef6a7a4df80193f593f8dda07b7e7ed7421590d2184b` |
| 24 | `def` | [ToolchainState.addClash](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/toolchainstate-addclash.md) | 348 | `declaration-track:1e069624297c9679ce969e5ab578cfae4ca32f106bf8926643b0ed7dd920e316` |
| 25 | `def` | [Workspace.updateToolchain](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/workspace-updatetoolchain.md) | 359 | `declaration-track:a94c6f2df7673c923da483b8b8950cc005f615000cf28054ae97eccdc06d6bea` |
| 26 | `def` | [Workspace.updateAndMaterializeCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/workspace-updateandmaterializecore.md) | 462 | `declaration-track:58483d36653c402d9b978e73ee7c9a9d4cef8f47907125d0a3ff72cd2d0b96e7` |
| 27 | `def` | [Workspace.writeManifest](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/workspace-writemanifest.md) | 511 | `declaration-track:2c7070130c6174bf096550f3b484a17020ef128da0c860d71e16fa369ac03015` |
| 28 | `def` | [Package.runPostUpdateHooks](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/package-runpostupdatehooks.md) | 529 | `declaration-track:0935834d47da324dca34eda9ceef45bc68b98a684366d3bbf181a1c15c87bda9` |
| 29 | `def` | [Workspace.updateAndMaterialize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/workspace-updateandmaterialize.md) | 540 | `declaration-track:ca4224291281cda525530785ea21b39a5e14c1ff9eaf1440156633eba03b44b5` |
| 30 | `def` | [validateManifest](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/validatemanifest.md) | 555 | `declaration-track:000626983d4265e64277a78c1a259d1f586daac3599726d2f42399be57c3a0e2` |
| 31 | `def` | [Workspace.materializeDeps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResolveNamespacedPublic.lean/declarations/workspace-materializedeps.md) | 576 | `declaration-track:a9bdb6c7d9b5c3af6fc79046a4e0b5dc31d227420a9d1a1c877c37b9f06589eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e3933d03c7e3387ffddd2a7b62a4e6fb06adcdb7d65884552a72557cccd1a2d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variant9c8d3a0c27b06e650ba643bc6a4b82373ba572da051b3b33e516b4014ff0d2f1.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variant9c8d3a0c27b06e650ba643bc6a4b82373ba572da051b3b33e516b4014ff0d2f1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
