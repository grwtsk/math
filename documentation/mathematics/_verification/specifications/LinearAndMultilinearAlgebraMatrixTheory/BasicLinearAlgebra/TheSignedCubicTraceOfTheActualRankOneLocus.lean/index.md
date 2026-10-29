# Verification target: The Signed Cubic Trace Of The Actual Rank One Locus

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0917764f1244f48761a9593f3f668e20dfc69c3e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchRankOneCubic/Variant943ab5b7603abdec321564a5a80c2b3b4ba3280551050adaa0ca02e8473560f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TheSignedCubicTraceOfTheActualRankOneLocus.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TheSignedCubicTraceOfTheActualRankOneLocus.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0917764f1244f48761a9593f3f668e20dfc69c3e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchRankOneCubic/Variant943ab5b7603abdec321564a5a80c2b3b4ba3280551050adaa0ca02e8473560f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchRankOneCubic/Variant943ab5b7603abdec321564a5a80c2b3b4ba3280551050adaa0ca02e8473560f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.RankOneTraceBoundary` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [root](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TheSignedCubicTraceOfTheActualRankOneLocus.lean/declarations/root.md) | 21 | `declaration-track:cb646f4cc95b96ecefdae4aea4e38655cfe41ea853e4eef5f8b81641cdbc5f3b` |
| 2 | `def` | [detail](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TheSignedCubicTraceOfTheActualRankOneLocus.lean/declarations/detail.md) | 26 | `declaration-track:f7556f485c0196332524f5816244bbbd1bb270697fb76e7711761e7cde2b1b58` |
| 3 | `theorem` | [outer_trace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TheSignedCubicTraceOfTheActualRankOneLocus.lean/declarations/outer-trace.md) | 28 | `result-track:24ed0a7289d62c4e0c61915616453f72051f6841570ac3b50ffe2fab907677c5` |
| 4 | `theorem` | [outer_square](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TheSignedCubicTraceOfTheActualRankOneLocus.lean/declarations/outer-square.md) | 30 | `result-track:5bc506a8f2c7245c7a15be5f47f384b95c2676acc983d09133cb0f2605163943` |
| 5 | `theorem` | [outer_action](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TheSignedCubicTraceOfTheActualRankOneLocus.lean/declarations/outer-action.md) | 41 | `result-track:9c372b7e13c0a6c8b2d0d52b8efb1f61f0b8a0602fa6c33c827a35a18c1340c6` |
| 6 | `theorem` | [detail_trace_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TheSignedCubicTraceOfTheActualRankOneLocus.lean/declarations/detail-trace-zero.md) | 52 | `result-track:974bbd91acb66f72fb2f6652b8cd1a4b3ede975c9eacad991c005637764159ff` |
| 7 | `theorem` | [marked_action](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TheSignedCubicTraceOfTheActualRankOneLocus.lean/declarations/marked-action.md) | 55 | `result-track:073fd677a4034fa3b609ebf8af70f32f46eb5de4a6dcfe64c1e1d718d5f37e26` |
| 8 | `theorem` | [detail_square](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TheSignedCubicTraceOfTheActualRankOneLocus.lean/declarations/detail-square.md) | 60 | `result-track:101fa53c374a4fa2a68d2f4ba37ccc7081cd25926ed5652e328fe73e92ccebdf` |
| 9 | `theorem` | [detail_cube](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TheSignedCubicTraceOfTheActualRankOneLocus.lean/declarations/detail-cube.md) | 68 | `result-track:b417179be371fa6fe6305cdeb771c169db4358f088f1c7b049b5b803174672cf` |
| 10 | `theorem` | [quadratic_trace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TheSignedCubicTraceOfTheActualRankOneLocus.lean/declarations/quadratic-trace.md) | 78 | `result-track:97195f0c17394b66fe806d07d51a691d65f8dd74890d61d9baab4d60e7c53200` |
| 11 | `theorem` | [cubic_trace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TheSignedCubicTraceOfTheActualRankOneLocus.lean/declarations/cubic-trace.md) | 85 | `result-track:f2ed479e85d3274e4b7c87927af0d7f9f6e01071bb043badddc4c61bd77e388c` |
| 12 | `theorem` | [signed_cube_recovers_root](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TheSignedCubicTraceOfTheActualRankOneLocus.lean/declarations/signed-cube-recovers-root.md) | 92 | `result-track:4bd432b3d063e95c3730eb7f1b4feec817a7d8a93b908a462c9b022151567866` |
| 13 | `theorem` | [cubic_order_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TheSignedCubicTraceOfTheActualRankOneLocus.lean/declarations/cubic-order-iff.md) | 97 | `result-track:2d35dc62c56f91b5d96b4276a2034bfe9486ef32f93b5536c88a8601d64c13dc` |
| 14 | `theorem` | [cube_zero_iff_root_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TheSignedCubicTraceOfTheActualRankOneLocus.lean/declarations/cube-zero-iff-root-zero.md) | 105 | `result-track:b7c18426fa5bc458cb713c7dbbaa4ca1e72228fed0ec88e90b9d03f9140c3205` |
| 15 | `theorem` | [marked_rescaling](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TheSignedCubicTraceOfTheActualRankOneLocus.lean/declarations/marked-rescaling.md) | 112 | `result-track:6fc4bb3f98cd90a5571fb8c90056baa74560cdefb1fde0209ced94f8ce3757ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7054cb39dc1bd6ac6e2ac257c11db749e1b29a0562181bd4544ef5d22f70d3a7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchRankOneCubic/Variant943ab5b7603abdec321564a5a80c2b3b4ba3280551050adaa0ca02e8473560f4.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchRankOneCubic/Variant943ab5b7603abdec321564a5a80c2b3b4ba3280551050adaa0ca02e8473560f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
