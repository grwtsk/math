# Verification target: Octahedral Sphere Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cf20f7a056212366a9f1e03193f61e2ad486bdf",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralSphere/Variant7245f6aeeba6532bde47da12a4d40f76e5087de5b509158d37067113a9e6e750.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cf20f7a056212366a9f1e03193f61e2ad486bdf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralSphere/Variant7245f6aeeba6532bde47da12a4d40f76e5087de5b509158d37067113a9e6e750.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralSphere/Variant7245f6aeeba6532bde47da12a4d40f76e5087de5b509158d37067113a9e6e750.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.PrismaticGeometry.OctahedralChain` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [octahedralDirectionIndex](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedraldirectionindex.md) | 31 | `declaration-track:8da3d1f86d9394578f3fcb2b4b865eb3a15959e57c87a4504771b7ef276af492` |
| 2 | `def` | [octahedralOpposite](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralopposite.md) | 39 | `declaration-track:7c11fd83d901351738e62d0d04ae35e5213999d9a4758a20a9c467ce04da7563` |
| 3 | `def` | [octahedralPolarity](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralpolarity.md) | 47 | `declaration-track:5c6a9c7a39d4f001b8ec0403bc7d971cccd52b6b883eab427c0eb7c55addc6f3` |
| 4 | `def` | [octahedralPhaseNumerator](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralphasenumerator.md) | 50 | `declaration-track:758405a7b73f6994809464a06fbbcf828a331431435f69d7138a10e9681daf78` |
| 5 | `def` | [OctahedralDirectionIndexSound](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedraldirectionindexsound.md) | 58 | `declaration-track:f120345bf4efe262a2252e944a508762271663b8ee8747972f4e8a55b7cfc4e4` |
| 6 | `theorem` | [octahedralDirectionIndexSoundProof](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedraldirectionindexsoundproof.md) | 61 | `result-track:32304fb19ed785ee96767e82d1c39de5af785e1218de442a47d6a85fbe348f45` |
| 7 | `def` | [octahedralDirectionFrame](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedraldirectionframe.md) | 70 | `declaration-track:fc1a28a45f65d26050d895c78c2f6950264391f57dfa29c326f0d8ad0bec384b` |
| 8 | `def` | [octahedralSphereShadow](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralsphereshadow.md) | 90 | `declaration-track:baefdba10eba0ed757c63841a6b745c1beac46c094b69a1db05a904bb7a4cd13` |
| 9 | `def` | [octahedralNorthDirections](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralnorthdirections.md) | 110 | `declaration-track:4a13cd44284261350e2720d10ea71450f78c199d83ff5aaca4c4d2ad7f0cc0a1` |
| 10 | `def` | [octahedralSouthDirections](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralsouthdirections.md) | 115 | `declaration-track:338cef22282c4e80ffd9d1c3431b0c893d66a4294af68d34fcd616da0919426b` |
| 11 | `def` | [OctahedralChartSound](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralchartsound.md) | 119 | `declaration-track:cf9c471f7a509a91a53d23ce76e0d2f2c07be72a0fa41d0a09a2072cd729f510` |
| 12 | `def` | [octahedralNorthCoordinate](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralnorthcoordinate.md) | 127 | `declaration-track:4b41b12ce533fead7bfdfad76ebea78ab00a20eccae63dba4d3871b20edea648` |
| 13 | `def` | [octahedralSouthCoordinate](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralsouthcoordinate.md) | 130 | `declaration-track:871f51982ad433a6d9f3b720ccf405910b89786d26709a5fc9a6e38ee472a97c` |
| 14 | `theorem` | [octahedralNorthDirectionsNodup](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralnorthdirectionsnodup.md) | 133 | `result-track:12aa2a864030897ed6f3d7dc55241cb53079034570c5769f37e9128c65cd9c9b` |
| 15 | `theorem` | [octahedralSouthDirectionsNodup](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralsouthdirectionsnodup.md) | 137 | `result-track:9bff73336ff3a5b15ef963c834c97798a6687d3b1039391dbf1ca234d49e8f19` |
| 16 | `def` | [octahedralNorthChart](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralnorthchart.md) | 141 | `declaration-track:1ff98f3e4f376aba37fb3c851281fbf32858175c89a38ba3d6e496a767aa7d05` |
| 17 | `def` | [octahedralSouthChart](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralsouthchart.md) | 151 | `declaration-track:e6553e0c3ffaeb9d1e5efad9bd8f3b660816b0614007d8d9a7ad0a86b5facf3f` |
| 18 | `def` | [octahedralCharts](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralcharts.md) | 161 | `declaration-track:a5c86cec5d3cd2962d3e2a8210384893914754fe640e44a3921e6c5b816bab37` |
| 19 | `def` | [OctahedralChartCoverage](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralchartcoverage.md) | 164 | `declaration-track:ce01e15740d0fa672ed93d54e8d5f7af7073281acabdaae53a397954768a0762` |
| 20 | `theorem` | [octahedralChartCoverageProof](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralchartcoverageproof.md) | 170 | `result-track:15050b3e7664db22cdf794c3d6a9345823936405ae43ae8916458cb5af92c6ef` |
| 21 | `theorem` | [octahedralChartMembershipCases](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralchartmembershipcases.md) | 212 | `result-track:5517af8c485c913bab96f20e75bbe4bdbb39122fe93e8a9ab43be19659007856` |
| 22 | `def` | [OctahedralRatioCompatibility](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralratiocompatibility.md) | 226 | `declaration-track:5a5a880ceed3951764e1cea97082743b82467e6c2db97706977b370072917a02` |
| 23 | `theorem` | [octahedralRatioCompatibilityProof](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralratiocompatibilityproof.md) | 235 | `result-track:01f6c45f3697a6aa1379d43988a6620b71b2d77dc2fc556d6116b62bf705573a` |
| 24 | `def` | [octahedralRatioSphere](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralratiosphere.md) | 250 | `declaration-track:b4f38110bca9625519a6dd2574c1f74cbae9b6b2ff5a7845e6c9517fda59e995` |
| 25 | `theorem` | [octahedralRatioSphereSound](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralratiospheresound.md) | 257 | `result-track:a11c65d4b3f16d58d348a43de9b14de86f72039a7a991d8acd6a695632d86e65` |
| 26 | `structure` | [OctahedralExactVectorExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralexactvectorexport.md) | 263 | `declaration-track:3dcc4934ef059d0e8158e7188a6dd4dfac555457233060481785174d29ee467a` |
| 27 | `structure` | [OctahedralVertexExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralvertexexport.md) | 271 | `declaration-track:9d35ed6c75e190cd00ecc9696941fdd4cbeac2749f9714386f462a749e726eb8` |
| 28 | `structure` | [OctahedralOrientedEdgeRefExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralorientededgerefexport.md) | 278 | `declaration-track:5eacdb062516935b748106cd52791f15754b0e64de77a43b3c45f05615dd29c5` |
| 29 | `structure` | [OctahedralEdgeExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedraledgeexport.md) | 283 | `declaration-track:5b884dd0c73af28b6a3012e7552544fa3efeb3d672060b572ac43299cf92a0d2` |
| 30 | `structure` | [OctahedralFaceExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralfaceexport-source-edition-2.md) | 289 | `declaration-track:53015da74a795322bb71ac683d0b9a0a5a1e544e463415b1ab074a2cb4c4e35c` |
| 31 | `structure` | [OctahedralRenderingChartExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralrenderingchartexport-source-edition-2.md) | 298 | `declaration-track:56c6091e9c728a14b6ce8fef699d93bc487006e7ba8593ae60e16878d8591f5b` |
| 32 | `structure` | [OctahedralTopologyExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedraltopologyexport-source-edition-2.md) | 307 | `declaration-track:d3c0ff92b4679227f5995961bbdce21e8db3f25347c5804cdae77e41b8f9a32a` |
| 33 | `structure` | [OctahedralAngleRatioExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralangleratioexport-source-edition-2.md) | 323 | `declaration-track:def8297d60441aba389485becde0f2ed36571e2c07384ab146d47051b9d8ec23` |
| 34 | `structure` | [OctahedralRatioChartExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralratiochartexport.md) | 330 | `declaration-track:36ec62bbe4dde451bfb58f26371afc5f4fd9ad83a1e7394c57e2b219e5794b96` |
| 35 | `structure` | [OctahedralRatioAtlasExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralratioatlasexport-source-edition-2.md) | 338 | `declaration-track:8ef5fd0be85842c1ec0be05db67fba43209e011fef35206a156e681fc897add6` |
| 36 | `def` | [octahedralRuntimeHashAuthorityBoundary](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralruntimehashauthorityboundary.md) | 345 | `declaration-track:bf18d3843d34cb21758e90423bcd10cd8bc780cd7c812a674296c608ca46ec69` |
| 37 | `structure` | [OctahedralCheckedSerializationBridge](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralcheckedserializationbridge.md) | 351 | `declaration-track:8bd0c9455b1269a7704896e8e571ee2643b3d2a7c8ebf823976b8d95461d30b9` |
| 38 | `theorem` | [octahedralRuntimeHashRequiresCheckedSerializationBridge](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralruntimehashrequirescheckedserializationbridge.md) | 364 | `result-track:8dfe4e0c2e2bb0ca3364341d4feaf763b2056f039e295b4d0d210b2cb1e505c3` |
| 39 | `def` | [octahedralExactDirection](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralexactdirection.md) | 374 | `declaration-track:a92d624b7cf01049ce26d1b3a65aa73a02451e6e662c34c0cafce474e8a73429` |
| 40 | `def` | [octahedralExactNormSquared](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralexactnormsquared.md) | 383 | `declaration-track:c29d7f7db711ecf6f96c45c570a217f0a64967ec181d7bb6019aa19ab0b367e8` |
| 41 | `def` | [octahedralNegateExactVector](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralnegateexactvector.md) | 387 | `declaration-track:a4088a82089a2471e183138c2b5da3acaeb98a7b3bb95a9d5480cce5168b8337` |
| 42 | `def` | [OctahedralExactDirectionSound](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralexactdirectionsound.md) | 391 | `declaration-track:02385bed18faeee02c9eb67cb1c1ec2d7b29caa0883cb0fcabb62e49462dcf3a` |
| 43 | `theorem` | [octahedralExactDirectionSoundProof](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralexactdirectionsoundproof.md) | 397 | `result-track:67d4b3ea23fbb8b278b552910e2006bf4637388c1fba38c79d68c5c6a389bcc6` |
| 44 | `def` | [octahedralVertexExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralvertexexport-source-edition-2.md) | 405 | `declaration-track:bd60880f59189aec12535a3c1c1e7f8429fb7b2bccd8d0e282dd232441bd9228` |
| 45 | `def` | [octahedralRenderingChartId](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralrenderingchartid.md) | 412 | `declaration-track:adefc28d382b7496381b207a42d883d07ebac9ad3566c1a869b9e08dc37dd44b` |
| 46 | `def` | [octahedralFaceContainsEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralfacecontainsedge.md) | 420 | `declaration-track:ea4102f5fcdf5405f19702170cda27238bbfed5c9b0fac80cf1dc1166c39290a` |
| 47 | `def` | [octahedralFaceContainsVertex](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralfacecontainsvertex.md) | 425 | `declaration-track:d24fbe247a978f3cfe0be5ca873d68751853112db67b8f4994f152e0e2f4d7b3` |
| 48 | `def` | [octahedralEdgeExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedraledgeexport-source-edition-2.md) | 431 | `declaration-track:cd0a3e06de29eb6b95569ab13c85f80388b39a88af16668acee6e3a2ed1d3eb5` |
| 49 | `def` | [octahedralOrientedFaceVertices](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralorientedfacevertices.md) | 444 | `declaration-track:3fb3f9a43a2ba06bc001650f468e399152585697bddb024039e33da57ed6bc2f` |
| 50 | `def` | [octahedralOrientedFaceEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralorientedfaceedges.md) | 464 | `declaration-track:74d8c6ddc62e57d107cedd9accee10886bc060d3f3d54a7ede8622fc6a9f91cf` |
| 51 | `def` | [octahedralAdjacentFaceIds](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedraladjacentfaceids.md) | 483 | `declaration-track:7fa9fc6ad0bd85e7663a32dee8af2f60a39028f4cb78df5b076de3ee788a01da` |
| 52 | `def` | [octahedralFaceExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralfaceexport.md) | 501 | `declaration-track:1dbc87487a9ba9a20d707ef0eaa5b6496dd113c999e1fcefe6f06a49474e58b6` |
| 53 | `def` | [octahedralRenderingChartExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralrenderingchartexport.md) | 511 | `declaration-track:438a14d28bf094cffdcff526c49aeebb6f83e286b4ad699031b67779b7c2998a` |
| 54 | `def` | [octahedralTopologyExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedraltopologyexport.md) | 522 | `declaration-track:1cf021ffdfd2949156d72e38a7a8e282c0d54086a2334e88f9dcf39dc2bd575f` |
| 55 | `def` | [octahedralAngleRatioExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralangleratioexport.md) | 538 | `declaration-track:5d2060cb2da3a02b3f16f59259323c4cbdf5b17d18793306638dcf2355b6a8b0` |
| 56 | `def` | [octahedralNorthFaceIds](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralnorthfaceids.md) | 544 | `declaration-track:8cef95fa5010f41dc5c60fdcbc8f42b8d9c18dcf7447d0811996981291ba5b7d` |
| 57 | `def` | [octahedralSouthFaceIds](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralsouthfaceids.md) | 548 | `declaration-track:0ec2e4fcf67eec61d7973f98162217c674ce0f5724a1e7f7d90fd3eb434c2c87` |
| 58 | `def` | [octahedralRatioAtlasExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralratioatlasexport.md) | 552 | `declaration-track:8e60b4a5d02d86a2d77f9241b9c8a1bb4c1f4d753422226e67b994a2c2209863` |
| 59 | `def` | [octahedralExportedVertexIds](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralexportedvertexids.md) | 567 | `declaration-track:ee4bb7d004ec253b048e7c9ada0499bbd1fdc7b0ea66d38c85d6517019e15246` |
| 60 | `def` | [octahedralExportedEdgeIds](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralexportededgeids.md) | 570 | `declaration-track:d8d911a8b37d0a2cf7803601217de3321d09067f96ccfda53a100e111cb43ab4` |
| 61 | `def` | [octahedralExportedFaceIds](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralexportedfaceids.md) | 573 | `declaration-track:1434f409e1bf60361454d59e7420f17ed1c7b031f98c0f03fc9bb16724b93f51` |
| 62 | `def` | [octahedralExportedCellIds](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralexportedcellids.md) | 576 | `declaration-track:b3d960945f43a023cccbe3754f8aedad19937d5dbdee781dd355f985d08fbd3c` |
| 63 | `theorem` | [octahedralExportCounts](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralexportcounts.md) | 582 | `result-track:cfc9571a47a7201cfd3666236c90e9457f1393f1b5df6df18e9b668bf8b89d74` |
| 64 | `theorem` | [octahedralExportedCellIdsNodup](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralexportedcellidsnodup.md) | 589 | `result-track:b35232d3ef5a827aaf16ad0bbfac2447a763cc507c6ad53d21c57995a3933394` |
| 65 | `def` | [octahedralExportBoundaryReferencesValidCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralexportboundaryreferencesvalidcheck.md) | 594 | `declaration-track:d1b37a5edcafed990d137e42c842009d02d8201193a9607548bf9799a4bf9901` |
| 66 | `theorem` | [octahedralExportBoundaryReferencesValid](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralexportboundaryreferencesvalid.md) | 603 | `result-track:c05dc6f6cd92ec3c844f4ed052d5586b5dacb31a3ac7b6cb9da241ba9d4e8e5c` |
| 67 | `def` | [octahedralRenderingFaceCoverageSignature](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralrenderingfacecoveragesignature.md) | 607 | `declaration-track:88664d0d90817a097d8b798a9695bb13bb2d712f35557e8256917cb2803f28e4` |
| 68 | `def` | [octahedralRatioFaceCoverageSignature](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralratiofacecoveragesignature.md) | 613 | `declaration-track:7d63154ae798017b6c30441e9d983d12383d2640ca92bcbc34775364e17c46b4` |
| 69 | `def` | [octahedralRenderingFaceReferencesValidCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralrenderingfacereferencesvalidcheck.md) | 619 | `declaration-track:b04f8978c57e0aeb2421abc2ca25bbcbeaca095a83715af6c3c1f1d94acbb41c` |
| 70 | `def` | [octahedralRatioFaceReferencesValidCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralratiofacereferencesvalidcheck.md) | 623 | `declaration-track:6d224dfa4b48f4d428f32c9e24cad5e558f2c7c429e260744e65b5cb09830136` |
| 71 | `theorem` | [octahedralRenderingAndRatioAtlasesShareFaceCover](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralrenderingandratioatlasessharefacecover.md) | 629 | `result-track:aab5c2f9ae545c208555983b1dc7e7f41ee2566ab51c8313316e0271c77dddbd` |
| 72 | `theorem` | [octahedralRatioAtlasMatchesProofCharts](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralratioatlasmatchesproofcharts.md) | 639 | `result-track:a5d465ecd2dd2d003d14e1f096db162ca52524e10901bf5354d01f93c30a0889` |
| 73 | `theorem` | [octahedralAmbientDimensionSound](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/declarations/octahedralambientdimensionsound.md) | 645 | `result-track:34bc0030a0fda7ed4fe5d6a623548e342898287ab0fe10385195663cc1150aea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5ac87b03dc953e74244859cdc859b47dcb69c06af8f4a766b8703b30929db34e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralSphere/Variant7245f6aeeba6532bde47da12a4d40f76e5087de5b509158d37067113a9e6e750.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralSphere/Variant7245f6aeeba6532bde47da12a4d40f76e5087de5b509158d37067113a9e6e750.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
