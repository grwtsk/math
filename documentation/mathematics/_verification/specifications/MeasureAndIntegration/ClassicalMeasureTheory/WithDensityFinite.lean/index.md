# Verification target: With Density Finite

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12fb3b4a62872e08e88da38ea76fb2347f75c880",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/WithDensityFinite/Variantb29b4c3f21ab2a4e7388f4bd5aab9066daf1a18a9862fbec4181bc5413981213.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinite.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinite.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12fb3b4a62872e08e88da38ea76fb2347f75c880`.

Source path: `GRWTSK/Analysis/MeasureTheory/WithDensityFinite/Variantb29b4c3f21ab2a4e7388f4bd5aab9066daf1a18a9862fbec4181bc5413981213.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/WithDensityFinite/Variantb29b4c3f21ab2a4e7388f4bd5aab9066daf1a18a9862fbec4181bc5413981213.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Decomposition.Exhaustion` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.ConditionalProbability` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Measure.toFiniteAux](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinite.lean/declarations/measure-tofiniteaux.md) | 49 | `declaration-track:3636d45f04246850983beeb9f9f6bf97528dbeb9cc410003e13bcef4ac41c5e4` |
| 2 | `def` | [Measure.toFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinite.lean/declarations/measure-tofinite.md) | 56 | `declaration-track:3fb93fa3aeabf297f616ea0bec7f95025193384abc8b7d635bc812885a0d96b2` |
| 3 | `lemma` | [ae_toFiniteAux](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinite.lean/declarations/ae-tofiniteaux.md) | 60 | `result-track:447497493391be8ddabf77eef7634abebf0e8df328993d6fb73bc44db9f2dad8` |
| 4 | `theorem` | [isFiniteMeasure_toFiniteAux](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinite.lean/declarations/isfinitemeasure-tofiniteaux.md) | 68 | `result-track:83963645ed9bfcdb63d17d752d1e11add0746f55dddbf909c5c572d99034c975` |
| 5 | `lemma` | [ae_toFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinite.lean/declarations/ae-tofinite.md) | 75 | `result-track:492fb9ea8fcaf2394d13d898f0be7357d3ac40d37b10788332b641a2ad881470` |
| 6 | `lemma` | [toFinite_apply_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinite.lean/declarations/tofinite-apply-eq-zero-iff.md) | 79 | `result-track:dfeaf81e98812057fd2f8ee8bf601f0fcd1d6f8c5e3663754e76a4a575c72a3d` |
| 7 | `lemma` | [toFinite_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinite.lean/declarations/tofinite-eq-zero-iff.md) | 83 | `result-track:f9539d9dfc52960c0c6776bf64748632e58b17e7c4c8066ebdf2b934e4fa408e` |
| 8 | `lemma` | [toFinite_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinite.lean/declarations/tofinite-zero.md) | 87 | `result-track:927b2dc529600abc8df8f6bb212b62c47fcab04c85f6025077ece8b0ba3c7826` |
| 9 | `lemma` | [toFinite_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinite.lean/declarations/tofinite-eq-self.md) | 89 | `result-track:b5b9e92052be47f7915e15af563432f30a91e5fe6026d15b68474b3742f1c6ef` |
| 10 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinite.lean/declarations/instance-source-edition-2.md) | 93 | `declaration-track:af7a366d6edf6bb5156ca54a397ad43d69fe200e9ac87832d6343b6185026fc4` |
| 11 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinite.lean/declarations/instance.md) | 97 | `declaration-track:29d6daa58ad245d2de1eefa01b1152f4ee2c4673c37e1e677d574e2a205bf82f` |
| 12 | `lemma` | [absolutelyContinuous_toFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinite.lean/declarations/absolutelycontinuous-tofinite.md) | 101 | `result-track:9e243ee4a1c7e087317e5bf9ef0b3aed3b04150791a3b3628cfe43ef20e23b65` |
| 13 | `lemma` | [sfiniteSeq_absolutelyContinuous_toFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinite.lean/declarations/sfiniteseq-absolutelycontinuous-tofinite.md) | 104 | `result-track:ba33729e695b177a6e6b20a8abc76331656a9bd90ed90f53a1064d12ec4873e1` |
| 14 | `lemma` | [toFinite_absolutelyContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinite.lean/declarations/tofinite-absolutelycontinuous.md) | 108 | `result-track:54d153794ccede13061b4b4c759639787cbe04bf4a3fb6f7e0ff6301568cec87` |
| 15 | `lemma` | [restrict_compl_sigmaFiniteSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinite.lean/declarations/restrict-compl-sigmafiniteset.md) | 111 | `result-track:2bf5fe8dca2a860397b0c408157c68cb2821b12ebeff3671ccf15f44cc2735fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e62ab5c3131ee59a5d3cacf7ab7941c85adc4d0ff3083f43d7bc5037bc8781ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/WithDensityFinite/Variantb29b4c3f21ab2a4e7388f4bd5aab9066daf1a18a9862fbec4181bc5413981213.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/WithDensityFinite/Variantb29b4c3f21ab2a4e7388f4bd5aab9066daf1a18a9862fbec4181bc5413981213.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
