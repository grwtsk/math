# Verification target: GRWTSK.Topology.GeneralTopology.Torsor.Variant42c02ec624c304f5cdd09d7a7e7e550ce473d297c9897975be447a23e847d599

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c1e1a1e338ca4b89906d3a9afb883acabe8e838",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Torsor/Variant42c02ec624c304f5cdd09d7a7e7e550ce473d297c9897975be447a23e847d599.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant42c02ec624c304f5cdd09d7a7e7e550ce473d297c9897975be447a23e847d599.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant42c02ec624c304f5cdd09d7a7e7e550ce473d297c9897975be447a23e847d599.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c1e1a1e338ca4b89906d3a9afb883acabe8e838`.

Source path: `GRWTSK/Topology/GeneralTopology/Torsor/Variant42c02ec624c304f5cdd09d7a7e7e550ce473d297c9897975be447a23e847d599.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Torsor/Variant42c02ec624c304f5cdd09d7a7e7e550ce473d297c9897975be447a23e847d599.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Group.Pointwise` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsTopologicalAddTorsor](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant42c02ec624c304f5cdd09d7a7e7e550ce473d297c9897975be447a23e847d599.lean/declarations/istopologicaladdtorsor--2e807d8fc6148c4841f6e6cd.md) | 30 | `declaration-track:2e807d8fc6148c4841f6e6cdeb32a48b9d7853f38403577b39459b5ed7c0ab66` |
| 2 | `class` | [IsTopologicalTorsor](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant42c02ec624c304f5cdd09d7a7e7e550ce473d297c9897975be447a23e847d599.lean/declarations/istopologicaltorsor--80dda63626d693ae5682475c.md) | 36 | `declaration-track:80dda63626d693ae5682475c6ad21eee8fe41d648bdfd0f94df49a71109774d5` |
| 3 | `theorem` | [Filter.Tendsto.sdiv](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant42c02ec624c304f5cdd09d7a7e7e550ce473d297c9897975be447a23e847d599.lean/declarations/filter-tendsto-sdiv--612d6ebb272f8445b779386b.md) | 51 | `result-track:612d6ebb272f8445b779386be8e0cfebc33ed29ef90c65e76749116306019aeb` |
| 4 | `theorem` | [Continuous.sdiv](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant42c02ec624c304f5cdd09d7a7e7e550ce473d297c9897975be447a23e847d599.lean/declarations/continuous-sdiv--f65303e9936c20a80f915e2b.md) | 58 | `result-track:f65303e9936c20a80f915e2b679fcc506e66ebd5f71855ccfafec32a4bd012c4` |
| 5 | `theorem` | [ContinuousAt.sdiv](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant42c02ec624c304f5cdd09d7a7e7e550ce473d297c9897975be447a23e847d599.lean/declarations/continuousat-sdiv--7a0c082f87affd8d8edc6409.md) | 63 | `result-track:7a0c082f87affd8d8edc6409ac8a8fa1216d3bc77638ab439760834bc8bbc8f9` |
| 6 | `theorem` | [ContinuousWithinAt.sdiv](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant42c02ec624c304f5cdd09d7a7e7e550ce473d297c9897975be447a23e847d599.lean/declarations/continuouswithinat-sdiv--714af3dd6f3e4055d34135a3.md) | 69 | `result-track:714af3dd6f3e4055d34135a3d7bd977c0397f879d2268283779057d2b1ed2403` |
| 7 | `theorem` | [ContinuousOn.sdiv](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant42c02ec624c304f5cdd09d7a7e7e550ce473d297c9897975be447a23e847d599.lean/declarations/continuouson-sdiv--5cb490cb57f67335fad9a670.md) | 75 | `result-track:5cb490cb57f67335fad9a670f32db7abec644fc449de09c267ff8feffbad82a1` |
| 8 | `theorem` | [IsTopologicalTorsor.to_isTopologicalGroup](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant42c02ec624c304f5cdd09d7a7e7e550ce473d297c9897975be447a23e847d599.lean/declarations/istopologicaltorsor-to-istopologicalgroup--2f5a07dac3d4953dc734d326.md) | 85 | `result-track:2f5a07dac3d4953dc734d32671eee3b4cef3f5f8f0dffd8f7b72aad12f04903f` |
| 9 | `def` | [Homeomorph.smulConst](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant42c02ec624c304f5cdd09d7a7e7e550ce473d297c9897975be447a23e847d599.lean/declarations/homeomorph-smulconst--43ad4d4e3861412d80e142c2.md) | 101 | `declaration-track:43ad4d4e3861412d80e142c20dff39f8d739e567a9dfcf1c3cc5b6a88d7d8341` |
| 10 | `def` | [Homeomorph.constSDiv](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant42c02ec624c304f5cdd09d7a7e7e550ce473d297c9897975be447a23e847d599.lean/declarations/homeomorph-constsdiv--25fe5526750abda0a08899e8.md) | 107 | `declaration-track:25fe5526750abda0a08899e88a12595dcd9e75d9d884ea29a571e385d65016e4` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant42c02ec624c304f5cdd09d7a7e7e550ce473d297c9897975be447a23e847d599.lean/declarations/instance--ee832585233ffbe30f3cf11f.md) | 114 | `declaration-track:ee832585233ffbe30f3cf11f72ea2547d9dd377aba28c8e3d7b563ad39609faa` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant42c02ec624c304f5cdd09d7a7e7e550ce473d297c9897975be447a23e847d599.lean/declarations/instance--077dc7b26ded7901482404dd.md) | 119 | `declaration-track:077dc7b26ded7901482404ddade311d00738301d7f15cefd439b883c86aa558c` |
| 13 | `def` | [Homeomorph.pointReflection](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant42c02ec624c304f5cdd09d7a7e7e550ce473d297c9897975be447a23e847d599.lean/declarations/homeomorph-pointreflection--c9fc03c20c8a41a41115414c.md) | 125 | `declaration-track:c9fc03c20c8a41a41115414c211d497b283870caefbf8dd6da110455939b8496` |
| 14 | `lemma` | [Homeomorph.coe_pointReflection](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant42c02ec624c304f5cdd09d7a7e7e550ce473d297c9897975be447a23e847d599.lean/declarations/homeomorph-coe-pointreflection--b5d1e741b494dbdc42b18dd3.md) | 130 | `result-track:b5d1e741b494dbdc42b18dd39d50f67c9e695fd79e030a2e5137f21f7376a2c8` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant42c02ec624c304f5cdd09d7a7e7e550ce473d297c9897975be447a23e847d599.lean/declarations/instance--12442ce53c064011f88fea13.md) | 141 | `declaration-track:12442ce53c064011f88fea13d3adb4b2151bbf3d9c4d8cd41253d8f23db31a38` |
| 16 | `instance` | [instIsTopologicalTorsorProd](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant42c02ec624c304f5cdd09d7a7e7e550ce473d297c9897975be447a23e847d599.lean/declarations/instistopologicaltorsorprod--2e82c51acdbdf938c8c742fb.md) | 156 | `declaration-track:2e82c51acdbdf938c8c742fb3fb4aecdaf79709682c610d472a9b1c393d0de4c` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant42c02ec624c304f5cdd09d7a7e7e550ce473d297c9897975be447a23e847d599.lean/declarations/instance--e16c4ed4922a90462a86243f.md) | 170 | `declaration-track:e16c4ed4922a90462a86243fa9532a9c892bca99381505d130aa525564d8d7e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
