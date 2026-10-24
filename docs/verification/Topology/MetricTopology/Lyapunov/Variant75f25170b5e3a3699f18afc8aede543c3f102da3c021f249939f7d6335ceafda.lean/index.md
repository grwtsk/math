# Verification target: GRWTSK.Topology.MetricTopology.Lyapunov.Variant75f25170b5e3a3699f18afc8aede543c3f102da3c021f249939f7d6335ceafda

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2563b66d7fc5561e628c9eede47d31f0bbc42c4b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Lyapunov/Variant75f25170b5e3a3699f18afc8aede543c3f102da3c021f249939f7d6335ceafda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Lyapunov/Variant75f25170b5e3a3699f18afc8aede543c3f102da3c021f249939f7d6335ceafda.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Lyapunov/Variant75f25170b5e3a3699f18afc8aede543c3f102da3c021f249939f7d6335ceafda.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2563b66d7fc5561e628c9eede47d31f0bbc42c4b`.

Source path: `GRWTSK/Topology/MetricTopology/Lyapunov/Variant75f25170b5e3a3699f18afc8aede543c3f102da3c021f249939f7d6335ceafda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Lyapunov/Variant75f25170b5e3a3699f18afc8aede543c3f102da3c021f249939f7d6335ceafda.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Operational.Stability` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocalQuadraticLyapunovCertificate](../../../../../mathematics/Topology/MetricTopology/Lyapunov/Variant75f25170b5e3a3699f18afc8aede543c3f102da3c021f249939f7d6335ceafda.lean/declarations/localquadraticlyapunovcertificate--871c6804f11a3bb0a2045912.md) | 27 | `declaration-track:871c6804f11a3bb0a2045912ffa480316f122e9681b4265c11d579fe65f52bcd` |
| 2 | `theorem` | [iterate_mem](../../../../../mathematics/Topology/MetricTopology/Lyapunov/Variant75f25170b5e3a3699f18afc8aede543c3f102da3c021f249939f7d6335ceafda.lean/declarations/iterate-mem--f385073ecce70ae032dff019.md) | 70 | `result-track:f385073ecce70ae032dff0192dc8f33e58097de20ed43c0323a3ae080f8f81d7` |
| 3 | `theorem` | [energy_iterate_le](../../../../../mathematics/Topology/MetricTopology/Lyapunov/Variant75f25170b5e3a3699f18afc8aede543c3f102da3c021f249939f7d6335ceafda.lean/declarations/energy-iterate-le--202648396165b403f34c75cb.md) | 79 | `result-track:202648396165b403f34c75cb06549d486b2b3bdd99eec3578a22c3346fb26879` |
| 4 | `theorem` | [isLyapunovStable](../../../../../mathematics/Topology/MetricTopology/Lyapunov/Variant75f25170b5e3a3699f18afc8aede543c3f102da3c021f249939f7d6335ceafda.lean/declarations/islyapunovstable--49cbfd6ebfab0284c9a1c9f1.md) | 99 | `result-track:49cbfd6ebfab0284c9a1c9f14f6456f4a910613d7450e7317d73797cce69aec8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
