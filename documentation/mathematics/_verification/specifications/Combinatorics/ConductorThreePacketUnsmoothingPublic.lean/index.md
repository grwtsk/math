# Verification target: Conductor Three Packet Unsmoothing Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbb69b5aedc63d836ac3426d25b99e71b2efc725",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePacketUnsmoothing/Variant0fc7159157696b8cffd88719b03d0fd94baa198a093c12c5fa25a404fc3847b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ConductorThreePacketUnsmoothingPublic.lean/index.md) · [Full source](../../../../Combinatorics/ConductorThreePacketUnsmoothingPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbb69b5aedc63d836ac3426d25b99e71b2efc725`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePacketUnsmoothing/Variant0fc7159157696b8cffd88719b03d0fd94baa198a093c12c5fa25a404fc3847b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ConductorThreePacketUnsmoothing/Variant0fc7159157696b8cffd88719b03d0fd94baa198a093c12c5fa25a404fc3847b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DiscretePacketWeightCost](../../../../Combinatorics/ConductorThreePacketUnsmoothingPublic.lean/declarations/discretepacketweightcost.md) | 37 | `declaration-track:5b777e0b4e9764c55c2867ad8175327aedf84c96054d2d9948620262dfdfed72` |
| 2 | `def` | [conductorThreeDiscreteWeightedSum](../../../../Combinatorics/ConductorThreePacketUnsmoothingPublic.lean/declarations/conductorthreediscreteweightedsum.md) | 43 | `declaration-track:a83718081484bc7087a46436889300b89ee92b91771103f0061eadc1c777fcb4` |
| 3 | `def` | [ConductorThreeBVPacketEstimate](../../../../Combinatorics/ConductorThreePacketUnsmoothingPublic.lean/declarations/conductorthreebvpacketestimate.md) | 53 | `declaration-track:ada00ade27996251b9b0ac56c704665880f3de35e3a10a1c91e43d6aa5235e99` |
| 4 | `def` | [conductorThreePrefixWeight](../../../../Combinatorics/ConductorThreePacketUnsmoothingPublic.lean/declarations/conductorthreeprefixweight.md) | 63 | `declaration-track:a2bb27450124f968afc4f4aa36d12a4f600e7c5f3695964c8f91a5443e7fdb76` |
| 5 | `theorem` | [conductorThreePrefixWeight_cost](../../../../Combinatorics/ConductorThreePacketUnsmoothingPublic.lean/declarations/conductorthreeprefixweight-cost.md) | 69 | `result-track:957199640ab6e2333d92f1f1efa3bdfa3249712323783fa9a4783283ee1f832b` |
| 6 | `theorem` | [conductorThreeDiscreteWeightedSum_prefix](../../../../Combinatorics/ConductorThreePacketUnsmoothingPublic.lean/declarations/conductorthreediscreteweightedsum-prefix.md) | 108 | `result-track:eb234c5e01e21ff03f24e955f7f41b60ac1f68d5a174f1fde75b7ba3b367ed04` |
| 7 | `theorem` | [bvPacketEstimate_implies_halfPlusEpsilon](../../../../Combinatorics/ConductorThreePacketUnsmoothingPublic.lean/declarations/bvpacketestimate-implies-halfplusepsilon.md) | 140 | `result-track:3f321fde19052f37c3569f8e8384e98cea7ad2a46b67445f2a59a0be34306bc9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=576455dae9a40fa64e204b592ec3b2865f566176bc999e08a648f8773d03b4ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePacketUnsmoothing/Variant0fc7159157696b8cffd88719b03d0fd94baa198a093c12c5fa25a404fc3847b3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ConductorThreePacketUnsmoothing/Variant0fc7159157696b8cffd88719b03d0fd94baa198a093c12c5fa25a404fc3847b3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
