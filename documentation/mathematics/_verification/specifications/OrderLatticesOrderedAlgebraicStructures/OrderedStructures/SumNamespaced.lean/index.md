# Verification target: Sum Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "749d72e13fca6d1be6405bcbaf922ec1874e9b2c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Sum/Variant75bd27c7e2a77d501a1184137ae876f7584d74262e350387dc42562024cf5d07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SumNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SumNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `749d72e13fca6d1be6405bcbaf922ec1874e9b2c`.

Source path: `GRWTSK/Algebra/Sum/Variant75bd27c7e2a77d501a1184137ae876f7584d74262e350387dc42562024cf5d07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Sum/Variant75bd27c7e2a77d501a1184137ae876f7584d74262e350387dc42562024cf5d07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Piecewise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Interval` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [sum_le_sum_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SumNamespaced.lean/declarations/sum-le-sum-ioc.md) | 31 | `result-track:14670b881c2f78aaae905d61f99d4bfb82ba254442cc39729d518121e27e1423` |
| 2 | `lemma` | [sum_le_sum_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SumNamespaced.lean/declarations/sum-le-sum-range.md) | 51 | `result-track:cc1201df264fce2a0910efbee970776c6bd27a41355c37756326b5b0c3e07548` |
| 3 | `lemma` | [sum_Ico_le_sum](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SumNamespaced.lean/declarations/sum-ico-le-sum.md) | 62 | `result-track:245105b0aa6227058d9fa53a313bc1228707c60a864b296aa7e3d76a2641b6a4` |
| 4 | `lemma` | [sum_range_le_sum](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SumNamespaced.lean/declarations/sum-range-le-sum.md) | 80 | `result-track:a5db160c499eba6c0ce838f2ecd16d896333104a105f9cea702a48055fdffb82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=78379288713a6e51f599cdc749c33565a47c13d0060ce492dc86d0f2be8084b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Sum/Variant75bd27c7e2a77d501a1184137ae876f7584d74262e350387dc42562024cf5d07.lean","GRWTSK/_verification/specifications/Algebra/Sum/Variant75bd27c7e2a77d501a1184137ae876f7584d74262e350387dc42562024cf5d07.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
