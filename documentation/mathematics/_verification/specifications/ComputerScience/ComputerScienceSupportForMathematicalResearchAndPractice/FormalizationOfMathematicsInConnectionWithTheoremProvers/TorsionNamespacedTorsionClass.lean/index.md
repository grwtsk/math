# Verification target: Torsion Namespaced Torsion Class

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fbfc92286787be225cdb28b34c79bcf7117730e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Torsion/Variant6a52a3679bfa4622eb7eeffc2cb394d19f0f2525f91e1d2c9a43c51200c0dc75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TorsionNamespacedTorsionClass.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TorsionNamespacedTorsionClass.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fbfc92286787be225cdb28b34c79bcf7117730e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Torsion/Variant6a52a3679bfa4622eb7eeffc2cb394d19f0f2525f91e1d2c9a43c51200c0dc75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Torsion/Variant6a52a3679bfa4622eb7eeffc2cb394d19f0f2525f91e1d2c9a43c51200c0dc75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.PoleCover` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TorsionClass](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TorsionNamespacedTorsionClass.lean/declarations/torsionclass.md) | 15 | `declaration-track:5e3150772c4944d736b08e11565c160880dec0c89925796710981895183aed20` |
| 2 | `structure` | [CompactTorsion](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TorsionNamespacedTorsionClass.lean/declarations/compacttorsion.md) | 21 | `declaration-track:b555968df8e8e1bdedb93088406ac876ed5be27b29c3ead68910e4c723c3ce20` |
| 3 | `def` | [CompactTorsion.residueValue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TorsionNamespacedTorsionClass.lean/declarations/compacttorsion-residuevalue.md) | 27 | `declaration-track:ed6b6d7b31915880bc68f7e4f5846928db3a3fb80d386032560cfc27491c48f1` |
| 4 | `def` | [CompactTorsion.resolved](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TorsionNamespacedTorsionClass.lean/declarations/compacttorsion-resolved.md) | 30 | `declaration-track:97e178772a9893ab8e56038c5b940c7ab040dfa13c4ed822c8f7d2e8900af90f` |
| 5 | `structure` | [TorsionRestriction](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TorsionNamespacedTorsionClass.lean/declarations/torsionrestriction.md) | 33 | `declaration-track:7f3df305eb74116c468010eba27bab872d2a30bd8e651304ff54e0b238d13445` |
| 6 | `def` | [TorsionRestriction.admitted](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TorsionNamespacedTorsionClass.lean/declarations/torsionrestriction-admitted.md) | 40 | `declaration-track:ade32300556c68f6f9455da47ef38fdf9e0ade2f460a502d150b2b29d11e51d6` |
| 7 | `theorem` | [torsion_resolved_iff_value_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TorsionNamespacedTorsionClass.lean/declarations/torsion-resolved-iff-value-zero.md) | 43 | `result-track:f752c749c4f97632825b84afd67cf69fd6ad540aa6a2d5a2289b46aac979f1e5` |
| 8 | `theorem` | [natural_torsion_restriction_admitted](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TorsionNamespacedTorsionClass.lean/declarations/natural-torsion-restriction-admitted.md) | 48 | `result-track:3ab246c515f89c9ef8e355aaaca330c29fb06cca1ffb970f83567eec544c14e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=71b7a5a758ee87e192827299f0987e465c15557f7e19ce4ad4c9c60c6e21c65a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Torsion/Variant6a52a3679bfa4622eb7eeffc2cb394d19f0f2525f91e1d2c9a43c51200c0dc75.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Torsion/Variant6a52a3679bfa4622eb7eeffc2cb394d19f0f2525f91e1d2c9a43c51200c0dc75.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
