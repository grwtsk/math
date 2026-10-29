# Verification target: Octahedral Sphere

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a99b26368811dffaf934be262012b17cac371b70",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralSphere/Varianta39bd7ea7b0bed5f4c91358b906c6d1b8a3ab0f1b4d9a473c22e1c9998319ef7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a99b26368811dffaf934be262012b17cac371b70`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralSphere/Varianta39bd7ea7b0bed5f4c91358b906c6d1b8a3ab0f1b4d9a473c22e1c9998319ef7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralSphere/Varianta39bd7ea7b0bed5f4c91358b906c6d1b8a3ab0f1b4d9a473c22e1c9998319ef7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.PrismaticGeometry.OctahedralChain` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [octahedralDirectionIndex](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedraldirectionindex.md) | 23 | `declaration-track:af4466543a3f0e8af2d6ef9a3b1dcea66e731cf94072e8a66711a4cab991b5b2` |
| 2 | `def` | [octahedralOpposite](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralopposite.md) | 31 | `declaration-track:fe23a0f5ee05f38a74fcc3758f0b27c918225a91fc03ffb59681fdfaa3f55c89` |
| 3 | `def` | [octahedralPolarity](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralpolarity.md) | 39 | `declaration-track:7f15b312dba24898ff79d2ed09cc2b3b7403b8502798a788150e9f9f906a9ffc` |
| 4 | `def` | [octahedralPhaseNumerator](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralphasenumerator.md) | 42 | `declaration-track:624d326a2449856dec41776c83a93b6aefd8b957e031a9163d3ca656081a5d1d` |
| 5 | `def` | [OctahedralDirectionIndexSound](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedraldirectionindexsound.md) | 50 | `declaration-track:d9e25f48d3ddfc4927fcb248ddb5007c45686c98ee572ee5ebf0e60d4febce93` |
| 6 | `theorem` | [octahedralDirectionIndexSoundProof](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedraldirectionindexsoundproof.md) | 53 | `result-track:a8b9c4f42efdaa4face56593fd91cf3f7f80bdb29699ad8a9277cb9f14a77e42` |
| 7 | `def` | [octahedralDirectionFrame](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedraldirectionframe.md) | 62 | `declaration-track:fed3f2bb475775fbe7eb6f28f369b4e4138f1ca01adcf19d1b5ef8c897f631fd` |
| 8 | `def` | [octahedralSphereShadow](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralsphereshadow.md) | 82 | `declaration-track:6510f8fe2df7db713ef5d651e0ff46e61126bef85f98488392e82e82813a482a` |
| 9 | `def` | [octahedralNorthDirections](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralnorthdirections.md) | 102 | `declaration-track:8e78c31b4ac1b348bda5f7c7deadcd5d3046d52b720771aada57985a84e05c65` |
| 10 | `def` | [octahedralSouthDirections](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralsouthdirections.md) | 107 | `declaration-track:c668a6e9e584d80b6bf024ec5d8d70e5e410202a3b195443ace27a0672738524` |
| 11 | `def` | [OctahedralChartSound](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralchartsound.md) | 111 | `declaration-track:ebb8dea3f64cdb4365aadfd234a2c31b6bb04d52b4a0ec5b183ba372a46a6ecf` |
| 12 | `def` | [octahedralNorthCoordinate](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralnorthcoordinate.md) | 119 | `declaration-track:23b239efa76afc2f9a233024b2b9b7d423a9c818f03c1d8e285e15ead3fedde4` |
| 13 | `def` | [octahedralSouthCoordinate](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralsouthcoordinate.md) | 122 | `declaration-track:cdaca503639ff3d42e174329543fc273ae310b10aead13d52f15dfc22f5855c5` |
| 14 | `theorem` | [octahedralNorthDirectionsNodup](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralnorthdirectionsnodup.md) | 125 | `result-track:049116ccb959bae017a28dd507b1a79bf5ab3d3819fce3c3d206e75880ba4906` |
| 15 | `theorem` | [octahedralSouthDirectionsNodup](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralsouthdirectionsnodup.md) | 129 | `result-track:0920cbd7644870e351d2c2038716e8a9eac189876261802e734f19ad879af4c3` |
| 16 | `def` | [octahedralNorthChart](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralnorthchart.md) | 133 | `declaration-track:3e5119334a76bdaa824a7ec9bc69b8e3a653781ef9dd15081819a17d2d6ef572` |
| 17 | `def` | [octahedralSouthChart](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralsouthchart.md) | 143 | `declaration-track:b06370b8413bce4a24abd480aec676397a22edb299c2beb5cf605b0ae7dc1b4b` |
| 18 | `def` | [octahedralCharts](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralcharts.md) | 153 | `declaration-track:d31284d83b083d716a932a7432853951b4763d69a5c61d43ee998e25be419f95` |
| 19 | `def` | [OctahedralChartCoverage](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralchartcoverage.md) | 156 | `declaration-track:c12a082e14991abe0fc55fc87e55d890e8032cfac9a4c7e1852da2e12b807a16` |
| 20 | `theorem` | [octahedralChartCoverageProof](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralchartcoverageproof.md) | 162 | `result-track:bb6630f04df0794381b25c92581bac59ed1c5bb837887cd8f8b3634dcacd5015` |
| 21 | `theorem` | [octahedralChartMembershipCases](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralchartmembershipcases.md) | 204 | `result-track:5ce580e3a8aeb72d75efa316949da4f07f232efa21237a73b58ede913bba4936` |
| 22 | `def` | [OctahedralRatioCompatibility](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralratiocompatibility.md) | 218 | `declaration-track:23b801f6b99b4cf5f690deb9b9b097999122b20fd56aa6a6a5597b11e2ca720d` |
| 23 | `theorem` | [octahedralRatioCompatibilityProof](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralratiocompatibilityproof.md) | 227 | `result-track:f522eb22c2057d75adce80cd8ecff2bc47c132a744b9bbb2e2c9ef7a8e83c4e0` |
| 24 | `def` | [octahedralRatioSphere](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralratiosphere.md) | 242 | `declaration-track:d37d74f829a470f5a5da054bfa3e6ed60f4613653a8232229272ece6f3e8a979` |
| 25 | `theorem` | [octahedralRatioSphereSound](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralratiospheresound.md) | 249 | `result-track:9674727407abd643b9b623112475efb148720daf1e0119fc0b8a0934d59aa90f` |
| 26 | `structure` | [OctahedralExactVectorExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralexactvectorexport.md) | 255 | `declaration-track:920a3561ea22f490ac6acab10be780f306e3b9988a9b3ee2ee6533ffe314a84d` |
| 27 | `structure` | [OctahedralVertexExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralvertexexport.md) | 263 | `declaration-track:a2929368186cf492131ac2ab1910c65cb045f4c70e5d309d1d5e2081948a0b25` |
| 28 | `structure` | [OctahedralOrientedEdgeRefExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralorientededgerefexport.md) | 270 | `declaration-track:90198905780a2f0f346ba8ddc4424e263edd09594f4c2b51f9df13816ab70c68` |
| 29 | `structure` | [OctahedralEdgeExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedraledgeexport-source-edition-2.md) | 275 | `declaration-track:aa2611e16429f298c55554c02ed860ff0e84b24d32fd590f5313abff9992790d` |
| 30 | `structure` | [OctahedralFaceExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralfaceexport-source-edition-2.md) | 281 | `declaration-track:91677d14ff9d0a602f88752a6efdb47828e8347a9a2e87385a38e4b9beec1211` |
| 31 | `structure` | [OctahedralRenderingChartExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralrenderingchartexport.md) | 290 | `declaration-track:145212016056c81ea8ad7d86f0cb05118b7db3f5c24dc1f959ea43ef9fd72d87` |
| 32 | `structure` | [OctahedralTopologyExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedraltopologyexport-source-edition-2.md) | 299 | `declaration-track:bc2346df9d57034eacc2cb75620f6c97ed481208e198e65e4a65348a4dbdef09` |
| 33 | `structure` | [OctahedralAngleRatioExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralangleratioexport-source-edition-2.md) | 315 | `declaration-track:4565bde2faddb4e4ab07fc6e2b454b63f7535a145557b62c14a25c926cf58af0` |
| 34 | `structure` | [OctahedralRatioChartExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralratiochartexport.md) | 322 | `declaration-track:8ac74b362b94b490f0b4bef9ca2d1e1d3174c872642f38ad7d5afd11198dcf97` |
| 35 | `structure` | [OctahedralRatioAtlasExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralratioatlasexport-source-edition-2.md) | 330 | `declaration-track:a2d9d5ae508d477f8b3c9fd54f808776a4e0f82ff2b9a77bcb796744dbf0f3ac` |
| 36 | `def` | [octahedralRuntimeHashAuthorityBoundary](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralruntimehashauthorityboundary.md) | 337 | `declaration-track:8b650c06937db0c49982f1eabcda9be1f0556e5116ab3609a2ab1d763b9966d9` |
| 37 | `structure` | [OctahedralCheckedSerializationBridge](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralcheckedserializationbridge.md) | 343 | `declaration-track:b2282097f6e3e76cb94d6257436ba767357348fb4e72f3335995eb1cc4b8f0ee` |
| 38 | `theorem` | [octahedralRuntimeHashRequiresCheckedSerializationBridge](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralruntimehashrequirescheckedserializationbridge.md) | 356 | `result-track:fff45212b3de7a57275bfc8ea19d2e01fa97e9cba0463929e434ca3deb80368d` |
| 39 | `def` | [octahedralExactDirection](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralexactdirection.md) | 366 | `declaration-track:439d9df9160d75d40b1fdb7319354c1af4d46fc612a88e62993ef4218e5586d7` |
| 40 | `def` | [octahedralExactNormSquared](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralexactnormsquared.md) | 375 | `declaration-track:bf01bd794224d49ebe7279e97d42b54924edea8f62aa846d8b99df1f3cc90ec6` |
| 41 | `def` | [octahedralNegateExactVector](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralnegateexactvector.md) | 379 | `declaration-track:333a341be25eb986192797f4e56784fc5b57aa174a229de0f8aa816e373785e4` |
| 42 | `def` | [OctahedralExactDirectionSound](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralexactdirectionsound.md) | 383 | `declaration-track:aed7686d7bc6c7c02b18a211b61c5452bf9194f56b524603984a358c1ec6aeaf` |
| 43 | `theorem` | [octahedralExactDirectionSoundProof](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralexactdirectionsoundproof.md) | 389 | `result-track:ce07392b42000a2686c909557164efecf636a6af6d5f238e54875c3149987f8a` |
| 44 | `def` | [octahedralVertexExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralvertexexport-source-edition-2.md) | 397 | `declaration-track:bbc89f9147e6c1ef8bf895b77951ef063d4c9777ad2c36caeaa0b66fff5f2314` |
| 45 | `def` | [octahedralRenderingChartId](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralrenderingchartid.md) | 404 | `declaration-track:1c3e51ae0fcfcc2c9536ff942d81c2c6547e5c681ef08a4065cbcc1543f99bbe` |
| 46 | `def` | [octahedralFaceContainsEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralfacecontainsedge.md) | 412 | `declaration-track:88d2c6434b3b9cb97ca85f6904bbda26acd6decdeceaef554ac4278bf3c7aa4e` |
| 47 | `def` | [octahedralFaceContainsVertex](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralfacecontainsvertex.md) | 417 | `declaration-track:bf3166e0cef806140fecd474b85f1515edfa1b7101dcc1759d67a7e3e3d43f8b` |
| 48 | `def` | [octahedralEdgeExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedraledgeexport.md) | 423 | `declaration-track:3e5ed74e82a1053771902cd3da0cbedc1f879cc11bc1be4f0894f2c7055716a2` |
| 49 | `def` | [octahedralOrientedFaceVertices](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralorientedfacevertices.md) | 436 | `declaration-track:23380a92ce64c4d8f7ecc74f584720b779e3a2ccc0e806ef1b6b7e7ca182e0bc` |
| 50 | `def` | [octahedralOrientedFaceEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralorientedfaceedges.md) | 456 | `declaration-track:b33b8c9192be95f3c63824415dfbb924eaf11f926ca4dc2293ab4511030f9fc6` |
| 51 | `def` | [octahedralAdjacentFaceIds](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedraladjacentfaceids.md) | 475 | `declaration-track:3ce99b5ee210ed3851e17c56efccba80826507f07aff90ff40323c998b1f4172` |
| 52 | `def` | [octahedralFaceExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralfaceexport.md) | 493 | `declaration-track:69ffd69e4322a47326a22e574718238af7224f642ff9952ddac06365ba87f3ba` |
| 53 | `def` | [octahedralRenderingChartExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralrenderingchartexport-source-edition-2.md) | 503 | `declaration-track:3d16514a7ca09835eba46991a7812353bf421f110518e3a6fc2ab236fa5d234f` |
| 54 | `def` | [octahedralTopologyExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedraltopologyexport.md) | 514 | `declaration-track:b354710e189aa64b531d4773709afcdfe7f78a9733a913fed56c00262c4b3351` |
| 55 | `def` | [octahedralAngleRatioExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralangleratioexport.md) | 530 | `declaration-track:2185b1467942e961f5f69b6528cbbf6498f5e2e0b2a4d94c6528ad1632712743` |
| 56 | `def` | [octahedralNorthFaceIds](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralnorthfaceids.md) | 536 | `declaration-track:f433778fd972ae0b3af5e3f4ab06df487c579de0ce5d7af56b3363cde88b1d50` |
| 57 | `def` | [octahedralSouthFaceIds](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralsouthfaceids.md) | 540 | `declaration-track:46dec647fa1ad77b8898318e378a4bb3601d3a35afb920a5dab0c7cf20255b78` |
| 58 | `def` | [octahedralRatioAtlasExport](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralratioatlasexport.md) | 544 | `declaration-track:0abf738cb71652e9bd49b22d7173cee8c1fe897382734480f5fc75d48e23c355` |
| 59 | `def` | [octahedralExportedVertexIds](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralexportedvertexids.md) | 559 | `declaration-track:d0ae30ef49da6aa13d1a0a78740d894a0849c8081189d4ce7fbda80e5f994472` |
| 60 | `def` | [octahedralExportedEdgeIds](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralexportededgeids.md) | 562 | `declaration-track:b5d0ad1917ceecf5595133feabed5924909ebc50359f21793567e2e22edd21da` |
| 61 | `def` | [octahedralExportedFaceIds](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralexportedfaceids.md) | 565 | `declaration-track:ac00f2f136de522d96a90636d389acdfc4aca6bcfedb5930c37858e8f2ca79bb` |
| 62 | `def` | [octahedralExportedCellIds](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralexportedcellids.md) | 568 | `declaration-track:f423780692442ba105fedba4a555bbacb83080ec1915eb6726381df0ae12e862` |
| 63 | `theorem` | [octahedralExportCounts](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralexportcounts.md) | 574 | `result-track:6f5d1dbedf7b1f5d84cb142ef0083e0150ae26986a7ecbebcb2c8d4ce97e77ca` |
| 64 | `theorem` | [octahedralExportedCellIdsNodup](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralexportedcellidsnodup.md) | 581 | `result-track:2fa480929eb5f4262fad06daadcdfe3aadad046fe4efe9103c3468b6896fc018` |
| 65 | `def` | [octahedralExportBoundaryReferencesValidCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralexportboundaryreferencesvalidcheck.md) | 586 | `declaration-track:4b6c4afc9ef6a0391d26a6a2227858840de1ea1816ad51886b1972845003097b` |
| 66 | `theorem` | [octahedralExportBoundaryReferencesValid](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralexportboundaryreferencesvalid.md) | 595 | `result-track:2a3afc3a63fbdae06ee0a3a7bfc3b047f814810af751df50190d41726e94172e` |
| 67 | `def` | [octahedralRenderingFaceCoverageSignature](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralrenderingfacecoveragesignature.md) | 599 | `declaration-track:e0ef7807d87f5cc0f9be559d3e6836f992f4b9c7ed047a4ec4074ce4357e2742` |
| 68 | `def` | [octahedralRatioFaceCoverageSignature](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralratiofacecoveragesignature.md) | 605 | `declaration-track:16ff0a2efd8c9882ec8970ae7181d36521119f3a9c117bc463ed6e9f26630c61` |
| 69 | `def` | [octahedralRenderingFaceReferencesValidCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralrenderingfacereferencesvalidcheck.md) | 611 | `declaration-track:11104e10dd373a1a7f90abd30eccc623cf9797038b707d4ac883fe2c3200779a` |
| 70 | `def` | [octahedralRatioFaceReferencesValidCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralratiofacereferencesvalidcheck.md) | 615 | `declaration-track:6ab9d4bd365e4bf534443d746670a55e70a2dad2320c8dff0685085a90048e39` |
| 71 | `theorem` | [octahedralRenderingAndRatioAtlasesShareFaceCover](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralrenderingandratioatlasessharefacecover.md) | 621 | `result-track:43492dfd602d75bfbefc5038177b00ec70799243b3d85bc34e524d091828c185` |
| 72 | `theorem` | [octahedralRatioAtlasMatchesProofCharts](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralratioatlasmatchesproofcharts.md) | 631 | `result-track:776761058c9caa9ec9ab49e75120ef454e0cacccff3b0407fb59e109d634f015` |
| 73 | `theorem` | [octahedralAmbientDimensionSound](../../../../../ComputerScience/AlgorithmsInComputerScience/OctahedralSphere.lean/declarations/octahedralambientdimensionsound.md) | 637 | `result-track:4f51b0ef66709bfc33a94db8b3f007336572dcc2a5c9d110715c60c63cc563b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c4e4b3d3ddb0c16ef622f324361f8a32a60a179b76e0fcc01fbefa7ce4b433e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralSphere/Varianta39bd7ea7b0bed5f4c91358b906c6d1b8a3ab0f1b4d9a473c22e1c9998319ef7.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralSphere/Varianta39bd7ea7b0bed5f4c91358b906c6d1b8a3ab0f1b4d9a473c22e1c9998319ef7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
