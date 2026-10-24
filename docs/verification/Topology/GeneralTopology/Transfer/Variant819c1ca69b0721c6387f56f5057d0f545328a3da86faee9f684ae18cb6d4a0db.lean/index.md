# Verification target: GRWTSK.Topology.GeneralTopology.Transfer.Variant819c1ca69b0721c6387f56f5057d0f545328a3da86faee9f684ae18cb6d4a0db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e49038b7ff9c5f7b63aeff0b8ec0a1414d8a2909",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Transfer/Variant819c1ca69b0721c6387f56f5057d0f545328a3da86faee9f684ae18cb6d4a0db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant819c1ca69b0721c6387f56f5057d0f545328a3da86faee9f684ae18cb6d4a0db.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant819c1ca69b0721c6387f56f5057d0f545328a3da86faee9f684ae18cb6d4a0db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e49038b7ff9c5f7b63aeff0b8ec0a1414d8a2909`.

Source path: `GRWTSK/Topology/GeneralTopology/Transfer/Variant819c1ca69b0721c6387f56f5057d0f545328a3da86faee9f684ae18cb6d4a0db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Transfer/Variant819c1ca69b0721c6387f56f5057d0f545328a3da86faee9f684ae18cb6d4a0db.lean.json)

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
| 1 | `def` | [cfcHomTransfer](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant819c1ca69b0721c6387f56f5057d0f545328a3da86faee9f684ae18cb6d4a0db.lean/declarations/cfchomtransfer--afbd1f2e446b49d135687b91.md) | 48 | `declaration-track:afbd1f2e446b49d135687b9158dbf3c2cb688f51b91ce5866bdc60941b5dfa99` |
| 2 | `lemma` | [cfcHomTransfer_injective](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant819c1ca69b0721c6387f56f5057d0f545328a3da86faee9f684ae18cb6d4a0db.lean/declarations/cfchomtransfer-injective--9dbef0d2ec4649e012ae6e3f.md) | 53 | `result-track:9dbef0d2ec4649e012ae6e3f8d51c73e0ecd5878e37bce1cbb2edace04d9da26` |
| 3 | `lemma` | [cfcHomTransfer_id](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant819c1ca69b0721c6387f56f5057d0f545328a3da86faee9f684ae18cb6d4a0db.lean/declarations/cfchomtransfer-id--38e5ea362d1b6b44eb70a863.md) | 57 | `result-track:38e5ea362d1b6b44eb70a8638a5dfc27243d7750205abfb0102efa7f99d0ec15` |
| 4 | `lemma` | [continuous_cfcHomTransfer](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant819c1ca69b0721c6387f56f5057d0f545328a3da86faee9f684ae18cb6d4a0db.lean/declarations/continuous-cfchomtransfer--c3aabfa595b83c506b99aca3.md) | 64 | `result-track:c3aabfa595b83c506b99aca31c85c515b66f9248f54e26a2e539621172f2e022` |
| 5 | `theorem` | [ContinuousFunctionalCalculus.transfer](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant819c1ca69b0721c6387f56f5057d0f545328a3da86faee9f684ae18cb6d4a0db.lean/declarations/continuousfunctionalcalculus-transfer--8f823fa31b29e25dad15e4b1.md) | 71 | `result-track:8f823fa31b29e25dad15e4b1ec2add7106107edd8972e1c56b9cc773298dcc15` |
| 6 | `lemma` | [cfcHom_eq_cfcHomTransfer](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant819c1ca69b0721c6387f56f5057d0f545328a3da86faee9f684ae18cb6d4a0db.lean/declarations/cfchom-eq-cfchomtransfer--cbc59d68d32e20d3741048c8.md) | 91 | `result-track:cbc59d68d32e20d3741048c8abb66b91f3318502ddc90b753bac938b66b121c0` |
| 7 | `lemma` | [cfc_eq_cfc_transfer](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant819c1ca69b0721c6387f56f5057d0f545328a3da86faee9f684ae18cb6d4a0db.lean/declarations/cfc-eq-cfc-transfer--92504d237f8c13fff7a12b3f.md) | 97 | `result-track:92504d237f8c13fff7a12b3f24e7504136f9a293349fc36ddc866d6e358e6262` |
| 8 | `def` | [cfcₙHomTransfer](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant819c1ca69b0721c6387f56f5057d0f545328a3da86faee9f684ae18cb6d4a0db.lean/declarations/cfc-homtransfer--7739e0581b01ff152b8a13a6.md) | 129 | `declaration-track:7739e0581b01ff152b8a13a6ec1a600e4f0bea3f55c8b51d21adbbfe322e14e4` |
| 9 | `lemma` | [cfcₙHomTransfer_injective](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant819c1ca69b0721c6387f56f5057d0f545328a3da86faee9f684ae18cb6d4a0db.lean/declarations/cfc-homtransfer-injective--a66e5f9b96970f93250fa41b.md) | 135 | `result-track:a66e5f9b96970f93250fa41b6d09396363b6ca231556f5cb4912a7d18965bdad` |
| 10 | `lemma` | [cfcₙHomTransfer_id](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant819c1ca69b0721c6387f56f5057d0f545328a3da86faee9f684ae18cb6d4a0db.lean/declarations/cfc-homtransfer-id--b3e099b0f97e1bbece4a2f1d.md) | 139 | `result-track:b3e099b0f97e1bbece4a2f1dad684b5701f9b52eaccac254e8df5de0ef2158d6` |
| 11 | `lemma` | [continuous_cfcₙHomTransfer](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant819c1ca69b0721c6387f56f5057d0f545328a3da86faee9f684ae18cb6d4a0db.lean/declarations/continuous-cfc-homtransfer--ccab5fb7fbbc4199f2ab4be3.md) | 146 | `result-track:ccab5fb7fbbc4199f2ab4be39279a13c029f2a5882301f58b56adfb309d42881` |
| 12 | `theorem` | [NonUnitalContinuousFunctionalCalculus.transfer](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant819c1ca69b0721c6387f56f5057d0f545328a3da86faee9f684ae18cb6d4a0db.lean/declarations/nonunitalcontinuousfunctionalcalculus-transfer--c613730fd4ab5e1c1bf25cbc.md) | 155 | `result-track:c613730fd4ab5e1c1bf25cbc62b7f14c4244808b509a9c3031e7c7ee2095aa12` |
| 13 | `lemma` | [cfcₙHom_eq_cfcₙHomTransfer](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant819c1ca69b0721c6387f56f5057d0f545328a3da86faee9f684ae18cb6d4a0db.lean/declarations/cfc-hom-eq-cfc-homtransfer--98459a19ade2a127b41e2b61.md) | 174 | `result-track:98459a19ade2a127b41e2b61d51a35db9f5d7f3f8e1bedeb1652a669beaccd30` |
| 14 | `lemma` | [cfcₙ_eq_cfcₙ_transfer](../../../../../mathematics/Topology/GeneralTopology/Transfer/Variant819c1ca69b0721c6387f56f5057d0f545328a3da86faee9f684ae18cb6d4a0db.lean/declarations/cfc-eq-cfc-transfer--d868d1a90f5de61d15730ae1.md) | 181 | `result-track:d868d1a90f5de61d15730ae1179499c9d6d5822f681465fdbb923b3baa578867` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
