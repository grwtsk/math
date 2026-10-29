# Verification target: Boundary Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1109002b61880303ae91f01462d456d529e709b7",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Boundary/Variant5e3c0581dc8d828fd812b6cfd31db4c99f9fcc75cf94e17dc87da5da30b23f03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/BoundaryNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/BoundaryNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1109002b61880303ae91f01462d456d529e709b7`.

Source path: `GRWTSK/Topology/GeneralTopology/Boundary/Variant5e3c0581dc8d828fd812b6cfd31db4c99f9fcc75cf94e17dc87da5da30b23f03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Boundary/Variant5e3c0581dc8d828fd812b6cfd31db4c99f9fcc75cf94e17dc87da5da30b23f03.lean.json)

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
| 1 | `inductive` | [InterfaceKind](../../../../GeneralTopology/BoundaryNamespacedPublic.lean/declarations/interfacekind.md) | 27 | `declaration-track:0b1215b9a0539e38693dc497135b8d098746dc6ed63e7b4a18dedb0c09f0af95` |
| 2 | `structure` | [InterfaceAtom](../../../../GeneralTopology/BoundaryNamespacedPublic.lean/declarations/interfaceatom.md) | 38 | `declaration-track:7f210e732d7d802f11b66a21a9fb7e9f683003c772141b6de1886987c1a838a7` |
| 3 | `structure` | [BoundaryTerm](../../../../GeneralTopology/BoundaryNamespacedPublic.lean/declarations/boundaryterm.md) | 46 | `declaration-track:22f9bec33dcde666458ec4e416f04fa3a2bc5937b46002de4eb77370d569ed44` |
| 4 | `abbrev` | [BoundaryLedger](../../../../GeneralTopology/BoundaryNamespacedPublic.lean/declarations/boundaryledger.md) | 51 | `declaration-track:7b2497b287969d6c3c0f2833c2bc09c190a99d3b15e2fb4ffa5da7c55b7255d7` |
| 5 | `def` | [zero](../../../../GeneralTopology/BoundaryNamespacedPublic.lean/declarations/zero.md) | 55 | `declaration-track:55ca04ba9ae1283eb1af502a1a5a15abebd367f589deb42fbb7341acee2826e9` |
| 6 | `def` | [add](../../../../GeneralTopology/BoundaryNamespacedPublic.lean/declarations/add.md) | 57 | `declaration-track:c51bbedd6e3d7b63dd095d990392593c8d43b06a3d44de16d43e3ddaf02d67c4` |
| 7 | `def` | [neg](../../../../GeneralTopology/BoundaryNamespacedPublic.lean/declarations/neg.md) | 60 | `declaration-track:204eeeed292371a29528e915379db528f0f6dde7c1c48ad57fed3216006be483` |
| 8 | `def` | [sub](../../../../GeneralTopology/BoundaryNamespacedPublic.lean/declarations/sub.md) | 63 | `declaration-track:a10f6d6b66e2c012ee40f092f71b1bed9569131ea36dd7217b5a806d90f8527a` |
| 9 | `def` | [coefficient](../../../../GeneralTopology/BoundaryNamespacedPublic.lean/declarations/coefficient.md) | 66 | `declaration-track:742b9ed169d3acba1ca68c01286f0f601671c6015148fc4c37f97abaa555675e` |
| 10 | `def` | [support](../../../../GeneralTopology/BoundaryNamespacedPublic.lean/declarations/support.md) | 70 | `declaration-track:72f69951b3523b7fd9b2bb1ad16e2ee022b718df63f2b0df4bbf3ddc9ffb3c66` |
| 11 | `def` | [IsZero](../../../../GeneralTopology/BoundaryNamespacedPublic.lean/declarations/iszero.md) | 74 | `declaration-track:1ca9eb710127b23dc0ba43b2084bd757b973e9e2a67b163a3de8577423c490f8` |
| 12 | `theorem` | [coefficient_zero](../../../../GeneralTopology/BoundaryNamespacedPublic.lean/declarations/coefficient-zero.md) | 77 | `result-track:fa144937e52f21e56ffb8d127aaf0a6b21628528fc280fe94709b27907bc28b0` |
| 13 | `theorem` | [add_zero](../../../../GeneralTopology/BoundaryNamespacedPublic.lean/declarations/add-zero.md) | 81 | `result-track:815ff683068bcaef8e2a5100ef03c8f5dd6eb0b9eec48fb3e4c090707f30fd5f` |
| 14 | `theorem` | [zero_add](../../../../GeneralTopology/BoundaryNamespacedPublic.lean/declarations/zero-add.md) | 84 | `result-track:1561922e16ab219bf86c40c554875011f3568cb7288226e8f20c7be40925cc87` |
| 15 | `structure` | [PreparedBoundaryLedger](../../../../GeneralTopology/BoundaryNamespacedPublic.lean/declarations/preparedboundaryledger.md) | 90 | `declaration-track:cc23ef0b645e9f7ae0bf65fdb7c7642ff6e9cac1a5b7b44624f9625fb7c9ed95` |
| 16 | `def` | [PreparedBoundaryLedger.totalBoundary](../../../../GeneralTopology/BoundaryNamespacedPublic.lean/declarations/preparedboundaryledger-totalboundary.md) | 96 | `declaration-track:69bcb6873c9c9628253b7afbf2875f1995b2bcbdf1941b25c778f44f2aacaa04` |
| 17 | `def` | [BoundaryBalanced](../../../../GeneralTopology/BoundaryNamespacedPublic.lean/declarations/boundarybalanced.md) | 101 | `declaration-track:0ced529dcfe47a7a87ed3c7f497b7d544752bb92e8f69bd4d6cd2d1eaf12e645` |
| 18 | `theorem` | [boundaryLedger_zero_of_balanced_excision_graft](../../../../GeneralTopology/BoundaryNamespacedPublic.lean/declarations/boundaryledger-zero-of-balanced-excision-graft.md) | 105 | `result-track:db36ab756deba16ca56b1b8415e091b6b56b69c74a3738b0dc47a78ab9ab45e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f495df63b38e3f5a4f69b7a38e61d24e8c907b37e99a90bb5f67a815115a036d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Boundary/Variant5e3c0581dc8d828fd812b6cfd31db4c99f9fcc75cf94e17dc87da5da30b23f03.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Boundary/Variant5e3c0581dc8d828fd812b6cfd31db4c99f9fcc75cf94e17dc87da5da30b23f03.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
