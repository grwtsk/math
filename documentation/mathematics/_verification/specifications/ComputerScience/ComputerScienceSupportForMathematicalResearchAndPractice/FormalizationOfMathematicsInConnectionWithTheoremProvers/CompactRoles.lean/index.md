# Verification target: Compact Roles

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "036b31513a44cbfab40703c9cdfc0d83bc7638be",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactRoles/Variant9bc772db0d48ef0be0a21eef92376290a5ff49ccb900f876e8ff12144d63d566.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompactRoles.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompactRoles.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `036b31513a44cbfab40703c9cdfc0d83bc7638be`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactRoles/Variant9bc772db0d48ef0be0a21eef92376290a5ff49ccb900f876e8ff12144d63d566.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactRoles/Variant9bc772db0d48ef0be0a21eef92376290a5ff49ccb900f876e8ff12144d63d566.lean.json)

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
| 1 | `inductive` | [RadoProjectedRole](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompactRoles.lean/declarations/radoprojectedrole.md) | 5 | `declaration-track:2bd465779f3eee395b953de12ac500df72eac61eb599a202dc322c227186419c` |
| 2 | `def` | [RadoProjectedRole.importsRadoTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompactRoles.lean/declarations/radoprojectedrole-importsradotheorem.md) | 23 | `declaration-track:a9bb3b1e1acb7a770d46ad0aba596e90a818c5a04b2fd17ba5bf92a7ded2d59f` |
| 3 | `def` | [RadoProjectedRole.pairCorrelationIsAuthority](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompactRoles.lean/declarations/radoprojectedrole-paircorrelationisauthority.md) | 27 | `declaration-track:274eeb56a2c9408940bf44a4e486767aabacaba0e10410420df47c559ceb5727` |
| 4 | `theorem` | [radoProjected_imports_no_rado_theorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompactRoles.lean/declarations/radoprojected-imports-no-rado-theorem.md) | 31 | `result-track:7c6a1954fd276379626d614de25808d4d148a352f39fee64d77246b9f5c1659d` |
| 5 | `theorem` | [radoProjected_pairCorrelation_regularizerOnly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompactRoles.lean/declarations/radoprojected-paircorrelation-regularizeronly.md) | 36 | `result-track:58e516e1d7497b97a4a4311c3b8a00aefa536b2feda8329d80f5f2f5a13d02dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=16c1e3c027f337a6309dc6f9f269e76cc9d299d80ba96691d90c5838817bc69d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactRoles/Variant9bc772db0d48ef0be0a21eef92376290a5ff49ccb900f876e8ff12144d63d566.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactRoles/Variant9bc772db0d48ef0be0a21eef92376290a5ff49ccb900f876e8ff12144d63d566.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
