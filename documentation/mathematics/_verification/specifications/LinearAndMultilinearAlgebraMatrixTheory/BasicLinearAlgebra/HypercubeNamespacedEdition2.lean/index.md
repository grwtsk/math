# Verification target: Hypercube Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0fcba36c249dda4aefb5a6fdc745acc757eaa19",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0fcba36c249dda4aefb5a6fdc745acc757eaa19`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Matrix` — import line 6; external provider; requires a separately pinned dependency.
- `Boolean.Cube.ListTools` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Hypercube.Point](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-point.md) | 17 | `declaration-track:38c36b8504d06a18cbfd5205267b6a8d735e91559ef6b1282615a251afba02b1` |
| 2 | `abbrev` | [Hypercube.Function](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-function.md) | 21 | `declaration-track:d2212bd74c4862d1e0af27970cd155d343d63c7f4038df7d3e8e385edfa798ce` |
| 3 | `abbrev` | [Hypercube.ScalarFunction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-scalarfunction.md) | 29 | `declaration-track:8d581edd10735546e319604b9819a9594907fbd1a05dbec0e0bd366e5536ff01` |
| 4 | `def` | [Hypercube.bxor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-bxor.md) | 33 | `declaration-track:beb60737075c1348f5ef7990dd3a43b66c17e12638db5846ad06aad0d4efd817` |
| 5 | `def` | [Hypercube.boolDiff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-booldiff.md) | 40 | `declaration-track:a7af0ba9181397f7755bf3575e5806cca9e35f2bc791f68b474e6f7f5b732932` |
| 6 | `def` | [Hypercube.bitAtNat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-bitatnat.md) | 44 | `declaration-track:8768089ed4b5f6f68ee6801fad73744cbc5c1eda552363e355f0b2b37064ddac` |
| 7 | `def` | [Hypercube.tableBit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-tablebit.md) | 53 | `declaration-track:99f6b62202390c61589ce73ef0512a6603474137f20a4ad9f53bec8394c4a645` |
| 8 | `def` | [Hypercube.pointOfIndex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-pointofindex.md) | 57 | `declaration-track:4c27f5319b3b47715b72e12b3c3720a2ce0b185335a32979d00cb51c810540e7` |
| 9 | `def` | [Hypercube.dropLast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-droplast.md) | 61 | `declaration-track:1fc070f58343fa7e4a0ad4e4b04a19e1330e962493feb6b05e51309a92b030a7` |
| 10 | `def` | [Hypercube.last](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-last.md) | 67 | `declaration-track:7bd5cf8f32af7ffdad217494abe194d6a2a3f36f668355cfd143a744a65e80f8` |
| 11 | `def` | [Hypercube.extend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-extend.md) | 73 | `declaration-track:341fcc963c21fec790e82dd713ab8f07fb26ba369ac85ea37d95e68f2248f595` |
| 12 | `theorem` | [Hypercube.dropLast_extend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-droplast-extend.md) | 83 | `result-track:8fa6b02d9efa5b199880cc591b8d6a0bf2d0f1097397f0edb7293ce5645b18c3` |
| 13 | `theorem` | [Hypercube.last_extend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-last-extend.md) | 90 | `result-track:f41e2ae7c61b09d5486ec3b95fd93aff0b021dc00c6c9abca4f943548024ca42` |
| 14 | `def` | [Hypercube.vertices](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-vertices.md) | 99 | `declaration-track:7600d3398519b514837f43c05dec29e4140622ae8ae923f8af00f6fa4e3bea5c` |
| 15 | `theorem` | [Hypercube.vertices_length](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-vertices-length.md) | 105 | `result-track:ac6676be6d4d8202281d072dd2d3d0c1f762bc28800633d91faecc4a48eda208` |
| 16 | `def` | [Hypercube.coordinates](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-coordinates.md) | 125 | `declaration-track:7863c4ec33212e26d8f1afe9f62d076f957f01a840e5ccb1672c43ef8ff465ac` |
| 17 | `def` | [Hypercube.spinOfBool](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-spinofbool.md) | 129 | `declaration-track:9601a202b45ac1db4945bf502b437bbe0494d4921d48b756581ced6a2229429e` |
| 18 | `def` | [Hypercube.intOfBool](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-intofbool.md) | 134 | `declaration-track:b14db8755d1cf77c01c5ba670ea691f2084a62bf099eb2f6cce45b165e433c3d` |
| 19 | `def` | [Hypercube.spinCoordinates](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-spincoordinates.md) | 139 | `declaration-track:17df8287d019bba7d6bde216198b8d99f05b4be1744382900a3403d4f9981366` |
| 20 | `def` | [Hypercube.zeroOneCoordinates](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-zeroonecoordinates.md) | 143 | `declaration-track:bf855af5f74c3049b5227add47a4a571f65c446fa124cfb08b6a84951d64eae4` |
| 21 | `def` | [Hypercube.flip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-flip.md) | 147 | `declaration-track:1e5e3bb5d25bd74a84521e4be41a07ffda4d105e85942a7ef4ccecaa612d221b` |
| 22 | `theorem` | [Hypercube.flip_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-flip-same.md) | 155 | `result-track:cd9a2b8b5d74452be4ad4a61185758847ee21ecb2970382b1c947abdf4942f20` |
| 23 | `theorem` | [Hypercube.flip_other](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-flip-other.md) | 159 | `result-track:34b8a6e483caf0b9fd8711700dbfd55651fb073cfc71704e9bd22042be2d264f` |
| 24 | `theorem` | [Hypercube.eq_of_dropLast_eq_last_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-eq-of-droplast-eq-last-eq.md) | 164 | `result-track:eaf9ae11ecc3dd0696ba491da917c03f6d4ce95f5ef9370615a01106cb3cfb46` |
| 25 | `def` | [Hypercube.pointEq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-pointeq.md) | 181 | `declaration-track:4acb6b67126aebeacc5642e36b16db8c028ebc6ae9013883907d2281410b6a96` |
| 26 | `def` | [Hypercube.hammingDistance](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-hammingdistance.md) | 187 | `declaration-track:62f14e16f1e1f7b905ad39982e3183fd177c513e0ea866a30a2f5bdb947a1473` |
| 27 | `def` | [Hypercube.adjacencyMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-adjacencymatrix.md) | 194 | `declaration-track:3204e3540831eae1869a3546734baf93fe0782e6929c863524e6e43856aecfe6` |
| 28 | `def` | [Hypercube.boundaryEdgeMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-boundaryedgematrix.md) | 207 | `declaration-track:bb02b57a17952d02fea62a2577c3871f55b4c5d2db751be6af0dac9454338314` |
| 29 | `def` | [Hypercube.edgeChange](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-edgechange.md) | 216 | `declaration-track:dec493882f6c9f152b83fbe60004ff7b5187b7d2c9466d67ab3fd32fc8590c7b` |
| 30 | `def` | [Hypercube.influenceCount](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-influencecount.md) | 227 | `declaration-track:817d1489ebd8deec34cbbd8d54d8cf00c91fdb2bad5115ff73311f38ffd48126` |
| 31 | `def` | [Hypercube.influenceVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-influencevector.md) | 234 | `declaration-track:f3dd1c02f1c822da1da58ee2a99beeb11c18c53c5f3aba5c550208606ccd327f` |
| 32 | `def` | [Hypercube.directedBoundaryCount](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-directedboundarycount.md) | 239 | `declaration-track:cf8297f6402a4789904c6b1c27d9a724a32823c4fe4bf55dce98dcbe92d61edf` |
| 33 | `def` | [Hypercube.grayBit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-graybit.md) | 246 | `declaration-track:59d852ee860d58215c2f82c2efca12e29480c03a96f6727cd4bcf2a25b2928c5` |
| 34 | `def` | [Hypercube.grayPoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-graypoint.md) | 256 | `declaration-track:a398eb5dc44859543f98a8cf484a71e97e066ad960dc5fdb968d149fd64ad99a` |
| 35 | `def` | [Hypercube.grayAxis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HypercubeNamespacedEdition2.lean/declarations/hypercube-grayaxis.md) | 260 | `declaration-track:52aaaf6ef348212f768e534c9e93951132f57e290bc297f71d9de58deb5573b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c7185c23500a3c1ceafe4af06c06e85e5e7857dc394407bf99d48cd86a668c46 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
