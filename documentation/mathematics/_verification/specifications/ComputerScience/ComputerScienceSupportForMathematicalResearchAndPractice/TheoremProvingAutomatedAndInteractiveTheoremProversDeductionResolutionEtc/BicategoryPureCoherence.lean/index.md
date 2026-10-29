# Verification target: Bicategory Pure Coherence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7d5b211a04788541ef8d2d406c78efae1f0f630",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant5722cc790a27a9680b95c1b95d8e85b2bbf7f6671c293d323c221e3e4ae5e1bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryPureCoherence.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryPureCoherence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7d5b211a04788541ef8d2d406c78efae1f0f630`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant5722cc790a27a9680b95c1b95d8e85b2bbf7f6671c293d323c221e3e4ae5e1bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant5722cc790a27a9680b95c1b95d8e85b2bbf7f6671c293d323c221e3e4ae5e1bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Coherence.PureCoherence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Bicategory.Datatypes` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [normalizeIsoComp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryPureCoherence.lean/declarations/normalizeisocomp.md) | 34 | `declaration-track:efea99016c13d0eb1a3d24b92d9d215169cc1063168c7d0110a9e8302679d0b7` |
| 2 | `theorem` | [naturality_associator](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryPureCoherence.lean/declarations/naturality-associator.md) | 38 | `result-track:46446af8ea16efc7b121f125301720c2b33326f2a17b8e62f5e99c317bb79d1b` |
| 3 | `theorem` | [naturality_leftUnitor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryPureCoherence.lean/declarations/naturality-leftunitor.md) | 45 | `result-track:29ef99ce256986e38f20e4f83bea10c75837e6cc9d26134338c24a16271c3798` |
| 4 | `theorem` | [naturality_rightUnitor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryPureCoherence.lean/declarations/naturality-rightunitor.md) | 49 | `result-track:d8f45b12bb2e2d7e2e01e2de9c84d126a3d1e866079b43eb9600581f8f8ca908` |
| 5 | `theorem` | [naturality_id](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryPureCoherence.lean/declarations/naturality-id.md) | 53 | `result-track:fda21f030354ce6b4c9d2ee42ea13c09fec6435992107216efe794917aafefaa` |
| 6 | `theorem` | [naturality_comp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryPureCoherence.lean/declarations/naturality-comp.md) | 57 | `result-track:fe79fc49d67dc6880a80d460703bf60fd0c087f00f1bde03f78a79462fb24f76` |
| 7 | `theorem` | [naturality_whiskerLeft](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryPureCoherence.lean/declarations/naturality-whiskerleft.md) | 64 | `result-track:5eddf217b49109c5638c2bfb432f04af4e4ec66ccc9b0cca2069285aab9da68b` |
| 8 | `theorem` | [naturality_whiskerRight](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryPureCoherence.lean/declarations/naturality-whiskerright.md) | 71 | `result-track:bf6f79764646ca2dd5a44bd2703d1ca99d4214f7742d4ffadc48bb315f4f5bf1` |
| 9 | `theorem` | [naturality_inv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryPureCoherence.lean/declarations/naturality-inv.md) | 78 | `result-track:21a8189fc6ae48b37f0756240bdb233ffca077e5cfcc5d3bb95b644c5805da1e` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryPureCoherence.lean/declarations/instance.md) | 84 | `declaration-track:2d6cfd452d90edec8fa125321f826c2689f0beeb149c5c4ef5f4ab9073f2b5ce` |
| 11 | `theorem` | [of_normalize_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryPureCoherence.lean/declarations/of-normalize-eq.md) | 212 | `result-track:c58be2e896f43fee3ff04e5c5d0f1a28dbae340d89c34f81164e1b29f12c16f2` |
| 12 | `theorem` | [mk_eq_of_naturality](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryPureCoherence.lean/declarations/mk-eq-of-naturality.md) | 222 | `result-track:bf67f85d815920d359e6ef850495cf1d27cd3853c0c16aa86aabf430685338cc` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryPureCoherence.lean/declarations/instance-source-edition-2.md) | 237 | `declaration-track:646b14c948daa93b099dc1efc5eadd9aa2bcd142f62425bda57d6d0b675cf8de` |
| 14 | `def` | [pureCoherence](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryPureCoherence.lean/declarations/purecoherence.md) | 273 | `declaration-track:ddacf6527a20b8484d5c3f3be2699c70349e90a07e4ce7a64c2e89a70866c926` |
| 15 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BicategoryPureCoherence.lean/declarations/elab.md) | 277 | `declaration-track:4b3b39df3d564f2824f0d9043d15cf4d1fae6a1aaf0d4e496292cfc45f7dec35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=152516d20ffe5558446dc1e491b5e10c5e645212d4a945a4b13c2d40a0b23a70 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant5722cc790a27a9680b95c1b95d8e85b2bbf7f6671c293d323c221e3e4ae5e1bf.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variant5722cc790a27a9680b95c1b95d8e85b2bbf7f6671c293d323c221e3e4ae5e1bf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
