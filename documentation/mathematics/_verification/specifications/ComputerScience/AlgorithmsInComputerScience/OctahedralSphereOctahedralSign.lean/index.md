# Verification target: Octahedral Sphere Octahedral Sign

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4a83f5f7d9a3f566c1053edff9e10291c908fc0",
  "lexical_observation_count": 105,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralSphere/Variant7fdfc966c106fd2877680004da177b7f63d3894a665691139329d38e844665a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4a83f5f7d9a3f566c1053edff9e10291c908fc0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralSphere/Variant7fdfc966c106fd2877680004da177b7f63d3894a665691139329d38e844665a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralSphere/Variant7fdfc966c106fd2877680004da177b7f63d3894a665691139329d38e844665a3.lean.json)

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
| 1 | `inductive` | [OctahedralSign](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralsign.md) | 29 | `declaration-track:59bb6913a2c9eda1f274fb186ea5ad9abc3f3ff625bbc5fe339d9642fba17d4b` |
| 2 | `def` | [octahedralSignWeight](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralsignweight.md) | 35 | `declaration-track:11cf2716bb626bebecc15470d2bab658380dc8f130e73d72cd86c64f476ca0d5` |
| 3 | `inductive` | [OctahedralVertex](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralvertex.md) | 40 | `declaration-track:b807ed66974d513c91ac19e9404327960723af240d22d1007d142e44053b2228` |
| 4 | `inductive` | [OctahedralEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedraledge.md) | 47 | `declaration-track:d61072832a323fd74f71889523f21f6ed50055c07c173d59677b82d0957016fd` |
| 5 | `structure` | [OctahedralFace](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralface.md) | 54 | `declaration-track:13d28c5443b795ed1e79582e6d3cc646f96332f65c486cc3bf4f3fc941ef77c7` |
| 6 | `def` | [octahedralVertexId](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralvertexid.md) | 61 | `declaration-track:f8b30821cdcd2570137dcb554a81fe0c79a3289ce160d1ead60d987b62c51bd2` |
| 7 | `def` | [octahedralEdgeId](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedraledgeid.md) | 70 | `declaration-track:57f7189a507ee2fb2694205a0858b5af00f0d7bdf966d111ac42a545836ca33e` |
| 8 | `def` | [octahedralFaceId](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralfaceid.md) | 85 | `declaration-track:4280a4c236b1662dd5f8ad92fde5dd0aae6b88354dc6c161358009ae5a0272b6` |
| 9 | `def` | [octahedralVertices](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralvertices.md) | 96 | `declaration-track:81b29f38863411f71528629c646af663add8c560ef1585ecc44105bf541ee3d2` |
| 10 | `def` | [octahedralEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedraledges.md) | 102 | `declaration-track:f16ec9e60155661e1604dd79c81979e61dd47516108cd78fd10a60ff0b96751b` |
| 11 | `def` | [octahedralFaces](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralfaces.md) | 111 | `declaration-track:aed382c53f560fc69209709115ac502426753e1cadb1796f20948aa93dcb464c` |
| 12 | `def` | [octahedralEdgeBoundary](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedraledgeboundary.md) | 122 | `declaration-track:c53405d9928741712372e2182ad40c013682a5c8976a158d1d56a0d3f726612b` |
| 13 | `def` | [octahedralFaceBoundary](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralfaceboundary.md) | 129 | `declaration-track:0f54d1fd2c82ab59f7e571106c69a098d4cdec017bb354d4f4f03462b29ab0bf` |
| 14 | `def` | [octahedralFaceCoefficient](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralfacecoefficient.md) | 136 | `declaration-track:c15629906bd89a7218702bf628e5d68d50333cffb657bb1ed1a1e2a858502f0c` |
| 15 | `inductive` | [OctahedralEmptyCell](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralemptycell.md) | 142 | `declaration-track:cc97dad06063bf407288ba61833b20eef0b1f8f0e282b4e8e58347d29fa73c91` |
| 16 | `def` | [OctahedralCell](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralcell.md) | 145 | `declaration-track:cc0ba3646edeac0f95e8970ee8bfef785220c642bb10b8dd7a330b28d337fd04` |
| 17 | `def` | [octahedralCellLabel](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralcelllabel.md) | 151 | `declaration-track:7c0eb9786a9c4239c338908a081c572776f779c90bddaa019d7592edfbc07339` |
| 18 | `def` | [octahedralBoundaryCells](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralboundarycells.md) | 158 | `declaration-track:f05324f214f77470dc1cc38a800f74340ac5b9a6bd8e9731cdd815456955a9ad` |
| 19 | `def` | [OctahedralFiniteSound](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralfinitesound.md) | 166 | `declaration-track:daddee4f36ac939c0cd37fcc3f3b60d94cc727c418b944251588da5fc4f7918a` |
| 20 | `theorem` | [octahedralFiniteSoundProof](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralfinitesoundproof.md) | 171 | `result-track:bcbfcc27edd04b5698ceda15e8937759a3591ad43460dab10882efc175adbc31` |
| 21 | `def` | [octahedralCellComplex](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralcellcomplex.md) | 175 | `declaration-track:9c2488a64e816647c619355f4059cf8b0344aef629e8ae735f3190a7aec3e61d` |
| 22 | `def` | [octahedralDirectionIndex](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedraldirectionindex.md) | 185 | `declaration-track:527890ba6ed7904b716ee2a9e1e16da792709c0769004c7532d009c4ad8d23b7` |
| 23 | `def` | [octahedralOpposite](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralopposite.md) | 193 | `declaration-track:3c6c95331802ed98fc88a2c37c6c748d76c8838c1f3ae002d3a9b28abc82a678` |
| 24 | `def` | [octahedralPolarity](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralpolarity.md) | 201 | `declaration-track:74b50e18bdd7b898af51c0135ad98ec30c99e5d1368b911d3d23cba2a4088c02` |
| 25 | `def` | [octahedralPhaseNumerator](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralphasenumerator.md) | 204 | `declaration-track:cef80e3f2b8c85808c274bc61fb2be1e92a1dcb5ab321d61065980c373a99802` |
| 26 | `def` | [OctahedralDirectionIndexSound](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedraldirectionindexsound.md) | 212 | `declaration-track:447329d52f9cb47f53cad85bb50c83a16a5dad7003bc55ae96be60efc567618f` |
| 27 | `theorem` | [octahedralDirectionIndexSoundProof](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedraldirectionindexsoundproof.md) | 215 | `result-track:ff08fa19a2e337bf3e19131381ab14613f991dbc5c6649b416389a324ac50b9d` |
| 28 | `def` | [octahedralDirectionFrame](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedraldirectionframe.md) | 224 | `declaration-track:50ee465cbe2269fd845d2feb20b7c048249668b12fddd4e8b552407ab050d907` |
| 29 | `def` | [octahedralSphereChain](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralspherechain.md) | 244 | `declaration-track:78d986d994d23fe8f94dea341a1703f1ddc0dd349ce00e83afa44b2f9c43657a` |
| 30 | `def` | [octahedralSphereBoundary](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralsphereboundary.md) | 249 | `declaration-track:703d3ecffe71186d4090b57c5e93d5441038d4a6a34be9e660cb989c0a4148c8` |
| 31 | `def` | [octahedralEdgeCoefficient](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedraledgecoefficient.md) | 253 | `declaration-track:9e18458840239f803378d4b41e07dfbf1f40d65532289a0c7564a3681ae75b0c` |
| 32 | `def` | [OctahedralSphereClosed](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralsphereclosed.md) | 262 | `declaration-track:1d4ea7bd01e2a9fb6e8e30667644b201812dc5e667f82cb6d6bf76b287cc295d` |
| 33 | `theorem` | [octahedralSphereClosedProof](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralsphereclosedproof.md) | 267 | `result-track:9782cc8d2b59117a404489a0a8a880db3e8074bbbba7a7f871a128fd9e0fc454` |
| 34 | `def` | [octahedralVertexCoefficient](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralvertexcoefficient.md) | 275 | `declaration-track:3e7be28a3e42a0f517a494b3a4a5ae0ad758f582cb67ae2dff4e468188e358b5` |
| 35 | `def` | [octahedralFaceChain](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralfacechain.md) | 284 | `declaration-track:0b09bff4e08dd3bcc34a5a45be0d69e9b38bf2934c17b8fa59a02ae27eb188a4` |
| 36 | `def` | [octahedralFaceBoundarySquared](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralfaceboundarysquared.md) | 289 | `declaration-track:2dd9e9468a83553fd84ba2b3442a94717df3ff7b93d82dc000505250247543d8` |
| 37 | `def` | [OctahedralBoundarySquaredZero](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralboundarysquaredzero.md) | 294 | `declaration-track:dfecfd6c78ebe5a12e5bc43ffae439c700dabb5c1cdf72f267258522934f9538` |
| 38 | `theorem` | [octahedralBoundarySquaredZeroProof](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralboundarysquaredzeroproof.md) | 299 | `result-track:670093a9aa6abe5e0ff34ed4dbbf544d83eeae44981de1c2822f89a2769195c4` |
| 39 | `def` | [octahedralClosedSphereChain](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralclosedspherechain.md) | 310 | `declaration-track:7be11db27a0451c2a796ecac0df4255f7b04504e7aa7d629e26ac776b736e161` |
| 40 | `def` | [octahedralSphereShadow](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralsphereshadow.md) | 316 | `declaration-track:f5c5218de6cf7d4feda274d0c23ab635fbb64f9ef6f81b0f61028ea0d30e7f3e` |
| 41 | `def` | [octahedralNorthDirections](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralnorthdirections.md) | 336 | `declaration-track:396dff832c78ff6ecea6ec79e67698f192ee8e2695c498b18e65d7dec3e324e4` |
| 42 | `def` | [octahedralSouthDirections](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralsouthdirections.md) | 341 | `declaration-track:d6f6af2b5fdda2f9e9d06e56012cc27fcbac0bddc864c218a09874dcb8afe29c` |
| 43 | `def` | [OctahedralChartSound](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralchartsound.md) | 345 | `declaration-track:52522bb4ede988c1a68971498c84c4b4dc03e421b6a5ea2d6f5d38849c348a71` |
| 44 | `def` | [octahedralNorthCoordinate](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralnorthcoordinate.md) | 353 | `declaration-track:ae8379c771100f684541e19edd12755d9e5a6e213e89ee94b5678c6fdb602643` |
| 45 | `def` | [octahedralSouthCoordinate](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralsouthcoordinate.md) | 356 | `declaration-track:3b821bdc3a5ec680d9bd7da4725d208d6c50b76e334d8b318778d374c07bdb76` |
| 46 | `theorem` | [octahedralNorthDirectionsNodup](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralnorthdirectionsnodup.md) | 359 | `result-track:7f816ac6e19efbb127e5b7655a65dc85392ac36f605b767dee61dc8a7b27ef0d` |
| 47 | `theorem` | [octahedralSouthDirectionsNodup](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralsouthdirectionsnodup.md) | 363 | `result-track:efd8fc326116f67bba079dd7670cb1633f165d6b9aa50ad96262d019620bc47c` |
| 48 | `def` | [octahedralNorthChart](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralnorthchart.md) | 367 | `declaration-track:8799a820a6b29eeeb869e98a9003eefd40b0835434d4675b3c36309f04921cbf` |
| 49 | `def` | [octahedralSouthChart](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralsouthchart.md) | 377 | `declaration-track:41af1628f3045eed8356eb7dc8caa1fe4ecf34c0e56cabc4ba62870fff440b82` |
| 50 | `def` | [octahedralCharts](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralcharts.md) | 387 | `declaration-track:0ee5151fdda95dc190c2cd1ab0dcf682ab5e4f3dd173b4b52ab88e03a21a892b` |
| 51 | `def` | [OctahedralChartCoverage](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralchartcoverage.md) | 390 | `declaration-track:fab72f55149351c05a68338a3193892a4226e49ed51f07cd6055b268eb880f19` |
| 52 | `theorem` | [octahedralChartCoverageProof](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralchartcoverageproof.md) | 396 | `result-track:1766275652a52b92e007f0ed241401a42434aa97a8317eebf3b90303de7cae9e` |
| 53 | `theorem` | [octahedralChartMembershipCases](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralchartmembershipcases.md) | 438 | `result-track:8212a2bb7acf2422bf29a2bbf1a42539470eca2e96bf2866e1865aa9bd3e8bc0` |
| 54 | `def` | [OctahedralRatioCompatibility](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralratiocompatibility.md) | 452 | `declaration-track:8c8201a55462be35cfc35a04a7ff8dfd6f23cb6c143713678beff88aeb7ae290` |
| 55 | `theorem` | [octahedralRatioCompatibilityProof](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralratiocompatibilityproof.md) | 461 | `result-track:cbd0450327b80473219e803a48f2d20d45b728626f86acb9a89655ebdb2f9d20` |
| 56 | `def` | [octahedralRatioSphere](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralratiosphere.md) | 476 | `declaration-track:7656e8e524e3f749ac267ff449c31698cf8a157d84bd0b84fca98a2d04a6a7cc` |
| 57 | `theorem` | [octahedralRatioSphereSound](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralratiospheresound.md) | 483 | `result-track:4ec8654c51bcd72be172d2ffae2e3327de47379458d9c4fafa78e9a2071345d3` |
| 58 | `structure` | [OctahedralExactVectorExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralexactvectorexport.md) | 489 | `declaration-track:99fea1435381c33b6526f9b0504dab97b4a09b508258e6fd2c43f13431f158b1` |
| 59 | `structure` | [OctahedralVertexExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralvertexexport.md) | 497 | `declaration-track:5e8cd06da650b232bb278a8c9e16149389c2e3465f2eb446b61e2151557d420d` |
| 60 | `structure` | [OctahedralOrientedEdgeRefExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralorientededgerefexport.md) | 504 | `declaration-track:07f56131af7dbe3c9b7793c74c6f2dce7c712a90c66d8ca97da3930f9fba243b` |
| 61 | `structure` | [OctahedralEdgeExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedraledgeexport.md) | 509 | `declaration-track:4c87d00b91567b57e43b0578a2d413fb4b511d07b2e64591c58945b851d96094` |
| 62 | `structure` | [OctahedralFaceExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralfaceexport-source-edition-2.md) | 515 | `declaration-track:c2955c7acb66597745166ed259b38b93cd0d00ccab6c249ed24df761ae75738c` |
| 63 | `structure` | [OctahedralRenderingChartExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralrenderingchartexport.md) | 524 | `declaration-track:2723bd44b48247b4cf8435e56e74c97b888b6391ce641c418b16a286a9001bdf` |
| 64 | `structure` | [OctahedralTopologyExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedraltopologyexport.md) | 533 | `declaration-track:6c2640cc8f85c26a8e6551cdfef974f44555c84a7eb361f11b311d6e25d8c292` |
| 65 | `structure` | [OctahedralAngleRatioExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralangleratioexport-source-edition-2.md) | 549 | `declaration-track:c62b61c43ad4d0b7b2ff7a431e6cd1c8ed45a5799c7454f56d2348946a118094` |
| 66 | `structure` | [OctahedralRatioChartExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralratiochartexport.md) | 556 | `declaration-track:0104ca41355fa7cae165a835163112c02365401799a8a4714ca283396aaadbe9` |
| 67 | `structure` | [OctahedralRatioAtlasExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralratioatlasexport.md) | 564 | `declaration-track:3b14c482a4270d0048fcce5227751bcd0ef318b62e489a848a72be56bd544f68` |
| 68 | `def` | [octahedralRuntimeHashAuthorityBoundary](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralruntimehashauthorityboundary.md) | 571 | `declaration-track:939395c8d4772bbbd7cbaac7915a62265837a691df27666b39bf607a4c0cb6d0` |
| 69 | `structure` | [OctahedralCheckedSerializationBridge](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralcheckedserializationbridge.md) | 577 | `declaration-track:6da1f1b8f6b44180a9df1975e6c6e4a92c9ee10612e2b2d2bbea7de4423d9a8a` |
| 70 | `theorem` | [octahedralRuntimeHashRequiresCheckedSerializationBridge](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralruntimehashrequirescheckedserializationbridge.md) | 590 | `result-track:a1b7f7a32f36f586ea3116cc110c3690104907a319b3a22e9e292d3f98c18930` |
| 71 | `def` | [octahedralExactDirection](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralexactdirection.md) | 600 | `declaration-track:367b3bcca82da308d3f04a4712cf3111b446b08f833c55f6d409790cb4525191` |
| 72 | `def` | [octahedralExactNormSquared](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralexactnormsquared.md) | 609 | `declaration-track:31f2c9db81d999ad31a4b8fc518ebb6acbce5079851c6f98da7351983a822cd3` |
| 73 | `def` | [octahedralNegateExactVector](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralnegateexactvector.md) | 613 | `declaration-track:1c70214d3938bed5db5007883777950865ccb2eba7e468a2a5d024f971b9ce23` |
| 74 | `def` | [OctahedralExactDirectionSound](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralexactdirectionsound.md) | 617 | `declaration-track:aa730dee31c3be310443b7ec3576afbcfddcd97e9f9188397a5d23feaf00f90f` |
| 75 | `theorem` | [octahedralExactDirectionSoundProof](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralexactdirectionsoundproof.md) | 623 | `result-track:bb4ae918e649ddc1e194585a6c9fdcf293d653f7bc5580d2618f0bcd1754a44e` |
| 76 | `def` | [octahedralVertexExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralvertexexport-source-edition-2.md) | 631 | `declaration-track:7e1724aa9f3e0a83070c3d6cd95dcda94554c38fda4081adae27e885b20e7fc8` |
| 77 | `def` | [octahedralRenderingChartId](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralrenderingchartid.md) | 638 | `declaration-track:289310ebf44596640f697c7f1447189dfd5423d3210c048c114502d5b88a526c` |
| 78 | `def` | [octahedralFaceContainsEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralfacecontainsedge.md) | 646 | `declaration-track:d6b545b9f44e42d7fb4459aaec12c287c76015c906e500c42c3aea0572097b40` |
| 79 | `def` | [octahedralFaceContainsVertex](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralfacecontainsvertex.md) | 651 | `declaration-track:bb0d49acfbb8fe50b52e89756085b5cd0f2cd1e66048e0fe61271516cd30ee5e` |
| 80 | `def` | [octahedralEdgeExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedraledgeexport-source-edition-2.md) | 657 | `declaration-track:4d97348218b954b2b41a27f0c6cd51b36beb61fa205dd2bcee2ba054fbc2e4be` |
| 81 | `def` | [octahedralOrientedFaceVertices](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralorientedfacevertices.md) | 670 | `declaration-track:1a75867666a5c60e4726e0a89a89a6b0a24d134b650e0c110c2d0a011f9c1df9` |
| 82 | `def` | [octahedralOrientedFaceEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralorientedfaceedges.md) | 690 | `declaration-track:e7bc61b4bc049b71059f09f3d03d065c14b7558382270d80ee6b37c6a94b7f1a` |
| 83 | `def` | [octahedralAdjacentFaceIds](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedraladjacentfaceids.md) | 709 | `declaration-track:11b6b0e10f23c751c2dee21629fea5d3d2f7355e47e26f38cc0976efcad43b50` |
| 84 | `def` | [octahedralFaceExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralfaceexport.md) | 727 | `declaration-track:5abbb2c2bed8c55ed46f3deb3ff2ecb98345103d3cf2322aeb2188420cf90b06` |
| 85 | `def` | [octahedralRenderingChartExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralrenderingchartexport-source-edition-2.md) | 737 | `declaration-track:808698794b79ce6cae13174b0126ae7c37347b4edefaf59f21de5d0cea672259` |
| 86 | `def` | [octahedralTopologyExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedraltopologyexport-source-edition-2.md) | 748 | `declaration-track:d5ccc35462398a6e25095c4bc39c14eac123ba398b8acdbc6e847747a902718e` |
| 87 | `def` | [octahedralAngleRatioExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralangleratioexport.md) | 764 | `declaration-track:7b941871ece62c1b85854b0a7bd7f7a8c27fde62e9ccd974695a4bdcc8e959c8` |
| 88 | `def` | [octahedralNorthFaceIds](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralnorthfaceids.md) | 770 | `declaration-track:6f30dd20785e4fbead803a720590f8bcc634e25b298efd5413d5e7b7f5150b96` |
| 89 | `def` | [octahedralSouthFaceIds](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralsouthfaceids.md) | 774 | `declaration-track:03a1911b5b0ae16e4c798605179f24684d00e7f264540f18167fd2d0bd58317f` |
| 90 | `def` | [octahedralRatioAtlasExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralratioatlasexport-source-edition-2.md) | 778 | `declaration-track:de818fc5fafa89576b0fdd1a269786c465ea14e9644a1b29e70036fcd7006692` |
| 91 | `def` | [octahedralExportedVertexIds](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralexportedvertexids.md) | 793 | `declaration-track:8952109934a257d3fb40971533536557e04fa1c0db201461cd33e9b410fe6adc` |
| 92 | `def` | [octahedralExportedEdgeIds](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralexportededgeids.md) | 796 | `declaration-track:51667d25b332d56d5ec9011dc418e1369efddc012c758ceeb4896eade5f000c4` |
| 93 | `def` | [octahedralExportedFaceIds](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralexportedfaceids.md) | 799 | `declaration-track:fb53cb6f4391818b016e25d234602619c2bca03cf12a795b5a39865ec20c59e6` |
| 94 | `def` | [octahedralExportedCellIds](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralexportedcellids.md) | 802 | `declaration-track:1279387b0660f6f363709a3406d19a16ee55f02a011c2d4507fc1ffa71bbd087` |
| 95 | `theorem` | [octahedralExportCounts](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralexportcounts.md) | 808 | `result-track:2e0cd56cdc8f3926a94b7bc270c07ff6a45a366fea0a804da37d70b09292d835` |
| 96 | `theorem` | [octahedralExportedCellIdsNodup](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralexportedcellidsnodup.md) | 815 | `result-track:b08f99184cca4016b7ba27e48015d0ae2bce5e8c588f31464c2d474236d00ed8` |
| 97 | `def` | [octahedralExportBoundaryReferencesValidCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralexportboundaryreferencesvalidcheck.md) | 820 | `declaration-track:37d763829211cb4d0aaf882ba6acb392bf54ca5bf8d7967c5b6313b8a2d12ed8` |
| 98 | `theorem` | [octahedralExportBoundaryReferencesValid](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralexportboundaryreferencesvalid.md) | 829 | `result-track:c1bed7b6fda5f1469930658ae368df0b471f5991e8d3bde3945fcbbbe501467a` |
| 99 | `def` | [octahedralRenderingFaceCoverageSignature](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralrenderingfacecoveragesignature.md) | 833 | `declaration-track:f3f2e9b4bfcaa9431981fdc0026ae3791095692f5766e1c2ea4821077f299fc1` |
| 100 | `def` | [octahedralRatioFaceCoverageSignature](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralratiofacecoveragesignature.md) | 839 | `declaration-track:49ec14729bf187c353e76a2ec2e2f8d0e5297414d3e5e90a655659b0e1dd8bd9` |
| 101 | `def` | [octahedralRenderingFaceReferencesValidCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralrenderingfacereferencesvalidcheck.md) | 845 | `declaration-track:a4b9a98932163de6a61e48e3c08fa86cc16f05b493ce07e5ae0cc021cc2f31ad` |
| 102 | `def` | [octahedralRatioFaceReferencesValidCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralratiofacereferencesvalidcheck.md) | 849 | `declaration-track:b1fcde2ef801e18ceb113fc0e25c62828bffc36edc113f5a280cd13a80fabf61` |
| 103 | `theorem` | [octahedralRenderingAndRatioAtlasesShareFaceCover](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralrenderingandratioatlasessharefacecover.md) | 855 | `result-track:14a1525f8593fcfd629939c65195efc028428f20e9a36ef71a246ff249b4e918` |
| 104 | `theorem` | [octahedralRatioAtlasMatchesProofCharts](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralratioatlasmatchesproofcharts.md) | 865 | `result-track:e162e980b79ee347dfded71e2d2c089db94112f3cf515bbeeb16e74410d07a2a` |
| 105 | `theorem` | [octahedralAmbientDimensionSound](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereOctahedralSign.lean/declarations/octahedralambientdimensionsound.md) | 871 | `result-track:b4b27dd7b9d6b7c0bf03094fce63a13c50fba902af92eefc3bf6d98e297b5ece` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5177c76ffb4d02261fcabcffda86ee6d97c38e1053986c5d0ec59288fc446c20 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralSphere/Variant7fdfc966c106fd2877680004da177b7f63d3894a665691139329d38e844665a3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralSphere/Variant7fdfc966c106fd2877680004da177b7f63d3894a665691139329d38e844665a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
