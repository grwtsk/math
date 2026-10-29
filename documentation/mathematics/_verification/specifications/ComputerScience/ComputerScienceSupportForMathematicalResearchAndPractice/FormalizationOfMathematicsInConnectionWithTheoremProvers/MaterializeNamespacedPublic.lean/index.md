# Verification target: Materialize Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5191008043b869fe5a8fe0df5fbc661d27981c0e",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Materialize/Variant99c9f0aef63c4f7aff6e23ec573c61d21377cada768c5d9948735f6f59cf0440.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializeNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5191008043b869fe5a8fe0df5fbc661d27981c0e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Materialize/Variant99c9f0aef63c4f7aff6e23ec573c61d21377cada768c5d9948735f6f59cf0440.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Materialize/Variant99c9f0aef63c4f7aff6e23ec573c61d21377cada768c5d9948735f6f59cf0440.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.Util.Git` — import line 17; external provider; requires a separately pinned dependency.
- `Lake.Util.IO` — import line 18; external provider; requires a separately pinned dependency.
- `Lake.Reservoir` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [updateGitPkg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializeNamespacedPublic.lean/declarations/updategitpkg.md) | 40 | `declaration-track:bd10074cd47f16fa18df12d59a7ee2d3b4cdc57f05613de38b2280bac93d53f8` |
| 2 | `def` | [cloneGitPkg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializeNamespacedPublic.lean/declarations/clonegitpkg.md) | 57 | `declaration-track:461349e74fe714cf82de0c3ffe15f6dba958b3689c7567a7bb03d79eab5a1d1b` |
| 3 | `def` | [updateGitRepo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializeNamespacedPublic.lean/declarations/updategitrepo.md) | 72 | `declaration-track:77be9acea09887fcb18ecb27f0f7fbac47a2fc45a22dc41aa89977f1405ccfab` |
| 4 | `def` | [materializeGitRepo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializeNamespacedPublic.lean/declarations/materializegitrepo.md) | 96 | `declaration-track:dd127421619df56a579f8f978fa0733165748055238ea0015dd5e86aa49d74c9` |
| 5 | `structure` | [MaterializedDep](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializeNamespacedPublic.lean/declarations/materializeddep.md) | 104 | `declaration-track:835c8702a91ef5a07867102af8e4d05a2bfb9c104caae9a26810f7a803f44cf1` |
| 6 | `def` | [name](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializeNamespacedPublic.lean/declarations/name.md) | 122 | `declaration-track:29000ad22a9bb1a392ccab99bf8a5b6c0fe209cb6bfe288b793292c0a88ade56` |
| 7 | `def` | [prettyName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializeNamespacedPublic.lean/declarations/prettyname.md) | 125 | `declaration-track:b1ed02ded21318943128340d00195cc79c2ad253620d9f350de589ff00e6604f` |
| 8 | `def` | [scope](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializeNamespacedPublic.lean/declarations/scope.md) | 128 | `declaration-track:ee48cce579aa325713140122372997f99ea89d01ec9dc251957065d0ccdb9e0e` |
| 9 | `def` | [relManifestFile?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializeNamespacedPublic.lean/declarations/relmanifestfile-source-edition-2.md) | 132 | `declaration-track:65be1aa4fabe9194b6b5f193679416191874ceca26be4adb413ddf3e2c82cfce` |
| 10 | `def` | [relManifestFile](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializeNamespacedPublic.lean/declarations/relmanifestfile.md) | 136 | `declaration-track:3e2ccf95e2dbacad5d256384b35ec974973cd0335d8133aa3aabaa9f19bd33ed` |
| 11 | `def` | [manifestFile](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializeNamespacedPublic.lean/declarations/manifestfile.md) | 140 | `declaration-track:262ac803addb9c7e318c9a5f7ceffee1bf4fed941bc9c9f1f88974b52a323989` |
| 12 | `def` | [relConfigFile](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializeNamespacedPublic.lean/declarations/relconfigfile.md) | 144 | `declaration-track:6f7632e9d979146f50505309bbd90cd8d10d26a5a296f78db9e9d56f002db8c3` |
| 13 | `def` | [configFile](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializeNamespacedPublic.lean/declarations/configfile.md) | 148 | `declaration-track:e5202f003e279012bce7e525701bd3271e2de238de8511414eec7decd36ffce7` |
| 14 | `def` | [fixedToolchain](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializeNamespacedPublic.lean/declarations/fixedtoolchain.md) | 151 | `declaration-track:6eec59baafc8cd2a8200c5d65c590ee8a08c8a83be40e42f27406359c96185c6` |
| 15 | `def` | [pkgNotIndexed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializeNamespacedPublic.lean/declarations/pkgnotindexed.md) | 158 | `declaration-track:77001331242b8de07a187f770fb0ef237fcc1ffad8445e9eb28297b722afed28` |
| 16 | `def` | [Dependency.materialize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializeNamespacedPublic.lean/declarations/dependency-materialize.md) | 182 | `declaration-track:ca744ed8fefdd33f32b4e7a5fbc791369794590a146c8e06df8f4a314ebc96c9` |
| 17 | `def` | [PackageEntry.materialize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MaterializeNamespacedPublic.lean/declarations/packageentry-materialize.md) | 245 | `declaration-track:e67890e41795ff66916417cd36fc3f783cac036f1fb7f4212b6e13dd6eddc272` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a1cf5db4b21681f529b8cd7b52579e38fdea98c62d942d491d83c46017b67af3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Materialize/Variant99c9f0aef63c4f7aff6e23ec573c61d21377cada768c5d9948735f6f59cf0440.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Materialize/Variant99c9f0aef63c4f7aff6e23ec573c61d21377cada768c5d9948735f6f59cf0440.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
