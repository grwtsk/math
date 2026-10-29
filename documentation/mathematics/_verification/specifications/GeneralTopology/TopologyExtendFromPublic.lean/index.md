# Verification target: Topology Extend From Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54f274b309168e2793fa48ced5cb3b4f6a6a5e34",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ExtendFrom/Variant04db674bf9430b1c11e2766ee532cd4645d2ba5208c3fda5ebcf9e315c6fa522.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyExtendFromPublic.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyExtendFromPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54f274b309168e2793fa48ced5cb3b4f6a6a5e34`.

Source path: `GRWTSK/Topology/GeneralTopology/ExtendFrom/Variant04db674bf9430b1c11e2766ee532cd4645d2ba5208c3fda5ebcf9e315c6fa522.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ExtendFrom/Variant04db674bf9430b1c11e2766ee532cd4645d2ba5208c3fda5ebcf9e315c6fa522.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extendFrom](../../../../GeneralTopology/TopologyExtendFromPublic.lean/declarations/extendfrom.md) | 41 | `declaration-track:356723d74d7eba81674c3868be9d607d0b515a762ffda45aca514410531bf3e5` |
| 2 | `theorem` | [tendsto_extendFrom](../../../../GeneralTopology/TopologyExtendFromPublic.lean/declarations/tendsto-extendfrom.md) | 46 | `result-track:423999708603e399228287b1b768542040335ffc360f5388d54d5de1eab72d93` |
| 3 | `theorem` | [extendFrom_eq](../../../../GeneralTopology/TopologyExtendFromPublic.lean/declarations/extendfrom-eq.md) | 50 | `result-track:d2baff37f5f72d85117f78d1b5e15237abe9e62863370eb32d7ea37bf94c715a` |
| 4 | `theorem` | [extendFrom_extends](../../../../GeneralTopology/TopologyExtendFromPublic.lean/declarations/extendfrom-extends.md) | 55 | `result-track:5951a2cf652cb9bab8eff2b0ef7645aa04a81be869ac086f85aabc84cc2d261e` |
| 5 | `theorem` | [continuousOn_extendFrom](../../../../GeneralTopology/TopologyExtendFromPublic.lean/declarations/continuouson-extendfrom.md) | 61 | `result-track:b12523f178fd0235bb2a687feb8ea340a17e25cf753bf32fd77dce7d1efbdc44` |
| 6 | `theorem` | [continuous_extendFrom](../../../../GeneralTopology/TopologyExtendFromPublic.lean/declarations/continuous-extendfrom.md) | 83 | `result-track:6e3b22eb750f9f1ef24ea54e74422bfbbd311cc56acbfaa9f5e822a0a2612b51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df6cdb2514762a20c01e66bf0cf3c410f3329f641f396baac5637d14ffa0e6c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ExtendFrom/Variant04db674bf9430b1c11e2766ee532cd4645d2ba5208c3fda5ebcf9e315c6fa522.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ExtendFrom/Variant04db674bf9430b1c11e2766ee532cd4645d2ba5208c3fda5ebcf9e315c6fa522.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
