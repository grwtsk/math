# Verification target: Strict Convex Between Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c865d37a730e5b142b22f9f5def2cdd9c80e45c8",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/StrictConvexBetween/Varianta1981f9c35dd7198cae69fb32d0b2b7074ac93e5976d166a5397aaaa862544b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexBetweenNamespaced.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexBetweenNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c865d37a730e5b142b22f9f5def2cdd9c80e45c8`.

Source path: `GRWTSK/Topology/MetricTopology/StrictConvexBetween/Varianta1981f9c35dd7198cae69fb32d0b2b7074ac93e5976d166a5397aaaa862544b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/StrictConvexBetween/Varianta1981f9c35dd7198cae69fb32d0b2b7074ac93e5976d166a5397aaaa862544b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Between` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.StrictConvexSpace` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Sbtw.dist_lt_max_dist](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexBetweenNamespaced.lean/declarations/sbtw-dist-lt-max-dist.md) | 32 | `result-track:1c07809ba8fd006a3964a65160e1c208012c225601233552104972cda743e788` |
| 2 | `theorem` | [Wbtw.dist_le_max_dist](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexBetweenNamespaced.lean/declarations/wbtw-dist-le-max-dist.md) | 49 | `result-track:14e17e74b527d90e34a0962815ae1896a6b90c2633df09c3f84cce83f9098178` |
| 3 | `theorem` | [Collinear.wbtw_of_dist_eq_of_dist_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexBetweenNamespaced.lean/declarations/collinear-wbtw-of-dist-eq-of-dist-le.md) | 59 | `result-track:d1cf9b6d31443b442c138a88f26edd8feed06b7b51cf6f42dd9276a11eb983f0` |
| 4 | `theorem` | [Collinear.sbtw_of_dist_eq_of_dist_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexBetweenNamespaced.lean/declarations/collinear-sbtw-of-dist-eq-of-dist-lt.md) | 80 | `result-track:9c87bf2354251627ea2581f249d25896fd25a35001f3c2d7944bc39252d73896` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f3e4da9e1539005bd2ee355cc136859ec3992ae91f8ff8ca658009f08b1e635d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/StrictConvexBetween/Varianta1981f9c35dd7198cae69fb32d0b2b7074ac93e5976d166a5397aaaa862544b4.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/StrictConvexBetween/Varianta1981f9c35dd7198cae69fb32d0b2b7074ac93e5976d166a5397aaaa862544b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
