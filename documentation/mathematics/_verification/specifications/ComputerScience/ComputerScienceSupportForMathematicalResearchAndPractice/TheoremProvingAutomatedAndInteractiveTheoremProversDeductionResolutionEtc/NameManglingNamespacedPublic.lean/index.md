# Verification target: Name Mangling Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70f97102b9b92e81d200d0fac020c9c72033bea9",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variant47e8330d5bd2868030829cdf17c1e0874620f2abbe376407906b5e6d36d900c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameManglingNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameManglingNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70f97102b9b92e81d200d0fac020c9c72033bea9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variant47e8330d5bd2868030829cdf17c1e0874620f2abbe376407906b5e6d36d900c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variant47e8330d5bd2868030829cdf17c1e0874620f2abbe376407906b5e6d36d900c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.TakeDrop` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.UInt.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.FindPos` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [digitChar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameManglingNamespacedPublic.lean/declarations/digitchar.md) | 25 | `declaration-track:b7fd224c5a25b5a2e9133da58a1a58c7558c208dad6a17b40c0c80133ec03b4a` |
| 2 | `def` | [pushHex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameManglingNamespacedPublic.lean/declarations/pushhex.md) | 31 | `declaration-track:1070802d3c92565c5c0c76b4514cb2b15ca94cbc0b880af4e102e47dd3a0fae8` |
| 3 | `def` | [mangleAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameManglingNamespacedPublic.lean/declarations/mangleaux.md) | 43 | `declaration-track:6ffc5723407ef8a29438ade7187e4e6c2dffc7861fa5715e252184a2134efdad` |
| 4 | `def` | [Internal.mangle](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameManglingNamespacedPublic.lean/declarations/internal-mangle.md) | 59 | `declaration-track:14ba3dfd24e9d834d140468018e3c42969bbd70048154adfc8c9e6a8b7800812` |
| 5 | `def` | [checkLowerHex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameManglingNamespacedPublic.lean/declarations/checklowerhex.md) | 66 | `declaration-track:5063a52343b27f906f680646e7ebb83636e0a6757225af294e209e7a2ed0b9bb` |
| 6 | `def` | [fromHex?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameManglingNamespacedPublic.lean/declarations/fromhex.md) | 76 | `declaration-track:2e86f6091dfc74c0ec676c2397a67e419763a4090c879a17adf0291c6f623eaf` |
| 7 | `def` | [parseLowerHex?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameManglingNamespacedPublic.lean/declarations/parselowerhex.md) | 83 | `declaration-track:9cff34b2c2b323a0774546e4abde3c04dba0cae62a8b0b662838b818dd8b2d4c` |
| 8 | `theorem` | [lt_of_parseLowerHex?_eq_some](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameManglingNamespacedPublic.lean/declarations/lt-of-parselowerhex-eq-some.md) | 95 | `result-track:8439a53fe048c9ab016f99e826eaea13d132a3cb6d1579ba1db80024e51c2932` |
| 9 | `def` | [checkDisambiguation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameManglingNamespacedPublic.lean/declarations/checkdisambiguation.md) | 106 | `declaration-track:02e3c455d15fb76451585e8a37c6ed0fa8870a5edce632514060294d94381f31` |
| 10 | `def` | [needDisambiguation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameManglingNamespacedPublic.lean/declarations/needdisambiguation.md) | 123 | `declaration-track:7984fbdfb3a973a9ec63c38055ac3c0080c4f6dd0463cf98f769e6fb70729229` |
| 11 | `def` | [Name.mangleAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameManglingNamespacedPublic.lean/declarations/name-mangleaux.md) | 128 | `declaration-track:dbd16a29cd4858119a4c215b956782d0449b19189063f82e8efdd85b0393b641` |
| 12 | `def` | [Name.mangle](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameManglingNamespacedPublic.lean/declarations/name-mangle.md) | 144 | `declaration-track:c46fb8fff40741f7cfc44315152e24afa3dbb397966ed5e8387482a185a15b6a` |
| 13 | `def` | [mkMangledBoxedName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameManglingNamespacedPublic.lean/declarations/mkmangledboxedname.md) | 153 | `declaration-track:e641b49a04c1c03eaea657364d723a81a517263bb2186e37b4eebd16046382de` |
| 14 | `def` | [mkModuleInitializationStem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameManglingNamespacedPublic.lean/declarations/mkmoduleinitializationstem.md) | 164 | `declaration-track:939251ba2cb1813d21fe11c487ea99dba7d1b2ff371f48c8df88e9e3f788a17b` |
| 15 | `def` | [mkModuleInitializationPrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameManglingNamespacedPublic.lean/declarations/mkmoduleinitializationprefix.md) | 168 | `declaration-track:61cb4ecb63a715c292e2a24f59513af9f2ded76ee2e8d149fe442f6a12379dd7` |
| 16 | `def` | [mkModuleInitializationFunctionName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameManglingNamespacedPublic.lean/declarations/mkmoduleinitializationfunctionname.md) | 174 | `declaration-track:c93ebe4455c6418ed14bb5d90021e394f2f997db81f5ccb412aab92155da729b` |
| 17 | `def` | [mkPackageSymbolPrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameManglingNamespacedPublic.lean/declarations/mkpackagesymbolprefix.md) | 177 | `declaration-track:ed4b173aa63a40232ec84498f7d71147cb25ef408dd3a0bb82d5d7a85d37c991` |
| 18 | `def` | [Name.demangleAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameManglingNamespacedPublic.lean/declarations/name-demangleaux.md) | 181 | `declaration-track:f7fbb90d191700764eca926521503329a2142c58f0917bd626dac5c469d149a6` |
| 19 | `def` | [Name.demangle](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameManglingNamespacedPublic.lean/declarations/name-demangle-source-edition-2.md) | 243 | `declaration-track:de642535affe72a76c1785d42663d6f579b03d00294087dabb664f619f3eec7a` |
| 20 | `def` | [Name.demangle?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameManglingNamespacedPublic.lean/declarations/name-demangle.md) | 250 | `declaration-track:2555378510d1ec2a4817ec8dca7dedfa634ad89b0b2595392de362a2855b1a83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee017084c55c8936276abf59cb9878bab98418f20509d376f6b38b893181e9f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variant47e8330d5bd2868030829cdf17c1e0874620f2abbe376407906b5e6d36d900c0.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMangling/Variant47e8330d5bd2868030829cdf17c1e0874620f2abbe376407906b5e6d36d900c0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
