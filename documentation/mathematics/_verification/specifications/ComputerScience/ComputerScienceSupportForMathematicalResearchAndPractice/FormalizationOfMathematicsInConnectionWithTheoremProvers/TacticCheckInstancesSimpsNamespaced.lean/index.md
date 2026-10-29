# Verification target: Tactic Check Instances Simps Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae5ff728c4d9710a944090e0ab59b0000bcf2c04",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticCheckInstancesSimps/Variant5fc2543d5dddd29716f7bfbd539a8458cd26e91be23020fcbc8a040082cfcba9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TacticCheckInstancesSimpsNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TacticCheckInstancesSimpsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae5ff728c4d9710a944090e0ab59b0000bcf2c04`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticCheckInstancesSimps/Variant5fc2543d5dddd29716f7bfbd539a8458cd26e91be23020fcbc8a040082cfcba9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticCheckInstancesSimps/Variant5fc2543d5dddd29716f7bfbd539a8458cd26e91be23020fcbc8a040082cfcba9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Simps` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Wrap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TacticCheckInstancesSimpsNamespaced.lean/declarations/wrap.md) | 19 | `declaration-track:774067be6b4f04457ff08385d86f9bbea025aef7af1222d5267b492e7cf80e30` |
| 2 | `def` | [mkWrap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TacticCheckInstancesSimpsNamespaced.lean/declarations/mkwrap.md) | 24 | `declaration-track:4387d518df66809219efd12df041b8d886c94e216d57238b2e916aefdf144500` |
| 3 | `structure` | [Fn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TacticCheckInstancesSimpsNamespaced.lean/declarations/fn.md) | 28 | `declaration-track:1a59651a78678056478ef5e45decfe87df56f93e7708175fadc838190f5ac3e6` |
| 4 | `def` | [MyFn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TacticCheckInstancesSimpsNamespaced.lean/declarations/myfn.md) | 31 | `declaration-track:d7da0d768d784c1512abcd7b296c9d35950bd6bdc19ecf8a1b13b80747c132f9` |
| 5 | `def` | [idFn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TacticCheckInstancesSimpsNamespaced.lean/declarations/idfn.md) | 41 | `declaration-track:e8ff55f974b5889c9dc9b9d71e844dcc5a5b79966756e3224ed4314deaf595f4` |
| 6 | `def` | [idFn2](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TacticCheckInstancesSimpsNamespaced.lean/declarations/idfn2.md) | 50 | `declaration-track:a2b1ae2395dc6d30a420ebefb2f85131ba6356a745943b10ac5bae1c905057dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba8ee3566673670e5486b704e1a587e21b699b6404fc44a078efc32799fd95b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticCheckInstancesSimps/Variant5fc2543d5dddd29716f7bfbd539a8458cd26e91be23020fcbc8a040082cfcba9.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticCheckInstancesSimps/Variant5fc2543d5dddd29716f7bfbd539a8458cd26e91be23020fcbc8a040082cfcba9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
