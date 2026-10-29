# Verification target: Basic Basic Namespaced Edition6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5a1a7994ed305322121158d5b1266aab7fa2de9",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0bd92b3e44c1df2ce9109aac769649ffbd3936f5f97f2cbf4f6c1b9a65029b6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition6.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5a1a7994ed305322121158d5b1266aab7fa2de9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0bd92b3e44c1df2ce9109aac769649ffbd3936f5f97f2cbf4f6c1b9a65029b6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0bd92b3e44c1df2ce9109aac769649ffbd3936f5f97f2cbf4f6c1b9a65029b6a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Syntax.Cambridge` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Flow.Tag](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition6.lean/declarations/flow-tag.md) | 34 | `declaration-track:be8cc5a0d67d1e3040702921e3546ea00a6627cf9494822d689d5ef21ea2e321` |
| 2 | `inductive` | [Flow.ResidueStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition6.lean/declarations/flow-residuestatus.md) | 46 | `declaration-track:f5ffdbe85dfdde8c06fdfeee6961810b544134f97cc02ffc6b7265a4aef3bcf4` |
| 3 | `structure` | [Flow.HeatResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition6.lean/declarations/flow-heatresidue.md) | 53 | `declaration-track:aa8e38ede0b64aef7d4c88fd712907d44c321af2240911b4e4c8db96b645b406` |
| 4 | `def` | [Flow.HeatResidue.pending](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition6.lean/declarations/flow-heatresidue-pending.md) | 59 | `declaration-track:39092c9b6152468e5575be97e26e07563e8d52be6823524bfdbbe3e1cdd7fc5a` |
| 5 | `def` | [Flow.HeatResidue.realized](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition6.lean/declarations/flow-heatresidue-realized.md) | 66 | `declaration-track:9ea9c16b4ddc5b09e7cb61a28154405a9081a5a0ea031f0f98b48d131fbc39d7` |
| 6 | `inductive` | [Flow.BinaryAction](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition6.lean/declarations/flow-binaryaction.md) | 73 | `declaration-track:2855537adfe2ce85a56e3a3d417625c0319cd1c7d949ebcbbf2d104012194d6b` |
| 7 | `inductive` | [Flow.VariadicOp](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition6.lean/declarations/flow-variadicop.md) | 94 | `declaration-track:502d153d217caffd91dcc2d5de7c502ad104213c590555db99ba15e948e38526` |
| 8 | `inductive` | [Flow.Expression](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition6.lean/declarations/flow-expression.md) | 121 | `declaration-track:9f93e0fa7a9cf60a0d5b32cf75f031e8026eafd9e1fe30f2e9c660d3a69b36a0` |
| 9 | `inductive` | [Flow.Token](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition6.lean/declarations/flow-token.md) | 148 | `declaration-track:e519af927fddaf04b02112f705872243c3b355ca835bde133c14ba7914e5d0c0` |
| 10 | `def` | [Flow.Expression.toCambridgeTokens](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition6.lean/declarations/flow-expression-tocambridgetokens.md) | 166 | `declaration-track:14cf80745669964c55e89717f24508c7c41a6ded3811e3fd4b6617f4cbbd0c96` |
| 11 | `def` | [Flow.Expression.toCambridgeTokensList](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition6.lean/declarations/flow-expression-tocambridgetokenslist.md) | 192 | `declaration-track:8e34d93d53d72eb659d2c3193845eeb9dec919e2938954e0b5408e6655117e4d` |
| 12 | `def` | [Flow.Expression.attendMany](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition6.lean/declarations/flow-expression-attendmany.md) | 202 | `declaration-track:50a036ec008c1f5f63d690a1561f6d9507b3fe5aa8fc768c8dabce748f9a0c6a` |
| 13 | `def` | [Flow.Expression.pendingBinaryAction](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition6.lean/declarations/flow-expression-pendingbinaryaction.md) | 211 | `declaration-track:7baad557b38769de571e2a6b6ab03ade2866658c00c2e553de6f88b63171544f` |
| 14 | `def` | [Flow.Expression.expBaseBase?](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition6.lean/declarations/flow-expression-expbasebase.md) | 220 | `declaration-track:5156febf16fe480ace13642675183440f2c3cfbee62d04750743d0e3d50c032c` |
| 15 | `def` | [Flow.Expression.binaryActionStatus?](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition6.lean/declarations/flow-expression-binaryactionstatus.md) | 226 | `declaration-track:663ace5c44842700fa743c9e1c8d1d8fc1c091b3ee9a958be8a5c455d24ce636` |
| 16 | `theorem` | [Flow.Expression.expBase_records_base](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition6.lean/declarations/flow-expression-expbase-records-base.md) | 232 | `result-track:7b9e702d7b7b4be550daf6c33e66c9a51569c8d7c65fc102ef539271365e0006` |
| 17 | `theorem` | [Flow.Expression.pendingBinaryAction_status](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition6.lean/declarations/flow-expression-pendingbinaryaction-status.md) | 240 | `result-track:401881913adcc8620f74540599e3019e11b459df39093869e8508969babb1800` |
| 18 | `def` | [Flow.Expression.product](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition6.lean/declarations/flow-expression-product.md) | 250 | `declaration-track:f7f44f6b761c61e6fed385e2be8e71da1f7b76500ff8206678d9bd6f74f81ea9` |
| 19 | `def` | [Flow.Expression.sum](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition6.lean/declarations/flow-expression-sum.md) | 256 | `declaration-track:0e7be8bcd856a5e5b0b68b2ddcbe46f0d2992e8e009b10110e0a200a994dc344` |
| 20 | `def` | [Flow.Expression.chain](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition6.lean/declarations/flow-expression-chain.md) | 262 | `declaration-track:9a88078ffa4d7cca1e1d55b860775725578f0a249f8a00f5c7b1325cdfedcf15` |
| 21 | `def` | [Flow.Expression.log](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition6.lean/declarations/flow-expression-log.md) | 268 | `declaration-track:297a117b88fe5628bc757806bc747bf9b019a24cd480b79b3ae01c4de1223c94` |
| 22 | `def` | [Flow.Expression.cos](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedEdition6.lean/declarations/flow-expression-cos.md) | 274 | `declaration-track:99103bc5dfed4366f288460823211f12c86c0a08527423c78d3ac5e26acbfb58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2722f46593262904ad0ac5d5a5f9ef6af01d3b8343e1f6629b0876e905257aa4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0bd92b3e44c1df2ce9109aac769649ffbd3936f5f97f2cbf4f6c1b9a65029b6a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0bd92b3e44c1df2ce9109aac769649ffbd3936f5f97f2cbf4f6c1b9a65029b6a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
