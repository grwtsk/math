# Verification target: Init Core Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08a6fe4e11caf6d6f5392621ad5632e608fcbc6a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant6ceafda7534eb290317af5519ad754d063fcd51bb112354e926ad415cb2d9843.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitCoreNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitCoreNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08a6fe4e11caf6d6f5392621ad5632e608fcbc6a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant6ceafda7534eb290317af5519ad754d063fcd51bb112354e926ad415cb2d9843.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant6ceafda7534eb290317af5519ad754d063fcd51bb112354e926ad415cb2d9843.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Mathport.Rename` — import line 13; external provider; requires a separately pinned dependency.
- `Std.Classes.SetNotation` — import line 14; external provider; requires a separately pinned dependency.
- `Std.Classes.Dvd` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Relation.Rfl` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Relation.Symm` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Relation.Trans` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Prod.mk.injArrow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitCoreNamespaced.lean/declarations/prod-mk-injarrow.md) | 77 | `declaration-track:a884a5e5ae26587488269eebf857a6f3db9733b47441a4d644dbe8c66272f289` |
| 2 | `def` | [PProd.mk.injArrow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitCoreNamespaced.lean/declarations/pprod-mk-injarrow.md) | 81 | `declaration-track:4c40c9d61f425d9181fc7ef34d9ba65396c41fb79154477a57be32c44e0856f1` |
| 3 | `class` | [AndThen'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitCoreNamespaced.lean/declarations/andthen.md) | 142 | `declaration-track:23ff159fb61aefc973707cfc107493a06828cfa0908ad4fcdf8eb86ed070323b` |
| 4 | `def` | [Std.Priority.default](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitCoreNamespaced.lean/declarations/std-priority-default.md) | 170 | `declaration-track:8b1f4e5ba106821b3a05e4d47e0a225d3e6bae7e760b35be94b04c7be9285da8` |
| 5 | `def` | [Std.Priority.max](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitCoreNamespaced.lean/declarations/std-priority-max.md) | 171 | `declaration-track:a35531a3e2f1c591834692339642e0cf0d523064471cbe1a64c4c9d0790819f0` |
| 6 | `def` | [Nat.prio](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitCoreNamespaced.lean/declarations/nat-prio.md) | 173 | `declaration-track:c93c418ac5e595910f833244656aa36bc6f104e2bd9c95100025431b027db9d4` |
| 7 | `def` | [Std.Prec.max](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitCoreNamespaced.lean/declarations/std-prec-max.md) | 174 | `declaration-track:75e64507d357cb59b83ed63055d3d62b5d01ef52eff76c4a877cf5fbcb708739` |
| 8 | `def` | [Std.Prec.arrow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitCoreNamespaced.lean/declarations/std-prec-arrow.md) | 175 | `declaration-track:6f92a05b39c2e79926c8553c5d075f5bc680d4b53f66448038894e5a22b489ff` |
| 9 | `def` | [Std.Prec.maxPlus](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitCoreNamespaced.lean/declarations/std-prec-maxplus.md) | 177 | `declaration-track:446142897d0cecdde11c2da9581c935eee279cc2a5a4ea17ccead9fdb3efb4ca` |
| 10 | `def` | [I](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitCoreNamespaced.lean/declarations/i.md) | 188 | `declaration-track:78ae820c6f90b8321345599159db71ab144aeb86fd2aca82531d128011e4dcd1` |
| 11 | `def` | [K](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitCoreNamespaced.lean/declarations/k.md) | 189 | `declaration-track:1d4679149640b5ced3b1ab866c6e62051cc65b33365d0972b28ceece9781d26d` |
| 12 | `def` | [S](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitCoreNamespaced.lean/declarations/s.md) | 190 | `declaration-track:c975973b7ca39e83c6bd2de7cca54ae5a3640d1a95ff92c1c4664fc78e42fb97` |
| 13 | `inductive` | [BinTree](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitCoreNamespaced.lean/declarations/bintree.md) | 194 | `declaration-track:3de2f41e1d9174dde9281b72cddd56eedab1b3db5ccca05651e66d3b3b5c035c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4b4b071e6c596c58e498e4cfd27972e2b2b0a687bc14f9b17facbb178289d8e3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant6ceafda7534eb290317af5519ad754d063fcd51bb112354e926ad415cb2d9843.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant6ceafda7534eb290317af5519ad754d063fcd51bb112354e926ad415cb2d9843.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
