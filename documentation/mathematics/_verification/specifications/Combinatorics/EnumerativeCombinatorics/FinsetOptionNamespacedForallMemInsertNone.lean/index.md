# Verification target: Finset Option Namespaced Forall Mem Insert None

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c586ba6d7a9aa083cf44caef908e0654aa8cabbe",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespacedForallMemInsertNone.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespacedForallMemInsertNone.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c586ba6d7a9aa083cf44caef908e0654aa8cabbe`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Card` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Union` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespacedForallMemInsertNone.lean/declarations/tofinset.md) | 43 | `declaration-track:893c562d67f07842886f7b6911999dbbdbfafba19d178381dcf883b8ec74e5b4` |
| 2 | `theorem` | [toFinset_none](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespacedForallMemInsertNone.lean/declarations/tofinset-none.md) | 47 | `result-track:f30186c572231b20dcdd4aca757f4c5805cc21f6b49fdcdc3748206fa1948d20` |
| 3 | `theorem` | [toFinset_some](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespacedForallMemInsertNone.lean/declarations/tofinset-some.md) | 51 | `result-track:8d94a0c2edb5a1b4fd47e3f2a8d215e2f934b5bde00fd188532936fcbf3a139c` |
| 4 | `theorem` | [mem_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespacedForallMemInsertNone.lean/declarations/mem-tofinset.md) | 55 | `result-track:353ff1fe36ca20fc448b242e9363ef3fa26c5a899c2e58e9ab467f82f74e8044` |
| 5 | `theorem` | [card_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespacedForallMemInsertNone.lean/declarations/card-tofinset.md) | 58 | `result-track:49f9527e8dce88b5ebbd837764d1497ca30d8d295858083c167f838d90cb4616` |
| 6 | `def` | [insertNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespacedForallMemInsertNone.lean/declarations/insertnone.md) | 66 | `declaration-track:f74dacdb126ccf34488545f6a0ca86d4ea6b5a7319012545c2d5f7430a77243d` |
| 7 | `theorem` | [mem_insertNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespacedForallMemInsertNone.lean/declarations/mem-insertnone.md) | 71 | `result-track:901cdc88ee0224399d7e2dfc221d9329bb1af42c67123f76ad3531c80a3fbed7` |
| 8 | `lemma` | [forall_mem_insertNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespacedForallMemInsertNone.lean/declarations/forall-mem-insertnone.md) | 75 | `result-track:5d22736121b19494c1f56525faa588c14328f7c783457ee7a52e99cc9300fbc2` |
| 9 | `theorem` | [some_mem_insertNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespacedForallMemInsertNone.lean/declarations/some-mem-insertnone.md) | 78 | `result-track:373249000b13eb521a53bba18a0af86b4b11f2f503d99770c9de71358ef7f155` |
| 10 | `lemma` | [none_mem_insertNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespacedForallMemInsertNone.lean/declarations/none-mem-insertnone.md) | 80 | `result-track:10aec2deae99dac8d12be38b01715282b0d76cfa6c017af113b8b95850989923` |
| 11 | `lemma` | [insertNone_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespacedForallMemInsertNone.lean/declarations/insertnone-nonempty.md) | 83 | `result-track:234ff4aa6f3efa3bc59d190d5a81334b1819a8a2f3552812ed67fc9edb770dc0` |
| 12 | `theorem` | [card_insertNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespacedForallMemInsertNone.lean/declarations/card-insertnone.md) | 86 | `result-track:9fb0e5b57679bae1a5b209c7bd19fd682f69a9ccc1163035326968d82da15f84` |
| 13 | `def` | [eraseNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespacedForallMemInsertNone.lean/declarations/erasenone.md) | 90 | `declaration-track:51454a95f91190deef83b38a2ec9eb66aaa3bec258b851b942445256210ef025` |
| 14 | `theorem` | [mem_eraseNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespacedForallMemInsertNone.lean/declarations/mem-erasenone.md) | 95 | `result-track:91517add35349c020a9270ecd5a571b86c18a8206bba3b69f017ac955c0845bc` |
| 15 | `lemma` | [forall_mem_eraseNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespacedForallMemInsertNone.lean/declarations/forall-mem-erasenone.md) | 98 | `result-track:2de2e9aa925e3ceaa446fb4bdd4c07b9a213f32edad23e83ae509eca475e6912` |
| 16 | `theorem` | [eraseNone_eq_biUnion](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespacedForallMemInsertNone.lean/declarations/erasenone-eq-biunion.md) | 101 | `result-track:139328b97ca8ec40890f57ec95d1d24081116f4d052d7bce1a4d0535d8430d09` |
| 17 | `theorem` | [eraseNone_map_some](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespacedForallMemInsertNone.lean/declarations/erasenone-map-some.md) | 107 | `result-track:f74eba7fe06d2cfa1440c74123c7a1336152b68d9190108bfb09bd5ada9bc169` |
| 18 | `theorem` | [eraseNone_image_some](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespacedForallMemInsertNone.lean/declarations/erasenone-image-some.md) | 112 | `result-track:7b3b6245586a50faf9d9532dff66e46067da3331c5e5cba2c0c0fee309fecc9c` |
| 19 | `theorem` | [coe_eraseNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespacedForallMemInsertNone.lean/declarations/coe-erasenone.md) | 116 | `result-track:eb9d10c371f847278d58d818fa6f4afa03d1809c11408453fbcd864763fff7c0` |
| 20 | `theorem` | [eraseNone_union](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespacedForallMemInsertNone.lean/declarations/erasenone-union.md) | 120 | `result-track:403cddf08c67e266e8ff9117594ce6603d5ffe23a86a0e61d7b2cb736844e13d` |
| 21 | `theorem` | [eraseNone_inter](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespacedForallMemInsertNone.lean/declarations/erasenone-inter.md) | 126 | `result-track:8c763d5eb26c4152373d4e3bb37288d7d9af91a7fd67e724d77f06faaa6487d0` |
| 22 | `theorem` | [eraseNone_empty](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespacedForallMemInsertNone.lean/declarations/erasenone-empty.md) | 132 | `result-track:00e44c9487edf5ee0a1362a2524570406ac2d1404c24306ea0fd052cf8ef0cb2` |
| 23 | `theorem` | [eraseNone_none](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespacedForallMemInsertNone.lean/declarations/erasenone-none.md) | 137 | `result-track:9e09ee050fba3a72878cd7ba57499473d130eb523527404d2b5bd63040d28014` |
| 24 | `theorem` | [image_some_eraseNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespacedForallMemInsertNone.lean/declarations/image-some-erasenone.md) | 142 | `result-track:82aae7d6115f7da5a87addf09b3855d5a841ed50bca3d176faf7ec8ff5218fd7` |
| 25 | `theorem` | [map_some_eraseNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespacedForallMemInsertNone.lean/declarations/map-some-erasenone.md) | 146 | `result-track:86ec94276d45ecfb4ca5826e7d5febbeec205b82138e92289d12db76f86ef3df` |
| 26 | `theorem` | [insertNone_eraseNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespacedForallMemInsertNone.lean/declarations/insertnone-erasenone.md) | 151 | `result-track:6ca7c8f0370660c10889ef5b6fd7ff3dece1156b00aa70bd0728278528331003` |
| 27 | `theorem` | [eraseNone_insertNone](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetOptionNamespacedForallMemInsertNone.lean/declarations/erasenone-insertnone.md) | 155 | `result-track:7915b20925515bad67f9371e94fd0ab129e5353a13313a2c3fd95869f15f1672` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=16bebabcab15dc9146eeb366e31a42fd6182f48bfe2a4e4e6b08474a1ae55ee5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Option/Variantd4bfb560a549940ce4485955d02c710b1655e2d92a91425e43f711417448617c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
