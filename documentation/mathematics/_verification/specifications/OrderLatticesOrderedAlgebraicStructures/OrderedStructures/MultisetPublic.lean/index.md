# Verification target: Multiset Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8c2b21f9f9745b6a6261d5a61c1a3e4295ce5d2",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8c2b21f9f9745b6a6261d5a61c1a3e4295ce5d2`.

Source path: `GRWTSK/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean.json)

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
| 1 | `lemma` | [one_le_prod_of_one_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetPublic.lean/declarations/one-le-prod-of-one-le.md) | 32 | `result-track:aa93640d30cd55f155900be4b126b207f99ddc7141f1006de8b6ef37b4c9ae87` |
| 2 | `lemma` | [single_le_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetPublic.lean/declarations/single-le-prod.md) | 36 | `result-track:c960621c3ef3fbdf0fa5e72b655ba2c72771a80f657147e8a3bdaab2bf1221de` |
| 3 | `lemma` | [prod_le_pow_card](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetPublic.lean/declarations/prod-le-pow-card.md) | 40 | `result-track:3ca16b1bf873f427a07bce571bc2e311db122f8191787434f2fdd8ebb57ea981` |
| 4 | `lemma` | [all_one_of_le_one_le_of_prod_eq_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetPublic.lean/declarations/all-one-of-le-one-le-of-prod-eq-one.md) | 46 | `result-track:d86b3456cf5353d54c3751089798437445a940b0c8b3d95ce40111a9ef49c8d0` |
| 5 | `lemma` | [prod_le_prod_of_rel_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetPublic.lean/declarations/prod-le-prod-of-rel-le.md) | 54 | `result-track:fba93593ca80e31ad3da1012f25532b2e41026c2b1b00eeff5f278750c0a24d5` |
| 6 | `lemma` | [prod_map_le_prod_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetPublic.lean/declarations/prod-map-le-prod-map.md) | 62 | `result-track:9cbb4eb9cf3705bb14ca83929b1986ce6af97308ead571e8a7f41306ed214e5c` |
| 7 | `lemma` | [prod_map_le_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetPublic.lean/declarations/prod-map-le-prod.md) | 67 | `result-track:e10998479912ee588066a3816d62c2a4e28a3775cacb5518e2e56ceecf52ef0b` |
| 8 | `lemma` | [prod_le_prod_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetPublic.lean/declarations/prod-le-prod-map.md) | 72 | `result-track:26f934fc9175e24b3c90acd2d9df473e0d06d0d01fba140bb94faab379303004` |
| 9 | `lemma` | [pow_card_le_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetPublic.lean/declarations/pow-card-le-prod.md) | 77 | `result-track:efe6dd7a3d0cd1bb1181c947077a84613e7a07109c44c5cd3acb1a64029ca798` |
| 10 | `lemma` | [le_prod_of_submultiplicative_on_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetPublic.lean/declarations/le-prod-of-submultiplicative-on-pred.md) | 87 | `result-track:9d3854824af1302d71c6a76b8ff643912b75988f6fdda5ba03295394151e64fb` |
| 11 | `lemma` | [le_prod_of_submultiplicative](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetPublic.lean/declarations/le-prod-of-submultiplicative.md) | 95 | `result-track:3c74137cf0700556f6b1abc11fbeadb009e695120a8f1fde6e0a7410741978a0` |
| 12 | `lemma` | [le_prod_nonempty_of_submultiplicative_on_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetPublic.lean/declarations/le-prod-nonempty-of-submultiplicative-on-pred.md) | 101 | `result-track:1c145214db09bc88c5b72aa8ee3723c38f27b5f446e00de1eb84f837c7a8bde4` |
| 13 | `lemma` | [le_prod_nonempty_of_submultiplicative](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetPublic.lean/declarations/le-prod-nonempty-of-submultiplicative.md) | 110 | `result-track:e9d6702dba8ef221db867461c8138699dce90effa71c9308d431ea7a7d9708d0` |
| 14 | `lemma` | [prod_lt_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetPublic.lean/declarations/prod-lt-prod.md) | 122 | `result-track:714a9a7866f6cd7deb97e582950f1fb0f4ceaa7d20884ff45971b646c07836b7` |
| 15 | `lemma` | [prod_lt_prod_of_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetPublic.lean/declarations/prod-lt-prod-of-nonempty.md) | 131 | `result-track:b2eaf24aa127f0f44aa299a4990cbba2b98219c5534d540e2b2ace14dba82e0a` |
| 16 | `lemma` | [prod_eq_one_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetPublic.lean/declarations/prod-eq-one-iff.md) | 143 | `result-track:236bccdbf81a59a021c7b22ba1d65fecd0377b272802e295abb4a654f99785b2` |
| 17 | `lemma` | [le_prod_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetPublic.lean/declarations/le-prod-of-mem.md) | 147 | `result-track:02b869fe4bbed355d03d1c7cf87ee52ad139491f791f8350960126175e9e2e81` |
| 18 | `lemma` | [max_le_of_forall_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetPublic.lean/declarations/max-le-of-forall-le.md) | 155 | `result-track:a7d380d9688d7f64b2d20de1b329fa194d81b9c65493eb7d0bc034f790591bc8` |
| 19 | `lemma` | [max_prod_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetPublic.lean/declarations/max-prod-le.md) | 161 | `result-track:e089e38e22aadde16f4663dbf8c1890bf1d9914d651ea20ecf51ecf31e211125` |
| 20 | `lemma` | [prod_min_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetPublic.lean/declarations/prod-min-le.md) | 169 | `result-track:be5fb8496a4b343bd43ef5946120a9da52429b7c9d3ce63e238805b662a156be` |
| 21 | `lemma` | [abs_sum_le_sum_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetPublic.lean/declarations/abs-sum-le-sum-abs.md) | 176 | `result-track:b12b9956d53f02e4603576546d4c4d0ce7bbe9d2c8bd1a43f0500b161e7e3953` |
| 22 | `lemma` | [apply_prod_le_sum_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetPublic.lean/declarations/apply-prod-le-sum-map.md) | 184 | `result-track:1ff66375640b381f3606d083b35baa5a64c687007da380c9aaf03ab50eb0d200` |
| 23 | `lemma` | [sum_map_le_apply_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MultisetPublic.lean/declarations/sum-map-le-apply-prod.md) | 189 | `result-track:bec3bac818e09a24fdabc9d309ff49ba23cde3c9ec321dbac8096ebd4d3c0132` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d248e340246e172d6da1bd71db9856c636a2359c1a82f1cf53b49453574ad828 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean","GRWTSK/_verification/specifications/Algebra/Multiset/Variant070b06eece1e91f5718088513b6ca3024ba2d52ca7af875a928e4b3e53f4d598.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
