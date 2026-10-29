# Verification target: GRWTSK.Topology.PortFiber.Certified

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57d6221c9cdf479404f303272873d32b95837075",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/PortFiber/Certified.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Topology/PortFiber/Certified.lean/index.md) · [Full source](../../../../../Topology/PortFiber/Certified.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57d6221c9cdf479404f303272873d32b95837075`.

Source path: `GRWTSK/Topology/PortFiber/Certified.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/PortFiber/Certified.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.PortFiber.Path`](../../../../../Topology/PortFiber/Path.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousCertificate](../../../../../Topology/PortFiber/Certified.lean/declarations/continuouscertificate--08b85cadb95bca27150685e4.md) | 11 | `declaration-track:08b85cadb95bca27150685e4baf45144836f85fbf291ed8a48b340dbc113e643` |
| 2 | `def` | [identity](../../../../../Topology/PortFiber/Certified.lean/declarations/identity--477243baed7018f4e2147d09.md) | 17 | `declaration-track:477243baed7018f4e2147d09c0f202f662984d50a0c2f26a8c838868c537d2d0` |
| 3 | `def` | [comp](../../../../../Topology/PortFiber/Certified.lean/declarations/comp--fe982f7c2fba0e86409e8676.md) | 26 | `declaration-track:fe982f7c2fba0e86409e86769122a0de6c583c13b02700040f33f273b441761b` |
| 4 | `def` | [composableProperty](../../../../../Topology/PortFiber/Certified.lean/declarations/composableproperty--81332b6025eb73986bc2e252.md) | 37 | `declaration-track:81332b6025eb73986bc2e252fa9a635990c76854688695715e45614650a4c2aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f823b2f621212798d85226f80fcb39723cd706f9534a7b92aeae5e86037a3ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/PortFiber/Certified.lean","GRWTSK/_verification/specifications/Topology/PortFiber/Certified.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
