# Verification target: Completely Regular Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9616ec82e12eea144c4b7ff4c7242f032fb4f038",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompletelyRegular/Variant5681c537b3000907e9b7e366218bd05ced90c408e99a06ffd50ea3885e016ff0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/CompletelyRegularNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/CompletelyRegularNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9616ec82e12eea144c4b7ff4c7242f032fb4f038`.

Source path: `GRWTSK/Topology/GeneralTopology/CompletelyRegular/Variant5681c537b3000907e9b7e366218bd05ced90c408e99a06ffd50ea3885e016ff0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompletelyRegular/Variant5681c537b3000907e9b7e366218bd05ced90c408e99a06ffd50ea3885e016ff0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UrysohnsLemma` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UnitInterval` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.StoneCech` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CompletelyRegularSpace](../../../../GeneralTopology/CompletelyRegularNamespaced.lean/declarations/completelyregularspace.md) | 70 | `declaration-track:5ae6501017ac5cc95de7733840304af8d4771e891175cbbfa616d6f7bf35af12` |
| 2 | `instance` | [CompletelyRegularSpace.instRegularSpace](../../../../GeneralTopology/CompletelyRegularNamespaced.lean/declarations/completelyregularspace-instregularspace.md) | 74 | `declaration-track:ebc36aae555ce46be367388d0e5c1eb13ab0bd92761d12bfd91ecc413bc99cae` |
| 3 | `instance` | [NormalSpace.instCompletelyRegularSpace](../../../../GeneralTopology/CompletelyRegularNamespaced.lean/declarations/normalspace-instcompletelyregularspace.md) | 83 | `declaration-track:12d7a6b590bbb5e2ae9873172af5ce44a42d21c72ccfccfd8609e49979e77608` |
| 4 | `lemma` | [Topology.IsInducing.completelyRegularSpace](../../../../GeneralTopology/CompletelyRegularNamespaced.lean/declarations/topology-isinducing-completelyregularspace.md) | 99 | `result-track:1f6abe1b308eb7a6d69cc6f68522d351f02054e49d4e1191179a3f3591515e05` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/CompletelyRegularNamespaced.lean/declarations/instance-source-edition-2.md) | 111 | `declaration-track:a13f90f5db58b53e5f1f4dac8d8c5d009e5597cdc48ae907ae7a0d0ad34ef8a2` |
| 6 | `class` | [T35Space](../../../../GeneralTopology/CompletelyRegularNamespaced.lean/declarations/t35space.md) | 116 | `declaration-track:a20b3b96a7d4287eebf94a5cb321f931c362dbc41634f939276c122435f79eab` |
| 7 | `instance` | [T35Space.instT3space](../../../../GeneralTopology/CompletelyRegularNamespaced.lean/declarations/t35space-instt3space.md) | 118 | `declaration-track:335aff79055a2384f76d8c35e043d33c9e0186661dbd1e4d4ab9f9e1ae99b730` |
| 8 | `instance` | [T4Space.instT35Space](../../../../GeneralTopology/CompletelyRegularNamespaced.lean/declarations/t4space-instt35space.md) | 120 | `declaration-track:7bc3bed14807b3a4d7c1569e071ee02103c59ca7aa7423fd4049dca039bf77fa` |
| 9 | `lemma` | [Topology.IsEmbedding.t35Space](../../../../GeneralTopology/CompletelyRegularNamespaced.lean/declarations/topology-isembedding-t35space.md) | 122 | `result-track:194d1e86817297c18f3319e20e2403a30881ca05ceee8c148f5afdd8aca9a90a` |
| 10 | `instance` | [(anonymous)](../../../../GeneralTopology/CompletelyRegularNamespaced.lean/declarations/instance.md) | 127 | `declaration-track:9501724eaa8198cf6e72e583b1972dac0f35e97bcc3d23312154136559b290d7` |
| 11 | `lemma` | [separatesPoints_continuous_of_t35Space](../../../../GeneralTopology/CompletelyRegularNamespaced.lean/declarations/separatespoints-continuous-of-t35space.md) | 129 | `result-track:a83e12e642b43063128776fac4125ec10b33e201fe89952b2625d79970a87d9f` |
| 12 | `lemma` | [separatesPoints_continuous_of_t35Space_Icc](../../../../GeneralTopology/CompletelyRegularNamespaced.lean/declarations/separatespoints-continuous-of-t35space-icc.md) | 139 | `result-track:e982edc2469bc07ff7aac5b7d2a3ff4a003b6b8efe20309cf73cb0ed7de3fc0e` |
| 13 | `lemma` | [injective_stoneCechUnit_of_t35Space](../../../../GeneralTopology/CompletelyRegularNamespaced.lean/declarations/injective-stonecechunit-of-t35space.md) | 150 | `result-track:77f6297766ad9962961e4095181bbc4676acf02b91d66a34d2d5d29656b9ba3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5bf6b830cf2772e7ce80f89a9f94b31dae3390f6e5b120adc0107a19398fde2e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/CompletelyRegular/Variant5681c537b3000907e9b7e366218bd05ced90c408e99a06ffd50ea3885e016ff0.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/CompletelyRegular/Variant5681c537b3000907e9b7e366218bd05ced90c408e99a06ffd50ea3885e016ff0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
