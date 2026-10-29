# Verification target: Uniform Space Real Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e25f751230827b977dcdb4acdab8caaed9491d2",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Real/Variant2d9e6319a26dd7cdb9b82898b75d40fd2ec527a80dfb3a85805bd1cdf6d870a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/UniformSpaceRealNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/UniformSpaceRealNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e25f751230827b977dcdb4acdab8caaed9491d2`.

Source path: `GRWTSK/Topology/GeneralTopology/Real/Variant2d9e6319a26dd7cdb9b82898b75d40fd2ec527a80dfb3a85805bd1cdf6d870a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Real/Variant2d9e6319a26dd7cdb9b82898b75d40fd2ec527a80dfb3a85805bd1cdf6d870a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousMap.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Cauchy` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Real.instCompleteSpace](../../../../GeneralTopology/UniformSpaceRealNamespaced.lean/declarations/real-instcompletespace.md) | 31 | `declaration-track:c8101b27c63509bd862873958c04b87a2fb46ce9339e756aa9c7d972e69a4ad4` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceRealNamespaced.lean/declarations/instance.md) | 49 | `declaration-track:b1e28be9e7c1cbaa8857ea6b2f71bb3e6a45b099fb9f27f2c351be973b609747` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceRealNamespaced.lean/declarations/instance-source-edition-2.md) | 51 | `declaration-track:bf18aca9b80bf2a80ccdd99cb2469f66867b33c80b47f62a4d2506a034bb1c3f` |
| 4 | `theorem` | [continuous_coe](../../../../GeneralTopology/UniformSpaceRealNamespaced.lean/declarations/continuous-coe.md) | 54 | `result-track:a1a9c856371954ec0c73a9bf5106e7151c9918fbfc7bf8f284d7458684d2f5c8` |
| 5 | `def` | [Uniform Space Real Namespaced](../../../../GeneralTopology/UniformSpaceRealNamespaced.lean/declarations/coennrealreal.md) | 59 | `declaration-track:f41235c726c7c2e6e0bcc864a3d2731f479cfbc8abe856e1152f5bf1d901d36b` |
| 6 | `lemma` | [coeNNRealReal_zero](../../../../GeneralTopology/UniformSpaceRealNamespaced.lean/declarations/coennrealreal-zero.md) | 63 | `result-track:3f3c3a615d73a81bd4e73ab0679680f460f9d28d896458a4159ddf9c555a1a87` |
| 7 | `instance` | [ContinuousMap.canLift](../../../../GeneralTopology/UniformSpaceRealNamespaced.lean/declarations/continuousmap-canlift.md) | 65 | `declaration-track:6391971062db69d6ecd907976f4a3a6aed001181910077ad1074bf6662b29194` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=508ab70cdf5d3346cde79f1434e7dfce2bb2ed80f24fd6f4128b79867941b0b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Real/Variant2d9e6319a26dd7cdb9b82898b75d40fd2ec527a80dfb3a85805bd1cdf6d870a8.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Real/Variant2d9e6319a26dd7cdb9b82898b75d40fd2ec527a80dfb3a85805bd1cdf6d870a8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
