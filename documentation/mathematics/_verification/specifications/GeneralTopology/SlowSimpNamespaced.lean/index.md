# Verification target: Slow Simp Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cbd735d0fbe9a34741344dc945f3edad08728c8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/SlowSimp/Variantd952e99eaf37a4526bb60d7416f771c371d927ad5289a1db170a54147eae5afd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SlowSimpNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/SlowSimpNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cbd735d0fbe9a34741344dc945f3edad08728c8`.

Source path: `GRWTSK/Topology/SlowSimp/Variantd952e99eaf37a4526bb60d7416f771c371d927ad5289a1db170a54147eae5afd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/SlowSimp/Variantd952e99eaf37a4526bb60d7416f771c371d927ad5289a1db170a54147eae5afd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PointedSpace](../../../../GeneralTopology/SlowSimpNamespaced.lean/declarations/pointedspace.md) | 31 | `declaration-track:c03bc1a4795cba5969bea9ea4306935b338f2af90787e1fa56380c187f5780a4` |
| 2 | `structure` | [Hom](../../../../GeneralTopology/SlowSimpNamespaced.lean/declarations/hom.md) | 40 | `declaration-track:93773f8b8410a8358ed7a0c4ef9b804f489a01c8b9c4519ab42878c49d5999d0` |
| 3 | `def` | [id](../../../../GeneralTopology/SlowSimpNamespaced.lean/declarations/id.md) | 48 | `declaration-track:2f8ca2dbe463793f445c8c57a6e7efc69565a4e2363a6eb75a90307b20083d61` |
| 4 | `def` | [comp](../../../../GeneralTopology/SlowSimpNamespaced.lean/declarations/comp.md) | 50 | `declaration-track:60de9aaf7a845b02ac5b7f2ba37de604edf5bfaebdb7ad618be2b545775aaba9` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/SlowSimpNamespaced.lean/declarations/instance.md) | 55 | `declaration-track:d59148d363df1f534cee7da687e4a2133ac39e5873cd22bc6b0de45d7dbd00fe` |
| 6 | `def` | [PointedSpaceEquiv_inverse](../../../../GeneralTopology/SlowSimpNamespaced.lean/declarations/pointedspaceequiv-inverse.md) | 63 | `declaration-track:8add8a27b70ae98ef5e196d9da7eb5b5dd6b95e5a745fee29db31b89f5dd6582` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=06c23384adb613facea60e54b48c0f107e96970c09518fd8fde06757ed847816 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/SlowSimp/Variantd952e99eaf37a4526bb60d7416f771c371d927ad5289a1db170a54147eae5afd.lean","GRWTSK/_verification/specifications/Topology/SlowSimp/Variantd952e99eaf37a4526bb60d7416f771c371d927ad5289a1db170a54147eae5afd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
