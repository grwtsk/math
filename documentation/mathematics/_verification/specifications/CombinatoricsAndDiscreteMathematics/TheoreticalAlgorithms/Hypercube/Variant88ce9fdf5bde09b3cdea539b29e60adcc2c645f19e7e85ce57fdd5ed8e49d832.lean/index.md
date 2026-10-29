# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hypercube.Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832

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

[Module and every result](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/index.md) · [Full source](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/source.md)

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

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Hypercube.Point](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-point--38c36b8504d06a18cbfd5205.md) | 17 | `declaration-track:38c36b8504d06a18cbfd5205267b6a8d735e91559ef6b1282615a251afba02b1` |
| 2 | `abbrev` | [Hypercube.Function](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-function--d2212bd74c4862d1e0af2797.md) | 21 | `declaration-track:d2212bd74c4862d1e0af27970cd155d343d63c7f4038df7d3e8e385edfa798ce` |
| 3 | `abbrev` | [Hypercube.ScalarFunction](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-scalarfunction--8d581edd10735546e319604b.md) | 29 | `declaration-track:8d581edd10735546e319604b9819a9594907fbd1a05dbec0e0bd366e5536ff01` |
| 4 | `def` | [Hypercube.bxor](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-bxor--beb60737075c1348f5ef7990.md) | 33 | `declaration-track:beb60737075c1348f5ef7990dd3a43b66c17e12638db5846ad06aad0d4efd817` |
| 5 | `def` | [Hypercube.boolDiff](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-booldiff--a7af0ba9181397f7755bf357.md) | 40 | `declaration-track:a7af0ba9181397f7755bf3575e5806cca9e35f2bc791f68b474e6f7f5b732932` |
| 6 | `def` | [Hypercube.bitAtNat](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-bitatnat--8768089ed4b5f6f68ee6801f.md) | 44 | `declaration-track:8768089ed4b5f6f68ee6801fad73744cbc5c1eda552363e355f0b2b37064ddac` |
| 7 | `def` | [Hypercube.tableBit](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-tablebit--99f6b62202390c61589ce73e.md) | 53 | `declaration-track:99f6b62202390c61589ce73ef0512a6603474137f20a4ad9f53bec8394c4a645` |
| 8 | `def` | [Hypercube.pointOfIndex](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-pointofindex--4c27f5319b3b47715b72e12b.md) | 57 | `declaration-track:4c27f5319b3b47715b72e12b3c3720a2ce0b185335a32979d00cb51c810540e7` |
| 9 | `def` | [Hypercube.dropLast](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-droplast--1fc070f58343fa7e4a0ad4e4.md) | 61 | `declaration-track:1fc070f58343fa7e4a0ad4e4b04a19e1330e962493feb6b05e51309a92b030a7` |
| 10 | `def` | [Hypercube.last](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-last--7bd5cf8f32af7ffdad217494.md) | 67 | `declaration-track:7bd5cf8f32af7ffdad217494abe194d6a2a3f36f668355cfd143a744a65e80f8` |
| 11 | `def` | [Hypercube.extend](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-extend--341fcc963c21fec790e82dd7.md) | 73 | `declaration-track:341fcc963c21fec790e82dd713ab8f07fb26ba369ac85ea37d95e68f2248f595` |
| 12 | `theorem` | [Hypercube.dropLast_extend](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-droplast-extend--8fa6b02d9efa5b199880cc59.md) | 83 | `result-track:8fa6b02d9efa5b199880cc591b8d6a0bf2d0f1097397f0edb7293ce5645b18c3` |
| 13 | `theorem` | [Hypercube.last_extend](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-last-extend--f41e2ae7c61b09d5486ec3b9.md) | 90 | `result-track:f41e2ae7c61b09d5486ec3b95fd93aff0b021dc00c6c9abca4f943548024ca42` |
| 14 | `def` | [Hypercube.vertices](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-vertices--7600d3398519b514837f43c0.md) | 99 | `declaration-track:7600d3398519b514837f43c05dec29e4140622ae8ae923f8af00f6fa4e3bea5c` |
| 15 | `theorem` | [Hypercube.vertices_length](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-vertices-length--ac6676be6d4d8202281d072d.md) | 105 | `result-track:ac6676be6d4d8202281d072dd2d3d0c1f762bc28800633d91faecc4a48eda208` |
| 16 | `def` | [Hypercube.coordinates](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-coordinates--7863c4ec33212e26d8f1afe9.md) | 125 | `declaration-track:7863c4ec33212e26d8f1afe9f62d076f957f01a840e5ccb1672c43ef8ff465ac` |
| 17 | `def` | [Hypercube.spinOfBool](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-spinofbool--9601a202b45ac1db4945bf50.md) | 129 | `declaration-track:9601a202b45ac1db4945bf502b437bbe0494d4921d48b756581ced6a2229429e` |
| 18 | `def` | [Hypercube.intOfBool](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-intofbool--b14db8755d1cf77c01c5ba67.md) | 134 | `declaration-track:b14db8755d1cf77c01c5ba670ea691f2084a62bf099eb2f6cce45b165e433c3d` |
| 19 | `def` | [Hypercube.spinCoordinates](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-spincoordinates--17df8287d019bba7d6bde216.md) | 139 | `declaration-track:17df8287d019bba7d6bde216198b8d99f05b4be1744382900a3403d4f9981366` |
| 20 | `def` | [Hypercube.zeroOneCoordinates](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-zeroonecoordinates--bf855af5f74c3049b5227add.md) | 143 | `declaration-track:bf855af5f74c3049b5227add47a4a571f65c446fa124cfb08b6a84951d64eae4` |
| 21 | `def` | [Hypercube.flip](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-flip--1e5e3bb5d25bd74a84521e4b.md) | 147 | `declaration-track:1e5e3bb5d25bd74a84521e4be41a07ffda4d105e85942a7ef4ccecaa612d221b` |
| 22 | `theorem` | [Hypercube.flip_same](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-flip-same--cd9a2b8b5d74452be4ad4a61.md) | 155 | `result-track:cd9a2b8b5d74452be4ad4a61185758847ee21ecb2970382b1c947abdf4942f20` |
| 23 | `theorem` | [Hypercube.flip_other](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-flip-other--34b8a6e483caf0b9fd871170.md) | 159 | `result-track:34b8a6e483caf0b9fd8711700dbfd55651fb073cfc71704e9bd22042be2d264f` |
| 24 | `theorem` | [Hypercube.eq_of_dropLast_eq_last_eq](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-eq-of-droplast-eq-last-eq--eaf9ae11ecc3dd0696ba491d.md) | 164 | `result-track:eaf9ae11ecc3dd0696ba491da917c03f6d4ce95f5ef9370615a01106cb3cfb46` |
| 25 | `def` | [Hypercube.pointEq](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-pointeq--4acb6b67126aebeacc5642e3.md) | 181 | `declaration-track:4acb6b67126aebeacc5642e36b16db8c028ebc6ae9013883907d2281410b6a96` |
| 26 | `def` | [Hypercube.hammingDistance](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-hammingdistance--62f14e16f1e1f7b905ad3998.md) | 187 | `declaration-track:62f14e16f1e1f7b905ad39982e3183fd177c513e0ea866a30a2f5bdb947a1473` |
| 27 | `def` | [Hypercube.adjacencyMatrix](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-adjacencymatrix--3204e3540831eae1869a3546.md) | 194 | `declaration-track:3204e3540831eae1869a3546734baf93fe0782e6929c863524e6e43856aecfe6` |
| 28 | `def` | [Hypercube.boundaryEdgeMatrix](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-boundaryedgematrix--bb02b57a17952d02fea62a25.md) | 207 | `declaration-track:bb02b57a17952d02fea62a2577c3871f55b4c5d2db751be6af0dac9454338314` |
| 29 | `def` | [Hypercube.edgeChange](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-edgechange--dec493882f6c9f152b83fbe6.md) | 216 | `declaration-track:dec493882f6c9f152b83fbe60004ff7b5187b7d2c9466d67ab3fd32fc8590c7b` |
| 30 | `def` | [Hypercube.influenceCount](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-influencecount--817d1489ebd8deec34cbbd8d.md) | 227 | `declaration-track:817d1489ebd8deec34cbbd8d54d8cf00c91fdb2bad5115ff73311f38ffd48126` |
| 31 | `def` | [Hypercube.influenceVector](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-influencevector--f3dd1c02f1c822da1da58ee2.md) | 234 | `declaration-track:f3dd1c02f1c822da1da58ee2a99beeb11c18c53c5f3aba5c550208606ccd327f` |
| 32 | `def` | [Hypercube.directedBoundaryCount](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-directedboundarycount--cf8297f6402a4789904c6b1c.md) | 239 | `declaration-track:cf8297f6402a4789904c6b1c27d9a724a32823c4fe4bf55dce98dcbe92d61edf` |
| 33 | `def` | [Hypercube.grayBit](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-graybit--59d852ee860d58215c2f82c2.md) | 246 | `declaration-track:59d852ee860d58215c2f82c2efca12e29480c03a96f6727cd4bcf2a25b2928c5` |
| 34 | `def` | [Hypercube.grayPoint](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-graypoint--a398eb5dc44859543f98a8cf.md) | 256 | `declaration-track:a398eb5dc44859543f98a8cf484a71e97e066ad960dc5fdb968d149fd64ad99a` |
| 35 | `def` | [Hypercube.grayAxis](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean/declarations/hypercube-grayaxis--52aaaf6ef348212f768e534c.md) | 260 | `declaration-track:52aaaf6ef348212f768e534c9e93951132f57e290bc297f71d9de58deb5573b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c7185c23500a3c1ceafe4af06c06e85e5e7857dc394407bf99d48cd86a668c46 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Hypercube/Variant88ce9fdf5bde09b3cdea539b29e60adcc2c645f19e7e85ce57fdd5ed8e49d832.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
