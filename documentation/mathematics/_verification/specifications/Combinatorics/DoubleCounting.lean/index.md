# Verification target: Double Counting

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da048a809660cc2e218204f2b9bfd9006dc49420",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/DoubleCounting.lean/index.md) · [Full source](../../../../Combinatorics/DoubleCounting.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da048a809660cc2e218204f2b9bfd9006dc49420`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Nat` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bipartiteBelow](../../../../Combinatorics/DoubleCounting.lean/declarations/bipartitebelow.md) | 53 | `declaration-track:7148cbb393b7b9fa24b77799570cfbbedda20034624c4c9dbbb34488a615e086` |
| 2 | `def` | [bipartiteAbove](../../../../Combinatorics/DoubleCounting.lean/declarations/bipartiteabove.md) | 56 | `declaration-track:6da4296c93e489705627274887192e2e2a203e5372f9cfdba2f7b53a43a15e00` |
| 3 | `theorem` | [bipartiteBelow_swap](../../../../Combinatorics/DoubleCounting.lean/declarations/bipartitebelow-swap.md) | 58 | `result-track:8318aabf3507eb2a95524ac7bec89dff8d699fce01bb24676f1dc70496c7e1bd` |
| 4 | `theorem` | [bipartiteAbove_swap](../../../../Combinatorics/DoubleCounting.lean/declarations/bipartiteabove-swap.md) | 60 | `result-track:47aa1f7d4894eecf82fbb5e447a62e2f7736ffffad5ec316fae7f75b7a53d01b` |
| 5 | `theorem` | [coe_bipartiteBelow](../../../../Combinatorics/DoubleCounting.lean/declarations/coe-bipartitebelow.md) | 63 | `result-track:53d5a6a771157fb6c584afc4811397f4af98b26842ab83019507a73ede2e96f2` |
| 6 | `theorem` | [coe_bipartiteAbove](../../../../Combinatorics/DoubleCounting.lean/declarations/coe-bipartiteabove.md) | 66 | `result-track:7e258701be906442bd33c673380c3cb880386d62f63fda5364d64a113ec9cd54` |
| 7 | `theorem` | [mem_bipartiteBelow](../../../../Combinatorics/DoubleCounting.lean/declarations/mem-bipartitebelow.md) | 71 | `result-track:aa1135729acdcb34c93f5ea28561099c4b7ce7ef1f53cee01ac0d1691544c916` |
| 8 | `theorem` | [mem_bipartiteAbove](../../../../Combinatorics/DoubleCounting.lean/declarations/mem-bipartiteabove.md) | 74 | `result-track:d3b6e854d0269914679e4c5c0e8c55abf1ce9ef383beb0b2aa131ac094a22ad7` |
| 9 | `theorem` | [prod_prod_bipartiteAbove_eq_prod_prod_bipartiteBelow](../../../../Combinatorics/DoubleCounting.lean/declarations/prod-prod-bipartiteabove-eq-prod-prod-bipartitebelow.md) | 77 | `result-track:37e68eb48efc67293c927d0339400244b86ef5186d68b1510c1eacde39a929b2` |
| 10 | `theorem` | [sum_card_bipartiteAbove_eq_sum_card_bipartiteBelow](../../../../Combinatorics/DoubleCounting.lean/declarations/sum-card-bipartiteabove-eq-sum-card-bipartitebelow.md) | 83 | `result-track:3e80349bf3af535e9e98c790e553b0c112da69332ad36051b94468057d405213` |
| 11 | `theorem` | [card_nsmul_le_card_nsmul](../../../../Combinatorics/DoubleCounting.lean/declarations/card-nsmul-le-card-nsmul.md) | 94 | `result-track:845732031a7303636c4d347b52a95984d13006251dc5ee7a33eef8b8b188e611` |
| 12 | `theorem` | [card_nsmul_le_card_nsmul'](../../../../Combinatorics/DoubleCounting.lean/declarations/card-nsmul-le-card-nsmul-source-edition-2.md) | 107 | `result-track:f12dfe8f8dbc86940afebcbd42f8603ea977772ca0adb1c970e63cb6419b9b70` |
| 13 | `theorem` | [card_nsmul_lt_card_nsmul_of_lt_of_le](../../../../Combinatorics/DoubleCounting.lean/declarations/card-nsmul-lt-card-nsmul-of-lt-of-le-source-edition-2.md) | 122 | `result-track:3689d410596b5e0da77f9c2289ddee3f04a47663727aad25cfb4b31df8da688a` |
| 14 | `theorem` | [card_nsmul_lt_card_nsmul_of_le_of_lt](../../../../Combinatorics/DoubleCounting.lean/declarations/card-nsmul-lt-card-nsmul-of-le-of-lt-source-edition-2.md) | 136 | `result-track:d52711bc3edaa806ed825354c05ea91b3202c1097a16ec194161a7600ebce489` |
| 15 | `theorem` | [card_nsmul_lt_card_nsmul_of_lt_of_le'](../../../../Combinatorics/DoubleCounting.lean/declarations/card-nsmul-lt-card-nsmul-of-lt-of-le.md) | 150 | `result-track:28b3d4b781b1f4edfa3cc058755c07d6e5b7ad89074bbd3b4a4cccb508502122` |
| 16 | `theorem` | [card_nsmul_lt_card_nsmul_of_le_of_lt'](../../../../Combinatorics/DoubleCounting.lean/declarations/card-nsmul-lt-card-nsmul-of-le-of-lt.md) | 159 | `result-track:3c9289b651d9564394d3894234e7f41dcbabddce4568fbdceeca7acac86958f8` |
| 17 | `theorem` | [card_mul_le_card_mul](../../../../Combinatorics/DoubleCounting.lean/declarations/card-mul-le-card-mul-source-edition-2.md) | 170 | `result-track:9458b0aa5f81812f2b17752903625df07d0c1ac625ab54b7c35a62365037e21c` |
| 18 | `theorem` | [card_mul_le_card_mul'](../../../../Combinatorics/DoubleCounting.lean/declarations/card-mul-le-card-mul.md) | 175 | `result-track:156dd3a4c8c852c504ae9fe10d874ed1381b225d8734132a14c5a7f40e51002d` |
| 19 | `theorem` | [card_mul_eq_card_mul](../../../../Combinatorics/DoubleCounting.lean/declarations/card-mul-eq-card-mul.md) | 180 | `result-track:70ea7e95e2674d3a6b748b145bbfaf7c4a31e4fac3f6a0a11aef859564f29986` |
| 20 | `theorem` | [card_le_card_of_forall_subsingleton](../../../../Combinatorics/DoubleCounting.lean/declarations/card-le-card-of-forall-subsingleton-source-edition-2.md) | 186 | `result-track:b2b6f15d56e986c9dc59b776449c670197a860311c833db1d42df45b40916ce5` |
| 21 | `theorem` | [card_le_card_of_forall_subsingleton'](../../../../Combinatorics/DoubleCounting.lean/declarations/card-le-card-of-forall-subsingleton.md) | 198 | `result-track:88c5dd872c70fadc70c59f5183d335ce8c27b015ce5fd7226319f463a92d1a30` |
| 22 | `theorem` | [card_le_card_of_leftTotal_unique](../../../../Combinatorics/DoubleCounting.lean/declarations/card-le-card-of-lefttotal-unique.md) | 212 | `result-track:3d2ec5f851f999b12fd76e7f293d26a48b18cbbab348ed37c3e8e2d28992de57` |
| 23 | `theorem` | [card_le_card_of_rightTotal_unique](../../../../Combinatorics/DoubleCounting.lean/declarations/card-le-card-of-righttotal-unique.md) | 216 | `result-track:5b56d85808ec8d5e24a970031d4d00617157ca5675e41877898e4b00486b7b07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8066d33e8b97ef35f85d813b43a8c613b7a27fe568d454b2842ff3d2dc2f290e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
