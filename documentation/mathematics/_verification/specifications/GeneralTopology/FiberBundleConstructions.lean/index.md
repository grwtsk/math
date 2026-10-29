# Verification target: Fiber Bundle Constructions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5860970ef7d2acb019d1391f9c135f2e221e705c",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant244589f6d51a705f244f81531cc0451a47c881278e1d77035fdb1b4e37a93931.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/FiberBundleConstructions.lean/index.md) · [Full source](../../../../GeneralTopology/FiberBundleConstructions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5860970ef7d2acb019d1391f9c135f2e221e705c`.

Source path: `GRWTSK/Topology/GeneralTopology/Constructions/Variant244589f6d51a705f244f81531cc0451a47c881278e1d77035fdb1b4e37a93931.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Constructions/Variant244589f6d51a705f244f81531cc0451a47c881278e1d77035fdb1b4e37a93931.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.FiberBundle.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [topologicalSpace](../../../../GeneralTopology/FiberBundleConstructions.lean/declarations/topologicalspace.md) | 39 | `declaration-track:d5ce80960123eb5b8fa6a6a1f25f787ca60a0b7043e2dd10912255d1a3cc88eb` |
| 2 | `theorem` | [isInducing_toProd](../../../../GeneralTopology/FiberBundleConstructions.lean/declarations/isinducing-toprod.md) | 45 | `result-track:2cfb4b59f093fcce81ce406f30531bf5250927192f27384793ff0c7785a339f7` |
| 3 | `def` | [homeomorphProd](../../../../GeneralTopology/FiberBundleConstructions.lean/declarations/homeomorphprod.md) | 51 | `declaration-track:d78bab51b437f1c4d7dec4b126af8eb6ba8082329f6c24490181658c9443e596` |
| 4 | `def` | [trivialization](../../../../GeneralTopology/FiberBundleConstructions.lean/declarations/trivialization.md) | 55 | `declaration-track:e39ddd00ac3c3cbfa0c652d9381b1b4fec32d9e81588775418405044b67b1107` |
| 5 | `theorem` | [trivialization_source](../../../../GeneralTopology/FiberBundleConstructions.lean/declarations/trivialization-source.md) | 64 | `result-track:d646f1c314751a2e5b01b4f5e99db4c99f9baff4faa540e7c1222568a15cb677` |
| 6 | `theorem` | [trivialization_target](../../../../GeneralTopology/FiberBundleConstructions.lean/declarations/trivialization-target.md) | 67 | `result-track:a1098f536772104b7a91c1406ad06acc62477ec19094549efe19f0188b8d3c5b` |
| 7 | `instance` | [fiberBundle](../../../../GeneralTopology/FiberBundleConstructions.lean/declarations/fiberbundle.md) | 70 | `declaration-track:045c67b3f321b9aba72eb4be9e15a8a4d624991ab641186acc97edbb74d204cd` |
| 8 | `theorem` | [eq_trivialization](../../../../GeneralTopology/FiberBundleConstructions.lean/declarations/eq-trivialization.md) | 78 | `result-track:fe088046449b6620f7b10f4185427fc142cd84af0545e37c9a9297ac93588608` |
| 9 | `instance` | [FiberBundle.Prod.topologicalSpace](../../../../GeneralTopology/FiberBundleConstructions.lean/declarations/fiberbundle-prod-topologicalspace.md) | 99 | `declaration-track:649428bfbc0318a45988274711398791eb0f9999f83d242eab72c4171bed1ffa` |
| 10 | `theorem` | [FiberBundle.Prod.isInducing_diag](../../../../GeneralTopology/FiberBundleConstructions.lean/declarations/fiberbundle-prod-isinducing-diag.md) | 106 | `result-track:173cda2928cb86ac6daf57b82c0fe24e8992bb31018defb6159685b5fd438347` |
| 11 | `def` | [Prod.toFun'](../../../../GeneralTopology/FiberBundleConstructions.lean/declarations/prod-tofun.md) | 130 | `declaration-track:7cbe815286a7d956afc5ca1dde00361fe907aa6320fe3f3ba8880a3e0bb5ad6f` |
| 12 | `theorem` | [Prod.continuous_to_fun](../../../../GeneralTopology/FiberBundleConstructions.lean/declarations/prod-continuous-to-fun.md) | 135 | `result-track:21b9fc49dea8f71d0149b08b4f0acd5b6ad82cba402be02b2e42ad48055e030f` |
| 13 | `def` | [Prod.invFun'](../../../../GeneralTopology/FiberBundleConstructions.lean/declarations/prod-invfun.md) | 159 | `declaration-track:8ab63f6adef8de470d7db31a122b22a22bb3f717e3078fa69d775623f7656ff8` |
| 14 | `theorem` | [Prod.left_inv](../../../../GeneralTopology/FiberBundleConstructions.lean/declarations/prod-left-inv.md) | 164 | `result-track:275a875fba02e235d62109ca139c6cc129a31f8b814e1895a496ed3693a4c5f3` |
| 15 | `theorem` | [Prod.right_inv](../../../../GeneralTopology/FiberBundleConstructions.lean/declarations/prod-right-inv.md) | 171 | `result-track:3a6109b0fba08f88993516bbcdaa25661d7975e313004d1d46ca03d539d43ae7` |
| 16 | `theorem` | [Prod.continuous_inv_fun](../../../../GeneralTopology/FiberBundleConstructions.lean/declarations/prod-continuous-inv-fun.md) | 178 | `result-track:c7ba72787321d2741981bd8f7e5e8a9215db6887b2d54ffc17fbe94f7a1eb5ce` |
| 17 | `def` | [prod](../../../../GeneralTopology/FiberBundleConstructions.lean/declarations/prod.md) | 190 | `declaration-track:c1dbaae45818c93086ebce3dfb8d4520515eced8e377f8893b61ebed9f1ec567` |
| 18 | `theorem` | [baseSet_prod](../../../../GeneralTopology/FiberBundleConstructions.lean/declarations/baseset-prod.md) | 214 | `result-track:8e2ffdbdae42588b0024126eaa2f3fb7ee99d5209b05ccf4136a2422a9d450e5` |
| 19 | `theorem` | [prod_symm_apply](../../../../GeneralTopology/FiberBundleConstructions.lean/declarations/prod-symm-apply.md) | 216 | `result-track:b26ae648466ea684947641a869ff24ae591bc05e28221222fdc231de29648a4f` |
| 20 | `instance` | [FiberBundle.prod](../../../../GeneralTopology/FiberBundleConstructions.lean/declarations/fiberbundle-prod.md) | 227 | `declaration-track:698f16d45c9bcc04e4550b57fda6c23ab17831fda1c3bd2f2cf5c5b3f6b671fd` |
| 21 | `instance` | [(anonymous)](../../../../GeneralTopology/FiberBundleConstructions.lean/declarations/instance-source-edition-2.md) | 241 | `declaration-track:9c1b3ea419c3295e4595198c0f10589e33f7d4c9d3c73f3b4b79b37c65e4b035` |
| 22 | `instance` | [(anonymous)](../../../../GeneralTopology/FiberBundleConstructions.lean/declarations/instance.md) | 256 | `declaration-track:4b54e7717cbd8bdc93db44f9d9d177fc688ad7f525f35be5947e0f458b26d4ca` |
| 23 | `instance` | [Pullback.TotalSpace.topologicalSpace](../../../../GeneralTopology/FiberBundleConstructions.lean/declarations/pullback-totalspace-topologicalspace.md) | 268 | `declaration-track:943df67b9bccc5627e7d353beded79d32f01ca140f0c3ebe7a7ea874b95b5fa4` |
| 24 | `theorem` | [Pullback.continuous_proj](../../../../GeneralTopology/FiberBundleConstructions.lean/declarations/pullback-continuous-proj.md) | 271 | `result-track:489b38da8f82c368339d36d009c65ecd2d06142b116551ad572692a5958b6e69` |
| 25 | `theorem` | [Pullback.continuous_lift](../../../../GeneralTopology/FiberBundleConstructions.lean/declarations/pullback-continuous-lift.md) | 275 | `result-track:d1cb2f8f68b4541414251dd95a477e70bfc19aea92d836ceaf2b4d10cbab39f6` |
| 26 | `theorem` | [inducing_pullbackTotalSpaceEmbedding](../../../../GeneralTopology/FiberBundleConstructions.lean/declarations/inducing-pullbacktotalspaceembedding.md) | 279 | `result-track:6bb006d6e03fbbec72fc0ede1ab7f72758b3050acec0b295d4fedd61213be6ad` |
| 27 | `theorem` | [Pullback.continuous_totalSpaceMk](../../../../GeneralTopology/FiberBundleConstructions.lean/declarations/pullback-continuous-totalspacemk.md) | 290 | `result-track:a1e629b5c1529e057fcd4778c4eb196fc50b147908e0b646258d124bf4db3606` |
| 28 | `def` | [Trivialization.pullback](../../../../GeneralTopology/FiberBundleConstructions.lean/declarations/trivialization-pullback.md) | 300 | `declaration-track:03967f12a5609928679f8eb5244fba908dba7ec9c6c6c8140b1f3413dba936e2` |
| 29 | `instance` | [FiberBundle.pullback](../../../../GeneralTopology/FiberBundleConstructions.lean/declarations/fiberbundle-pullback.md) | 339 | `declaration-track:8c2f183f315245dd293d1238250454de0bbc184d723b77a34ec7be0b1a10f249` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=69a76be4701f63f1e8dd615cb6496e1b090ed25c9218a5b9d4fa4634344dbb94 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Constructions/Variant244589f6d51a705f244f81531cc0451a47c881278e1d77035fdb1b4e37a93931.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Constructions/Variant244589f6d51a705f244f81531cc0451a47c881278e1d77035fdb1b4e37a93931.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
