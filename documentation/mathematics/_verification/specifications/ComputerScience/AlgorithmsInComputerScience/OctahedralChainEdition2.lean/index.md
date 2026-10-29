# Verification target: Octahedral Chain Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da9b34e333b414a63e3d87d700c724fa54d8ec63",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da9b34e333b414a63e3d87d700c724fa54d8ec63`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.PrismaticGeometry.Sphere` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [OctahedralSign](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedralsign.md) | 19 | `declaration-track:88500dc2b11b16787bc03ada2b23092d3edac1e836225e07722c200e58759132` |
| 2 | `def` | [octahedralSignWeight](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedralsignweight.md) | 25 | `declaration-track:af24692090344ee53d67555e7d36716a415f9d244ce4074c45076ea2fbae9af1` |
| 3 | `inductive` | [OctahedralVertex](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedralvertex.md) | 30 | `declaration-track:ff8ab4a73df845fd345eaada60904df64dfe7e62feb3f713c268659bc02e011e` |
| 4 | `inductive` | [OctahedralEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedraledge.md) | 37 | `declaration-track:26dd3f1174a5016043bc418f3ecaa9c3b78bdc8e45e63c26d28cbf0f315de950` |
| 5 | `structure` | [OctahedralFace](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedralface.md) | 44 | `declaration-track:17d2da2d9872c3bf9edd9701edad1df6da2dfac566f160f9850231986714964b` |
| 6 | `def` | [octahedralVertexId](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedralvertexid.md) | 51 | `declaration-track:56e3edcbfb690f9835996a786bd8ccb8f8c2b84027d7efb981448d45023f931b` |
| 7 | `def` | [octahedralEdgeId](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedraledgeid.md) | 60 | `declaration-track:30312e582fc8808f9a3477f38cfd12109d19e8b5bffb91263dc89b2f13376177` |
| 8 | `def` | [octahedralFaceId](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedralfaceid.md) | 75 | `declaration-track:ded6346a16ca922de7e1e9e37ec24b20b860440c3c8d794891861ecae3607458` |
| 9 | `def` | [octahedralVertices](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedralvertices.md) | 86 | `declaration-track:35cb0d64895394ba41f4557ae7cc7e2366be934c96a9b7b715e59ae82c3fdc52` |
| 10 | `def` | [octahedralEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedraledges.md) | 92 | `declaration-track:5992c8d96b2f01ca5349b8e19c23035ee301306dc931b10b828f544ca0fb12ad` |
| 11 | `def` | [octahedralFaces](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedralfaces.md) | 101 | `declaration-track:a463556c6e3c9e6f059021c4de654cf12de3b1b7d4a56cf3d4e56d24f5e01dc1` |
| 12 | `def` | [octahedralEdgeBoundary](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedraledgeboundary.md) | 112 | `declaration-track:bb30ff97acfa57ccef5284b4454487f75fe4afc864c255611853749384c552d3` |
| 13 | `def` | [octahedralFaceBoundary](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedralfaceboundary.md) | 119 | `declaration-track:1fdd4b374d99e6844197617e6ede3db6704d0776a7598ef29c68841aa1a4c585` |
| 14 | `def` | [octahedralFaceCoefficient](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedralfacecoefficient.md) | 126 | `declaration-track:a92238c0e508e1561fe9d94ac47a74278051092a9f211b51f9458319f1dd4aa2` |
| 15 | `inductive` | [OctahedralEmptyCell](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedralemptycell.md) | 132 | `declaration-track:2e82bdc1b563c07e629482db47ff5a30c7944e2a7e92af349b670a278d53d521` |
| 16 | `def` | [OctahedralCell](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedralcell.md) | 135 | `declaration-track:0720aabd6cf94ba893cd265196be1aa035873b9ba5a9cee322c8966dafc8d532` |
| 17 | `def` | [octahedralCellLabel](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedralcelllabel.md) | 141 | `declaration-track:e163dd8c37c7d72f166efc3395d7575aa943a95a3ea87fbcac3a3e1f10018fbb` |
| 18 | `def` | [octahedralBoundaryCells](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedralboundarycells.md) | 148 | `declaration-track:8218b48b5cb1e45d4dda8c2d343f45d974fdf9f0cca68db6c2ad93c866a35193` |
| 19 | `def` | [OctahedralFiniteSound](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedralfinitesound.md) | 156 | `declaration-track:096c1cd32098a811c70c7a78f1cdfcfcff4f28952d7b7c5fbe17410b1ef90b8b` |
| 20 | `theorem` | [octahedralFiniteSoundProof](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedralfinitesoundproof.md) | 161 | `result-track:28b7777500360cd40f21fee6bb8ac4d12e765f821ab09dc8bd814ce5d9dfa321` |
| 21 | `def` | [octahedralCellComplex](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedralcellcomplex.md) | 165 | `declaration-track:96e7575149787e1755e89e533440c51ab5ba186bebda17b54a66e3c2a05ef42a` |
| 22 | `def` | [octahedralSphereChain](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedralspherechain.md) | 176 | `declaration-track:aa3712a9809a95b923e56bbc103592e5356969558a87ff61242468aae7625393` |
| 23 | `def` | [octahedralSphereBoundary](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedralsphereboundary.md) | 181 | `declaration-track:e4319046880e945ed691b48da174ace4ea2d3307f3b45088c002a13c2b2741dd` |
| 24 | `def` | [octahedralEdgeCoefficient](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedraledgecoefficient.md) | 185 | `declaration-track:0428eb04b36ffae66e332091a05b0040d56d7b4dadaf0bb778124a6883c55072` |
| 25 | `def` | [OctahedralSphereClosed](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedralsphereclosed.md) | 194 | `declaration-track:101ad5aad5b57cf619869e12c964c3f44bb7b4cc1517aacb4ad0617ba9a0ddcb` |
| 26 | `theorem` | [octahedralSphereClosedProof](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedralsphereclosedproof.md) | 199 | `result-track:e20e4b473fe073036b013d3ba6155d2ba69e86c6982b72bbc1e530f9493880cb` |
| 27 | `def` | [octahedralVertexCoefficient](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedralvertexcoefficient.md) | 207 | `declaration-track:317f2473c5eacee27c760b5da4bbce42e902f95fe6790da95fe0763e178e406f` |
| 28 | `def` | [octahedralFaceChain](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedralfacechain.md) | 216 | `declaration-track:3245a3372c53795a37f66faf4b7d83bb8f96cd8cef7c168172d2f005ded6547d` |
| 29 | `def` | [octahedralFaceBoundarySquared](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedralfaceboundarysquared.md) | 221 | `declaration-track:4222bac3b77dae9f5de1aa82f26aee4d02d338c59ca78fa796d0423b94760bc5` |
| 30 | `def` | [OctahedralBoundarySquaredZero](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedralboundarysquaredzero.md) | 226 | `declaration-track:7cd32b48a0185b7ab954bdc0f21769ad07ffdbb8e6d5821da2655e626c167df1` |
| 31 | `theorem` | [octahedralBoundarySquaredZeroProof](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedralboundarysquaredzeroproof.md) | 231 | `result-track:2e6a7020b4ceaa99fd3ee391da880940db5542bf29bbe56b9b53b87b2faf0054` |
| 32 | `def` | [octahedralClosedSphereChain](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralChainEdition2.lean/declarations/octahedralclosedspherechain.md) | 242 | `declaration-track:fdd8be4fcd4ed01f3a4edd62531e209fbba35366b262acc8460628b0d6ec06cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c3d7bc244ab220b8ce2c82723bc4804ea2ff85e7cf90af08459fdf59f4a607a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
