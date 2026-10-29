# Verification target: Symmetry Involution

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dadca1ce72b435599b01bdfceddbb38ccbfe4d32",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variant4726721af9afdb5b89dcd3747d2735e82f751794510f92ec8188b2e47ced5032.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SymmetryInvolution.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SymmetryInvolution.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dadca1ce72b435599b01bdfceddbb38ccbfe4d32`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variant4726721af9afdb5b89dcd3747d2735e82f751794510f92ec8188b2e47ced5032.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variant4726721af9afdb5b89dcd3747d2735e82f751794510f92ec8188b2e47ced5032.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.AbelReynolds.Boundary` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.AbelReynolds.Orbit` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.AbelReynolds.Tally` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Involution](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SymmetryInvolution.lean/declarations/involution.md) | 15 | `declaration-track:1d6899776982713b4f4dcf292c4c82e2081290adceeb419e717f2ee517f57663` |
| 2 | `def` | [Involution.Fixed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SymmetryInvolution.lean/declarations/involution-fixed.md) | 19 | `declaration-track:9e49f3771805b1d0b5f283e9d000d2ae5dbd31c20b46df33bf88d2f339799f54` |
| 3 | `theorem` | [Involution.act_act](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SymmetryInvolution.lean/declarations/involution-act-act.md) | 24 | `result-track:d083ef0be3f4777b4c2fc71201bb5c084caa4ef622c00000ecc26e34114e1579` |
| 4 | `structure` | [BoundaryInvolution](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SymmetryInvolution.lean/declarations/boundaryinvolution.md) | 30 | `declaration-track:942a2c7dd8df0aa2476ae28899f30171fd55b35bbe6454d5b212de5555f21f25` |
| 5 | `structure` | [TwistedFixedWitness](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SymmetryInvolution.lean/declarations/twistedfixedwitness.md) | 35 | `declaration-track:b585d65bb1ed694902323ebba560263c32af3cba27161ef7553d38aeb707baba` |
| 6 | `structure` | [CertifiedTallyInvolution](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SymmetryInvolution.lean/declarations/certifiedtallyinvolution.md) | 45 | `declaration-track:3a9775fe452c7ee2e3c2305b050213188fc1486c6de741ff59d88b6ba0dea521` |
| 7 | `def` | [CertifiedTallyInvolution.act](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SymmetryInvolution.lean/declarations/certifiedtallyinvolution-act.md) | 48 | `declaration-track:0c741c07dec993eae633a475e0d22368fc417b3a28740a308ee31a8f9b2ce15e` |
| 8 | `theorem` | [CertifiedTallyInvolution.act_involutive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SymmetryInvolution.lean/declarations/certifiedtallyinvolution-act-involutive.md) | 53 | `result-track:3917de2573ab870c93022a47b5317296277183d276e34acd8cd81763442b2644` |
| 9 | `structure` | [FixedReusableBlock](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SymmetryInvolution.lean/declarations/fixedreusableblock.md) | 60 | `declaration-track:7a5d3d21b13a085bacee577f8de7d81a63b909873d1300a60f11885181487cfa` |
| 10 | `structure` | [ReynoldsSymmetryCompatibility](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SymmetryInvolution.lean/declarations/reynoldssymmetrycompatibility.md) | 66 | `declaration-track:e29ba019f06fb9f08ea5567860dd83082606b4cbc6378ada352bff7c56ad8450` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=538b1a9c64decfb489e61d3888d54addac47e4f5370e6d02e81973c35488175e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variant4726721af9afdb5b89dcd3747d2735e82f751794510f92ec8188b2e47ced5032.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variant4726721af9afdb5b89dcd3747d2735e82f751794510f92ec8188b2e47ced5032.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
