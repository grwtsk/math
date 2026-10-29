# Verification target: Whole Local Patch Arithmetic Interpretation Packages

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d851cb944e024441f9b3593e280ca5db44f9ab1a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/TypedRelativeDefectAssignments/Variantb5a8ecddfde86fc1/WholeLocalPatchArithmeticInterpretationPackages.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/WholeLocalPatchArithmeticInterpretationPackages.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/WholeLocalPatchArithmeticInterpretationPackages.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d851cb944e024441f9b3593e280ca5db44f9ab1a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/TypedRelativeDefectAssignments/Variantb5a8ecddfde86fc1/WholeLocalPatchArithmeticInterpretationPackages.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/TypedRelativeDefectAssignments/Variantb5a8ecddfde86fc1/WholeLocalPatchArithmeticInterpretationPackages.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Fabric.Patch` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Basic` — import line 20; external provider; requires a separately pinned dependency.
- [Whole Cotangent Assignment And Explicit Boundary Map](../../../../AssociativeRingsAndAlgebras/WholeCotangentAssignmentAndExplicitBoundaryMap.lean/index.md) — import line 22; pinned internal source present.
- [Whole Relative THHAssignment And Explicit Boundary Map](../../../../AssociativeRingsAndAlgebras/WholeRelativeTHHAssignmentAndExplicitBoundaryMap.lean/index.md) — import line 23; pinned internal source present.
- [Whole Cyclotomic Refinement And Explicit Boundary Map](../../../../AssociativeRingsAndAlgebras/WholeCyclotomicRefinementAndExplicitBoundaryMap.lean/index.md) — import line 24; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CotangentBoundaryData](../../../../AssociativeRingsAndAlgebras/WholeLocalPatchArithmeticInterpretationPackages.lean/declarations/cotangentboundarydata.md) | 57 | `declaration-track:508407e288ef906d1c32e64bffd9973f4588b2cd39b2c180dbeea0cfa9d417f4` |
| 2 | `def` | [cotangentBoundaryDefect](../../../../AssociativeRingsAndAlgebras/WholeLocalPatchArithmeticInterpretationPackages.lean/declarations/cotangentboundarydefect.md) | 69 | `declaration-track:fb8022df264260afc86b554d7e2d3f0bbfc37a8b07be27d3224700e5048a9088` |
| 3 | `structure` | [RelativeTHHBoundaryData](../../../../AssociativeRingsAndAlgebras/WholeLocalPatchArithmeticInterpretationPackages.lean/declarations/relativethhboundarydata.md) | 80 | `declaration-track:5a594ebbdce9917cffa729c0eff8229e5dd79c9107d2a89a30019932fb0630e9` |
| 4 | `def` | [relativeTHHBoundaryDefect](../../../../AssociativeRingsAndAlgebras/WholeLocalPatchArithmeticInterpretationPackages.lean/declarations/relativethhboundarydefect.md) | 92 | `declaration-track:bf20677de6bc94190675345367874fe088999e8defc380d8d5e9deb10f27f3cc` |
| 5 | `structure` | [CyclotomicBoundaryData](../../../../AssociativeRingsAndAlgebras/WholeLocalPatchArithmeticInterpretationPackages.lean/declarations/cyclotomicboundarydata.md) | 103 | `declaration-track:304855f7d6073bbceca0389fc316ad4a989afe1a0b439a74f530e12188c61e8e` |
| 6 | `def` | [cyclotomicBoundaryDefect](../../../../AssociativeRingsAndAlgebras/WholeLocalPatchArithmeticInterpretationPackages.lean/declarations/cyclotomicboundarydefect.md) | 115 | `declaration-track:2d6a4b4336cf7c699f2ec1336cd5921040ffb19035cac2a39e34ec194edfaf4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=008e1793a6c237a3051635ea9204d35ad1677a879e44054fa92226cadd798060 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/TypedRelativeDefectAssignments/Variantb5a8ecddfde86fc1/WholeLocalPatchArithmeticInterpretationPackages.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/TypedRelativeDefectAssignments/Variantb5a8ecddfde86fc1/WholeLocalPatchArithmeticInterpretationPackages.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
