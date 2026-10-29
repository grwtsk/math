# Verification target: Cau Seq Big Operators Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e69b23451cbc17d83a19e9a4e32c385bba1991ce",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/BigOperators/Variantea8534ddee3c4e6c3143ccbbf54f1c2c7a13e07fe837ba8ff12441dce1654b58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBigOperatorsNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBigOperatorsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e69b23451cbc17d83a19e9a4e32c385bba1991ce`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/BigOperators/Variantea8534ddee3c4e6c3143ccbbf54f1c2c7a13e07fe837ba8ff12441dce1654b58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/BigOperators/Variantea8534ddee3c4e6c3143ccbbf54f1c2c7a13e07fe837ba8ff12441dce1654b58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.CauSeq.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [of_abv_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBigOperatorsNamespaced.lean/declarations/of-abv-le.md) | 31 | `result-track:40130541bffd8aa27d32902f4c2f184011eccdaddfc3e2cd98638d7caf9ce9e0` |
| 2 | `lemma` | [of_abv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBigOperatorsNamespaced.lean/declarations/of-abv.md) | 58 | `result-track:60beb266d1b48a739f859eb884b14aff523327d6a8dcbd2f0125ccc7c07b6a07` |
| 3 | `theorem` | [Cau Seq Big Operators Namespaced](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBigOperatorsNamespaced.lean/declarations/cauchy-product.md) | 62 | `result-track:3a9ab666e9f8a9534078152863ed06c7a26124628c129494adab06bd2cf3911e` |
| 4 | `lemma` | [of_decreasing_bounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBigOperatorsNamespaced.lean/declarations/of-decreasing-bounded.md) | 151 | `result-track:1251427c0a56a05fe6e891d78069f40b9fcbf4a1a4b1e9b17870b4bf9595877a` |
| 5 | `lemma` | [of_mono_bounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBigOperatorsNamespaced.lean/declarations/of-mono-bounded.md) | 183 | `result-track:58ad479b32672d0a746722137fc8fe47e1734bf04f99dc2c233182a6610380f7` |
| 6 | `lemma` | [geo_series](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBigOperatorsNamespaced.lean/declarations/geo-series.md) | 187 | `result-track:0afc4af7538e53e4b901ddb76c74cc01274e241e3b0589df280576b740bef15b` |
| 7 | `lemma` | [geo_series_const](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBigOperatorsNamespaced.lean/declarations/geo-series-const.md) | 205 | `result-track:0db44264b2f9650b0eb9510ef3bbabf6ba5d4718ca3f70e93afd036ef958428e` |
| 8 | `lemma` | [series_ratio_test](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBigOperatorsNamespaced.lean/declarations/series-ratio-test.md) | 209 | `result-track:da4c90569eed06a56e274f035cf36843cc8679294dd9de0d3b33d19e8e491a94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b4245f9717592cc24b27b12ab5e3615f8759aa9f2add2c8b4ec3010730b45160 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/BigOperators/Variantea8534ddee3c4e6c3143ccbbf54f1c2c7a13e07fe837ba8ff12441dce1654b58.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/BigOperators/Variantea8534ddee3c4e6c3143ccbbf54f1c2c7a13e07fe837ba8ff12441dce1654b58.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
