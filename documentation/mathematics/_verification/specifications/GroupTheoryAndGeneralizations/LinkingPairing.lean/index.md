# Verification target: Linking Pairing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bafdbbe228a90a2d4680b7f35019706b258065f2",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LinkingPairing/Variant1bee30c8d6d5746b03d723bdb449b69199131c6f656b820ad9256d8b3d36af6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/LinkingPairing.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/LinkingPairing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bafdbbe228a90a2d4680b7f35019706b258065f2`.

Source path: `GRWTSK/Topology/GeneralTopology/LinkingPairing/Variant1bee30c8d6d5746b03d723bdb449b69199131c6f656b820ad9256d8b3d36af6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LinkingPairing/Variant1bee30c8d6d5746b03d723bdb449b69199131c6f656b820ad9256d8b3d36af6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Homology.TorsionLedger` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.AddCircle.Defs` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ClosedOrientedManifoldProfile](../../../../GroupTheoryAndGeneralizations/LinkingPairing.lean/declarations/closedorientedmanifoldprofile.md) | 17 | `declaration-track:95b810329ac2f9e6ec43a07272d2e9941634b4c185a2a1786e025e6858846f53` |
| 2 | `structure` | [TorsionLinkingPairing](../../../../GroupTheoryAndGeneralizations/LinkingPairing.lean/declarations/torsionlinkingpairing.md) | 24 | `declaration-track:c3d037c917313549706a3c3a1d9705573b564b4edfde9061173f257a2e97bef4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd2eaa20ffffcdedd2b90fa3b4e35bdea39b0ac7e24ac161ca24e49ad4366d5b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LinkingPairing/Variant1bee30c8d6d5746b03d723bdb449b69199131c6f656b820ad9256d8b3d36af6b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LinkingPairing/Variant1bee30c8d6d5746b03d723bdb449b69199131c6f656b820ad9256d8b3d36af6b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
