# Verification target: GRWTSK.Topology.GeneralTopology.Piecewise.Variant8c9d956aa3bcffc7d24ff3a46da2452f60c09a595a2af0568e5d2ac74e240c0a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e86b68cd6c5744c333e5d408fe5afea34e51474",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Piecewise/Variant8c9d956aa3bcffc7d24ff3a46da2452f60c09a595a2af0568e5d2ac74e240c0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant8c9d956aa3bcffc7d24ff3a46da2452f60c09a595a2af0568e5d2ac74e240c0a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant8c9d956aa3bcffc7d24ff3a46da2452f60c09a595a2af0568e5d2ac74e240c0a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e86b68cd6c5744c333e5d408fe5afea34e51474`.

Source path: `GRWTSK/Topology/GeneralTopology/Piecewise/Variant8c9d956aa3bcffc7d24ff3a46da2452f60c09a595a2af0568e5d2ac74e240c0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Piecewise/Variant8c9d956aa3bcffc7d24ff3a46da2452f60c09a595a2af0568e5d2ac74e240c0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuousWithinAt_update_same](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant8c9d956aa3bcffc7d24ff3a46da2452f60c09a595a2af0568e5d2ac74e240c0a.lean/declarations/continuouswithinat-update-same--0689088fb7370d8cf258d649.md) | 25 | `result-track:0689088fb7370d8cf258d6491efb0d6a311d2ee2ebc17306d948f52a6194c6ba` |
| 2 | `theorem` | [continuousAt_update_same](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant8c9d956aa3bcffc7d24ff3a46da2452f60c09a595a2af0568e5d2ac74e240c0a.lean/declarations/continuousat-update-same--329492fad065294aecac255b.md) | 35 | `result-track:329492fad065294aecac255b250434e247d88f12ea502fdbc1072ff0a2988554` |
| 3 | `theorem` | [ContinuousOn.if'](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant8c9d956aa3bcffc7d24ff3a46da2452f60c09a595a2af0568e5d2ac74e240c0a.lean/declarations/continuouson-if--1f78627ec1f4719382c494f7.md) | 39 | `result-track:1f78627ec1f4719382c494f74d1c83d2045673be861ae5364623b75c4ffa942f` |
| 4 | `theorem` | [ContinuousOn.piecewise'](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant8c9d956aa3bcffc7d24ff3a46da2452f60c09a595a2af0568e5d2ac74e240c0a.lean/declarations/continuouson-piecewise--dbef43ad70b8572632e1e8db.md) | 65 | `result-track:dbef43ad70b8572632e1e8dbdeebf6c23215277eacd7583801025e9e55ca5d56` |
| 5 | `theorem` | [ContinuousOn.if](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant8c9d956aa3bcffc7d24ff3a46da2452f60c09a595a2af0568e5d2ac74e240c0a.lean/declarations/continuouson-if--5434c07025b3b27903db1f6d.md) | 72 | `result-track:5434c07025b3b27903db1f6d087411340bfb3d18237d403c2ded40b9af17160e` |
| 6 | `theorem` | [ContinuousOn.piecewise](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant8c9d956aa3bcffc7d24ff3a46da2452f60c09a595a2af0568e5d2ac74e240c0a.lean/declarations/continuouson-piecewise--442fe965d5627712a951df51.md) | 91 | `result-track:442fe965d5627712a951df51ed34d730ff53b5a80ac60efc4505ca79c865767f` |
| 7 | `theorem` | [continuous_if'](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant8c9d956aa3bcffc7d24ff3a46da2452f60c09a595a2af0568e5d2ac74e240c0a.lean/declarations/continuous-if--f4b11f8df74ba6210b086148.md) | 96 | `result-track:f4b11f8df74ba6210b08614853f1a8eee77c2dc85992d376baa1679135c46a45` |
| 8 | `theorem` | [continuous_if](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant8c9d956aa3bcffc7d24ff3a46da2452f60c09a595a2af0568e5d2ac74e240c0a.lean/declarations/continuous-if--89fbc1b39c06e5635c56c536.md) | 104 | `result-track:89fbc1b39c06e5635c56c53608065307055307a74d60f59fb2a0cecb38d20ade` |
| 9 | `theorem` | [Continuous.if](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant8c9d956aa3bcffc7d24ff3a46da2452f60c09a595a2af0568e5d2ac74e240c0a.lean/declarations/continuous-if--ed5c622f4a18ceb5dd67ab2f.md) | 111 | `result-track:ed5c622f4a18ceb5dd67ab2f3563f367b359d420acf3417e7a3ca5693f79342f` |
| 10 | `theorem` | [continuous_if_const](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant8c9d956aa3bcffc7d24ff3a46da2452f60c09a595a2af0568e5d2ac74e240c0a.lean/declarations/continuous-if-const--33f2f31c3e3e59894a6a180e.md) | 116 | `result-track:33f2f31c3e3e59894a6a180ea0acc31c4d413dee97e8f741e6162e48ea7b632d` |
| 11 | `theorem` | [Continuous.if_const](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant8c9d956aa3bcffc7d24ff3a46da2452f60c09a595a2af0568e5d2ac74e240c0a.lean/declarations/continuous-if-const--0657e4c666f0d71230d09c50.md) | 121 | `result-track:0657e4c666f0d71230d09c508074f6b2a1539146a639a82781919dd1b0aa2c32` |
| 12 | `theorem` | [continuous_piecewise](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant8c9d956aa3bcffc7d24ff3a46da2452f60c09a595a2af0568e5d2ac74e240c0a.lean/declarations/continuous-piecewise--5eaba8f451afb7d1c768c35b.md) | 125 | `result-track:5eaba8f451afb7d1c768c35ba2c70ca84609e4ee3c7a32217415382f60bc229b` |
| 13 | `theorem` | [Continuous.piecewise](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant8c9d956aa3bcffc7d24ff3a46da2452f60c09a595a2af0568e5d2ac74e240c0a.lean/declarations/continuous-piecewise--33d54bb582871b5f827d9c72.md) | 130 | `result-track:33d54bb582871b5f827d9c72f3b5bd0f78a625052bc12732b3298364ca70095e` |
| 14 | `theorem` | [IsOpen.ite'](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant8c9d956aa3bcffc7d24ff3a46da2452f60c09a595a2af0568e5d2ac74e240c0a.lean/declarations/isopen-ite--aacdd04a00dedaedf18e5d96.md) | 135 | `result-track:aacdd04a00dedaedf18e5d96982f3eead774305eb4a76b9caf9a6d21b18e1b0e` |
| 15 | `theorem` | [IsOpen.ite](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant8c9d956aa3bcffc7d24ff3a46da2452f60c09a595a2af0568e5d2ac74e240c0a.lean/declarations/isopen-ite--845c5737aae7ddd0376fdb4a.md) | 144 | `result-track:845c5737aae7ddd0376fdb4a07fce1f7429f7d0db1d5410e1ff60a34c24850cb` |
| 16 | `theorem` | [ite_inter_closure_eq_of_inter_frontier_eq](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant8c9d956aa3bcffc7d24ff3a46da2452f60c09a595a2af0568e5d2ac74e240c0a.lean/declarations/ite-inter-closure-eq-of-inter-frontier-eq--5d4395e8ddb2b47e6ab26423.md) | 148 | `result-track:5d4395e8ddb2b47e6ab2642362b1b33ec44a18897af9455c8ffdb619d0b0826d` |
| 17 | `theorem` | [ite_inter_closure_compl_eq_of_inter_frontier_eq](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant8c9d956aa3bcffc7d24ff3a46da2452f60c09a595a2af0568e5d2ac74e240c0a.lean/declarations/ite-inter-closure-compl-eq-of-inter-frontier-eq--1c01273ac9b921c09953651e.md) | 153 | `result-track:1c01273ac9b921c09953651e7d7d3f165623898171ebd305ff45f27a7b6c1546` |
| 18 | `theorem` | [continuousOn_piecewise_ite'](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant8c9d956aa3bcffc7d24ff3a46da2452f60c09a595a2af0568e5d2ac74e240c0a.lean/declarations/continuouson-piecewise-ite--ab5ed08287519e4766f75780.md) | 158 | `result-track:ab5ed08287519e4766f75780212b1cfdf4275de1df5835dee229fe87af51a91f` |
| 19 | `theorem` | [continuousOn_piecewise_ite](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variant8c9d956aa3bcffc7d24ff3a46da2452f60c09a595a2af0568e5d2ac74e240c0a.lean/declarations/continuouson-piecewise-ite--02e4671893980368d4eed492.md) | 167 | `result-track:02e4671893980368d4eed492fa478abc6142d7aff133a0b9214c308fd6d320e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
