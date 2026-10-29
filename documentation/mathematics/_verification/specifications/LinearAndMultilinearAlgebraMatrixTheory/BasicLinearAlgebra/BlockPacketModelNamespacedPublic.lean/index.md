# Verification target: Block Packet Model Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee32fe52173b6539b5132ef4d8084e99b79182a6",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/BlockPacketModel/Variantb2a4f46af1be4732717c8cd921c101f5a5abbb9e83f5c670656730541c917b86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BlockPacketModelNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BlockPacketModelNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee32fe52173b6539b5132ef4d8084e99b79182a6`.

Source path: `GRWTSK/Topology/MetricTopology/BlockPacketModel/Variantb2a4f46af1be4732717c8cd921c101f5a5abbb9e83f5c670656730541c917b86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/BlockPacketModel/Variantb2a4f46af1be4732717c8cd921c101f5a5abbb9e83f5c670656730541c917b86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TypeIIBlockPacketModel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BlockPacketModelNamespacedPublic.lean/declarations/typeiiblockpacketmodel.md) | 49 | `declaration-track:fd53643fbfb2c829bc184d5649bb3a39701ad417acb1da88487746d8984f4fdb` |
| 2 | `def` | [TypeIIBlockPacketModel.packetMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BlockPacketModelNamespacedPublic.lean/declarations/typeiiblockpacketmodel-packetmatrix.md) | 115 | `declaration-track:0eccf1ad9b1291729ffeb9fd4c38b000d77b7beec6e1fe0f786a42329cc407fb` |
| 3 | `theorem` | [TypeIIBlockPacketModel.exactFactorization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BlockPacketModelNamespacedPublic.lean/declarations/typeiiblockpacketmodel-exactfactorization.md) | 127 | `result-track:7ef2cf2e12649b7bff32c3d7c97c4e91051049c1626024f601b4f6219805a10d` |
| 4 | `theorem` | [TypeIIBlockPacketModel.exactBlockFactorization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BlockPacketModelNamespacedPublic.lean/declarations/typeiiblockpacketmodel-exactblockfactorization.md) | 141 | `result-track:95835e048f6853679bf894844346dc520d53e945ae507460d42e696f9bc97608` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e1a9a55c39720e7bf075b4e42352046b73da3d8dac2637f6ca6e4c78cd6ecb1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/BlockPacketModel/Variantb2a4f46af1be4732717c8cd921c101f5a5abbb9e83f5c670656730541c917b86.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/BlockPacketModel/Variantb2a4f46af1be4732717c8cd921c101f5a5abbb9e83f5c670656730541c917b86.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
