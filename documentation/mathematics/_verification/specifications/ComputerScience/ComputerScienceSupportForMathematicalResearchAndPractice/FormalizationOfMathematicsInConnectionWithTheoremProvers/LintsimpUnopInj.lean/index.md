# Verification target: Lintsimp Unop Inj

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "969d556f493d770df1ac1ecfa39e51438def6c1e",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lintsimp/Variant17915f249179f1ad298e1c22d26e16f76ebef915d377261777dfb645ddab1434.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LintsimpUnopInj.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LintsimpUnopInj.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `969d556f493d770df1ac1ecfa39e51438def6c1e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lintsimp/Variant17915f249179f1ad298e1c22d26e16f76ebef915d377261777dfb645ddab1434.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lintsimp/Variant17915f249179f1ad298e1c22d26e16f76ebef915d377261777dfb645ddab1434.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Tactic.Lint` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [f](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LintsimpUnopInj.lean/declarations/f.md) | 5 | `declaration-track:b41699491e508dde38f95665b43ec4ac657e99e81a573cec2f5db3ea2440c815` |
| 2 | `def` | [g](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LintsimpUnopInj.lean/declarations/g.md) | 6 | `declaration-track:ac1e6d34303ac5607877cda69a4793810ed0b441830d7e6c2c29cd5f79b2695a` |
| 3 | `def` | [h](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LintsimpUnopInj.lean/declarations/h.md) | 7 | `declaration-track:7114dcc5f2806addb5ce62fcd4c81c16430a3e30e7b85bb1cde452200a6144fc` |
| 4 | `theorem` | [fg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LintsimpUnopInj.lean/declarations/fg.md) | 8 | `result-track:f8df1af428a8c572ca543c240a336a59bf6e4c95c2dcf658a8b5bb9a9e6c3044` |
| 5 | `theorem` | [fh](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LintsimpUnopInj.lean/declarations/fh.md) | 9 | `result-track:831956e78b291873498f122a4a90c43f454a1fb267757e4c6674fc215974fab5` |
| 6 | `theorem` | [and_comm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LintsimpUnopInj.lean/declarations/and-comm.md) | 12 | `result-track:792540d64d48e37b2cf7bf77835c071fe6f5fd5dad1038edc74db79ef2871cab` |
| 7 | `theorem` | [Prod.mk_fst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LintsimpUnopInj.lean/declarations/prod-mk-fst.md) | 15 | `result-track:6f156d279a0461004c4bfdd64f0e6c5c88f3e83ef99915c22df982e88fe078c0` |
| 8 | `def` | [SemiconjBy](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LintsimpUnopInj.lean/declarations/semiconjby.md) | 18 | `declaration-track:c7c6aac4443020e5fb2ea950cb3b95300fc1711fede9ca9741547ee94250876d` |
| 9 | `structure` | [MulOpposite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LintsimpUnopInj.lean/declarations/mulopposite.md) | 21 | `declaration-track:a4bbe451b48a2b77d8f2ceadf52914a3fe1353bcd50fe604def6746026366ea4` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LintsimpUnopInj.lean/declarations/instance.md) | 28 | `declaration-track:3972bbb3c5f45223ff51b974aafe050ef9e8361e25dcf3ed363f5a43bc759d55` |
| 11 | `theorem` | [unop_inj](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LintsimpUnopInj.lean/declarations/unop-inj.md) | 31 | `result-track:c01155c7b8d0f87a5caee4961ff29f7f7ea26f0ca1624f60a1c6e3881edf5c99` |
| 12 | `theorem` | [semiconj_by_unop](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LintsimpUnopInj.lean/declarations/semiconj-by-unop.md) | 35 | `result-track:a3e596f52ff6e37f000fddf5c6984e949b3222cd3eb0bfe1a464158ac0400d6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f049840fe2cc759ed7e4dfe14ed4f2ce71cb14d287ff3b2bece232977b06dd7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lintsimp/Variant17915f249179f1ad298e1c22d26e16f76ebef915d377261777dfb645ddab1434.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lintsimp/Variant17915f249179f1ad298e1c22d26e16f76ebef915d377261777dfb645ddab1434.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
