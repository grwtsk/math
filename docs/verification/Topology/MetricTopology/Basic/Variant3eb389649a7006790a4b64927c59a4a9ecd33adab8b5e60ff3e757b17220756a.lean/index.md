# Verification target: GRWTSK.Topology.MetricTopology.Basic.Variant3eb389649a7006790a4b64927c59a4a9ecd33adab8b5e60ff3e757b17220756a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "acaf8ecf74c57f604fc2538e4141887986140042",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Variant3eb389649a7006790a4b64927c59a4a9ecd33adab8b5e60ff3e757b17220756a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Basic/Variant3eb389649a7006790a4b64927c59a4a9ecd33adab8b5e60ff3e757b17220756a.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Basic/Variant3eb389649a7006790a4b64927c59a4a9ecd33adab8b5e60ff3e757b17220756a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `acaf8ecf74c57f604fc2538e4141887986140042`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Variant3eb389649a7006790a4b64927c59a4a9ecd33adab8b5e60ff3e757b17220756a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Variant3eb389649a7006790a4b64927c59a4a9ecd33adab8b5e60ff3e757b17220756a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Hom.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GroupSeminormClass.toSeminormedGroup](../../../../../mathematics/Topology/MetricTopology/Basic/Variant3eb389649a7006790a4b64927c59a4a9ecd33adab8b5e60ff3e757b17220756a.lean/declarations/groupseminormclass-toseminormedgroup--dd9cefe27ac7be63e91cfa2f.md) | 33 | `declaration-track:dd9cefe27ac7be63e91cfa2f26a75b8b300d410e8da771d41aaffdcdd45bbb09` |
| 2 | `lemma` | [GroupSeminormClass.toSeminormedGroup_norm_eq](../../../../../mathematics/Topology/MetricTopology/Basic/Variant3eb389649a7006790a4b64927c59a4a9ecd33adab8b5e60ff3e757b17220756a.lean/declarations/groupseminormclass-toseminormedgroup-norm-eq--3ce03b56b4382fc53bc276c1.md) | 43 | `result-track:3ce03b56b4382fc53bc276c1d6437c55d114c81693cfb12ec45116cad64e12eb` |
| 3 | `abbrev` | [GroupSeminormClass.toSeminormedCommGroup](../../../../../mathematics/Topology/MetricTopology/Basic/Variant3eb389649a7006790a4b64927c59a4a9ecd33adab8b5e60ff3e757b17220756a.lean/declarations/groupseminormclass-toseminormedcommgroup--704228bea23f47fe6f583bd1.md) | 50 | `declaration-track:704228bea23f47fe6f583bd1b1f034fc61422c34061c70cb3650424dc4536229` |
| 4 | `lemma` | [GroupSeminormClass.toSeminormedCommGroup_norm_eq](../../../../../mathematics/Topology/MetricTopology/Basic/Variant3eb389649a7006790a4b64927c59a4a9ecd33adab8b5e60ff3e757b17220756a.lean/declarations/groupseminormclass-toseminormedcommgroup-norm-eq--1dc3de4b9130f5b59f7dfd0e.md) | 56 | `result-track:1dc3de4b9130f5b59f7dfd0e02b71094295a987266d27379e72f19d71d41e577` |
| 5 | `abbrev` | [GroupNormClass.toNormedGroup](../../../../../mathematics/Topology/MetricTopology/Basic/Variant3eb389649a7006790a4b64927c59a4a9ecd33adab8b5e60ff3e757b17220756a.lean/declarations/groupnormclass-tonormedgroup--c4af510cecf52738f6d94ee0.md) | 63 | `declaration-track:c4af510cecf52738f6d94ee0d34f18465aa7e998422057ea7c1b4b9ca04cac1e` |
| 6 | `lemma` | [GroupNormClass.toNormedGroup_norm_eq](../../../../../mathematics/Topology/MetricTopology/Basic/Variant3eb389649a7006790a4b64927c59a4a9ecd33adab8b5e60ff3e757b17220756a.lean/declarations/groupnormclass-tonormedgroup-norm-eq--e240b951614d62a635450dd8.md) | 69 | `result-track:e240b951614d62a635450dd83322a9763e6a265c04758c9074431ba145e87b33` |
| 7 | `abbrev` | [GroupNormClass.toNormedCommGroup](../../../../../mathematics/Topology/MetricTopology/Basic/Variant3eb389649a7006790a4b64927c59a4a9ecd33adab8b5e60ff3e757b17220756a.lean/declarations/groupnormclass-tonormedcommgroup--cc997411c42e82d99f5d6400.md) | 76 | `declaration-track:cc997411c42e82d99f5d6400e9c52c27821b6be7e3814330601623ca4f3a7f8f` |
| 8 | `lemma` | [GroupNormClass.toNormedCommGroup_norm_eq](../../../../../mathematics/Topology/MetricTopology/Basic/Variant3eb389649a7006790a4b64927c59a4a9ecd33adab8b5e60ff3e757b17220756a.lean/declarations/groupnormclass-tonormedcommgroup-norm-eq--334448eaa704aae5ef57de70.md) | 82 | `result-track:334448eaa704aae5ef57de70108ee04fab73161f8dda2d9c380df1c2556e392e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
