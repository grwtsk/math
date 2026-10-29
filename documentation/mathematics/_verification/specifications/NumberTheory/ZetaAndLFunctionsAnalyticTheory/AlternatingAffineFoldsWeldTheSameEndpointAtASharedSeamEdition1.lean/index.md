# Verification target: Alternating Affine Folds Weld The Same Endpoint At AShared Seam Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a237e0a50e9519eb623d33d2d6a15b228f4432e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AffineAccordionWeld/Variant6a82335ba3cdeee6a3a91b09c86d6ffe1a72ee0e4800fa63cfaec5898a3d137f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AlternatingAffineFoldsWeldTheSameEndpointAtASharedSeamEdition1.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AlternatingAffineFoldsWeldTheSameEndpointAtASharedSeamEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a237e0a50e9519eb623d33d2d6a15b228f4432e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AffineAccordionWeld/Variant6a82335ba3cdeee6a3a91b09c86d6ffe1a72ee0e4800fa63cfaec5898a3d137f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AffineAccordionWeld/Variant6a82335ba3cdeee6a3a91b09c86d6ffe1a72ee0e4800fa63cfaec5898a3d137f.lean.json)

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
| 1 | `def` | [fold](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AlternatingAffineFoldsWeldTheSameEndpointAtASharedSeamEdition1.lean/declarations/fold.md) | 26 | `declaration-track:9cc16ddf43a089215033c1afc6e22acae0aab4e92121c1e0d9b48153a8329a51` |
| 2 | `def` | [unfoldPoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AlternatingAffineFoldsWeldTheSameEndpointAtASharedSeamEdition1.lean/declarations/unfoldpoint.md) | 31 | `declaration-track:f785cee4c5b41c9fd026ae14f5ee92f39fbe3ca2ef2e6a018c167a623eed5a3a` |
| 3 | `def` | [orientedFold](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AlternatingAffineFoldsWeldTheSameEndpointAtASharedSeamEdition1.lean/declarations/orientedfold.md) | 36 | `declaration-track:e9d0ef87ab78c78071863f548a134237be0556f19544836b8173f393152bf9eb` |
| 4 | `theorem` | [fold_left](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AlternatingAffineFoldsWeldTheSameEndpointAtASharedSeamEdition1.lean/declarations/fold-left.md) | 38 | `result-track:924b3f49be5b4089503f8045d2918c70802d1fbfb70e8deab8e19722d541d0b7` |
| 5 | `theorem` | [fold_right](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AlternatingAffineFoldsWeldTheSameEndpointAtASharedSeamEdition1.lean/declarations/fold-right.md) | 40 | `result-track:7733675fb65d757aeb33a0c6c2c0bacd2f71b22d97ae17ce00d3a798023a25a8` |
| 6 | `theorem` | [fold_unfold](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AlternatingAffineFoldsWeldTheSameEndpointAtASharedSeamEdition1.lean/declarations/fold-unfold.md) | 45 | `result-track:2eb68d092b67ad027a11423343403b5987cea8d69d5533b0238fdb3961dceb43` |
| 7 | `theorem` | [unfold_fold](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AlternatingAffineFoldsWeldTheSameEndpointAtASharedSeamEdition1.lean/declarations/unfold-fold.md) | 51 | `result-track:4db9992a1ac347eec9d82e297bd421ce418a070276811f67259b85bb38c66625` |
| 8 | `theorem` | [fold_strictMono](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AlternatingAffineFoldsWeldTheSameEndpointAtASharedSeamEdition1.lean/declarations/fold-strictmono.md) | 57 | `result-track:0af8015e278233a880dae87a8f4c5eeac61880c01d5c31c6e42d41195528bb3d` |
| 9 | `theorem` | [fold_maps_unit](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AlternatingAffineFoldsWeldTheSameEndpointAtASharedSeamEdition1.lean/declarations/fold-maps-unit.md) | 63 | `result-track:efb429d55c10c30bb48b133d67dba0916518ea23845bff3f93ca00ada1706339` |
| 10 | `theorem` | [shared_seam_weld](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AlternatingAffineFoldsWeldTheSameEndpointAtASharedSeamEdition1.lean/declarations/shared-seam-weld.md) | 70 | `result-track:a12a54db3a5024593a59f0a488e3c0bb986c949690d6439d3955ad474a29f6d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bbe15cfd8d6b71d32fa89aeffa5ef0981eba881236b8e2318e8292b08b083b6e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AffineAccordionWeld/Variant6a82335ba3cdeee6a3a91b09c86d6ffe1a72ee0e4800fa63cfaec5898a3d137f.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AffineAccordionWeld/Variant6a82335ba3cdeee6a3a91b09c86d6ffe1a72ee0e4800fa63cfaec5898a3d137f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
