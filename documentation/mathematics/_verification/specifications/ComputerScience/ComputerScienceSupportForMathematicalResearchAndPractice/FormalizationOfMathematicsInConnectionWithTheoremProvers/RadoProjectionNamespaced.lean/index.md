# Verification target: Rado Projection Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c90c73f4a2abfa6b0d7c100c42495c87000efec",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f4c65617665732f5261646f2f5261646f50726f6a656374696f6e2e6c65616/Variant6306f62139dd0c53e53b7065632e1c2942fc6d1bc1776f40b1573a3ea75e75e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RadoProjectionNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RadoProjectionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c90c73f4a2abfa6b0d7c100c42495c87000efec`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f4c65617665732f5261646f2f5261646f50726f6a656374696f6e2e6c65616/Variant6306f62139dd0c53e53b7065632e1c2942fc6d1bc1776f40b1573a3ea75e75e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f4c65617665732f5261646f2f5261646f50726f6a656374696f6e2e6c65616/Variant6306f62139dd0c53e53b7065632e1c2942fc6d1bc1776f40b1573a3ea75e75e1.lean.json)

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
| 1 | `def` | [surfaceId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RadoProjectionNamespaced.lean/declarations/surfaceid.md) | 16 | `declaration-track:d4ac2d599743ce683e98cdd7b60e7d7f7a592b07b63c00cafaa523007a36ca37` |
| 2 | `def` | [ownsDeclaredSurface](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RadoProjectionNamespaced.lean/declarations/ownsdeclaredsurface.md) | 17 | `declaration-track:c5435d2c72bbdf5c35f67ef44de9cd0bc8485b88b4ed9e47732b18680bc38c7c` |
| 3 | `def` | [crossLeafReasoningRequiresGlue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RadoProjectionNamespaced.lean/declarations/crossleafreasoningrequiresglue.md) | 18 | `declaration-track:6572ca79dc84c1243f5362cd95521f012a23ca221d56ebea6762f29cd5543755` |
| 4 | `theorem` | [surface_id_declared](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RadoProjectionNamespaced.lean/declarations/surface-id-declared.md) | 20 | `result-track:50b84910e3096de2ad33758dda0a8ec67b3f083e7bf1255547cb3be29a915354` |
| 5 | `theorem` | [owns_declared_surface](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RadoProjectionNamespaced.lean/declarations/owns-declared-surface.md) | 24 | `result-track:e08c00aa2651a8f0afb7063176f6f201ed19f2183d2ac7045991ca6e57bc8852` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bca273c5e750c1a0e1acb97ea50f7fac86b993f274812b36967790abc3cafe34 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f4c65617665732f5261646f2f5261646f50726f6a656374696f6e2e6c65616/Variant6306f62139dd0c53e53b7065632e1c2942fc6d1bc1776f40b1573a3ea75e75e1.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f4c65617665732f5261646f2f5261646f50726f6a656374696f6e2e6c65616/Variant6306f62139dd0c53e53b7065632e1c2942fc6d1bc1776f40b1573a3ea75e75e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
