# Verification target: Proper Grid Two Coloring

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bee0198187a24c8157fa56e4d1bd76e73d1a837",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/VertexColoring/FiniteBinaryCarrierMathematics/Variant4e551dbf892dab68/ProperGridTwoColoring.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/ProperGridTwoColoring.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/ProperGridTwoColoring.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bee0198187a24c8157fa56e4d1bd76e73d1a837`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/VertexColoring/FiniteBinaryCarrierMathematics/Variant4e551dbf892dab68/ProperGridTwoColoring.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/VertexColoring/FiniteBinaryCarrierMathematics/Variant4e551dbf892dab68/ProperGridTwoColoring.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Carrier.BinaryMatrix` — import line 19; external provider; requires a separately pinned dependency.
- `Folder.Carrier.Grid` — import line 20; external provider; requires a separately pinned dependency.
- [Parity Pattern Construction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ParityPatternConstruction.lean/index.md) — import line 22; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsProper2Coloring](../../../../../Combinatorics/GraphTheory/ProperGridTwoColoring.lean/declarations/isproper2coloring.md) | 42 | `declaration-track:290c6ff3feaac3fd89d2e0c40497db766f3d646496bfa5f8088cfd4bba07214e` |
| 2 | `theorem` | [cast_succ_zmod_two_ne](../../../../../Combinatorics/GraphTheory/ProperGridTwoColoring.lean/declarations/cast-succ-zmod-two-ne.md) | 47 | `result-track:20a869df5ae855d7843adcaecbd2c2e1a078e87098cd1979c6efeb28c7b4c83b` |
| 3 | `theorem` | [step_ne](../../../../../Combinatorics/GraphTheory/ProperGridTwoColoring.lean/declarations/step-ne.md) | 56 | `result-track:110a7404d801df134292cc8dc6b96e1a44adcfb6d6f75101431762d075a3a36d` |
| 4 | `theorem` | [step_flip](../../../../../Combinatorics/GraphTheory/ProperGridTwoColoring.lean/declarations/step-flip.md) | 71 | `result-track:de4aa61e8c0dbce3309950df1e75fa0d65fbd46df525d91585736416dfb2e69b` |
| 5 | `theorem` | [checkerboard_isProper2Coloring](../../../../../Combinatorics/GraphTheory/ProperGridTwoColoring.lean/declarations/checkerboard-isproper2coloring.md) | 80 | `result-track:8b6d972e83d2a6a602c20986cba758d1a79e338a83d4d909c6f47a5ae70eeae3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce6b27aa3da967d786509b58653657d00deb88becfdd227c3f4276f04ad247ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/VertexColoring/FiniteBinaryCarrierMathematics/Variant4e551dbf892dab68/ProperGridTwoColoring.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/VertexColoring/FiniteBinaryCarrierMathematics/Variant4e551dbf892dab68/ProperGridTwoColoring.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
