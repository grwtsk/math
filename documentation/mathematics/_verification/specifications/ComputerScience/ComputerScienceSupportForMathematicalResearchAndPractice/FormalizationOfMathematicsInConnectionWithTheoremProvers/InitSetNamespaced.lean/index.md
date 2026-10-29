# Verification target: Init Set Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "126a0cc587ade7a5ee09b9c1357d00d149cbf60f",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variantc57768b2dc72b05c5296bb59d624c882a3333fa4f16cf6a5f8f73efe13f72126.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `126a0cc587ade7a5ee09b9c1357d00d149cbf60f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variantc57768b2dc72b05c5296bb59d624c882a3333fa4f16cf6a5f8f73efe13f72126.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variantc57768b2dc72b05c5296bb59d624c882a3333fa4f16cf6a5f8f73efe13f72126.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Parser.Term` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Classes.SetNotation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Mathport.Rename` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Set](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/declarations/set.md) | 46 | `declaration-track:7b0a40e1a3bbb2b35d32b134af0cec8838f4a3e976d14fe5b5ede281fad5d0d6` |
| 2 | `def` | [setOf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/declarations/setof.md) | 49 | `declaration-track:130a366bbb554223cbb45a8bce1fcf8b4e95d2601bd8d75727afb162d141081b` |
| 3 | `def` | [Mem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/declarations/mem.md) | 56 | `declaration-track:eef838ddc133d076a291807cda0c8b325d07cdbeb5b4750407dc63f2ee3b3da6` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/declarations/instance-source-edition-4.md) | 59 | `declaration-track:5686850920a2426486fdb22596dd5bf859d76574f8d5c79cfc8fbdc4813875b5` |
| 5 | `theorem` | [ext](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/declarations/ext.md) | 62 | `result-track:8a04c35c2e63f35da67d4a6f52032e8da3bdb6542220d3669d781cca427acf21` |
| 6 | `def` | [Subset](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/declarations/subset.md) | 65 | `declaration-track:d5eae7a20f81dc7fd5161d7e1e40113372f794fac500411c3e12fb5736d62550` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/declarations/instance.md) | 70 | `declaration-track:1dc392b12399966e0d5eb96657450d594717ae4e7d4560db5bc3a5af4fad87be` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/declarations/instance-source-edition-6.md) | 73 | `declaration-track:645c8251b2059125ae54fbe232887f3ee075bd82d1fcee6c655ba56770ed9bc9` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/declarations/instance-source-edition-8.md) | 76 | `declaration-track:d2460079447b01e81ac081fe6a4708bacf2b5b13937a65797a0afd4f2ef7cc13` |
| 10 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/declarations/syntax.md) | 80 | `declaration-track:7c0c9995822e309b980fa46cf9dd3508ba82fe7ab2a4cae01d03eae74d2bbd89` |
| 11 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/declarations/macro-rules.md) | 82 | `declaration-track:75ae5fe93a693a1a9394e7a5d6fb58a75d7c3cf5ed8f9cebb8af45beb94cc72e` |
| 12 | `def` | [setOf.unexpander](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/declarations/setof-unexpander.md) | 89 | `declaration-track:8b61786964b3845774e125aee9ba93c4550ec72c08a3a418bf61b67c905407d1` |
| 13 | `macro` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/declarations/macro.md) | 95 | `declaration-track:215b9cd3286f41265254fa1ff5e360952aeacf52360414f64bf12c7a26684e5e` |
| 14 | `def` | [univ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/declarations/univ.md) | 98 | `declaration-track:f0279e86be2c35a2bae19260b8bb182747e4b7a34eab9e3e1a29fb8e29933c70` |
| 15 | `def` | [insert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/declarations/insert.md) | 101 | `declaration-track:c82577897c5de25493e00ca6ae5e8616ed29b787d4a34d32c5c22d8e2b303a9b` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/declarations/instance-source-edition-10.md) | 103 | `declaration-track:e2ab344df814f891c948e919a04640c56ef9fc9a63708ad25e7ca3806a5e1258` |
| 17 | `def` | [singleton](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/declarations/singleton.md) | 105 | `declaration-track:6b7b3b776fb888e2440f2560cb5e14d761913eaa62cf402134fe7c9b3312af6d` |
| 18 | `instance` | [instSingletonSet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/declarations/instsingletonset.md) | 107 | `declaration-track:5d5a809ff462c3cd7c999ed41cc30aa4025e19982fc6921cfcbfd73bb841ca94` |
| 19 | `def` | [union](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/declarations/union.md) | 109 | `declaration-track:453c0041dc8c39ca00d67484bacff5bb6f92b1bcb8ad9e6aa086912afe2a2cf2` |
| 20 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/declarations/instance-source-edition-2.md) | 111 | `declaration-track:3d8dd614299d8c171c66f6015cecb19d1c9cf39f5235212a8dceaab9f05f62f1` |
| 21 | `def` | [inter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/declarations/inter.md) | 113 | `declaration-track:163482290d20059c1a198539706485da2765d20dc938f9da9c11c6933b33e4ca` |
| 22 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/declarations/instance-source-edition-3.md) | 115 | `declaration-track:4b32c7ae2466b277eee234f71435fb615d1d33a12e15f32c764274a3b0fe5820` |
| 23 | `def` | [compl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/declarations/compl.md) | 117 | `declaration-track:1af797902b940e85a21b53f1cb8c33844e877c761b4fe6347895dccfa784e2c7` |
| 24 | `def` | [diff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/declarations/diff.md) | 119 | `declaration-track:e1df6db02da053dab263f21051533f1630e69a6ba4e8f0abb40e7987fc5b5479` |
| 25 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/declarations/instance-source-edition-9.md) | 121 | `declaration-track:d32e030f962dc4bc6223b7cffa17fab930cd2d4641a00ffb7396068b19cf7db8` |
| 26 | `def` | [powerset](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/declarations/powerset.md) | 123 | `declaration-track:f8282fefdb228c18a3d3d782ae12d54d8577c114af342f1a5a936347ce9f87da` |
| 27 | `def` | [image](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/declarations/image.md) | 127 | `declaration-track:79943fb847afc30c426313830874e3bb10801f831548383a71978db2d61af137` |
| 28 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/declarations/instance-source-edition-5.md) | 129 | `declaration-track:5e3a3c57f2e480cf61beb720ffa52881f8bf9fa566186247f5117a265a97f6e9` |
| 29 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSetNamespaced.lean/declarations/instance-source-edition-7.md) | 131 | `declaration-track:8f9c927882b3f491721afc0cdc98a30d26d9331ed37b98c79593df9d1c6dd88e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=34ed5679136180a33dafc43ce7c93201efe42925344d9f64c2921e19c763f5cf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variantc57768b2dc72b05c5296bb59d624c882a3333fa4f16cf6a5f8f73efe13f72126.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variantc57768b2dc72b05c5296bb59d624c882a3333fa4f16cf6a5f8f73efe13f72126.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
