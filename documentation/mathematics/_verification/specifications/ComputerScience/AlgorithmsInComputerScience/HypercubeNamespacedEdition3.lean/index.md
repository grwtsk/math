# Verification target: Hypercube Namespaced Edition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e44e8199da4c47e62abeed5a2ae36f2d4ee6a053",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant90c22871bb16fb8424ce8de3fcd9f15b8e6c1979b9351c0d7ec4b88c56f1589e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/HypercubeNamespacedEdition3.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/HypercubeNamespacedEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e44e8199da4c47e62abeed5a2ae36f2d4ee6a053`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant90c22871bb16fb8424ce8de3fcd9f15b8e6c1979b9351c0d7ec4b88c56f1589e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant90c22871bb16fb8424ce8de3fcd9f15b8e6c1979b9351c0d7ec4b88c56f1589e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Matrix.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Boolean.Cube.ListTools` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Hypercube.Point](../../../../../ComputerScience/AlgorithmsInComputerScience/HypercubeNamespacedEdition3.lean/declarations/hypercube-point.md) | 17 | `declaration-track:5262db6989db673cec336475563f6a55baaec4ab1c19fd7d03bab02b95fb16c3` |
| 2 | `abbrev` | [Hypercube.BooleanFunction](../../../../../ComputerScience/AlgorithmsInComputerScience/HypercubeNamespacedEdition3.lean/declarations/hypercube-booleanfunction.md) | 21 | `declaration-track:9780a118c6e63f797616d6b33c54805348971cdb24d686154b0b865f36c62ae4` |
| 3 | `abbrev` | [Hypercube.ScalarFunction](../../../../../ComputerScience/AlgorithmsInComputerScience/HypercubeNamespacedEdition3.lean/declarations/hypercube-scalarfunction.md) | 29 | `declaration-track:514e2045f095fd14275c2167b255307e91ed6be225cf903db6d111127253ab3a` |
| 4 | `def` | [Hypercube.bxor](../../../../../ComputerScience/AlgorithmsInComputerScience/HypercubeNamespacedEdition3.lean/declarations/hypercube-bxor.md) | 33 | `declaration-track:3bbcf63317068ac9e2fb5f8b0983fc378beca34caeb38d6d1474123b0df99965` |
| 5 | `def` | [Hypercube.boolDiff](../../../../../ComputerScience/AlgorithmsInComputerScience/HypercubeNamespacedEdition3.lean/declarations/hypercube-booldiff.md) | 40 | `declaration-track:9b524d62094eba188b004191a270d4e3525679bba87437112403fbbbc1cc305e` |
| 6 | `def` | [Hypercube.bitAtNat](../../../../../ComputerScience/AlgorithmsInComputerScience/HypercubeNamespacedEdition3.lean/declarations/hypercube-bitatnat.md) | 44 | `declaration-track:313d02a8482083e583ac1f142b0420df776a4f9878f46ecc6e9a8cf3cb13a5fa` |
| 7 | `def` | [Hypercube.tableBit](../../../../../ComputerScience/AlgorithmsInComputerScience/HypercubeNamespacedEdition3.lean/declarations/hypercube-tablebit.md) | 53 | `declaration-track:2e32f6b2d8096e620566433fd2f280a2bb87193947553e60d3508282e19e5b1c` |
| 8 | `def` | [Hypercube.pointOfIndex](../../../../../ComputerScience/AlgorithmsInComputerScience/HypercubeNamespacedEdition3.lean/declarations/hypercube-pointofindex.md) | 57 | `declaration-track:92c8eb037fc1e8fc2c864cafacab77dfdfba9df5c5c3ec20b8d5c588d55417b2` |
| 9 | `def` | [Hypercube.vertices](../../../../../ComputerScience/AlgorithmsInComputerScience/HypercubeNamespacedEdition3.lean/declarations/hypercube-vertices.md) | 64 | `declaration-track:2757335651f339c07bdae372858df7e511c57351c8ca12d9a52d0533cc0056dc` |
| 10 | `def` | [Hypercube.coordinates](../../../../../ComputerScience/AlgorithmsInComputerScience/HypercubeNamespacedEdition3.lean/declarations/hypercube-coordinates.md) | 68 | `declaration-track:86b34bf3b89fd2bd35145496182e8129ebf10ec36ec82aa36628ce6a4482324e` |
| 11 | `def` | [Hypercube.spinOfBool](../../../../../ComputerScience/AlgorithmsInComputerScience/HypercubeNamespacedEdition3.lean/declarations/hypercube-spinofbool.md) | 72 | `declaration-track:d7320230a646a3693952a344bf667900f0f16239d5832d6b0a2318a637680894` |
| 12 | `def` | [Hypercube.intOfBool](../../../../../ComputerScience/AlgorithmsInComputerScience/HypercubeNamespacedEdition3.lean/declarations/hypercube-intofbool.md) | 77 | `declaration-track:b51e6c3bbe81b1be8a7ab6c1751275f0f4a11834dbd8043fbc43bc976cf900ba` |
| 13 | `def` | [Hypercube.spinCoordinates](../../../../../ComputerScience/AlgorithmsInComputerScience/HypercubeNamespacedEdition3.lean/declarations/hypercube-spincoordinates.md) | 82 | `declaration-track:ea9ca14920e8add3c1ec2c66092f03ba493640c661fac9be5cdfeef36e79ab39` |
| 14 | `def` | [Hypercube.zeroOneCoordinates](../../../../../ComputerScience/AlgorithmsInComputerScience/HypercubeNamespacedEdition3.lean/declarations/hypercube-zeroonecoordinates.md) | 86 | `declaration-track:10a2e705056f5d86c336c61602e8ef48c5231bba527f97bfbfc6a96e3460794f` |
| 15 | `def` | [Hypercube.flip](../../../../../ComputerScience/AlgorithmsInComputerScience/HypercubeNamespacedEdition3.lean/declarations/hypercube-flip.md) | 90 | `declaration-track:b576971e6e04a1a59688134eb2937866c15bec7c05f3bc986efb339466bdd560` |
| 16 | `theorem` | [Hypercube.flip_same](../../../../../ComputerScience/AlgorithmsInComputerScience/HypercubeNamespacedEdition3.lean/declarations/hypercube-flip-same.md) | 98 | `result-track:d7c6867ee31478811719d7513131d42d05a36b0023e4ca91c2dccfb0875dfcfb` |
| 17 | `theorem` | [Hypercube.flip_other](../../../../../ComputerScience/AlgorithmsInComputerScience/HypercubeNamespacedEdition3.lean/declarations/hypercube-flip-other.md) | 102 | `result-track:1aa730d55ee1c9ef5b278d655b9235f4d738bdd2de7a741f678d988e93d57461` |
| 18 | `def` | [Hypercube.pointEq](../../../../../ComputerScience/AlgorithmsInComputerScience/HypercubeNamespacedEdition3.lean/declarations/hypercube-pointeq.md) | 108 | `declaration-track:6436d3c1b74da427811b0e1cbc0cea8edf5a1db52da7f047c81c0ef10e0c594a` |
| 19 | `def` | [Hypercube.hammingDistance](../../../../../ComputerScience/AlgorithmsInComputerScience/HypercubeNamespacedEdition3.lean/declarations/hypercube-hammingdistance.md) | 114 | `declaration-track:e5fa788d76bcc23ad91729247eb8b3fd0774d2146d4eb748d773c8f9aecc6802` |
| 20 | `def` | [Hypercube.adjacencyMatrix](../../../../../ComputerScience/AlgorithmsInComputerScience/HypercubeNamespacedEdition3.lean/declarations/hypercube-adjacencymatrix.md) | 121 | `declaration-track:039e17153e6a6f4e33e2ac70d22594c136aabc997025bc2ceea08209f4241160` |
| 21 | `def` | [Hypercube.boundaryEdgeMatrix](../../../../../ComputerScience/AlgorithmsInComputerScience/HypercubeNamespacedEdition3.lean/declarations/hypercube-boundaryedgematrix.md) | 134 | `declaration-track:b2bc2547ccb73752934534765aaec3a59513fbfb1a23b966a140d91507bb08c3` |
| 22 | `def` | [Hypercube.edgeChange](../../../../../ComputerScience/AlgorithmsInComputerScience/HypercubeNamespacedEdition3.lean/declarations/hypercube-edgechange.md) | 143 | `declaration-track:4888050bbef576d1e518a32246feb46cdc53d0f6a85e9c968296fb2f043cde1d` |
| 23 | `def` | [Hypercube.influenceCount](../../../../../ComputerScience/AlgorithmsInComputerScience/HypercubeNamespacedEdition3.lean/declarations/hypercube-influencecount.md) | 154 | `declaration-track:7402e7c1b78d149db862b2fca38a036ad5e2aff08371ef07797a48ee3aecd55f` |
| 24 | `def` | [Hypercube.influenceVector](../../../../../ComputerScience/AlgorithmsInComputerScience/HypercubeNamespacedEdition3.lean/declarations/hypercube-influencevector.md) | 161 | `declaration-track:7eaad66c11ba7e496d99fc5d25e143572e71e763281dc18db89228dee8bdfd15` |
| 25 | `def` | [Hypercube.directedBoundaryCount](../../../../../ComputerScience/AlgorithmsInComputerScience/HypercubeNamespacedEdition3.lean/declarations/hypercube-directedboundarycount.md) | 166 | `declaration-track:7431bd5f4dfb524d54e7462955d251b06b12e0dbf1fbd2ab8717ed88ee7c9e46` |
| 26 | `def` | [Hypercube.grayBit](../../../../../ComputerScience/AlgorithmsInComputerScience/HypercubeNamespacedEdition3.lean/declarations/hypercube-graybit.md) | 173 | `declaration-track:0ed6d7b15d880f614ffb459f5afe136fbfd593cb3ad68a1dafe769624113718e` |
| 27 | `def` | [Hypercube.grayPoint](../../../../../ComputerScience/AlgorithmsInComputerScience/HypercubeNamespacedEdition3.lean/declarations/hypercube-graypoint.md) | 183 | `declaration-track:4af1d518d28dd0dac1fee629bb4dc82c5adc442a3566294ce3cf0f0d153b30d0` |
| 28 | `def` | [Hypercube.grayAxis](../../../../../ComputerScience/AlgorithmsInComputerScience/HypercubeNamespacedEdition3.lean/declarations/hypercube-grayaxis.md) | 187 | `declaration-track:a0cca0d3642b16e5d972ee431de3b884b49d28a9cc919c283890c142ae42a322` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=63450bd3e96ff80ca4c7280ff16fdf1585306ec935cc933da992db30436c7c7b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant90c22871bb16fb8424ce8de3fcd9f15b8e6c1979b9351c0d7ec4b88c56f1589e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant90c22871bb16fb8424ce8de3fcd9f15b8e6c1979b9351c0d7ec4b88c56f1589e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
