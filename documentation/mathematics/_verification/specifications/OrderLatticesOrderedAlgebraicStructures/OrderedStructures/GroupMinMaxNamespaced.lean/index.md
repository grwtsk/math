# Verification target: Group Min Max Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9a7a05fc2951ffd6d5d768aabcc7ca3fc3fd788",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/MinMax/Variant06be353ac0357d4561c84d564b1eb3e3c115e63148d8a90e5bee70146cff448c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupMinMaxNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupMinMaxNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9a7a05fc2951ffd6d5d768aabcc7ca3fc3fd788`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/MinMax/Variant06be353ac0357d4561c84d564b1eb3e3c115e63148d8a90e5bee70146cff448c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/MinMax/Variant06be353ac0357d4561c84d564b1eb3e3c115e63148d8a90e5bee70146cff448c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Abs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.MinMax` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [max_one_div_max_inv_one_eq_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupMinMaxNamespaced.lean/declarations/max-one-div-max-inv-one-eq-self.md) | 28 | `result-track:5279dd7109c969a4bf4df65ee35c3c2020b65beae81e5a9c1e44093aba1a70bf` |
| 2 | `lemma` | [max_inv_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupMinMaxNamespaced.lean/declarations/max-inv-one.md) | 34 | `result-track:c2350b65af47832f71205646d0b03ca3f5ce61f366468dca52ba4e9719d380fb` |
| 3 | `theorem` | [min_inv_inv'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupMinMaxNamespaced.lean/declarations/min-inv-inv.md) | 44 | `result-track:cf0211e7b6a9fa89d358c99f4f22cba039c96a59687a2fe3a865cf5aeb9e38e5` |
| 4 | `theorem` | [max_inv_inv'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupMinMaxNamespaced.lean/declarations/max-inv-inv.md) | 49 | `result-track:3cc273d79011cf7b333df14bc7756c1cd964615091ec4710053010f3c6b57d4a` |
| 5 | `theorem` | [min_div_div_right'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupMinMaxNamespaced.lean/declarations/min-div-div-right.md) | 54 | `result-track:a326444fb857c6ad965bd0a5f500be406a291d28466f7db5754b0998ed9a751b` |
| 6 | `theorem` | [max_div_div_right'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupMinMaxNamespaced.lean/declarations/max-div-div-right.md) | 58 | `result-track:a4b7f97c0c3534149f08bf05f5c9e492376d371869e8052b633ea1f0036e016f` |
| 7 | `theorem` | [min_div_div_left'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupMinMaxNamespaced.lean/declarations/min-div-div-left.md) | 62 | `result-track:bae8ae9d657019c749c4aaa59120c74f212781026fbeb90c9806f305534fba9f` |
| 8 | `theorem` | [max_div_div_left'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupMinMaxNamespaced.lean/declarations/max-div-div-left.md) | 66 | `result-track:9b1503489b1c96aa506255e42e9d5356923a2731925a4e0442a6d00f6670a4ba` |
| 9 | `theorem` | [max_sub_max_le_max](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupMinMaxNamespaced.lean/declarations/max-sub-max-le-max.md) | 75 | `result-track:97055e99c531ba7ccf370c0814fb425c732f79bc9418cb75cbda17cc3d99e1ec` |
| 10 | `theorem` | [abs_max_sub_max_le_max](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupMinMaxNamespaced.lean/declarations/abs-max-sub-max-le-max.md) | 84 | `result-track:a7965fc8999e29205dc9025429d08dc7d20a332808581980c22c29d446eb99d9` |
| 11 | `theorem` | [abs_min_sub_min_le_max](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupMinMaxNamespaced.lean/declarations/abs-min-sub-min-le-max.md) | 90 | `result-track:8e5e103bb2aff5ee88499bf7b405ea557d57458e181304c45d225bd6f99a0800` |
| 12 | `theorem` | [abs_max_sub_max_le_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupMinMaxNamespaced.lean/declarations/abs-max-sub-max-le-abs.md) | 94 | `result-track:95e45c41e2a640da53a1476f6f1fe5728af02b427f20202c217ce41fb4be58ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=86ddb80abe730dc2345211f10d7be2a9d9eeb487d5c4407ffb2b020509caaea3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/MinMax/Variant06be353ac0357d4561c84d564b1eb3e3c115e63148d8a90e5bee70146cff448c.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/MinMax/Variant06be353ac0357d4561c84d564b1eb3e3c115e63148d8a90e5bee70146cff448c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
