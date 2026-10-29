# Verification target: Nobeling Span Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d33d5dabef96074fbd64a8bfd4b76f9f6c78b87",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Span/Variantb726b2040ce8ec82d006295d0717d1598890bdfef8dfb7ba3e5300a9fa7d5658.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/NobelingSpanNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/NobelingSpanNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d33d5dabef96074fbd64a8bfd4b76f9f6c78b87`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Span/Variantb726b2040ce8ec82d006295d0717d1598890bdfef8dfb7ba3e5300a9fa7d5658.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Span/Variantb726b2040ce8ec82d006295d0717d1598890bdfef8dfb7ba3e5300a9fa7d5658.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Sort` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.CofilteredLimit` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.Nobeling.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [πJ](../../../../GeneralTopology/NobelingSpanNamespaced.lean/declarations/j.md) | 50 | `declaration-track:c69db20778b50d801717f676d8914667c4106a2bd91037eb7f3b672bc78c406b` |
| 2 | `theorem` | [eval_eq_πJ](../../../../GeneralTopology/NobelingSpanNamespaced.lean/declarations/eval-eq-j.md) | 53 | `result-track:2b12a82895b28f2ba9c3fafd56572c51c2eef311d172b55f81db10f8a3cefbe5` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/NobelingSpanNamespaced.lean/declarations/instance.md) | 62 | `declaration-track:ec11bcacaa7550e953194512d55524a0f79a2b99dc9906029c1ff5ff785cd2c3` |
| 4 | `def` | [spanFinBasis](../../../../GeneralTopology/NobelingSpanNamespaced.lean/declarations/spanfinbasis.md) | 74 | `declaration-track:2bc14bec98c701c56e90fb90e7971c226025ee966c1942141f557659526c16ef` |
| 5 | `theorem` | [spanFinBasis.span](../../../../GeneralTopology/NobelingSpanNamespaced.lean/declarations/spanfinbasis-span.md) | 81 | `result-track:79edef0091f0a12e609529769b7e855a825743d34068780b387c6a6b91a9e9ef` |
| 6 | `def` | [factors](../../../../GeneralTopology/NobelingSpanNamespaced.lean/declarations/factors.md) | 96 | `declaration-track:94f9c2fc0fcf53e45d9532a2458dfd1c0022e7ef61bb044021516ea963922d63` |
| 7 | `theorem` | [list_prod_apply](../../../../GeneralTopology/NobelingSpanNamespaced.lean/declarations/list-prod-apply.md) | 100 | `result-track:9938ccaa68c9107ac24ed0613f1e9761ad9a7c881b1fe675c4b50f734f682c85` |
| 8 | `theorem` | [factors_prod_eq_basis_of_eq](../../../../GeneralTopology/NobelingSpanNamespaced.lean/declarations/factors-prod-eq-basis-of-eq.md) | 104 | `result-track:045371bfe17ece0ebaafa8e0a1def7ad46a7116882960cfa92aa2aa3aeb39ccd` |
| 9 | `theorem` | [e_mem_of_eq_true](../../../../GeneralTopology/NobelingSpanNamespaced.lean/declarations/e-mem-of-eq-true.md) | 116 | `result-track:11d1c29b181355a85063f4cd5544c99eb4fcad0eabd8c98dbad9552e53997311` |
| 10 | `theorem` | [one_sub_e_mem_of_false](../../../../GeneralTopology/NobelingSpanNamespaced.lean/declarations/one-sub-e-mem-of-false.md) | 123 | `result-track:6cd4065d4afbb00b2be378b94d5457ff95915969a7985207c8c38de69236f429` |
| 11 | `theorem` | [factors_prod_eq_basis_of_ne](../../../../GeneralTopology/NobelingSpanNamespaced.lean/declarations/factors-prod-eq-basis-of-ne.md) | 131 | `result-track:007a48d2e4ec446be9fb6e22bacd66c45a52bd9e6b2fccf62afb84b7a514430e` |
| 12 | `theorem` | [factors_prod_eq_basis](../../../../GeneralTopology/NobelingSpanNamespaced.lean/declarations/factors-prod-eq-basis.md) | 148 | `result-track:9999a2c8e54715d8ebc120e0323ecfe411a38c5850b38c102bde598e284dc6eb` |
| 13 | `theorem` | [GoodProducts.finsuppSum_mem_span_eval](../../../../GeneralTopology/NobelingSpanNamespaced.lean/declarations/goodproducts-finsuppsum-mem-span-eval.md) | 155 | `result-track:6c21c1bf00f0088e6e2ede5e6df7597558c859e9c1001726792429a766c99966` |
| 14 | `theorem` | [GoodProducts.spanFin](../../../../GeneralTopology/NobelingSpanNamespaced.lean/declarations/goodproducts-spanfin.md) | 177 | `result-track:7511a7318dbaca74596a17c0db2aeeb844df8f84a147328e4e5200aca5a52b90` |
| 15 | `theorem` | [fin_comap_jointlySurjective](../../../../GeneralTopology/NobelingSpanNamespaced.lean/declarations/fin-comap-jointlysurjective.md) | 231 | `result-track:86630c30473a7a135c913e69df95a27990596afd1ceeb07155509fa63d045003` |
| 16 | `theorem` | [GoodProducts.span](../../../../GeneralTopology/NobelingSpanNamespaced.lean/declarations/goodproducts-span.md) | 242 | `result-track:5c4a964f66852641e98c4e8360c96edbc3bd3a201f91c5d5381c8c2a0054a328` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fff7fe647a129d0e304c2527ab02f7b2951b8713f3053e486bcdcaa4c7525cfd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Span/Variantb726b2040ce8ec82d006295d0717d1598890bdfef8dfb7ba3e5300a9fa7d5658.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Span/Variantb726b2040ce8ec82d006295d0717d1598890bdfef8dfb7ba3e5300a9fa7d5658.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
