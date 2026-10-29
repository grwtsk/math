# Verification target: Root Actual Anchored Strip Refinement Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e0c1870d9be99c3f92939044028641caf660a0d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/3a021dfd59d32d4e5d05RootActualAnchoredStripRefinement/Variantd581dbefc7fb594b5e83999fe017796e406e00a1c954bcb6d507b5bb5bf80e23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/RootActualAnchoredStripRefinementNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/RootActualAnchoredStripRefinementNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e0c1870d9be99c3f92939044028641caf660a0d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/3a021dfd59d32d4e5d05RootActualAnchoredStripRefinement/Variantd581dbefc7fb594b5e83999fe017796e406e00a1c954bcb6d507b5bb5bf80e23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/3a021dfd59d32d4e5d05RootActualAnchoredStripRefinement/Variantd581dbefc7fb594b5e83999fe017796e406e00a1c954bcb6d507b5bb5bf80e23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualAdjointLowerStrip` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [strip_orders](../../../../MeasureAndIntegration/RootActualAnchoredStripRefinementNamespaced.lean/declarations/strip-orders.md) | 28 | `result-track:bb38f4dae3b31081dd8432709059ef0483379d4d662a3fdc1b0dad439ac8d84b` |
| 2 | `theorem` | [exp_half_integral](../../../../MeasureAndIntegration/RootActualAnchoredStripRefinementNamespaced.lean/declarations/exp-half-integral.md) | 48 | `result-track:2039d7c542b0d9c70cb13d0d19d035fb95ac145c435541ac34176cee6e06eef5` |
| 3 | `theorem` | [exp_neg_half_integral](../../../../MeasureAndIntegration/RootActualAnchoredStripRefinementNamespaced.lean/declarations/exp-neg-half-integral.md) | 62 | `result-track:e4d66b217fbdee4f2ed839f8f41ddd4021e34ed4ccbf196b37136111861e622a` |
| 4 | `theorem` | [actualAdjointTimePrimitive_anchored_abs_le](../../../../MeasureAndIntegration/RootActualAnchoredStripRefinementNamespaced.lean/declarations/actualadjointtimeprimitive-anchored-abs-le.md) | 77 | `result-track:a3d31f1f7fc6f942e5845ed24cfafd79f0038856662d52d2080b643a9b5c496e` |
| 5 | `theorem` | [actualAdjointTimePrimitive_strip_abs_le](../../../../MeasureAndIntegration/RootActualAnchoredStripRefinementNamespaced.lean/declarations/actualadjointtimeprimitive-strip-abs-le.md) | 124 | `result-track:94f08f3ddabf307e651bcb3d6a1123a0d13751aab23ee17d07edc5ab1b552179` |
| 6 | `theorem` | [strip_density_abs_le](../../../../MeasureAndIntegration/RootActualAnchoredStripRefinementNamespaced.lean/declarations/strip-density-abs-le.md) | 134 | `result-track:5321684515b58a159c04e1d28f953baca7995af44e5d2aa127cc702d0b52953d` |
| 7 | `theorem` | [actualLowerStripInterior_anchored_abs_le](../../../../MeasureAndIntegration/RootActualAnchoredStripRefinementNamespaced.lean/declarations/actuallowerstripinterior-anchored-abs-le.md) | 165 | `result-track:a7d948dd0b048b37a35dd5c58b86063e31b4fc5485ed4edc705c7c72aa75dfc2` |
| 8 | `theorem` | [actualLowerStripInterior_balanced_abs_le](../../../../MeasureAndIntegration/RootActualAnchoredStripRefinementNamespaced.lean/declarations/actuallowerstripinterior-balanced-abs-le.md) | 250 | `result-track:b97163c9b33c266ecb090e6d1806f133464bd2d9cdb51d66909afdb8a7761dc9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=260305cd0b1ca0977175614a8135b54d7418d7de26efbfb20ed20be3594769e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/3a021dfd59d32d4e5d05RootActualAnchoredStripRefinement/Variantd581dbefc7fb594b5e83999fe017796e406e00a1c954bcb6d507b5bb5bf80e23.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/3a021dfd59d32d4e5d05RootActualAnchoredStripRefinement/Variantd581dbefc7fb594b5e83999fe017796e406e00a1c954bcb6d507b5bb5bf80e23.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
