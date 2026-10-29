# Verification target: Cau Seq Big Operators Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b999b15d3914f83bc8fa7adfbf63834a77474f93",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/BigOperators/Variantae3f93e66bd5b66c19153f48aaa4b97c67fe07645cdc582b7d8a0a40171e65a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBigOperatorsPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBigOperatorsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b999b15d3914f83bc8fa7adfbf63834a77474f93`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/BigOperators/Variantae3f93e66bd5b66c19153f48aaa4b97c67fe07645cdc582b7d8a0a40171e65a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/BigOperators/Variantae3f93e66bd5b66c19153f48aaa4b97c67fe07645cdc582b7d8a0a40171e65a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [of_abv_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBigOperatorsPublic.lean/declarations/of-abv-le.md) | 29 | `result-track:fa95f3d031117b23b340df263f97a31b4480e31bd9d6cfd3ab806fdc688c581f` |
| 2 | `lemma` | [of_abv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBigOperatorsPublic.lean/declarations/of-abv.md) | 56 | `result-track:fcb728e4740d0d867a24819cd97b22b7b1bdbfd61dd5585f4976d26a4f68e039` |
| 3 | `theorem` | [_root_.cauchy_product](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBigOperatorsPublic.lean/declarations/root-cauchy-product.md) | 60 | `result-track:4a04e6fdb253f7b4aec43585fbc13926ace14824828798026d64dd501436597d` |
| 4 | `lemma` | [of_decreasing_bounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBigOperatorsPublic.lean/declarations/of-decreasing-bounded.md) | 148 | `result-track:4a05eb1c26212df85cedbc01f35a831fcf903daa80d569df3e1f935624742234` |
| 5 | `lemma` | [of_mono_bounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBigOperatorsPublic.lean/declarations/of-mono-bounded.md) | 180 | `result-track:1174e5911140b77bbbdf3d99b3210e5c8d4e03182fd470d65a14113c6b08eb07` |
| 6 | `lemma` | [geo_series](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBigOperatorsPublic.lean/declarations/geo-series.md) | 184 | `result-track:3bb990d74df7138e69c611e96c806f086b89263cc05381cbeb304208a504f740` |
| 7 | `lemma` | [geo_series_const](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBigOperatorsPublic.lean/declarations/geo-series-const.md) | 202 | `result-track:a4704cd39e19dfd4e6edd09e78cee3d94fa7caf5ca7ed7d28ef91c85f61053a4` |
| 8 | `lemma` | [series_ratio_test](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBigOperatorsPublic.lean/declarations/series-ratio-test.md) | 206 | `result-track:18c275d57dd2f43d1ad04a3927166c1ce41b3ca4e2ce27c328a2cb237eec95f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d366da9dfd266b47c74ada87ced848c0c55625092ea1172bc7bec9332bdbe9b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/BigOperators/Variantae3f93e66bd5b66c19153f48aaa4b97c67fe07645cdc582b7d8a0a40171e65a2.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/BigOperators/Variantae3f93e66bd5b66c19153f48aaa4b97c67fe07645cdc582b7d8a0a40171e65a2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
