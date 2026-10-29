# Verification target: Elim Info Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d04bc364fef41a70cb3841fe77e5401bd70cb32",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant9384433e950df70ec0d93baf4c91e9b45a9d74be5cea950cffda1e404788d262.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElimInfoNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElimInfoNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d04bc364fef41a70cb3841fe77e5401bd70cb32`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant9384433e950df70ec0d93baf4c91e9b45a9d74be5cea950cffda1e404788d262.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant9384433e950df70ec0d93baf4c91e9b45a9d74be5cea950cffda1e404788d262.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Range.Polymorphic.Iterators` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ElimAltInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElimInfoNamespacedPublic.lean/declarations/elimaltinfo.md) | 24 | `declaration-track:e8640417731f786c0c2c01cd22edd3e02585e52c20aaa24292d5f41297364c66` |
| 2 | `structure` | [ElimInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElimInfoNamespacedPublic.lean/declarations/eliminfo.md) | 43 | `declaration-track:55ea2b17cb9b18057a7bf24151c9f9ec394e2071e38e855dc430e3edf1fd0ad7` |
| 3 | `def` | [altArity](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElimInfoNamespacedPublic.lean/declarations/altarity.md) | 59 | `declaration-track:8601a6d5f4ce1946af7896dee06fdb7c48f86db3ca024bfa34870d084ee6861e` |
| 4 | `def` | [getElimExprInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElimInfoNamespacedPublic.lean/declarations/getelimexprinfo.md) | 65 | `declaration-track:ee0d563477196e2672f0936896cea825e900a3284497eb6b4733eadb2b526707` |
| 5 | `def` | [getElimInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElimInfoNamespacedPublic.lean/declarations/geteliminfo.md) | 101 | `declaration-track:ee3ff11e6ba847dc000a6c5d855ddb2455c437a42542591fa229b7ae09c40a3d` |
| 6 | `def` | [addImplicitTargets](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElimInfoNamespacedPublic.lean/declarations/addimplicittargets.md) | 109 | `declaration-track:d80bf9971c96ecd9e6e7658cfb4164f7be5ceef75ee71178158fe38d9b934122` |
| 7 | `structure` | [CustomEliminator](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElimInfoNamespacedPublic.lean/declarations/customeliminator.md) | 143 | `declaration-track:46bb91a4c0de0d4baf5b13c0dac0afda9840577000fa3cc8f2037eed1e9c3800` |
| 8 | `structure` | [CustomEliminators](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElimInfoNamespacedPublic.lean/declarations/customeliminators.md) | 149 | `declaration-track:15570c4e07977095e4ebd31d93abb24324aa589620cfb7c11fd16f467ec7a8dc` |
| 9 | `def` | [addCustomEliminatorEntry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElimInfoNamespacedPublic.lean/declarations/addcustomeliminatorentry.md) | 153 | `declaration-track:6ad42d7b4b4be1d09a51d30d57c80c5c3c0a02af18416cdf4b380531297e182b` |
| 10 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElimInfoNamespacedPublic.lean/declarations/builtin-initialize.md) | 157 | `declaration-track:0cce3103c8626a3aab829ecd8bfd26682777fb6b6592dfaf559fca9a28203f1c` |
| 11 | `def` | [mkCustomEliminator](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElimInfoNamespacedPublic.lean/declarations/mkcustomeliminator.md) | 164 | `declaration-track:f14e22a4df8a0bf850d7c60cb1ac8092abbeb8eba742e5b00a52195bf7d942aa` |
| 12 | `def` | [addCustomEliminator](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElimInfoNamespacedPublic.lean/declarations/addcustomeliminator.md) | 188 | `declaration-track:fb754c43ab473f2819e90fab6a1bbcc3da6cc7ae6f795739452d275be0409b05` |
| 13 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElimInfoNamespacedPublic.lean/declarations/builtin-initialize-source-edition-2.md) | 224 | `declaration-track:4b53753051c475733338aa341cc7f38ee76953964ea50181f1cb43df08d51a48` |
| 14 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElimInfoNamespacedPublic.lean/declarations/builtin-initialize-source-edition-3.md) | 264 | `declaration-track:f56b46b0f60795f38efba01091bfb579be9b88cb8b0c3b25aed47ced116f78af` |
| 15 | `def` | [getCustomEliminators](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElimInfoNamespacedPublic.lean/declarations/getcustomeliminators.md) | 273 | `declaration-track:8939643d48936eecfbec0702a75148db813565d3a0962186d034b8c98013200b` |
| 16 | `def` | [getCustomEliminator?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElimInfoNamespacedPublic.lean/declarations/getcustomeliminator.md) | 284 | `declaration-track:20f1e6440ace2bb9f7c003f65278f6dd490d86439f3182649bd5cef3800a01ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c1bebc4ed9418d1e9611fca068dea0477191f3357ff8db1f4dfac446720839ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant9384433e950df70ec0d93baf4c91e9b45a9d74be5cea950cffda1e404788d262.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant9384433e950df70ec0d93baf4c91e9b45a9d74be5cea950cffda1e404788d262.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
