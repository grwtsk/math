# Verification target: Alternating Affine Folds Weld The Same Endpoint At AShared Seam Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa38cb37352230e9203bed5fc01dcceb339fe006",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AffineAccordionWeld/Varianta6eb192f29de58d37a1d19263b25f972d9fbffad9d477bb4184fd7c847a382f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AlternatingAffineFoldsWeldTheSameEndpointAtASharedSeamEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AlternatingAffineFoldsWeldTheSameEndpointAtASharedSeamEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa38cb37352230e9203bed5fc01dcceb339fe006`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AffineAccordionWeld/Varianta6eb192f29de58d37a1d19263b25f972d9fbffad9d477bb4184fd7c847a382f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AffineAccordionWeld/Varianta6eb192f29de58d37a1d19263b25f972d9fbffad9d477bb4184fd7c847a382f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.WeightedHodge` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fold](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AlternatingAffineFoldsWeldTheSameEndpointAtASharedSeamEdition2.lean/declarations/fold.md) | 22 | `declaration-track:452c022c2420b8982f4f5795c600ef63b30153651c0c7ca8894945c34e8eea11` |
| 2 | `def` | [unfoldPoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AlternatingAffineFoldsWeldTheSameEndpointAtASharedSeamEdition2.lean/declarations/unfoldpoint.md) | 23 | `declaration-track:f5ad2c01a2331d5e664af839a058d75dd61b184d64b68e553105bccd22ab4d38` |
| 3 | `def` | [orientedFold](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AlternatingAffineFoldsWeldTheSameEndpointAtASharedSeamEdition2.lean/declarations/orientedfold.md) | 24 | `declaration-track:480b5397225bf713c1f69a936ab7bfefdd32cb79c41125902b5c4c74c3c2f407` |
| 4 | `theorem` | [fold_left](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AlternatingAffineFoldsWeldTheSameEndpointAtASharedSeamEdition2.lean/declarations/fold-left.md) | 26 | `result-track:f6d0819c20a08611b0c1171151dfbfec5670e4dbc5ee73d59cedb1daae1e57fc` |
| 5 | `theorem` | [fold_right](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AlternatingAffineFoldsWeldTheSameEndpointAtASharedSeamEdition2.lean/declarations/fold-right.md) | 28 | `result-track:59ece0841f0bf030704f6e44930dac0280221f3f21f9e45e9c1776a0c33415fb` |
| 6 | `theorem` | [fold_unfold](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AlternatingAffineFoldsWeldTheSameEndpointAtASharedSeamEdition2.lean/declarations/fold-unfold.md) | 33 | `result-track:b024b1922321633354140407e449b1b56b31c8f11c79194917af7cee84fe9ed9` |
| 7 | `theorem` | [unfold_fold](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AlternatingAffineFoldsWeldTheSameEndpointAtASharedSeamEdition2.lean/declarations/unfold-fold.md) | 39 | `result-track:606867a43d3fb0d647b702048bbdfcaca798bacefc4c2d95dcad4d810d854d78` |
| 8 | `theorem` | [fold_strictMono](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AlternatingAffineFoldsWeldTheSameEndpointAtASharedSeamEdition2.lean/declarations/fold-strictmono.md) | 45 | `result-track:0efaa2254379105563dde1967daad3b1255bcf069228515116be0836055f1da7` |
| 9 | `theorem` | [fold_maps_unit](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AlternatingAffineFoldsWeldTheSameEndpointAtASharedSeamEdition2.lean/declarations/fold-maps-unit.md) | 51 | `result-track:f609bb4bcc5c1ea3d471a62cfc449032e97e9e8a27d00ae48a71c4b54a26d592` |
| 10 | `theorem` | [shared_seam_weld](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AlternatingAffineFoldsWeldTheSameEndpointAtASharedSeamEdition2.lean/declarations/shared-seam-weld.md) | 58 | `result-track:715912ea02e4f8089ccc8b04959c9a87b9a103204f786c679787fd3e06a1c244` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e45e8c3634ecb535e1a56e280e6fea5adef6f3b7b9f42b2daf9b64570583e684 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AffineAccordionWeld/Varianta6eb192f29de58d37a1d19263b25f972d9fbffad9d477bb4184fd7c847a382f4.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AffineAccordionWeld/Varianta6eb192f29de58d37a1d19263b25f972d9fbffad9d477bb4184fd7c847a382f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
