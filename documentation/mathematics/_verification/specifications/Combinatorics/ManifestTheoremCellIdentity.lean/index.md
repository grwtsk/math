# Verification target: Manifest Theorem Cell Identity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0699a149be9fce4bfda71579a56e618f704fa0bc",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variant6a5276ff6e6f315c91ea6e69d584d722e9dd83b4ee8a74fadc3d70a884b374d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ManifestTheoremCellIdentity.lean/index.md) · [Full source](../../../../Combinatorics/ManifestTheoremCellIdentity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0699a149be9fce4bfda71579a56e618f704fa0bc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variant6a5276ff6e6f315c91ea6e69d584d722e9dd83b4ee8a74fadc3d70a884b374d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Manifest/Variant6a5276ff6e6f315c91ea6e69d584d722e9dd83b4ee8a74fadc3d70a884b374d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Universe.Node` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Universe.RhetoricalNavigation` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TheoremCellDescriptor](../../../../Combinatorics/ManifestTheoremCellIdentity.lean/declarations/theoremcelldescriptor.md) | 11 | `declaration-track:78cc20f95a890d4016b3a133bfaee6171f3ab03f040369f5ea8601603d52d303` |
| 2 | `structure` | [TheoremCellIdentity](../../../../Combinatorics/ManifestTheoremCellIdentity.lean/declarations/theoremcellidentity.md) | 21 | `declaration-track:5a30af797cc6c463e45938a951a37e17f7dda5565bae41121c9bb8c29218771d` |
| 3 | `def` | [identity](../../../../Combinatorics/ManifestTheoremCellIdentity.lean/declarations/identity.md) | 32 | `declaration-track:2be62cf57fbda311a18e68a228a78b731495bfb71e36b26dfb06004d9d8a7393` |
| 4 | `theorem` | [identity_update_rhetoricalLocation](../../../../Combinatorics/ManifestTheoremCellIdentity.lean/declarations/identity-update-rhetoricallocation.md) | 41 | `result-track:1389dd1aac457532abe6574d307430d57ef1d40280d96369936cd51a3dfc329c` |
| 5 | `structure` | [FoldDescriptor](../../../../Combinatorics/ManifestTheoremCellIdentity.lean/declarations/folddescriptor.md) | 50 | `declaration-track:283c384b03abba790a34099f80de83a352a0915deb0f2fa73ed1ddf339455357` |
| 6 | `def` | [ReferencesClosed](../../../../Combinatorics/ManifestTheoremCellIdentity.lean/declarations/referencesclosed.md) | 61 | `declaration-track:618aba5fce72361e05e556bfca4e3b1a7f4112512c2597c81d9de1d82ba5eb68` |
| 7 | `def` | [NodeIdentityInjective](../../../../Combinatorics/ManifestTheoremCellIdentity.lean/declarations/nodeidentityinjective.md) | 82 | `declaration-track:73bdd5ab89b069d7303bd636b7a07fae278a24a0634b2b3974b60847e3da7da0` |
| 8 | `structure` | [UniverseManifest](../../../../Combinatorics/ManifestTheoremCellIdentity.lean/declarations/universemanifest.md) | 86 | `declaration-track:c32f247b1719dd002ef99768a94e83be11f6e4c0a78812dc0700c50572a05d1e` |
| 9 | `def` | [HasNode](../../../../Combinatorics/ManifestTheoremCellIdentity.lean/declarations/hasnode.md) | 104 | `declaration-track:7b1791b6cce9d5961c51fc4a3a6b65f86bd68709e99dd8c83342645e2297fbf7` |
| 10 | `def` | [HasEdge](../../../../Combinatorics/ManifestTheoremCellIdentity.lean/declarations/hasedge.md) | 107 | `declaration-track:d40e42be0024b639977a5ca26b7c6d415178d3f05d846ee27120d38ed3c98055` |
| 11 | `def` | [HasCell](../../../../Combinatorics/ManifestTheoremCellIdentity.lean/declarations/hascell.md) | 110 | `declaration-track:eba538077c4246431380e44f8b05070c1960b934f249b28a799ff9c0e52e0bca` |
| 12 | `theorem` | [edge_source_resolves](../../../../Combinatorics/ManifestTheoremCellIdentity.lean/declarations/edge-source-resolves.md) | 113 | `result-track:6deea3caa1df321bfdd4834e15c8d0d0afc3d85f3725fe996ba6862523dd15b1` |
| 13 | `theorem` | [edge_target_resolves](../../../../Combinatorics/ManifestTheoremCellIdentity.lean/declarations/edge-target-resolves.md) | 120 | `result-track:df9d9be95a9d8b15018957223e4315b73b5a96f32b04cbf62f1971edfb8e53d5` |
| 14 | `theorem` | [node_unique](../../../../Combinatorics/ManifestTheoremCellIdentity.lean/declarations/node-unique.md) | 127 | `result-track:d111c72ca608f849a09014508eca418511ab92735da8c9e3850556e035bbe06a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4364eb22eb83d3efa87b733d0f755e97b836e9abf07da37addf1dfc83bee273e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variant6a5276ff6e6f315c91ea6e69d584d722e9dd83b4ee8a74fadc3d70a884b374d1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Manifest/Variant6a5276ff6e6f315c91ea6e69d584d722e9dd83b4ee8a74fadc3d70a884b374d1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
