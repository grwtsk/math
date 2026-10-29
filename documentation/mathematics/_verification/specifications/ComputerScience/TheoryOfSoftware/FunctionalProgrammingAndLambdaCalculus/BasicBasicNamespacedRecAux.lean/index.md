# Verification target: Basic Basic Namespaced Rec Aux

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b97874dd50e28e4e0867394df62745e3ed13a4a9",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdfc5b3f7fd18ef4c06a9c4a4bc5820545e66ebf32927c025bfdede5940d36f9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedRecAux.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedRecAux.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b97874dd50e28e4e0867394df62745e3ed13a4a9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdfc5b3f7fd18ef4c06a9c4a4bc5820545e66ebf32927c025bfdede5940d36f9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdfc5b3f7fd18ef4c06a9c4a4bc5820545e66ebf32927c025bfdede5940d36f9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Classes.Dvd` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [recAux](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedRecAux.lean/declarations/recaux.md) | 22 | `declaration-track:4cdb53a92daa850914709140876eda1b8eabd2d4de06ea4351cfbf90a116ab14` |
| 2 | `def` | [recAuxOn](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedRecAux.lean/declarations/recauxon.md) | 31 | `declaration-track:a743eaca921d1e02af1f773cb098b0b0ff7b66c09ebd9f58e8e6299247887bd5` |
| 3 | `def` | [casesAuxOn](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedRecAux.lean/declarations/casesauxon.md) | 38 | `declaration-track:9ff4436fbabb340b2db583d6cf5be65deabb79a16532c7a9d8b35d804a093f16` |
| 4 | `def` | [strongRec](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedRecAux.lean/declarations/strongrec.md) | 45 | `declaration-track:1fd9177a1c290aca0876bc352a15b5ea4702875a065fc034408a3a4397c701bb` |
| 5 | `def` | [strongRecOn](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedRecAux.lean/declarations/strongrecon.md) | 52 | `declaration-track:e1a303943e38c21ec129bb7d49a0e14c4bf0e542a2daa788875f79bb8b20e9e9` |
| 6 | `def` | [recDiagAux](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedRecAux.lean/declarations/recdiagaux.md) | 59 | `declaration-track:6005322c4e629a88358eee91ac3bfc14951c7bb47661a10161e210636d109d2e` |
| 7 | `def` | [recDiag](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedRecAux.lean/declarations/recdiag.md) | 72 | `declaration-track:7d53a5a4aad130c10add4de94bbcfa8c7026c7268464b2170ad9ceea6003c58a` |
| 8 | `def` | [recDiagOn](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedRecAux.lean/declarations/recdiagon.md) | 92 | `declaration-track:bf910437fabb9b2c45fcb7aabc17fa9e878a354a44cd29070f26c327bdf4ebb7` |
| 9 | `def` | [casesDiagOn](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedRecAux.lean/declarations/casesdiagon.md) | 103 | `declaration-track:226798a982ed0577943bd821fc24c764111a60e8cadb50e19220a2edde4f5815` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedRecAux.lean/declarations/instance.md) | 116 | `declaration-track:18d221f7153ef3d2956f68b01d8fe84fd0eb3dff4a2fdbc28327ed89b634283e` |
| 11 | `def` | [sum](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedRecAux.lean/declarations/sum.md) | 119 | `declaration-track:46b84725d16320ea7b7257080f02937bb9515ab6dedf2e28d354b4bcbb005935` |
| 12 | `def` | [sqrt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedRecAux.lean/declarations/sqrt.md) | 124 | `declaration-track:c7f3c17f89bfbdd28f402cc20a82aa1e29027d77481bd99a42aac1e96ee9be26` |
| 13 | `def` | [testBit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedRecAux.lean/declarations/testbit.md) | 145 | `declaration-track:c26cab1d6bfd772e6e7b444cd76970fa3bf81cadb5fb539eaedc01230301579b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e9d8fd4ae0f8d1bde01b5952727e98b9566fdd7e8894ef891c323a77212486c4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdfc5b3f7fd18ef4c06a9c4a4bc5820545e66ebf32927c025bfdede5940d36f9e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdfc5b3f7fd18ef4c06a9c4a4bc5820545e66ebf32927c025bfdede5940d36f9e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
