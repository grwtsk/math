# Verification target: Group Theory Subgroup Actions Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51171725d8b03e343832eb934aed0b2edbf799fe",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Actions/Variantcecd06448d69d98a929c7dc5d7f87b0d8c10e3832543e2a1831228f244b5bc00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupTheorySubgroupActionsNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupTheorySubgroupActionsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51171725d8b03e343832eb934aed0b2edbf799fe`.

Source path: `GRWTSK/Algebra/GroupTheory/Actions/Variantcecd06448d69d98a929c7dc5d7f87b0d8c10e3832543e2a1831228f244b5bc00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Actions/Variantcecd06448d69d98a929c7dc5d7f87b0d8c10e3832543e2a1831228f244b5bc00.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Subgroup.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupTheorySubgroupActionsNamespaced.lean/declarations/instance-source-edition-3.md) | 37 | `declaration-track:a29481a9a8aa240278aead3946c7c9fb9c3f1bc78392dc9085c480e72634d45e` |
| 2 | `theorem` | [smul_def](../../../../GroupTheoryAndGeneralizations/GroupTheorySubgroupActionsNamespaced.lean/declarations/smul-def.md) | 41 | `result-track:561a31dc8a52aad777bea3c66f6399a067314565fe4fa0ff956e5224f278adea` |
| 3 | `instance` | [smulCommClass_left](../../../../GroupTheoryAndGeneralizations/GroupTheorySubgroupActionsNamespaced.lean/declarations/smulcommclass-left.md) | 47 | `declaration-track:c1f2a4facbc1ec625e10999e167296f2a344117296cf48cf583de702b2ddbba5` |
| 4 | `instance` | [smulCommClass_right](../../../../GroupTheoryAndGeneralizations/GroupTheorySubgroupActionsNamespaced.lean/declarations/smulcommclass-right.md) | 54 | `declaration-track:1449a0574bda4eff94e7edc4658742f8b1e7588cba0d95efcc37ce92f3bf2eef` |
| 5 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupTheorySubgroupActionsNamespaced.lean/declarations/instance.md) | 61 | `declaration-track:35f9dbdc84948b704bf89c01cac89ab8e1c48a3ed0d997bb08b942d40f106e8d` |
| 6 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupTheorySubgroupActionsNamespaced.lean/declarations/instance-source-edition-2.md) | 65 | `declaration-track:8d4dec21fb6a71e8055da2f97f49f6c048565fb29e97c34c6af422f7f570360b` |
| 7 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupTheorySubgroupActionsNamespaced.lean/declarations/instance-source-edition-5.md) | 69 | `declaration-track:c493d126e6fc840138e3810f949a12328462531f02db02379f0a3f813e8b65d5` |
| 8 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupTheorySubgroupActionsNamespaced.lean/declarations/instance-source-edition-4.md) | 73 | `declaration-track:aeb8cccc0a89e9c2e88be94349239ebfc4c62a909fe2474ce90a5c87d33ede20` |
| 9 | `instance` | [center.smulCommClass_left](../../../../GroupTheoryAndGeneralizations/GroupTheorySubgroupActionsNamespaced.lean/declarations/center-smulcommclass-left.md) | 77 | `declaration-track:40fdda2ad766fcaa315ce08d8b8f9ff813444300898ae6f1d9e46a30e1a45aac` |
| 10 | `instance` | [center.smulCommClass_right](../../../../GroupTheoryAndGeneralizations/GroupTheorySubgroupActionsNamespaced.lean/declarations/center-smulcommclass-right.md) | 82 | `declaration-track:2070345c35731eab87c359f5e3b0532e48c2c7eba18faa675dd1c0b796c72da2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a3f0dc4d6b61358c042161c36da8ad2ee76c87a08dfc40750a37ff3611b9610 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Actions/Variantcecd06448d69d98a929c7dc5d7f87b0d8c10e3832543e2a1831228f244b5bc00.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Actions/Variantcecd06448d69d98a929c7dc5d7f87b0d8c10e3832543e2a1831228f244b5bc00.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
