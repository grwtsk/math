# Verification target: Preserves Shapes Terminal Preserves Limits Of Shape Pempty Of Preserves Terminal Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d43c171c11c031811093136ddd28bd7c90e97303",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantb7ab3e4e2e666873f7ab0472d8a73bf9a92e27e9df124086c8dc24493371d51b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminalAligned.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminalAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d43c171c11c031811093136ddd28bd7c90e97303`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantb7ab3e4e2e666873f7ab0472d8a73bf9a92e27e9df124086c8dc24493371d51b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantb7ab3e4e2e666873f7ab0472d8a73bf9a92e27e9df124086c8dc24493371d51b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isLimitMapConeEmptyConeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminalAligned.lean/declarations/islimitmapconeemptyconeequiv.md) | 42 | `declaration-track:2fcd2bf6004ebbf22de3f18e96958c810aa7701c672ad0a771aa231f3e53f73a` |
| 2 | `def` | [IsTerminal.isTerminalObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminalAligned.lean/declarations/isterminal-isterminalobj.md) | 48 | `declaration-track:b9f94f2a5cfc43863931765b4cd7221ccbb3f3259bd2328a1bef9a5fb5cd1f81` |
| 3 | `def` | [IsTerminal.isTerminalOfObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminalAligned.lean/declarations/isterminal-isterminalofobj.md) | 54 | `declaration-track:1c808870b6f24ec78e9e875f5b5eb2c1a0a695c9ccf58294592bdca7e5100031` |
| 4 | `def` | [preservesLimitsOfShapePemptyOfPreservesTerminal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminalAligned.lean/declarations/preserveslimitsofshapepemptyofpreservesterminal.md) | 60 | `declaration-track:6d8b7dbe198e527a8717b593856aabcb9f0b01dc92882f4fb413960e676fe6d9` |
| 5 | `def` | [isLimitOfHasTerminalOfPreservesLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminalAligned.lean/declarations/islimitofhasterminalofpreserveslimit.md) | 72 | `declaration-track:45d62c13cba1f78f9771c125e20f47f5d9f5ebeeebc9f1ece170cc9182d602a9` |
| 6 | `theorem` | [hasTerminal_of_hasTerminal_of_preservesLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminalAligned.lean/declarations/hasterminal-of-hasterminal-of-preserveslimit.md) | 83 | `result-track:8fda2e86f3271350bb6fe8f8dabc0e0ce78b25f6f52bf0eac5ee5c6e2718ec61` |
| 7 | `def` | [PreservesTerminal.ofIsoComparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminalAligned.lean/declarations/preservesterminal-ofisocomparison.md) | 93 | `declaration-track:f54f81ab93149e9e3e2b15085aea7420a6a3d096ad01db1329f8d8fd264cf6dc` |
| 8 | `def` | [preservesTerminalOfIsIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminalAligned.lean/declarations/preservesterminalofisiso.md) | 101 | `declaration-track:78d28a12214dbe1fe5241aad6b498d6eed51d4fb98b09c0da9f1bb97557a4cb0` |
| 9 | `def` | [preservesTerminalOfIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminalAligned.lean/declarations/preservesterminalofiso.md) | 108 | `declaration-track:a002e1af08adca1a1c4defe9a5674ead099fe5ff9175ced04e626617372523c1` |
| 10 | `def` | [PreservesTerminal.iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminalAligned.lean/declarations/preservesterminal-iso.md) | 116 | `declaration-track:aca40dcfaac100eeda17a7a834572d9bebabba51f06210f6cf604eafd8bc39ef` |
| 11 | `theorem` | [PreservesTerminal.iso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminalAligned.lean/declarations/preservesterminal-iso-hom.md) | 121 | `result-track:812e01f4ae8b3a00da53bc3afbdc214f44932b5aff1d6178cdb6e6050c27f017` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminalAligned.lean/declarations/instance-source-edition-2.md) | 125 | `declaration-track:6afa6d52518f245331205bfc7e3e53073faa4192323080f1da2bbfa6e1a32396` |
| 13 | `def` | [isColimitMapCoconeEmptyCoconeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminalAligned.lean/declarations/iscolimitmapcoconeemptycoconeequiv.md) | 135 | `declaration-track:33e77ed12264e18a9e8937842e9310fd9b2b54bbf8f233088f1b009fcda9830c` |
| 14 | `def` | [IsInitial.isInitialObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminalAligned.lean/declarations/isinitial-isinitialobj.md) | 141 | `declaration-track:8057549446a72d76a30bfe586e2585de3a04ddedbc7206b9319f3398233807db` |
| 15 | `def` | [IsInitial.isInitialOfObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminalAligned.lean/declarations/isinitial-isinitialofobj.md) | 147 | `declaration-track:cf88a3972f02180882720f2cedc2dbfb535ecc6f6f0e06defaf17c4b8a2e0c7a` |
| 16 | `def` | [preservesColimitsOfShapePemptyOfPreservesInitial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminalAligned.lean/declarations/preservescolimitsofshapepemptyofpreservesinitial.md) | 153 | `declaration-track:b1ae5a0b46fd69deed3a574dcb3578eb5ed55fc03d995372a1b9302f896b7dd6` |
| 17 | `def` | [isColimitOfHasInitialOfPreservesColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminalAligned.lean/declarations/iscolimitofhasinitialofpreservescolimit.md) | 164 | `declaration-track:0ec0438822f0cb073cb02fce98d49797ee92de662f205c4be74ae69bd78f49e7` |
| 18 | `theorem` | [hasInitial_of_hasInitial_of_preservesColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminalAligned.lean/declarations/hasinitial-of-hasinitial-of-preservescolimit.md) | 175 | `result-track:2881540270fede4afaacba3e01ddaca9af335bc5bab2a37154ca12a35a9b63ac` |
| 19 | `def` | [PreservesInitial.ofIsoComparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminalAligned.lean/declarations/preservesinitial-ofisocomparison.md) | 186 | `declaration-track:457cb15b73539f43677ef6657caaf1f205c61db27e2134efd13cebd82ea1bfb3` |
| 20 | `def` | [preservesInitialOfIsIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminalAligned.lean/declarations/preservesinitialofisiso.md) | 194 | `declaration-track:810644239dae4b75766f4088b00fd54db942c23b83081f1b19e27170e7cf1b9c` |
| 21 | `def` | [preservesInitialOfIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminalAligned.lean/declarations/preservesinitialofiso.md) | 201 | `declaration-track:95677336b040c7f9338233cd4f4701ef7bb99313999656374ac266bc430fc27b` |
| 22 | `def` | [PreservesInitial.iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminalAligned.lean/declarations/preservesinitial-iso.md) | 208 | `declaration-track:50030513a0146f74605d65f59e970f7a0ddc4b87db7e6354c873cc062f0ce645` |
| 23 | `theorem` | [PreservesInitial.iso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminalAligned.lean/declarations/preservesinitial-iso-hom.md) | 213 | `result-track:60275fcc432fa28831fd1b2e4f7768a1b8ac72e6d90e081d763e95ada373a678` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesShapesTerminalPreservesLimitsOfShapePemptyOfPreservesTerminalAligned.lean/declarations/instance.md) | 217 | `declaration-track:0adc825571e6fd937ea0aad1c1525c1b0a8236299202867f8496f1e817ec1f38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=028f42f3620f14ed24328f7891ab330fa6253c08a26efc7390c4a70e087486e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantb7ab3e4e2e666873f7ab0472d8a73bf9a92e27e9df124086c8dc24493371d51b.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantb7ab3e4e2e666873f7ab0472d8a73bf9a92e27e9df124086c8dc24493371d51b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
