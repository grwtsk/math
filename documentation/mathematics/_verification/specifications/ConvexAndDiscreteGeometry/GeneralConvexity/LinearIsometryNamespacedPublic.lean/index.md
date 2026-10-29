# Verification target: Linear Isometry Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e7d39f81ed24a0e3fe3652c87cd5a01345dc404",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/LinearIsometry/Variant5c468497df13e2c10b0a5c208bd932b3c871eff2c8b01f1c28d11b88b4a48129.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/LinearIsometryNamespacedPublic.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/LinearIsometryNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e7d39f81ed24a0e3fe3652c87cd5a01345dc404`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/LinearIsometry/Variant5c468497df13e2c10b0a5c208bd932b3c871eff2c8b01f1c28d11b88b4a48129.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/LinearIsometry/Variant5c468497df13e2c10b0a5c208bd932b3c871eff2c8b01f1c28d11b88b4a48129.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [LinearIsometryEquiv.strictConvex_preimage](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/LinearIsometryNamespacedPublic.lean/declarations/linearisometryequiv-strictconvex-preimage.md) | 39 | `result-track:2ffb071dcdc9cdedb5f11846ef556723dc77d7753d9fc0aa600c69a44fb8d9cf` |
| 2 | `lemma` | [LinearIsometryEquiv.strictConvex_image](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/LinearIsometryNamespacedPublic.lean/declarations/linearisometryequiv-strictconvex-image.md) | 44 | `result-track:3d543f9a411cb8783680ecfe0abb069b9d9d3b581480d23c1b7be709ff4ffabd` |
| 3 | `lemma` | [StrictConvex.linearIsometry_preimage](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/LinearIsometryNamespacedPublic.lean/declarations/strictconvex-linearisometry-preimage.md) | 52 | `result-track:f75a8f58e1664450764ca170ac15622fadf235bb03097ad1b1f19159e13eb2d9` |
| 4 | `lemma` | [LinearIsometryEquiv.strictConvexSpace_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/LinearIsometryNamespacedPublic.lean/declarations/linearisometryequiv-strictconvexspace-iff.md) | 59 | `result-track:7bd2307bf48b71665b2bd3cf08a327e48f3283578a16705214cb60ffded8749e` |
| 5 | `lemma` | [LinearIsometry.strictConvexSpace_range_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/LinearIsometryNamespacedPublic.lean/declarations/linearisometry-strictconvexspace-range-iff.md) | 63 | `result-track:1a93e1196e20704ff64b955a43c960d2718bc3d137bc76e510b909ce6cb308fa` |
| 6 | `instance` | [LinearIsometry.strictConvexSpace_range](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/LinearIsometryNamespacedPublic.lean/declarations/linearisometry-strictconvexspace-range.md) | 67 | `declaration-track:8cd2142a1b4cf6f826a784af62f35fe70020a20e5717671a7eabdadbc7716398` |
| 7 | `lemma` | [LinearIsometry.strictConvexSpace](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/LinearIsometryNamespacedPublic.lean/declarations/linearisometry-strictconvexspace.md) | 71 | `result-track:b4de94d302466e4bdf1c2082d3529b4cd669aebe2071dd903712dc0c8e7d0ee2` |
| 8 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/LinearIsometryNamespacedPublic.lean/declarations/instance.md) | 82 | `declaration-track:7ec7d8dfd3a320863b6e9d715c0714ed626f5d2958033540247742fd8932f046` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2298828dacfbe8addbd9effd946879100e8d5c46cce011bb97369bb7a4b65a4b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/LinearIsometry/Variant5c468497df13e2c10b0a5c208bd932b3c871eff2c8b01f1c28d11b88b4a48129.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/LinearIsometry/Variant5c468497df13e2c10b0a5c208bd932b3c871eff2c8b01f1c28d11b88b4a48129.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
