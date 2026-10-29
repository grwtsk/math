# Verification target: GRWTSK.Topology.PortFiber.MultiCertificate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b53f7b5fc81c747fc80bb1dde388afcf27f8842",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/PortFiber/MultiCertificate.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/MultiCertificate.lean/index.md) · [Full source](../../../../GeneralTopology/MultiCertificate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b53f7b5fc81c747fc80bb1dde388afcf27f8842`.

Source path: `GRWTSK/Topology/PortFiber/MultiCertificate.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/PortFiber/MultiCertificate.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.PortFiber.Path`](../../../../MathematicalLogicAndFoundations/GeneralLogic/Path.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [and](../../../../GeneralTopology/MultiCertificate.lean/declarations/and.md) | 12 | `declaration-track:f9d0f5211c17c48bfe41098f6b7f90be8e9c966f0a787d033c5251d7fb7370d8` |
| 2 | `def` | [all](../../../../GeneralTopology/MultiCertificate.lean/declarations/all.md) | 19 | `declaration-track:c2bdd28bfa835af2b6e4645d82c0318c1931dff5d60b75fd9959b1ecd5a96d1b` |
| 3 | `theorem` | [and_left](../../../../GeneralTopology/MultiCertificate.lean/declarations/and-left.md) | 25 | `result-track:a7ddb85a02139d3119e707596db45f0250b1b0957c8f8b59f6324711c9422e81` |
| 4 | `theorem` | [and_right](../../../../GeneralTopology/MultiCertificate.lean/declarations/and-right.md) | 31 | `result-track:91fdc4a88180443d11fc2f172d5845d1486e80bb76b531ba5a10e5ca7f784980` |
| 5 | `theorem` | [certifiedAt](../../../../GeneralTopology/MultiCertificate.lean/declarations/certifiedat.md) | 37 | `result-track:0665422f3c3eacd5366c65589d11b3492f88e466f61a8136bb7bea8d5e5d14f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc5df00c4db1a700b8703ff04a7ab67611b1cfbd045d89f6c5d39b15db734eab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/PortFiber/MultiCertificate.lean","GRWTSK/_verification/specifications/Topology/PortFiber/MultiCertificate.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
