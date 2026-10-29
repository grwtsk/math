# Verification target: KQHBootstrap Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15803fc63f4c80681e286df0d3d89f54a1eed643",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variant85ca8c332aa9666298a0fe558679a03f66d6dbba621c0f5ac15eb1c4c5f00990.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHBootstrapNamespacedEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHBootstrapNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15803fc63f4c80681e286df0d3d89f54a1eed643`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variant85ca8c332aa9666298a0fe558679a03f66d6dbba621c0f5ac15eb1c4c5f00990.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variant85ca8c332aa9666298a0fe558679a03f66d6dbba621c0f5ac15eb1c4c5f00990.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Real.Sqrt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closingRoot](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHBootstrapNamespacedEdition2.lean/declarations/closingroot.md) | 29 | `declaration-track:7666f62e5ee9a2bba53eb285cd82f25cd3ff8f8dec43ce6124a45c169ce2b241` |
| 2 | `def` | [closingBound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHBootstrapNamespacedEdition2.lean/declarations/closingbound.md) | 32 | `declaration-track:616eb0ee9b21ef5c8b0b81d146d81e3632fa7ad783c40ff68f7941361f5a2c6e` |
| 3 | `theorem` | [closingRoot_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHBootstrapNamespacedEdition2.lean/declarations/closingroot-nonneg.md) | 34 | `result-track:27347335407c7f5252367eca349c04184caae2d8e0249f6a9731e556ce3d1e3b` |
| 4 | `theorem` | [closingRoot_ge_coefficient](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHBootstrapNamespacedEdition2.lean/declarations/closingroot-ge-coefficient.md) | 39 | `result-track:3197a2f6a9fe67f5b48a52e88d1b9a28db9c78fb32c36e4c4a1f0124981e7259` |
| 5 | `theorem` | [closingRoot_equation](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHBootstrapNamespacedEdition2.lean/declarations/closingroot-equation.md) | 46 | `result-track:6184a6925f66b9d8fcbf7b9a22bdba717070963f28c8157f1183ec5510ed4f0f` |
| 6 | `theorem` | [le_closingBound_of_sqrt_inequality](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHBootstrapNamespacedEdition2.lean/declarations/le-closingbound-of-sqrt-inequality.md) | 53 | `result-track:a98ed7aafaf16fe7e3eb0a3ae1ff43f9fc575c0e15a162e77fa377600af78a6b` |
| 7 | `def` | [finiteHorizon](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHBootstrapNamespacedEdition2.lean/declarations/finitehorizon.md) | 74 | `declaration-track:1eb1bde620a9b41868decde136128b0c023d22b66815e5b740f32ff5dcf0ecd9` |
| 8 | `theorem` | [finiteHorizon_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHBootstrapNamespacedEdition2.lean/declarations/finitehorizon-nonneg.md) | 77 | `result-track:c7aafb6c9bcf951929b933494814f039f033ebffef0eb1d4f62f273083ee7a0f` |
| 9 | `theorem` | [value_le_finiteHorizon](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHBootstrapNamespacedEdition2.lean/declarations/value-le-finitehorizon.md) | 81 | `result-track:6c03d1e06b3e20ac692c71dd4a63464fb7927c227a05a5b8367ec3f0dc76d905` |
| 10 | `theorem` | [image_bddAbove_of_upper_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHBootstrapNamespacedEdition2.lean/declarations/image-bddabove-of-upper-bound.md) | 88 | `result-track:3f5299a876155cb646bcfd27fa014ff2973779138e535d0647da2ef7baed4693` |
| 11 | `theorem` | [uniform_cap_of_finite_horizon_sqrt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHBootstrapNamespacedEdition2.lean/declarations/uniform-cap-of-finite-horizon-sqrt.md) | 96 | `result-track:297838de5646b39c223f5326822e662ba6bf8320e621d2a5fa98d075fd66a038` |
| 12 | `theorem` | [le_of_affine_contraction](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHBootstrapNamespacedEdition2.lean/declarations/le-of-affine-contraction.md) | 108 | `result-track:5c7844989761fd8370dc007497d8f59879b466f6a7540a296b940c308bb64960` |
| 13 | `theorem` | [uniform_cap_of_finite_horizon_contraction](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/KQHBootstrapNamespacedEdition2.lean/declarations/uniform-cap-of-finite-horizon-contraction.md) | 113 | `result-track:60d9aff474924175213489dfb84433f9a125405b805f675843887126ecead83f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f01da134c6fc70281556165a6ad63bbb9f79da5d261560bf3c264de4a736b0c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variant85ca8c332aa9666298a0fe558679a03f66d6dbba621c0f5ac15eb1c4c5f00990.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHBootstrap/Variant85ca8c332aa9666298a0fe558679a03f66d6dbba621c0f5ac15eb1c4c5f00990.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
