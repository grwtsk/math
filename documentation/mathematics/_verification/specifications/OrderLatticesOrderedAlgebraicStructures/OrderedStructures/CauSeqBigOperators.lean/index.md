# Verification target: Cau Seq Big Operators

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a86e8c54f6deeb8c3e43fb8d058cf88e43a318ac",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/BigOperators/Variant38cc176c53c54b6ec37b378984b300f920aa019818f2c620d0849191434e1e48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBigOperators.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBigOperators.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a86e8c54f6deeb8c3e43fb8d058cf88e43a318ac`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/BigOperators/Variant38cc176c53c54b6ec37b378984b300f920aa019818f2c620d0849191434e1e48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/BigOperators/Variant38cc176c53c54b6ec37b378984b300f920aa019818f2c620d0849191434e1e48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.CauSeq.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [of_abv_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBigOperators.lean/declarations/of-abv-le.md) | 23 | `result-track:e1dd2bbdf6ec2a4283be52012180967087acd21e3ddc082f2d265b920da215ce` |
| 2 | `lemma` | [of_abv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBigOperators.lean/declarations/of-abv.md) | 50 | `result-track:f04e59979c77608688e05380c7ca59d2089e299971d0d19637692105337a7d98` |
| 3 | `theorem` | [_root_.cauchy_product](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBigOperators.lean/declarations/root-cauchy-product.md) | 54 | `result-track:584eeed27973738663399f5f2ff659e315b6e7e522eca66a095fafd6de2821a8` |
| 4 | `lemma` | [of_decreasing_bounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBigOperators.lean/declarations/of-decreasing-bounded.md) | 143 | `result-track:dd0a0923c26ba331744220584705f76f99c23aeb0a87eb014af7ca19f14fc370` |
| 5 | `lemma` | [of_mono_bounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBigOperators.lean/declarations/of-mono-bounded.md) | 175 | `result-track:3854e98ca3f1bb58be18f327c6ff820ae210626a0ceddbcbbdd6fe648ffd5adf` |
| 6 | `lemma` | [geo_series](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBigOperators.lean/declarations/geo-series.md) | 179 | `result-track:451f9d3c1fcb03f8f11862f5ce8996d0c6604d8d73d8ccbfa198b17cf7e8c802` |
| 7 | `lemma` | [geo_series_const](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBigOperators.lean/declarations/geo-series-const.md) | 197 | `result-track:54a733adcd8057e96bbea17730403175906fc0e61de7d1a2c7e3a2d4bfbaab57` |
| 8 | `lemma` | [series_ratio_test](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBigOperators.lean/declarations/series-ratio-test.md) | 201 | `result-track:5cbcf419d9d067c3a05bdca3a8e0017237aa5b06af39cf402c3ef166b5e431ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5574ea4c0e27d68a9f5f849ab78c67c984b2977ad961c6c478125a77af7f3018 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/BigOperators/Variant38cc176c53c54b6ec37b378984b300f920aa019818f2c620d0849191434e1e48.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/BigOperators/Variant38cc176c53c54b6ec37b378984b300f920aa019818f2c620d0849191434e1e48.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
