# Verification target: GRWTSK.Topology.GeneralTopology.Transfer.Variant6cbd67411040523807374a40479cafee5b80d1788ea8a725c7347580789788db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01e0fc478fb9b1b918f142d22a9f7227b1dfa154",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Transfer/Variant6cbd67411040523807374a40479cafee5b80d1788ea8a725c7347580789788db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant6cbd67411040523807374a40479cafee5b80d1788ea8a725c7347580789788db.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant6cbd67411040523807374a40479cafee5b80d1788ea8a725c7347580789788db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01e0fc478fb9b1b918f142d22a9f7227b1dfa154`.

Source path: `GRWTSK/Topology/GeneralTopology/Transfer/Variant6cbd67411040523807374a40479cafee5b80d1788ea8a725c7347580789788db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Transfer/Variant6cbd67411040523807374a40479cafee5b80d1788ea8a725c7347580789788db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cfcHomTransfer](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant6cbd67411040523807374a40479cafee5b80d1788ea8a725c7347580789788db.lean/declarations/cfchomtransfer--cbc7374e408f2a3651ea1d4a.md) | 40 | `declaration-track:cbc7374e408f2a3651ea1d4a3926b1dca2299d541473ee7fa193be02c582b50b` |
| 2 | `lemma` | [cfcHomTransfer_injective](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant6cbd67411040523807374a40479cafee5b80d1788ea8a725c7347580789788db.lean/declarations/cfchomtransfer-injective--e0577c77bd80961d61c91787.md) | 45 | `result-track:e0577c77bd80961d61c91787511e1ac0afe5f94a0289c8a89faf268c4e4d34aa` |
| 3 | `lemma` | [cfcHomTransfer_id](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant6cbd67411040523807374a40479cafee5b80d1788ea8a725c7347580789788db.lean/declarations/cfchomtransfer-id--9faa61843afab7da9bf82f1a.md) | 49 | `result-track:9faa61843afab7da9bf82f1a77f3589a07f93fecd3da64f7cdbf33dd3175e109` |
| 4 | `lemma` | [continuous_cfcHomTransfer](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant6cbd67411040523807374a40479cafee5b80d1788ea8a725c7347580789788db.lean/declarations/continuous-cfchomtransfer--61f02b5dbcb48a1230c02275.md) | 56 | `result-track:61f02b5dbcb48a1230c02275f8b98ec9dd01e8aa7448d825577f2740ed34464d` |
| 5 | `theorem` | [ContinuousFunctionalCalculus.transfer](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant6cbd67411040523807374a40479cafee5b80d1788ea8a725c7347580789788db.lean/declarations/continuousfunctionalcalculus-transfer--3f1dbf05075e4141d5299c47.md) | 63 | `result-track:3f1dbf05075e4141d5299c4757096fb2d8a189cae6ddbf99d5b92c85d4db8001` |
| 6 | `lemma` | [cfcHom_eq_cfcHomTransfer](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant6cbd67411040523807374a40479cafee5b80d1788ea8a725c7347580789788db.lean/declarations/cfchom-eq-cfchomtransfer--c054fca584e6c75cd7a1bdbc.md) | 83 | `result-track:c054fca584e6c75cd7a1bdbcc69488f3f39ca3b2727f4588b547dc60b4626388` |
| 7 | `lemma` | [cfc_eq_cfc_transfer](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant6cbd67411040523807374a40479cafee5b80d1788ea8a725c7347580789788db.lean/declarations/cfc-eq-cfc-transfer--1e805c6d6f891cce25bd79ef.md) | 89 | `result-track:1e805c6d6f891cce25bd79ef446adc4a715bba2e6a45194fbcf258c49b8ffaf2` |
| 8 | `def` | [cfcₙHomTransfer](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant6cbd67411040523807374a40479cafee5b80d1788ea8a725c7347580789788db.lean/declarations/cfc-homtransfer--33d8cf423113b1000ee2bbb5.md) | 121 | `declaration-track:33d8cf423113b1000ee2bbb528ce56373b8aee246aaa4d4b14c70edd2506be91` |
| 9 | `lemma` | [cfcₙHomTransfer_injective](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant6cbd67411040523807374a40479cafee5b80d1788ea8a725c7347580789788db.lean/declarations/cfc-homtransfer-injective--b889379d2807c3cce2d75ced.md) | 127 | `result-track:b889379d2807c3cce2d75cedbec658bd33dc3c8844a9d6942c10e72e61e87b71` |
| 10 | `lemma` | [cfcₙHomTransfer_id](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant6cbd67411040523807374a40479cafee5b80d1788ea8a725c7347580789788db.lean/declarations/cfc-homtransfer-id--502a88e05c83f28e1c534154.md) | 131 | `result-track:502a88e05c83f28e1c5341540dec94f5e5db7dcac4b72ce29be39cea5413ffec` |
| 11 | `lemma` | [continuous_cfcₙHomTransfer](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant6cbd67411040523807374a40479cafee5b80d1788ea8a725c7347580789788db.lean/declarations/continuous-cfc-homtransfer--c08970c8a676855bb4b7c1b0.md) | 138 | `result-track:c08970c8a676855bb4b7c1b0cf233f47e0e3ec579a3178baa82cf23f4799afdf` |
| 12 | `theorem` | [NonUnitalContinuousFunctionalCalculus.transfer](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant6cbd67411040523807374a40479cafee5b80d1788ea8a725c7347580789788db.lean/declarations/nonunitalcontinuousfunctionalcalculus-transfer--633c97578378d8a28f3a2bfa.md) | 147 | `result-track:633c97578378d8a28f3a2bfa0127bff5f58bbee00d002e25422c257f4450e3a6` |
| 13 | `lemma` | [cfcₙHom_eq_cfcₙHomTransfer](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant6cbd67411040523807374a40479cafee5b80d1788ea8a725c7347580789788db.lean/declarations/cfc-hom-eq-cfc-homtransfer--931dff2f3f9a8b4ab285c1c5.md) | 166 | `result-track:931dff2f3f9a8b4ab285c1c571db9aef706d762ced774933141b154dd8e0c1b8` |
| 14 | `lemma` | [cfcₙ_eq_cfcₙ_transfer](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant6cbd67411040523807374a40479cafee5b80d1788ea8a725c7347580789788db.lean/declarations/cfc-eq-cfc-transfer--e67173e45ef97ed2dcbaae4f.md) | 173 | `result-track:e67173e45ef97ed2dcbaae4f9da209b4c56fb91b387064e66560c97faf322481` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
