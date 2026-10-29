# Verification target: Affine

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e69a0536c2ce527436f49b619d1afd1b1b2d1064",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Affine/Variantdfd5e78b036af8ce1e0c3689a7a54b19caee1468341103c587bcb1ac64cc6c7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/Affine.lean/index.md) · [Full source](../../../../FunctionalAnalysis/Affine.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e69a0536c2ce527436f49b619d1afd1b1b2d1064`.

Source path: `GRWTSK/Topology/MetricTopology/Affine/Variantdfd5e78b036af8ce1e0c3689a7a54b19caee1468341103c587bcb1ac64cc6c7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Affine/Variantdfd5e78b036af8ce1e0c3689a7a54b19caee1468341103c587bcb1ac64cc6c7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.AddTorsor` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inner_vsub_left_eq_zero_symm](../../../../FunctionalAnalysis/Affine.lean/declarations/inner-vsub-left-eq-zero-symm.md) | 20 | `result-track:09c96fa8542f141619b87afb2f34c37b4531b104b8ed6dd9bea6245110e3b1e7` |
| 2 | `theorem` | [inner_vsub_right_eq_zero_symm](../../../../FunctionalAnalysis/Affine.lean/declarations/inner-vsub-right-eq-zero-symm.md) | 24 | `result-track:28064e4c714322a18cd202905d57537bff4994d62eceb8a748bd50f44ee09c68` |
| 3 | `theorem` | [inner_vsub_vsub_left_eq_dist_sq_left_iff](../../../../FunctionalAnalysis/Affine.lean/declarations/inner-vsub-vsub-left-eq-dist-sq-left-iff.md) | 43 | `result-track:6c46dbc89405b9a7445fe96f6ba95810beab7473698d3945d769f853d3cc723a` |
| 4 | `theorem` | [inner_vsub_vsub_left_eq_dist_sq_right_iff](../../../../FunctionalAnalysis/Affine.lean/declarations/inner-vsub-vsub-left-eq-dist-sq-right-iff.md) | 48 | `result-track:f9174eed612b3441c3b983952475f6abdce006be3c2141bec1d0ab8e78ad2518` |
| 5 | `theorem` | [inner_vsub_vsub_right_eq_dist_sq_left_iff](../../../../FunctionalAnalysis/Affine.lean/declarations/inner-vsub-vsub-right-eq-dist-sq-left-iff.md) | 52 | `result-track:aa7267d6338fc0effd2e3317e041f3d0beed5864a81e4985545a361e0d463122` |
| 6 | `theorem` | [inner_vsub_vsub_right_eq_dist_sq_right_iff](../../../../FunctionalAnalysis/Affine.lean/declarations/inner-vsub-vsub-right-eq-dist-sq-right-iff.md) | 57 | `result-track:c3b8a19ff4ec117aa58d1249c442c42031319dce1df4de2dcd68fa2016a6d186` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0cbdd9ef4d8ad953c33d365ca5cb6dfc8b6d3630e8bbb6d03ef4089a3487e75f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Affine/Variantdfd5e78b036af8ce1e0c3689a7a54b19caee1468341103c587bcb1ac64cc6c7c.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Affine/Variantdfd5e78b036af8ce1e0c3689a7a54b19caee1468341103c587bcb1ac64cc6c7c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
