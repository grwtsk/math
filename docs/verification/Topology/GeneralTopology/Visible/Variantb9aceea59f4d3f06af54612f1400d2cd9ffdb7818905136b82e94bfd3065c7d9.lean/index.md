# Verification target: GRWTSK.Topology.GeneralTopology.Visible.Variantb9aceea59f4d3f06af54612f1400d2cd9ffdb7818905136b82e94bfd3065c7d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d86b78dd0bf6e48e07ab6c7d6af9b317bc3e20f6",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Visible/Variantb9aceea59f4d3f06af54612f1400d2cd9ffdb7818905136b82e94bfd3065c7d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Visible/Variantb9aceea59f4d3f06af54612f1400d2cd9ffdb7818905136b82e94bfd3065c7d9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Visible/Variantb9aceea59f4d3f06af54612f1400d2cd9ffdb7818905136b82e94bfd3065c7d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d86b78dd0bf6e48e07ab6c7d6af9b317bc3e20f6`.

Source path: `GRWTSK/Topology/GeneralTopology/Visible/Variantb9aceea59f4d3f06af54612f1400d2cd9ffdb7818905136b82e94bfd3065c7d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Visible/Variantb9aceea59f4d3f06af54612f1400d2cd9ffdb7818905136b82e94bfd3065c7d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Field` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Card` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Between` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Combination` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Affine` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Monotone` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsVisible](../../../../../mathematics/Topology/GeneralTopology/Visible/Variantb9aceea59f4d3f06af54612f1400d2cd9ffdb7818905136b82e94bfd3065c7d9.lean/declarations/isvisible--47e5a310aeeec4212af47d60.md) | 50 | `declaration-track:47e5a310aeeec4212af47d60acc21a6037780bfb200d8e847fb7fcb66976ae97` |
| 2 | `lemma` | [IsVisible.rfl](../../../../../mathematics/Topology/GeneralTopology/Visible/Variantb9aceea59f4d3f06af54612f1400d2cd9ffdb7818905136b82e94bfd3065c7d9.lean/declarations/isvisible-rfl--0a660cce0de9780c0884bf6b.md) | 53 | `result-track:0a660cce0de9780c0884bf6bb16101d4d765487540d8fe11831d9ac9b740cec7` |
| 3 | `lemma` | [isVisible_comm](../../../../../mathematics/Topology/GeneralTopology/Visible/Variantb9aceea59f4d3f06af54612f1400d2cd9ffdb7818905136b82e94bfd3065c7d9.lean/declarations/isvisible-comm--fae32050ae9d4270ff71d006.md) | 55 | `result-track:fae32050ae9d4270ff71d0064ac4cca7347eacbc09596f2a20b51663e93a8f27` |
| 4 | `lemma` | [IsVisible.mono](../../../../../mathematics/Topology/GeneralTopology/Visible/Variantb9aceea59f4d3f06af54612f1400d2cd9ffdb7818905136b82e94bfd3065c7d9.lean/declarations/isvisible-mono--0874f51aec6d6e7ddd864093.md) | 61 | `result-track:0874f51aec6d6e7ddd864093175cba79431a54b01beb3eb40f204e3c7c75f0ef` |
| 5 | `lemma` | [isVisible_iff_lineMap](../../../../../mathematics/Topology/GeneralTopology/Visible/Variantb9aceea59f4d3f06af54612f1400d2cd9ffdb7818905136b82e94bfd3065c7d9.lean/declarations/isvisible-iff-linemap--11b852fcdee564133005bc3b.md) | 64 | `result-track:11b852fcdee564133005bc3b9a5680f81ba3d6e73192aeeb250312c81a309639` |
| 6 | `lemma` | [IsVisible.of_convexHull_of_pos](../../../../../mathematics/Topology/GeneralTopology/Visible/Variantb9aceea59f4d3f06af54612f1400d2cd9ffdb7818905136b82e94bfd3065c7d9.lean/declarations/isvisible-of-convexhull-of-pos--b880618fe6d2af85a3f3700b.md) | 79 | `result-track:b880618fe6d2af85a3f3700b876fa3d12b7800d821c40ac679832742bf5f2eed` |
| 7 | `lemma` | [IsVisible.eq_of_mem_interior](../../../../../mathematics/Topology/GeneralTopology/Visible/Variantb9aceea59f4d3f06af54612f1400d2cd9ffdb7818905136b82e94bfd3065c7d9.lean/declarations/isvisible-eq-of-mem-interior--4e307e6bfdca2fa480acaf48.md) | 128 | `result-track:4e307e6bfdca2fa480acaf48a52f50dbd5f4d22eb17bea34a2942d12246c8f74` |
| 8 | `lemma` | [IsOpen.eq_of_isVisible_of_left_mem](../../../../../mathematics/Topology/GeneralTopology/Visible/Variantb9aceea59f4d3f06af54612f1400d2cd9ffdb7818905136b82e94bfd3065c7d9.lean/declarations/isopen-eq-of-isvisible-of-left-mem--217f5b67edc5b86ec5c14f3b.md) | 138 | `result-track:217f5b67edc5b86ec5c14f3b746c8accee6daef696d0dc485c1b0d1fafc4d5cc` |
| 9 | `lemma` | [IsVisible.mem_convexHull_isVisible](../../../../../mathematics/Topology/GeneralTopology/Visible/Variantb9aceea59f4d3f06af54612f1400d2cd9ffdb7818905136b82e94bfd3065c7d9.lean/declarations/isvisible-mem-convexhull-isvisible--057117469668495b548dd6e7.md) | 151 | `result-track:057117469668495b548dd6e73dd1b7f675b6e62ff3f9011b7af91884a31c445c` |
| 10 | `lemma` | [IsClosed.exists_wbtw_isVisible](../../../../../mathematics/Topology/GeneralTopology/Visible/Variantb9aceea59f4d3f06af54612f1400d2cd9ffdb7818905136b82e94bfd3065c7d9.lean/declarations/isclosed-exists-wbtw-isvisible--ddf0b91b8d0be8f8690f3aa3.md) | 166 | `result-track:ddf0b91b8d0be8f8690f3aa31c9d03c94fc02c22ae705bcc8e9c990c4aaa604f` |
| 11 | `lemma` | [IsClosed.convexHull_subset_affineSpan_isVisible](../../../../../mathematics/Topology/GeneralTopology/Visible/Variantb9aceea59f4d3f06af54612f1400d2cd9ffdb7818905136b82e94bfd3065c7d9.lean/declarations/isclosed-convexhull-subset-affinespan-isvisible--28a05f3a4cf247326efedcdd.md) | 186 | `result-track:28a05f3a4cf247326efedcddc81b43dcd23b824d3dbd0386c9eaf8cecd5392da` |
| 12 | `lemma` | [rank_le_card_isVisible](../../../../../mathematics/Topology/GeneralTopology/Visible/Variantb9aceea59f4d3f06af54612f1400d2cd9ffdb7818905136b82e94bfd3065c7d9.lean/declarations/rank-le-card-isvisible--c6576e2c3589f4376260007e.md) | 199 | `result-track:c6576e2c3589f4376260007ee592c4eaa01cc00fd2f85f9867995b5ebb4cf3ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
