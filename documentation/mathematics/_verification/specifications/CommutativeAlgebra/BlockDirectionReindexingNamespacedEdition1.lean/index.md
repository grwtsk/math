# Verification target: Block Direction Reindexing Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92b04e215e20cf6793be92b1fd735c2f8c9f35db",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant1a31e3e3bdd115c3a2e9698f403512813445c255be17bc67b01af5ca438424d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition1.lean/index.md) · [Full source](../../../../CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92b04e215e20cf6793be92b1fd735c2f8c9f35db`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant1a31e3e3bdd115c3a2e9698f403512813445c255be17bc67b01af5ca438424d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant1a31e3e3bdd115c3a2e9698f403512813445c255be17bc67b01af5ca438424d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.MomentCumulantPartitions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sort` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [blockOrderIso](../../../../CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition1.lean/declarations/blockorderiso.md) | 49 | `declaration-track:35715a2661ebb02156116ae95fe20a41280af0c2e61d5ef351209d00d252d73f` |
| 2 | `theorem` | [blockOrderIso_mem](../../../../CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition1.lean/declarations/blockorderiso-mem.md) | 53 | `result-track:2a565d052717930b6db7e5508195a17305538f1d5210a0810355f431bc6610c7` |
| 3 | `def` | [blockDirections](../../../../CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition1.lean/declarations/blockdirections.md) | 60 | `declaration-track:8cff31b6a3907ea77644a7be78a9b52f5709f4d85c2bfe0ea65fc24e4813a4d9` |
| 4 | `theorem` | [blockDirections_apply](../../../../CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition1.lean/declarations/blockdirections-apply.md) | 68 | `result-track:28e055f61451f889e4b41c3ecf7ec06e83a4eef8e42ea2526fa9dd79e27f5da9` |
| 5 | `theorem` | [exists_blockIndex](../../../../CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition1.lean/declarations/exists-blockindex.md) | 78 | `result-track:3fc10ecdae101000fdf3b1dff18d7104085170ce5943bfdc418741180fa9f262` |
| 6 | `theorem` | [block_nonempty_of_mem_parts](../../../../CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition1.lean/declarations/block-nonempty-of-mem-parts.md) | 89 | `result-track:b42ba96b642bd2e2c01851d2cd3418e112e64c091e7ac1c90d1cd0ac4492e298` |
| 7 | `theorem` | [block_card_pos_of_mem_parts](../../../../CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition1.lean/declarations/block-card-pos-of-mem-parts.md) | 101 | `result-track:bf990298d4b882bb02a480071b325f5268bf6cba2591fe2eba9180b0209439e1` |
| 8 | `theorem` | [block_card_lt_of_ne_univ](../../../../CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition1.lean/declarations/block-card-lt-of-ne-univ.md) | 111 | `result-track:b79211160cd2102af77eb5e117dfb5f1b503800662030774ae16ebf28db7c3a8` |
| 9 | `theorem` | [block_card_lt_of_mem_properPartition](../../../../CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition1.lean/declarations/block-card-lt-of-mem-properpartition.md) | 125 | `result-track:94d3a67bc169ff0a2e15e62f02a065fc85015f7acee58b107b8f63b065a47e2c` |
| 10 | `abbrev` | [DirectionCumulantFamily](../../../../CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition1.lean/declarations/directioncumulantfamily.md) | 138 | `declaration-track:ba06402dd87c2a471164af9522fec6856fe161bd80de8447b8e571c74e44fd86` |
| 11 | `def` | [blockCumulantValue](../../../../CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition1.lean/declarations/blockcumulantvalue.md) | 144 | `declaration-track:74e417694e1d957641206809056f490b98209c86ee48008eb547dbc8872fca03` |
| 12 | `def` | [blockCumulantFunctional](../../../../CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition1.lean/declarations/blockcumulantfunctional.md) | 153 | `declaration-track:1cb25de77e8d044edc9348d58ae943130bef2f20220bc304550ff75046d2dbf1` |
| 13 | `theorem` | [blockCumulantFunctional_apply](../../../../CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition1.lean/declarations/blockcumulantfunctional-apply.md) | 161 | `result-track:577c2473ebb7a587671e859a2402e827ce2159965ca12e6d7b0944c194c358de` |
| 14 | `def` | [directionalPartitionWeight](../../../../CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition1.lean/declarations/directionalpartitionweight.md) | 175 | `declaration-track:698616313970adb007cacf828d0360f338b6a6f5712f00284169f36ce4bd8858` |
| 15 | `def` | [directionalPartitionMoment](../../../../CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition1.lean/declarations/directionalpartitionmoment.md) | 183 | `declaration-track:aaebf2441d68563fd2241dee377cb38f3a6727fb19b2e4ab8ffb63897542cbf4` |
| 16 | `def` | [directionalProperContribution](../../../../CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition1.lean/declarations/directionalpropercontribution.md) | 191 | `declaration-track:43686c485d8faf6403562a96d0ec6ff2a11d27258d37cf518ebe5c042722d050` |
| 17 | `theorem` | [directionalPartitionWeight_apply](../../../../CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition1.lean/declarations/directionalpartitionweight-apply.md) | 199 | `result-track:c8f2e483845ff14385b640748c94bdd92a41b635f323ae2f4c21b548bea953f5` |
| 18 | `def` | [AgreeBelow](../../../../CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition1.lean/declarations/agreebelow.md) | 210 | `declaration-track:2d4fe92c770ca70b04a2f1e3465a39c721406eab1436c14065ee971ab2e2b5aa` |
| 19 | `theorem` | [AgreeBelow.refl](../../../../CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition1.lean/declarations/agreebelow-refl.md) | 218 | `result-track:b14364c075ee7347787a2d4866708191d28e630f0fe158ee5b6146d144146ce7` |
| 20 | `theorem` | [AgreeBelow.symm](../../../../CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition1.lean/declarations/agreebelow-symm.md) | 226 | `result-track:6f037f73e7957e948ac21beb8d2ad8ac4d4422a92bb9a9fead1ef3ba2483c9f9` |
| 21 | `theorem` | [AgreeBelow.trans](../../../../CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition1.lean/declarations/agreebelow-trans.md) | 235 | `result-track:5fad1e36a7f8c04e843223294c9e6dc128bd2bc017f31f26dcd7da4538655fa0` |
| 22 | `theorem` | [blockCumulantValue_eq_of_agreeBelow](../../../../CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition1.lean/declarations/blockcumulantvalue-eq-of-agreebelow.md) | 248 | `result-track:f12b75c3e508d4fefd3118a0cce2122a5cd7084a04dd66b6d9fb62ac4659c510` |
| 23 | `theorem` | [directionalPartitionWeight_congr_of_agreeBelow](../../../../CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition1.lean/declarations/directionalpartitionweight-congr-of-agreebelow.md) | 261 | `result-track:8961870bbd7cf69de07a9b9c93c70d24aed986ea0c0d24c95e6fa35546877d73` |
| 24 | `theorem` | [directionalProperContribution_congr_of_agreeBelow](../../../../CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition1.lean/declarations/directionalpropercontribution-congr-of-agreebelow.md) | 279 | `result-track:6edc23d829d4daabebbf09cc4700fa4cb78df6916d8de932cd8f2a495bda6e11` |
| 25 | `def` | [recursiveDirectionalCumulant](../../../../CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition1.lean/declarations/recursivedirectionalcumulant.md) | 295 | `declaration-track:5fe580018b18e4504d40d0b531292f2b9e4d52b9546d76b7e197b1cbfbea3b84` |
| 26 | `theorem` | [recursiveDirectionalCumulant_eq_isolated](../../../../CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition1.lean/declarations/recursivedirectionalcumulant-eq-isolated.md) | 305 | `result-track:4bcde2d9dfa211710f0e8ccbed815d5017ab658444c25c5f072588b2f843b60f` |
| 27 | `theorem` | [recursiveDirectionalCumulant_congr_of_agreeBelow](../../../../CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition1.lean/declarations/recursivedirectionalcumulant-congr-of-agreebelow.md) | 317 | `result-track:630a86bd489787363086df895d6b05d3537aefddca11db3d8cb537601e13c586` |
| 28 | `theorem` | [recursiveDirectionalUpdate_satisfies](../../../../CommutativeAlgebra/BlockDirectionReindexingNamespacedEdition1.lean/declarations/recursivedirectionalupdate-satisfies.md) | 331 | `result-track:8720fcfa6313e28b5d8184df8d29543b9d22ab29f019a31f1b4a40a9a5861c96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=acd336759760a7348de1508d6e5a60ba50c89f9b4ce251f4796b51d93deabcc3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant1a31e3e3bdd115c3a2e9698f403512813445c255be17bc67b01af5ca438424d6.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant1a31e3e3bdd115c3a2e9698f403512813445c255be17bc67b01af5ca438424d6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
