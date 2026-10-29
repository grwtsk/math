# Verification target: Fetch Public Partial Build Key

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aae2fdaf28df467cb73d52b3b7234df501435ea1",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fetch/Variant6ffb6a8261fd85018fe1dc510f68ed6a1544d4e5992f099742f10b5583e93f88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FetchPublicPartialBuildKey.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FetchPublicPartialBuildKey.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aae2fdaf28df467cb73d52b3b7234df501435ea1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fetch/Variant6ffb6a8261fd85018fe1dc510f68ed6a1544d4e5992f099742f10b5583e93f88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fetch/Variant6ffb6a8261fd85018fe1dc510f68ed6a1544d4e5992f099742f10b5583e93f88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.Build.Infos` — import line 9; external provider; requires a separately pinned dependency.
- `Lake.Config.Monad` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PartialBuildKey.fetchInCoreAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FetchPublicPartialBuildKey.lean/declarations/partialbuildkey-fetchincoreaux.md) | 19 | `declaration-track:a25b2c7191d3a9255f71ed364067c2f928ae03b8bab3fde6f0c1769c757425af` |
| 2 | `def` | [PartialBuildKey.fetchInCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FetchPublicPartialBuildKey.lean/declarations/partialbuildkey-fetchincore.md) | 82 | `declaration-track:0c296d83ba6f5e4222ded8511abb24ddaca17fa21472b759ff6dbd6dffd19fca` |
| 3 | `def` | [PartialBuildKey.fetchIn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FetchPublicPartialBuildKey.lean/declarations/partialbuildkey-fetchin.md) | 97 | `declaration-track:17880437b6fa38ab6fc036ce91b112f0c4fbafa01241881423ac3ed6ba272324` |
| 4 | `def` | [BuildKey.fetchCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FetchPublicPartialBuildKey.lean/declarations/buildkey-fetchcore.md) | 101 | `declaration-track:40468a6a2367c8ff00073cb3788bad5ae033b0f088cb4ebdb6cf3f14aec73cea` |
| 5 | `def` | [BuildKey.fetch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FetchPublicPartialBuildKey.lean/declarations/buildkey-fetch.md) | 134 | `declaration-track:656ae1c029d8fcd44f9be49b24dbb351061194e8e49edb94a26b56f2591190fd` |
| 6 | `def` | [Target.fetchIn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FetchPublicPartialBuildKey.lean/declarations/target-fetchin.md) | 138 | `declaration-track:501a5d5bce8b65f8477ba7cc1d94b6f5504bb8e3e900d2a67f5c03ed0ed62f7b` |
| 7 | `def` | [TargetArray.fetchIn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FetchPublicPartialBuildKey.lean/declarations/targetarray-fetchin.md) | 152 | `declaration-track:2adb8f494b8a361c7c91ca89aff6bbeedcd496663f62349b1e9bac064f39ac21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c87d6739a41d198bc761cdf776901808b0c4686208a7feaf35f26bd94cb18d93 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fetch/Variant6ffb6a8261fd85018fe1dc510f68ed6a1544d4e5992f099742f10b5583e93f88.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fetch/Variant6ffb6a8261fd85018fe1dc510f68ed6a1544d4e5992f099742f10b5583e93f88.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
