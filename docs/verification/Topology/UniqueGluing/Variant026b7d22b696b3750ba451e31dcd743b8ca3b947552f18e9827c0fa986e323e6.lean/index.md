# Verification target: GRWTSK.Topology.UniqueGluing.Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35f474743c9a6c933f4c62530be23cdc92a30288",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/UniqueGluing/Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/UniqueGluing/Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean/index.md) · [Full source](../../../../mathematics/Topology/UniqueGluing/Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35f474743c9a6c933f4c62530be23cdc92a30288`.

Source path: `GRWTSK/Topology/UniqueGluing/Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/UniqueGluing/Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsCompatible](../../../../mathematics/Topology/UniqueGluing/Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean/declarations/iscompatible--9d29f494ce0c1b2a561b5fc6.md) | 60 | `declaration-track:9d29f494ce0c1b2a561b5fc69c1252c90938eff180c21c1656339121f6aa25b7` |
| 2 | `def` | [IsGluing](../../../../mathematics/Topology/UniqueGluing/Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean/declarations/isgluing--8fc700828fb62955de667859.md) | 66 | `declaration-track:8fc700828fb62955de667859b3e0348f0aa49812e80e642079d46e0fb7743a61` |
| 3 | `def` | [IsSheafUniqueGluing](../../../../mathematics/Topology/UniqueGluing/Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean/declarations/issheafuniquegluing--539eb28b7b043bcb8b09f648.md) | 77 | `declaration-track:539eb28b7b043bcb8b09f648f1616a5f28678da701acd4f32f27802aa79b4dd9` |
| 4 | `def` | [objPairwiseOfFamily](../../../../mathematics/Topology/UniqueGluing/Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean/declarations/objpairwiseoffamily--9544a43ba8329d8e7d772cfb.md) | 89 | `declaration-track:9544a43ba8329d8e7d772cfb7f2c526a6c6e00ff5d7029527f6c16316085dfaf` |
| 5 | `def` | [IsCompatible.sectionPairwise](../../../../mathematics/Topology/UniqueGluing/Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean/declarations/iscompatible-sectionpairwise--092de21ebadb8fd4bd40f90e.md) | 96 | `declaration-track:092de21ebadb8fd4bd40f90e23ac0e22f6fa7269e0f5e4ef62dea6d918266122` |
| 6 | `theorem` | [isGluing_iff_pairwise](../../../../mathematics/Topology/UniqueGluing/Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean/declarations/isgluing-iff-pairwise--92188c6a2e286b7357e2aa40.md) | 106 | `result-track:92188c6a2e286b7357e2aa406068d60a881768e13395aca16bf11b438c80be7b` |
| 7 | `theorem` | [IsSheaf.isSheafUniqueGluing_types](../../../../mathematics/Topology/UniqueGluing/Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean/declarations/issheaf-issheafuniquegluing-types--2d470d79c75c418a57817cba.md) | 114 | `result-track:2d470d79c75c418a57817cbae403cf70eeae81bb1b08fc26b08ac0a3a87f762b` |
| 8 | `theorem` | [isSheaf_iff_isSheafUniqueGluing_types](../../../../mathematics/Topology/UniqueGluing/Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean/declarations/issheaf-iff-issheafuniquegluing-types--84d5fed21082ee981f83bb0e.md) | 125 | `result-track:84d5fed21082ee981f83bb0e33165d2bb1e645826759946a851707e21adf9cf2` |
| 9 | `theorem` | [isSheaf_of_isSheafUniqueGluing_types](../../../../mathematics/Topology/UniqueGluing/Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean/declarations/issheaf-of-issheafuniquegluing-types--2e28c91080da175fb547e3d7.md) | 139 | `result-track:2e28c91080da175fb547e3d74e4049985c3180dab70dbf8b8e2af26a1b2614ec` |
| 10 | `theorem` | [IsSheaf.isSheafUniqueGluing](../../../../mathematics/Topology/UniqueGluing/Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean/declarations/issheaf-issheafuniquegluing--6927e5edd4ff52d32166481f.md) | 150 | `result-track:6927e5edd4ff52d32166481f61296c738b221dc9c3e7c0f10d43bad0dbcd20f3` |
| 11 | `theorem` | [isSheaf_iff_isSheafUniqueGluing](../../../../mathematics/Topology/UniqueGluing/Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean/declarations/issheaf-iff-issheafuniquegluing--08f08592b017accb643ee032.md) | 160 | `result-track:08f08592b017accb643ee032ad9f73cf49edb7ce10a878aaf2992de023836448` |
| 12 | `theorem` | [existsUnique_gluing](../../../../mathematics/Topology/UniqueGluing/Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean/declarations/existsunique-gluing--553c4fcffca0ffc2cbc32390.md) | 180 | `result-track:553c4fcffca0ffc2cbc32390c7090b0b79eb041af40d9b7c6bd24692109d73a5` |
| 13 | `theorem` | [existsUnique_gluing'](../../../../mathematics/Topology/UniqueGluing/Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean/declarations/existsunique-gluing--b5674c2bf75f3329e9359d5f.md) | 188 | `result-track:b5674c2bf75f3329e9359d5f9960b7c5423ed0f8957174939e9a23bb9a52c78e` |
| 14 | `theorem` | [eq_of_locally_eq](../../../../mathematics/Topology/UniqueGluing/Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean/declarations/eq-of-locally-eq--30b78c1cc032ce6088181a10.md) | 204 | `result-track:30b78c1cc032ce6088181a10964659dd450a965d0242fea8b360072fb8db0930` |
| 15 | `theorem` | [eq_of_locally_eq'](../../../../mathematics/Topology/UniqueGluing/Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean/declarations/eq-of-locally-eq--ed5c8d66c1ad5fae65562da8.md) | 224 | `result-track:ed5c8d66c1ad5fae65562da8ab5ee0464b18ccd70922c2d6118e19ebae1ad815` |
| 16 | `theorem` | [eq_of_locally_eq₂](../../../../mathematics/Topology/UniqueGluing/Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean/declarations/eq-of-locally-eq--03f8f3ca0eea6326e60bad80.md) | 237 | `result-track:03f8f3ca0eea6326e60bad8055c09396d51be7b9393aca11bd5c6d3eb1af00b8` |
| 17 | `theorem` | [eq_app_of_locally_eq](../../../../mathematics/Topology/UniqueGluing/Variant026b7d22b696b3750ba451e31dcd743b8ca3b947552f18e9827c0fa986e323e6.lean/declarations/eq-app-of-locally-eq--f6be2d4ea50fd19060750677.md) | 252 | `result-track:f6be2d4ea50fd19060750677819b0ed972069a58b3e424ceb9cfd09f21acfacb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
