# Verification target: GRWTSK.Topology.PortFiber.Gluing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28bc13d2297559ea515bb04d793587f55ca05ecd",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/PortFiber/Gluing.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/PortFiber/Gluing.lean/index.md) · [Full source](../../../../mathematics/Topology/PortFiber/Gluing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28bc13d2297559ea515bb04d793587f55ca05ecd`.

Source path: `GRWTSK/Topology/PortFiber/Gluing.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/PortFiber/Gluing.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.PortFiber.Path`](../../../../mathematics/Topology/PortFiber/Path.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BinaryCover](../../../../mathematics/Topology/PortFiber/Gluing.lean/declarations/binarycover--ab806ffc11c09b033e43bbcb.md) | 8 | `declaration-track:ab806ffc11c09b033e43bbcbbe266a553e0888690b54c7ae45403eca5f5938bc` |
| 2 | `def` | [MatchingPair](../../../../mathematics/Topology/PortFiber/Gluing.lean/declarations/matchingpair--69d018c2f84a992ecb4b4a64.md) | 26 | `declaration-track:69d018c2f84a992ecb4b4a641d4e1b8596b4571491a72cb8f94c2ff87ec00d46` |
| 3 | `theorem` | [global_matching](../../../../mathematics/Topology/PortFiber/Gluing.lean/declarations/global-matching--1666e2d7528c09888bfa2457.md) | 31 | `result-track:1666e2d7528c09888bfa2457df8225e907a8e312b0809edf438c287c1dbcb81f` |
| 4 | `structure` | [Glue](../../../../mathematics/Topology/PortFiber/Gluing.lean/declarations/glue--3fba1361935c25601de7db63.md) | 36 | `declaration-track:3fba1361935c25601de7db631c0304fe4113d9362e1937f37821159e140f6f25` |
| 5 | `def` | [Separated](../../../../mathematics/Topology/PortFiber/Gluing.lean/declarations/separated--91bea43b9195c83756cf4adb.md) | 43 | `declaration-track:91bea43b9195c83756cf4adbcd7c18d657962720a8da149fec51b9e7e65bcf1e` |
| 6 | `def` | [HasGluing](../../../../mathematics/Topology/PortFiber/Gluing.lean/declarations/hasgluing--5fc92c155fa406d5d0ac7646.md) | 50 | `declaration-track:5fc92c155fa406d5d0ac7646c5d5dee820ceef613d68da606d755af7a94a5cd3` |
| 7 | `structure` | [SheafCertificate](../../../../mathematics/Topology/PortFiber/Gluing.lean/declarations/sheafcertificate--435f2311a43ab587793dca4c.md) | 54 | `declaration-track:435f2311a43ab587793dca4c3ba3efad17e5aaecc213d9ca219e28515301714d` |
| 8 | `theorem` | [global_unique](../../../../mathematics/Topology/PortFiber/Gluing.lean/declarations/global-unique--9e46bab41fee94785e0f5f0f.md) | 61 | `result-track:9e46bab41fee94785e0f5f0f28580a13ccadaf2e772c8b7ff5185c8707d9535b` |
| 9 | `def` | [identityCover](../../../../mathematics/Topology/PortFiber/Gluing.lean/declarations/identitycover--c3a6881f73288e28e1c4fe39.md) | 72 | `declaration-track:c3a6881f73288e28e1c4fe3911cd1c049cf4dd84cd87c2ae1215b570345675ea` |
| 10 | `theorem` | [identity_matching_iff](../../../../mathematics/Topology/PortFiber/Gluing.lean/declarations/identity-matching-iff--588a4cd18bc2c4b2e360a1cf.md) | 87 | `result-track:588a4cd18bc2c4b2e360a1cf4cd1de780b643af849d7f4c2cc3d5c3cc64a7f19` |
| 11 | `def` | [identitySheaf](../../../../mathematics/Topology/PortFiber/Gluing.lean/declarations/identitysheaf--547f29662ae974cec423e11e.md) | 95 | `declaration-track:547f29662ae974cec423e11e4e119e7259a0b613f94e5c5de6acdf10bc5bd09b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
