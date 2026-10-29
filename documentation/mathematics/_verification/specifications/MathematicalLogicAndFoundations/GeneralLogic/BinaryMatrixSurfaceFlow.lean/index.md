# Verification target: Binary Matrix Surface Flow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "adf2d21f58e7cc0b865cf9687ce00286b5ccc3e3",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BinaryMatrixSurfaceFlow/Variant2d2f0cfdbb8d8789dd3a347d79a8ee0987d8e39d58dad219244b10aab54c08f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryMatrixSurfaceFlow.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryMatrixSurfaceFlow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `adf2d21f58e7cc0b865cf9687ce00286b5ccc3e3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BinaryMatrixSurfaceFlow/Variant2d2f0cfdbb8d8789dd3a347d79a8ee0987d8e39d58dad219244b10aab54c08f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/BinaryMatrixSurfaceFlow/Variant2d2f0cfdbb8d8789dd3a347d79a8ee0987d8e39d58dad219244b10aab54c08f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.DiscreteGeometry.BinaryMatrixHomology` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BinarySurfaceFlow](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryMatrixSurfaceFlow.lean/declarations/binarysurfaceflow.md) | 29 | `declaration-track:541dd56d1dcef4e1ad7bc187386c7142674e97dd8e25b64316c7211d7f256fc9` |
| 2 | `def` | [NonFlowingAt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryMatrixSurfaceFlow.lean/declarations/nonflowingat.md) | 43 | `declaration-track:97e3bed6fc674cb9e1f59710e767c2ab108d05780624928c82b5a96cac91f075` |
| 3 | `def` | [RelaxedAt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryMatrixSurfaceFlow.lean/declarations/relaxedat.md) | 48 | `declaration-track:3650d02c82aa78ace7e2bb8fe4fb24d3c635e81d25cc8c10733cb2f110a6196a` |
| 4 | `def` | [UniformRadialAt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryMatrixSurfaceFlow.lean/declarations/uniformradialat.md) | 53 | `declaration-track:65c71185c92457744e885ca9d7a286dcfd3edd0ecdc4238fd916aa7626b14384` |
| 5 | `def` | [DirectionalAt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryMatrixSurfaceFlow.lean/declarations/directionalat.md) | 58 | `declaration-track:e420ce38863a11c6d99ebb49895bca2d0536a38dd18ef63b9918ef7a735ac33a` |
| 6 | `theorem` | [all_flows_trichotomy](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryMatrixSurfaceFlow.lean/declarations/all-flows-trichotomy.md) | 66 | `result-track:5619bb04000d3cacedc9b0cc0018881f02530b13262638b7107dbb5dce044a1c` |
| 7 | `theorem` | [nonflowing_iff_relaxed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryMatrixSurfaceFlow.lean/declarations/nonflowing-iff-relaxed.md) | 82 | `result-track:608e5ae02cc305b570a55f79c818a86a16f1bc34d6a21e3f87bec939355a8077` |
| 8 | `theorem` | [nonrelaxed_nondirectional_is_uniform_radial](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryMatrixSurfaceFlow.lean/declarations/nonrelaxed-nondirectional-is-uniform-radial.md) | 88 | `result-track:603e0676dfed08e02484e6889512ba2f8d996cbd046e092ec80ba06d9648a8a1` |
| 9 | `theorem` | [otherwise_directional](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryMatrixSurfaceFlow.lean/declarations/otherwise-directional.md) | 102 | `result-track:7a618bf5c3735830e1eccedc483342f660d893edc5b7a7c9de02b8ce9b5f12f8` |
| 10 | `structure` | [HomologicalBinarySurfaceFlow](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryMatrixSurfaceFlow.lean/declarations/homologicalbinarysurfaceflow.md) | 123 | `declaration-track:4dacd6a614e3376bb8799441f8fe36a46cf29a30cc37f617b50dc965b23707a7` |
| 11 | `def` | [toDirectionalBinaryCellFlow](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryMatrixSurfaceFlow.lean/declarations/todirectionalbinarycellflow.md) | 137 | `declaration-track:51af3eb803088a98fd2b244dfe6229e88fca6de9d6ec81be2416b5a70886155d` |
| 12 | `theorem` | [total_defect_index_constant](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryMatrixSurfaceFlow.lean/declarations/total-defect-index-constant.md) | 147 | `result-track:ed53c7f34d4be8535715cab901219cc06e0ea03eab4f0991b9912742af57678d` |
| 13 | `theorem` | [sphere_like_directional_branch_not_defectless](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BinaryMatrixSurfaceFlow.lean/declarations/sphere-like-directional-branch-not-defectless.md) | 156 | `result-track:2969778e6f3fadc4fa2c0c18f55cd86f23c5becec855630bc9215e17050d7b0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c0f22c813a4c6c7c34d8229be68245c68584906808b75d2ff085f80460b78f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BinaryMatrixSurfaceFlow/Variant2d2f0cfdbb8d8789dd3a347d79a8ee0987d8e39d58dad219244b10aab54c08f6.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/BinaryMatrixSurfaceFlow/Variant2d2f0cfdbb8d8789dd3a347d79a8ee0987d8e39d58dad219244b10aab54c08f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
