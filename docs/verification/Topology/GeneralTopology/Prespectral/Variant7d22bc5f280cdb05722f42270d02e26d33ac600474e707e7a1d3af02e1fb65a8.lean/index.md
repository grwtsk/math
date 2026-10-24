# Verification target: GRWTSK.Topology.GeneralTopology.Prespectral.Variant7d22bc5f280cdb05722f42270d02e26d33ac600474e707e7a1d3af02e1fb65a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04303b7a4c29be625dff10e9501a4978381bdbee",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Prespectral/Variant7d22bc5f280cdb05722f42270d02e26d33ac600474e707e7a1d3af02e1fb65a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Prespectral/Variant7d22bc5f280cdb05722f42270d02e26d33ac600474e707e7a1d3af02e1fb65a8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Prespectral/Variant7d22bc5f280cdb05722f42270d02e26d33ac600474e707e7a1d3af02e1fb65a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04303b7a4c29be625dff10e9501a4978381bdbee`.

Source path: `GRWTSK/Topology/GeneralTopology/Prespectral/Variant7d22bc5f280cdb05722f42270d02e26d33ac600474e707e7a1d3af02e1fb65a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Prespectral/Variant7d22bc5f280cdb05722f42270d02e26d33ac600474e707e7a1d3af02e1fb65a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Ideal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Compacts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.OpenCover` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Spectral.Hom` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PrespectralSpace](../../../../../mathematics/Topology/GeneralTopology/Prespectral/Variant7d22bc5f280cdb05722f42270d02e26d33ac600474e707e7a1d3af02e1fb65a8.lean/declarations/prespectralspace--695248b4323283c7a0509b47.md) | 25 | `declaration-track:695248b4323283c7a0509b473277bb30de82bbc3a313ecac28e53da611a12ad7` |
| 2 | `lemma` | [PrespectralSpace.of_isTopologicalBasis](../../../../../mathematics/Topology/GeneralTopology/Prespectral/Variant7d22bc5f280cdb05722f42270d02e26d33ac600474e707e7a1d3af02e1fb65a8.lean/declarations/prespectralspace-of-istopologicalbasis--866d0f1e61d9745db288794f.md) | 29 | `result-track:866d0f1e61d9745db288794f630b617db616fe956feb058662e9380d175ff4f6` |
| 3 | `lemma` | [PrespectralSpace.of_isTopologicalBasis'](../../../../../mathematics/Topology/GeneralTopology/Prespectral/Variant7d22bc5f280cdb05722f42270d02e26d33ac600474e707e7a1d3af02e1fb65a8.lean/declarations/prespectralspace-of-istopologicalbasis--d4c263c8895e711372777a80.md) | 37 | `result-track:d4c263c8895e711372777a807d060bc79c63592de4ba4f7776ccde79d31d3b8e` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Prespectral/Variant7d22bc5f280cdb05722f42270d02e26d33ac600474e707e7a1d3af02e1fb65a8.lean/declarations/instance--8e723b73a9aa1684a398fe77.md) | 42 | `declaration-track:8e723b73a9aa1684a398fe77244cc9a45c85262c51efef83963d14aefdca29da` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Prespectral/Variant7d22bc5f280cdb05722f42270d02e26d33ac600474e707e7a1d3af02e1fb65a8.lean/declarations/instance--63ded6d5798e41c2c9339613.md) | 45 | `declaration-track:63ded6d5798e41c2c9339613b56b6c510a08e52c803de4f34f819d3f492c573a` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Prespectral/Variant7d22bc5f280cdb05722f42270d02e26d33ac600474e707e7a1d3af02e1fb65a8.lean/declarations/instance--23cccfcaf6bf3f9f8f322a1b.md) | 51 | `declaration-track:23cccfcaf6bf3f9f8f322a1bafc167f564f5aaa0e8430e8aec8fd834fa747b0e` |
| 7 | `lemma` | [PrespectralSpace.of_isOpenCover](../../../../../mathematics/Topology/GeneralTopology/Prespectral/Variant7d22bc5f280cdb05722f42270d02e26d33ac600474e707e7a1d3af02e1fb65a8.lean/declarations/prespectralspace-of-isopencover--2bb4e3cc6c7ec91d74d03865.md) | 57 | `result-track:2bb4e3cc6c7ec91d74d03865ff5be8a66fb49e2f570555fb6afff66715471980` |
| 8 | `lemma` | [PrespectralSpace.of_isInducing](../../../../../mathematics/Topology/GeneralTopology/Prespectral/Variant7d22bc5f280cdb05722f42270d02e26d33ac600474e707e7a1d3af02e1fb65a8.lean/declarations/prespectralspace-of-isinducing--136612d3be7cd0b600f7ad9c.md) | 65 | `result-track:136612d3be7cd0b600f7ad9cedb37996aa0cdb5fc0194c6633f8cd0aebcace96` |
| 9 | `lemma` | [PrespectralSpace.of_isClosedEmbedding](../../../../../mathematics/Topology/GeneralTopology/Prespectral/Variant7d22bc5f280cdb05722f42270d02e26d33ac600474e707e7a1d3af02e1fb65a8.lean/declarations/prespectralspace-of-isclosedembedding--d28445d76e624ce2e45948f2.md) | 72 | `result-track:d28445d76e624ce2e45948f2caa9c2ebc4d265f21b5354cbeb98275e453bdb2d` |
| 10 | `def` | [PrespectralSpace.opensEquiv](../../../../../mathematics/Topology/GeneralTopology/Prespectral/Variant7d22bc5f280cdb05722f42270d02e26d33ac600474e707e7a1d3af02e1fb65a8.lean/declarations/prespectralspace-opensequiv--11816c13a2f0f72d6bc781d2.md) | 77 | `declaration-track:11816c13a2f0f72d6bc781d2ca2fe13efe116dcb0213f41cfc7339451e80fd2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
