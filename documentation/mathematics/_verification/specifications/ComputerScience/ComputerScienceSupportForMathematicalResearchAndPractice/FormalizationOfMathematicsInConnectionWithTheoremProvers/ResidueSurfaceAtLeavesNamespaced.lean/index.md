# Verification target: Residue Surface At Leaves Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a956f32c4d79f87cc6485ab054151386d8582ba",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f526573696475655375726661636541744c65617/Variantaa0debbec91a5742e08c09f4bdee46e31f2b9c35e465454b62f018a3bb16e63f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResidueSurfaceAtLeavesNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResidueSurfaceAtLeavesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a956f32c4d79f87cc6485ab054151386d8582ba`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f526573696475655375726661636541744c65617/Variantaa0debbec91a5742e08c09f4bdee46e31f2b9c35e465454b62f018a3bb16e63f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f526573696475655375726661636541744c65617/Variantaa0debbec91a5742e08c09f4bdee46e31f2b9c35e465454b62f018a3bb16e63f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [surfaceId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResidueSurfaceAtLeavesNamespaced.lean/declarations/surfaceid.md) | 16 | `declaration-track:051fb182b0381f8114a2cf1d321dbad254e3743d287e3a7c447fcd2e4f566f8f` |
| 2 | `def` | [ownsDeclaredSurface](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResidueSurfaceAtLeavesNamespaced.lean/declarations/ownsdeclaredsurface.md) | 17 | `declaration-track:a2dc3abc2f3be3f1229531c31a590756e0ef2c6b5c0ff822b92449118fccfb7b` |
| 3 | `def` | [crossLeafReasoningRequiresGlue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResidueSurfaceAtLeavesNamespaced.lean/declarations/crossleafreasoningrequiresglue.md) | 18 | `declaration-track:83f7ab841a81d897e0edea39e2776ab2785e6657e29fb7b2ac28a1e278e090ed` |
| 4 | `theorem` | [surface_id_declared](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResidueSurfaceAtLeavesNamespaced.lean/declarations/surface-id-declared.md) | 20 | `result-track:a95ad1fac90f26ddd3d94bda88103aa1612c6dd6a6c820698c425607e0419614` |
| 5 | `theorem` | [owns_declared_surface](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ResidueSurfaceAtLeavesNamespaced.lean/declarations/owns-declared-surface.md) | 24 | `result-track:0471645fef7f51e5731a1e23b86a478e451661487d161d3afe510205a624f239` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65fa4ae3ae5429208c74b333ee87a76c89da0db76c2553ea66772788d343a298 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f526573696475655375726661636541744c65617/Variantaa0debbec91a5742e08c09f4bdee46e31f2b9c35e465454b62f018a3bb16e63f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f526573696475655375726661636541744c65617/Variantaa0debbec91a5742e08c09f4bdee46e31f2b9c35e465454b62f018a3bb16e63f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
