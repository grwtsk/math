# Verification target: Projective

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6914e760103e31f31413badd03fbc1aec60d26f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Projective.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Projective.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6914e760103e31f31413badd03fbc1aec60d26f`.

Source path: `GRWTSK/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.Cylinders` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Typeclasses.Probability` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsProjectiveMeasureFamily](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Projective.lean/declarations/isprojectivemeasurefamily.md) | 41 | `declaration-track:b4234f91dc723695d37acd6b4fbdd3d65894c63693a375af5bcbc05d31d579b6` |
| 2 | `lemma` | [eq_zero_of_isEmpty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Projective.lean/declarations/eq-zero-of-isempty.md) | 49 | `result-track:5e9820312deb894103fb89e3b4b0c31126eabfb313cc5c18f935d1602380b6dc` |
| 3 | `lemma` | [measure_univ_eq_of_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Projective.lean/declarations/measure-univ-eq-of-subset.md) | 60 | `result-track:6ce3ba494ce87d751abd69d8965f05b32e25ba2dca572304970aa5e44514b861` |
| 4 | `lemma` | [measure_univ_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Projective.lean/declarations/measure-univ-eq.md) | 70 | `result-track:280e967a9bd2fee709758d4bbeaee5ee468e3f8c7bb6f9699900a0288a490ce7` |
| 5 | `lemma` | [congr_cylinder_of_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Projective.lean/declarations/congr-cylinder-of-subset.md) | 76 | `result-track:c5afb1e406c0114ab7d11883935c5d0bec6826b7f517e7ea7d7b6c94c3a3eef0` |
| 6 | `lemma` | [congr_cylinder](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Projective.lean/declarations/congr-cylinder.md) | 97 | `result-track:33ba9672495f1e7fd7a668389d2ea465639f18dc15e4360f89b27fd47dca07f6` |
| 7 | `def` | [IsProjectiveLimit](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Projective.lean/declarations/isprojectivelimit.md) | 117 | `declaration-track:9d85f7ea1fd04a22d10e3d8c9daeb02221fba937b4244d43a4b79a106eae1688` |
| 8 | `lemma` | [measure_cylinder](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Projective.lean/declarations/measure-cylinder.md) | 125 | `result-track:745c874c29a128871f89767ca8e0b6560d32c7637a1e1eb67ca78391221f21a5` |
| 9 | `lemma` | [measure_univ_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Projective.lean/declarations/measure-univ-eq-source-edition-2.md) | 131 | `result-track:6002bc1bbb759f5ac57b49303f750b729757be3dc6c5c237933b5fb7d754b183` |
| 10 | `lemma` | [isFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Projective.lean/declarations/isfinitemeasure.md) | 135 | `result-track:8038e4e2d708fbc68780e6d6dcf511ab70d8e0307b4d19bcfe79cdd7b2ea1765` |
| 11 | `lemma` | [isProbabilityMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Projective.lean/declarations/isprobabilitymeasure.md) | 141 | `result-track:72e3d50eaa68aca586155ae79732f9a20f13b861177e4f6013af054724b42e82` |
| 12 | `lemma` | [measure_univ_unique](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Projective.lean/declarations/measure-univ-unique.md) | 147 | `result-track:ea052ffaa9582abd28a73343cccc98e009495fc06ac06600716bf80167a7ef2f` |
| 13 | `theorem` | [unique](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Projective.lean/declarations/unique.md) | 152 | `result-track:4d059754f394e033f9285ceac78a1bc0b685842961a9e9f5db0591fa8a425e6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c95c07981ad6fed9a472cd0b26a5df0336ee93c5b73927c19abeb0bcbcda5f60 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Projective/Variant3fc8a814734c382ebda3bfb68dbba775c461f411380fac854ec7121ae7712fcf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
