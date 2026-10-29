# Verification target: Basic Basic Namespaced Edition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f9a9fdd002ac776c2dd8d34149e08e4171354b1",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb7333dda1ac57ae4d0bd0d43a25cc04d83b244a99f9e94ad602c71915c5769f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition3.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f9a9fdd002ac776c2dd8d34149e08e4171354b1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb7333dda1ac57ae4d0bd0d43a25cc04d83b244a99f9e94ad602c71915c5769f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb7333dda1ac57ae4d0bd0d43a25cc04d83b244a99f9e94ad602c71915c5769f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Tree.Variadic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Flow.Tag](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition3.lean/declarations/flow-tag.md) | 34 | `declaration-track:686f02558701c10d9071d23f00d045840d95792a636f7daa47a1eb2c891db4fb` |
| 2 | `inductive` | [Flow.ResidueStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition3.lean/declarations/flow-residuestatus.md) | 46 | `declaration-track:abb8c3f0a69d4b97f1b05b4774c74b76d5b5538ba0f24cd68f3e237b830a1e03` |
| 3 | `structure` | [Flow.HeatResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition3.lean/declarations/flow-heatresidue.md) | 53 | `declaration-track:c7ef989e8d45dcef1cc87577e136155ff436830180f547726e79224b2bf2a7c7` |
| 4 | `def` | [Flow.HeatResidue.pending](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition3.lean/declarations/flow-heatresidue-pending.md) | 59 | `declaration-track:1d8dbb0f1e45cb49702898007eae4e172193857d0834278f264fb3965b658353` |
| 5 | `def` | [Flow.HeatResidue.realized](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition3.lean/declarations/flow-heatresidue-realized.md) | 66 | `declaration-track:fb6946988dfafd19856f4130342fd4f6c491a748cbcc7ef2c6e2b00f4a24aeea` |
| 6 | `inductive` | [Flow.BinaryAction](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition3.lean/declarations/flow-binaryaction.md) | 73 | `declaration-track:497845d4939d2fe06d3fe7ce3422ba82fce3dd0c8453bb86013b2b3e10cc4776` |
| 7 | `inductive` | [Flow.VariadicOp](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition3.lean/declarations/flow-variadicop.md) | 94 | `declaration-track:7724f7265857921d55977212cff7028b9b3da856d502242e63c73f980827143a` |
| 8 | `inductive` | [Flow.Expression](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition3.lean/declarations/flow-expression.md) | 121 | `declaration-track:c84bc0caf169dae4f71094135ce7a4ea5c8dfab3d0e856d1a9165c274f4888f2` |
| 9 | `inductive` | [Flow.Token](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition3.lean/declarations/flow-token.md) | 148 | `declaration-track:39cb9eb564c8d8c163c2ae940ef261afc7cde4f536dc78990be050770852f938` |
| 10 | `def` | [Flow.Expression.toCambridgeTokens](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition3.lean/declarations/flow-expression-tocambridgetokens.md) | 166 | `declaration-track:a408eddf5035a133cba86a6666756aa51d2259225d8d2391df195526845fcaac` |
| 11 | `def` | [Flow.Expression.toCambridgeTokensList](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition3.lean/declarations/flow-expression-tocambridgetokenslist.md) | 192 | `declaration-track:ac34a64562edf6951c2314f036b4214504607be204852c11615e72ea79b9fbfe` |
| 12 | `def` | [Flow.Expression.attendMany](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition3.lean/declarations/flow-expression-attendmany.md) | 202 | `declaration-track:094bc82ee2220eb4074eafcff31cf870f5721ba63991824fc14506d0351b0e55` |
| 13 | `def` | [Flow.Expression.pendingBinaryAction](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition3.lean/declarations/flow-expression-pendingbinaryaction.md) | 211 | `declaration-track:373687e57f9fb90b96d9adb5771ace2036c0248c0406d4a2c2c6ecb501aa4264` |
| 14 | `def` | [Flow.Expression.expBaseBase?](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition3.lean/declarations/flow-expression-expbasebase.md) | 220 | `declaration-track:d800ea72931fadd3457f327de53306719eba7a5bfcc3d851651885a74208d6db` |
| 15 | `def` | [Flow.Expression.binaryActionStatus?](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition3.lean/declarations/flow-expression-binaryactionstatus.md) | 226 | `declaration-track:403ae9d8a6e198feb1c91ed05d9f2524428298f6072d91655b7f25912b75dfaf` |
| 16 | `theorem` | [Flow.Expression.expBase_records_base](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition3.lean/declarations/flow-expression-expbase-records-base.md) | 232 | `result-track:bd1e5cd5c031bb4111ddf3af66489fe423cb790f099419e263462c0f9ec826cc` |
| 17 | `theorem` | [Flow.Expression.pendingBinaryAction_status](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition3.lean/declarations/flow-expression-pendingbinaryaction-status.md) | 240 | `result-track:94e25582333b8d86b1e51bf58d60d740a3a70ebaac58c1e46b9685dab6a7a537` |
| 18 | `def` | [Flow.Expression.product](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition3.lean/declarations/flow-expression-product.md) | 250 | `declaration-track:a0ec219f0d4d77e0c6dcb43de2d125f3ac29a31b0d7397c5a0c07f0b2135ae1e` |
| 19 | `def` | [Flow.Expression.sum](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition3.lean/declarations/flow-expression-sum.md) | 256 | `declaration-track:64951bc7aaafa1fb135812a9c86df1eca8435eed69eff46735accc364986432d` |
| 20 | `def` | [Flow.Expression.chain](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition3.lean/declarations/flow-expression-chain.md) | 262 | `declaration-track:e6e79ccac33f563814640e9008b6c423854bc75ccc7c6319a92f40d3339a20d3` |
| 21 | `def` | [Flow.Expression.log](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition3.lean/declarations/flow-expression-log.md) | 268 | `declaration-track:f33df56a4bd82ea5c0f9b3ad581e89e6d3ac0b05cbd03da974c9d3cc0fdbda2b` |
| 22 | `def` | [Flow.Expression.cos](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition3.lean/declarations/flow-expression-cos.md) | 274 | `declaration-track:995d03cd610c598e57f606295fcd6f16aaa0944446da2783081e42dcbb61ae67` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e51a33ccb973128058d8fd00374007e8953ebbd7aa590fdee58bdcd1416243a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb7333dda1ac57ae4d0bd0d43a25cc04d83b244a99f9e94ad602c71915c5769f4.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb7333dda1ac57ae4d0bd0d43a25cc04d83b244a99f9e94ad602c71915c5769f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
