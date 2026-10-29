# Verification target: Manifest Namespaced Theorem Cell Identity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a51111a0c4bb1eb9fa0f09f85db7c5120b4e780",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variantb95450ff8f02198693323c4a11a5d9d3e24d25b44dbbf4ac3c321d4fb3da9a15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ManifestNamespacedTheoremCellIdentity.lean/index.md) · [Full source](../../../../Combinatorics/ManifestNamespacedTheoremCellIdentity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a51111a0c4bb1eb9fa0f09f85db7c5120b4e780`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variantb95450ff8f02198693323c4a11a5d9d3e24d25b44dbbf4ac3c321d4fb3da9a15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Manifest/Variantb95450ff8f02198693323c4a11a5d9d3e24d25b44dbbf4ac3c321d4fb3da9a15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Universe.Node` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Universe.RhetoricalNavigation` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TheoremCellDescriptor](../../../../Combinatorics/ManifestNamespacedTheoremCellIdentity.lean/declarations/theoremcelldescriptor.md) | 19 | `declaration-track:ce05a7452e13f7c4fa11df774d5004bde29ca27dc529d8c2911da11da2c94ef3` |
| 2 | `structure` | [TheoremCellIdentity](../../../../Combinatorics/ManifestNamespacedTheoremCellIdentity.lean/declarations/theoremcellidentity.md) | 29 | `declaration-track:aba71a06ba7153d4e3daf9e9e39adac2bf7d73d430b9d0863b863bd77915fe2a` |
| 3 | `def` | [identity](../../../../Combinatorics/ManifestNamespacedTheoremCellIdentity.lean/declarations/identity.md) | 40 | `declaration-track:6e192f21538f24be5e6ff267f5755211270336e6c87f3ac1e7f4e27e011f180c` |
| 4 | `theorem` | [identity_update_rhetoricalLocation](../../../../Combinatorics/ManifestNamespacedTheoremCellIdentity.lean/declarations/identity-update-rhetoricallocation.md) | 49 | `result-track:1b088439b8ff3e3f5b49a7fcb4f86bdbc8aee572431c425a2bac60f9978b72d2` |
| 5 | `structure` | [FoldDescriptor](../../../../Combinatorics/ManifestNamespacedTheoremCellIdentity.lean/declarations/folddescriptor.md) | 58 | `declaration-track:4484cddf13e6dc4dc6cf78bd924cf5e05dd7894b8f88f8be7eb3611d65823769` |
| 6 | `def` | [ReferencesClosed](../../../../Combinatorics/ManifestNamespacedTheoremCellIdentity.lean/declarations/referencesclosed.md) | 69 | `declaration-track:0f061348c8642c9d8be272ba884839423145372a25f8c774f25f68e37e1a01f3` |
| 7 | `def` | [NodeIdentityInjective](../../../../Combinatorics/ManifestNamespacedTheoremCellIdentity.lean/declarations/nodeidentityinjective.md) | 90 | `declaration-track:2af2d5388d7627d8099fcdb21909c776b17c058a2b6be32fe997f7c2d7f863f1` |
| 8 | `structure` | [UniverseManifest](../../../../Combinatorics/ManifestNamespacedTheoremCellIdentity.lean/declarations/universemanifest.md) | 94 | `declaration-track:b0673308bb4412abc1766fd39d28cd9a248042aaf8d6f8ae6dde666d618a7338` |
| 9 | `def` | [HasNode](../../../../Combinatorics/ManifestNamespacedTheoremCellIdentity.lean/declarations/hasnode.md) | 112 | `declaration-track:9fd7d4b70454854a1f9abfc1afa024a9f44760b419a43a4908e87cb6297807f8` |
| 10 | `def` | [HasEdge](../../../../Combinatorics/ManifestNamespacedTheoremCellIdentity.lean/declarations/hasedge.md) | 115 | `declaration-track:cdb10520946af0a0f7b18086f587c7ab08fd73eb094591e7fc05f1ccdbb01f12` |
| 11 | `def` | [HasCell](../../../../Combinatorics/ManifestNamespacedTheoremCellIdentity.lean/declarations/hascell.md) | 118 | `declaration-track:4ea1765a13096670a5d00376812edac90a20efc002d20c77ef247c28b7d2d7bd` |
| 12 | `theorem` | [edge_source_resolves](../../../../Combinatorics/ManifestNamespacedTheoremCellIdentity.lean/declarations/edge-source-resolves.md) | 121 | `result-track:64f5b9529dfc7824c0f675a6dff2b2d6dc408a92fa8e28026021cea7394988d0` |
| 13 | `theorem` | [edge_target_resolves](../../../../Combinatorics/ManifestNamespacedTheoremCellIdentity.lean/declarations/edge-target-resolves.md) | 128 | `result-track:192a1c1a6b2baa58d32ec1c2ef5eba6b4a4a31b04956607d8fc5b422f936a588` |
| 14 | `theorem` | [node_unique](../../../../Combinatorics/ManifestNamespacedTheoremCellIdentity.lean/declarations/node-unique.md) | 135 | `result-track:626903af37054f4c0f9703c3b18ba29932aaa062d512edffd19aaee40be7f435` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c2fe87894e17f01be9f5e18888e8043032b05e80d6dbbf7ec1136c501561284b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variantb95450ff8f02198693323c4a11a5d9d3e24d25b44dbbf4ac3c321d4fb3da9a15.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Manifest/Variantb95450ff8f02198693323c4a11a5d9d3e24d25b44dbbf4ac3c321d4fb3da9a15.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
