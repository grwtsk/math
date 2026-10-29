# Verification target: Pivot Atlas

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5bd226b3e9657e1fa0c4f0f049bfce8f3d65e25e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PivotAtlas/Variantc004ecb0ee73b96e34251365f703ddc2a5e863416699e8abf0d3413eefe73b42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PivotAtlas.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PivotAtlas.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5bd226b3e9657e1fa0c4f0f049bfce8f3d65e25e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PivotAtlas/Variantc004ecb0ee73b96e34251365f703ddc2a5e863416699e8abf0d3413eefe73b42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PivotAtlas/Variantc004ecb0ee73b96e34251365f703ddc2a5e863416699e8abf0d3413eefe73b42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CanonicalPath.Pivot` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PivotOverlap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PivotAtlas.lean/declarations/pivotoverlap.md) | 19 | `declaration-track:9eacc842c7e2af5169e94d73811f0eedce37e716b5d2431e6d61cc63b80ec5e6` |
| 2 | `structure` | [PivotTransition](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PivotAtlas.lean/declarations/pivottransition.md) | 26 | `declaration-track:d9fec5169cf9f8c634cd84f546944c495f70a2cfb7414b50f2d807f091248403` |
| 3 | `theorem` | [PivotTransition.preserves_index](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PivotAtlas.lean/declarations/pivottransition-preserves-index.md) | 33 | `result-track:64c3441f54c1762b39a20bdd7e7e28aa00439f242d3592bd53207bdbaed9080d` |
| 4 | `structure` | [CanonicalPivotAtlas](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PivotAtlas.lean/declarations/canonicalpivotatlas.md) | 45 | `declaration-track:b69119fd93cbf3ccd8b561497380fd72f018c9c6ee62313c57abc597c115a8d9` |
| 5 | `theorem` | [CanonicalPivotAtlas.covers_canonical_path](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PivotAtlas.lean/declarations/canonicalpivotatlas-covers-canonical-path.md) | 56 | `result-track:1aa9d73ea9203d8d4e3f66d58ee2f7fce9859e891155b8faa7240703db0bf7d4` |
| 6 | `theorem` | [CanonicalPivotAtlas.cocycle_compatible](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PivotAtlas.lean/declarations/canonicalpivotatlas-cocycle-compatible.md) | 62 | `result-track:dddc2d420ae32008ba4adbbd4d683128649eee1f1e4723a0b7a3f4c039263fb4` |
| 7 | `theorem` | [CanonicalPivotAtlas.barrier_closed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PivotAtlas.lean/declarations/canonicalpivotatlas-barrier-closed.md) | 68 | `result-track:5605be4a30e7aa822ec06e0e70a030b2b42ab18408d7257cb01700a62c52a5cb` |
| 8 | `theorem` | [CanonicalPivotAtlas.transition_preserves_index](../../../../../MathematicalLogicAndFoundations/GeneralLogic/PivotAtlas.lean/declarations/canonicalpivotatlas-transition-preserves-index.md) | 74 | `result-track:a12d7543769c1c3d0c758d086b8f3e8d0f74941775be8a63e09dfda60275bfb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=05d564d441027d4815f9a8cbe2994b27a07f52a82038d973d6906d0b7cda1b61 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PivotAtlas/Variantc004ecb0ee73b96e34251365f703ddc2a5e863416699e8abf0d3413eefe73b42.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PivotAtlas/Variantc004ecb0ee73b96e34251365f703ddc2a5e863416699e8abf0d3413eefe73b42.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
