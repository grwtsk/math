# Verification target: Metric Space Proper Space

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10ff7ccdbcd8df795f9c3252d77bea1bb03318db",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ProperSpace/Variant09901280c93092ff10e7b37ed3befc5737df748d2dc58895ad0e5d3f7be2428f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/MetricSpaceProperSpace.lean/index.md) · [Full source](../../../../GeneralTopology/MetricSpaceProperSpace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10ff7ccdbcd8df795f9c3252d77bea1bb03318db`.

Source path: `GRWTSK/Topology/GeneralTopology/ProperSpace/Variant09901280c93092ff10e7b37ed3befc5737df748d2dc58895ad0e5d3f7be2428f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ProperSpace/Variant09901280c93092ff10e7b37ed3befc5737df748d2dc58895ad0e5d3f7be2428f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Pseudo.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Pi` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.IsLUB` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ProperSpace](../../../../GeneralTopology/MetricSpaceProperSpace.lean/declarations/properspace.md) | 36 | `declaration-track:43a6ee76567643c70609f9d34a15391fcd16691da7bf267199ba88aaeae53b0c` |
| 2 | `theorem` | [isCompact_sphere](../../../../GeneralTopology/MetricSpaceProperSpace.lean/declarations/iscompact-sphere.md) | 42 | `result-track:8de314717ec2d172d232ed1eb95ca412c75a0380a04335c898f6aad476c9dcdb` |
| 3 | `instance` | [Metric.sphere.compactSpace](../../../../GeneralTopology/MetricSpaceProperSpace.lean/declarations/metric-sphere-compactspace.md) | 47 | `declaration-track:2d0b9a3443993acfc46dcf616653293d4c764598acca108b86ac15d924b19495` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceProperSpace.lean/declarations/instance-source-edition-2.md) | 55 | `declaration-track:41a8e573642bd41c7881ffc321f0c3ae0ebb2eefa3119e837170c7a6f43b8ce0` |
| 5 | `theorem` | [ProperSpace.of_isCompact_closedBall_of_le](../../../../GeneralTopology/MetricSpaceProperSpace.lean/declarations/properspace-of-iscompact-closedball-of-le.md) | 66 | `result-track:ee925cd7af698a2070cacad3e5d254fef547eac783656d03ec83f00eea56bb82` |
| 6 | `theorem` | [ProperSpace.of_seq_closedBall](../../../../GeneralTopology/MetricSpaceProperSpace.lean/declarations/properspace-of-seq-closedball.md) | 73 | `result-track:0b5530b8e52c233323fac4f90b9a0475a7ce48b34c31ef956d4406605e2c7a31` |
| 7 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceProperSpace.lean/declarations/instance-source-edition-3.md) | 82 | `declaration-track:5de89c3b2c368fcc73559ef726d2d14bf0042c41d94e492a58ba35e8f9c4beec` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceProperSpace.lean/declarations/instance.md) | 87 | `declaration-track:0d4ee731487b2e12d9327084bdd70cb782dfbeec6f3b92ccd39bac6c1a421e6c` |
| 9 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceProperSpace.lean/declarations/instance-source-edition-5.md) | 97 | `declaration-track:c9ce1f87cb1c76dad7fb135c4c6f3ac6bb5c7cff64fde0f9cda7dc7e44dffa53` |
| 10 | `instance` | [prod_properSpace](../../../../GeneralTopology/MetricSpaceProperSpace.lean/declarations/prod-properspace.md) | 111 | `declaration-track:ae301d1c53cff96e0a47884f2e4be94b2e87c1e596cd01c91bef5662c7c19341` |
| 11 | `instance` | [pi_properSpace](../../../../GeneralTopology/MetricSpaceProperSpace.lean/declarations/pi-properspace.md) | 119 | `declaration-track:d21bd5de581f82b758f45384b9cb1e7c9649ac0d91926367dff182deb8241ca6` |
| 12 | `lemma` | [ProperSpace.of_isClosed](../../../../GeneralTopology/MetricSpaceProperSpace.lean/declarations/properspace-of-isclosed.md) | 127 | `result-track:f70c15b64aab99e7181748116d8b76d24b2986302c9dc098d92bb39a1ac51167` |
| 13 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceProperSpace.lean/declarations/instance-source-edition-7.md) | 136 | `declaration-track:dfaf4575cbe11b5a802d1a760c061d26fc29e09cc4e7be6ea591607653127e87` |
| 14 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceProperSpace.lean/declarations/instance-source-edition-6.md) | 137 | `declaration-track:dc6dd46a160f1888496cf335b2931398106cf5eadd916f81806b0d7010103b2b` |
| 15 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceProperSpace.lean/declarations/instance-source-edition-4.md) | 138 | `declaration-track:92c7784b81844ac4d641bf884620fd7f576b1a3e8300b1a55c4561e37f366c84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d1988f8c56e6e4ac0f0f2fa00d50c9eb64f4978ae13de4ee83135def4cd26347 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ProperSpace/Variant09901280c93092ff10e7b37ed3befc5737df748d2dc58895ad0e5d3f7be2428f.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ProperSpace/Variant09901280c93092ff10e7b37ed3befc5737df748d2dc58895ad0e5d3f7be2428f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
