# Verification target: Quantitative Gap Source Schur

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebb6317c945ff5e6b3b858609bb837e611eae54e",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeGapSourceSchur/Variant278f26c35df1203ede917f926a87e39cb08dc4357f661b21434519ec52aa49af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/QuantitativeGapSourceSchur.lean/index.md) · [Full source](../../../../MeasureAndIntegration/QuantitativeGapSourceSchur.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebb6317c945ff5e6b3b858609bb837e611eae54e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeGapSourceSchur/Variant278f26c35df1203ede917f926a87e39cb08dc4357f661b21434519ec52aa49af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeGapSourceSchur/Variant278f26c35df1203ede917f926a87e39cb08dc4357f661b21434519ec52aa49af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.QuantitativeGapSchur` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.QuantitativeGapSourceMetric` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceDivisorLatticeGram` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualSourceCoupling](../../../../MeasureAndIntegration/QuantitativeGapSourceSchur.lean/declarations/actualsourcecoupling.md) | 45 | `declaration-track:367855757d951317af772171d69237cbf538630e77bcc93b6aadf35eac38c339` |
| 2 | `theorem` | [actualSourceCoupling_pos](../../../../MeasureAndIntegration/QuantitativeGapSourceSchur.lean/declarations/actualsourcecoupling-pos.md) | 47 | `result-track:5b573af0b6040fedacb42e5fb01a7b709d9f7bec098537685f021f1fa9f6a9f3` |
| 3 | `theorem` | [actualSourceCoupling_lt_one](../../../../MeasureAndIntegration/QuantitativeGapSourceSchur.lean/declarations/actualsourcecoupling-lt-one.md) | 51 | `result-track:6af417dd25f7b441c1e450e984bee4b37ee8ac533e45f2f7478aba85ce2f2870` |
| 4 | `theorem` | [actualSourceCoupling_inner](../../../../MeasureAndIntegration/QuantitativeGapSourceSchur.lean/declarations/actualsourcecoupling-inner.md) | 72 | `result-track:5a983a8f39eecd328f7d042cfb40e74313a2df3afaa4f49fa73cf24b0e02dbc0` |
| 5 | `def` | [twoSourceIndex](../../../../MeasureAndIntegration/QuantitativeGapSourceSchur.lean/declarations/twosourceindex.md) | 99 | `declaration-track:1c4ab6ba7e2e6706d7a7a11beef4328b0aad5f752f98506eb91792146f728898` |
| 6 | `def` | [twoSourceGram](../../../../MeasureAndIntegration/QuantitativeGapSourceSchur.lean/declarations/twosourcegram.md) | 104 | `declaration-track:064caafc0c8398fe47ce870ab633a225f68118034df463f990b0e563fa6ee847` |
| 7 | `def` | [actualSourceCross](../../../../MeasureAndIntegration/QuantitativeGapSourceSchur.lean/declarations/actualsourcecross.md) | 109 | `declaration-track:32892f4f5ece156cc1a51449cae3f158448b97450e9fe0d86d2874f96f33cf51` |
| 8 | `theorem` | [twoSourceGram_eq_block](../../../../MeasureAndIntegration/QuantitativeGapSourceSchur.lean/declarations/twosourcegram-eq-block.md) | 111 | `result-track:a66772b17cb19f0574263054a090ecafe3e154268896666cf6f4077576e072ea` |
| 9 | `instance` | [actualSourceOneInvertible](../../../../MeasureAndIntegration/QuantitativeGapSourceSchur.lean/declarations/actualsourceoneinvertible.md) | 124 | `declaration-track:6e0d3960c3398ced80cf4499572c2d1a0f5899a1a4ba44e60ee9d2faef12489f` |
| 10 | `theorem` | [actualSourceCross_margin](../../../../MeasureAndIntegration/QuantitativeGapSourceSchur.lean/declarations/actualsourcecross-margin.md) | 127 | `result-track:6c49af3da9359db6658a44330f68351e949389c6dc44403cb7c03af5b42e4230` |
| 11 | `theorem` | [actualSourceCross_norm](../../../../MeasureAndIntegration/QuantitativeGapSourceSchur.lean/declarations/actualsourcecross-norm.md) | 140 | `result-track:00b458966afd49a94fe0040f3d37eeaeb4535c15a7715f18519d5455c51d281f` |
| 12 | `def` | [actualSourceGap](../../../../MeasureAndIntegration/QuantitativeGapSourceSchur.lean/declarations/actualsourcegap.md) | 152 | `declaration-track:fa074d01d256e168281e30fcd6204a7a0b6b460c863e2d4ea41be4c9011737da` |
| 13 | `theorem` | [actualSourceGap_pos](../../../../MeasureAndIntegration/QuantitativeGapSourceSchur.lean/declarations/actualsourcegap-pos.md) | 154 | `result-track:aff5d596eee7aeb7b817fa144203e6148566a568e12c356666d5cdf94825b43a` |
| 14 | `theorem` | [actual_two_source_gram_coercive](../../../../MeasureAndIntegration/QuantitativeGapSourceSchur.lean/declarations/actual-two-source-gram-coercive.md) | 165 | `result-track:5fd886de0a99281c59326cbcb94f31da7690ce444aa3f76dd86db8cd1f2f012a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b7ab634e11430696b8c2de8dc922db29882b4c5eec82f670fbeb628c3463ef5a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeGapSourceSchur/Variant278f26c35df1203ede917f926a87e39cb08dc4357f661b21434519ec52aa49af.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeGapSourceSchur/Variant278f26c35df1203ede917f926a87e39cb08dc4357f661b21434519ec52aa49af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
