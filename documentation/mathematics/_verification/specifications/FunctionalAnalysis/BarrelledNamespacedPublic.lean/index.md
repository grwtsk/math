# Verification target: Barrelled Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11f39fb0884cb246608a950d2960e942e1491c64",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Barrelled/Variant560b21a71bb779ba6754ac49a96b45f43e41e202d61705b0c447b7414439be74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/BarrelledNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/BarrelledNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11f39fb0884cb246608a950d2960e942e1491c64`.

Source path: `GRWTSK/Topology/GeneralTopology/Barrelled/Variant560b21a71bb779ba6754ac49a96b45f43e41e202d61705b0c447b7414439be74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Barrelled/Variant560b21a71bb779ba6754ac49a96b45f43e41e202d61705b0c447b7414439be74.lean.json)

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
| 1 | `class` | [BarrelledSpace](../../../../FunctionalAnalysis/BarrelledNamespacedPublic.lean/declarations/barrelledspace.md) | 99 | `declaration-track:dc215cc488b5fd74c9a8c1b862e5d98b43b17acc083bf624cbb82dffddaad2d5` |
| 2 | `theorem` | [Seminorm.continuous_of_lowerSemicontinuous](../../../../FunctionalAnalysis/BarrelledNamespacedPublic.lean/declarations/seminorm-continuous-of-lowersemicontinuous.md) | 104 | `result-track:02e696d4fb02bdfc0c33c9bab21c5f1fd9c6a1f2e73bec6c2c57de93abcbe2a3` |
| 3 | `theorem` | [Seminorm.continuous_iSup](../../../../FunctionalAnalysis/BarrelledNamespacedPublic.lean/declarations/seminorm-continuous-isup.md) | 109 | `result-track:bd9424cdd6ca62c434b729483c4644f9e6c1bcb2c2b2a551d54d072819ad906d` |
| 4 | `instance` | [BaireSpace.instBarrelledSpace](../../../../FunctionalAnalysis/BarrelledNamespacedPublic.lean/declarations/bairespace-instbarrelledspace.md) | 131 | `declaration-track:f5aebf0e483f49628eaee024826a8a787c0543f72a018e0e12216b928ec1d06d` |
| 5 | `theorem` | [banach_steinhaus](../../../../FunctionalAnalysis/BarrelledNamespacedPublic.lean/declarations/banach-steinhaus.md) | 173 | `result-track:9f5fb04779d203cc22a2c3bfe40d53425d3cdac2145a23d60261b8638b62d022` |
| 6 | `theorem` | [PolynormableSpace.banach_steinhaus](../../../../FunctionalAnalysis/BarrelledNamespacedPublic.lean/declarations/polynormablespace-banach-steinhaus.md) | 201 | `result-track:4280d23b66887d7517dce22182395895a20c9b91d5b2f7fa4a84daa54cdb119e` |
| 7 | `def` | [continuousLinearMapOfTendsto](../../../../FunctionalAnalysis/BarrelledNamespacedPublic.lean/declarations/continuouslinearmapoftendsto.md) | 217 | `declaration-track:da1ba7b5f40259cf887b7fab0fde0b5cc252f834022f6856d5fdb8bffeb612a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d575acacb4ad4b4a11e336ef9b64d90722d42c6886fc53096e44ac2e0ccc30cf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Barrelled/Variant560b21a71bb779ba6754ac49a96b45f43e41e202d61705b0c447b7414439be74.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Barrelled/Variant560b21a71bb779ba6754ac49a96b45f43e41e202d61705b0c447b7414439be74.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
