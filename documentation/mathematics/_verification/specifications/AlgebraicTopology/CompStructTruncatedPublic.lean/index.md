# Verification target: Comp Struct Truncated Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "135cf81c5685121f8ef03bf8d3d3eaf213a39701",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CompStructTruncated/Variant25aff7c3abf7b75f8e3d37a6453a938e4992676ba95ac567746d726ca02d54e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/CompStructTruncatedPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/CompStructTruncatedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `135cf81c5685121f8ef03bf8d3d3eaf213a39701`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CompStructTruncated/Variant25aff7c3abf7b75f8e3d37a6453a938e4992676ba95ac567746d726ca02d54e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/CompStructTruncated/Variant25aff7c3abf7b75f8e3d37a6453a938e4992676ba95ac567746d726ca02d54e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Edge](../../../../AlgebraicTopology/CompStructTruncatedPublic.lean/declarations/edge.md) | 38 | `declaration-track:febd31f08c10b6de00f86c18be6af99e686ae812832291e1db4400178cbcf3ae` |
| 2 | `def` | [mk'](../../../../AlgebraicTopology/CompStructTruncatedPublic.lean/declarations/mk.md) | 52 | `declaration-track:3bf3e2d728e5f0142dd5eb884496a36dec675ed01262b07b24b4398ea0390830` |
| 3 | `lemma` | [exists_of_simplex](../../../../AlgebraicTopology/CompStructTruncatedPublic.lean/declarations/exists-of-simplex-source-edition-2.md) | 55 | `result-track:60164f9964d148f88fdd4cccf6ffa1b1f3ac527cb57ade245b299ff19d113a65` |
| 4 | `def` | [id](../../../../AlgebraicTopology/CompStructTruncatedPublic.lean/declarations/id.md) | 61 | `declaration-track:3cc38bd63321cb489df8d25f7cf4b784864e4c45deba62e5934d6849cca68249` |
| 5 | `def` | [map](../../../../AlgebraicTopology/CompStructTruncatedPublic.lean/declarations/map.md) | 68 | `declaration-track:8fa310832b11db61090b6be2c9e44bdab5f117c1d3a775bcad31fe298b1f56d6` |
| 6 | `lemma` | [map_id](../../../../AlgebraicTopology/CompStructTruncatedPublic.lean/declarations/map-id.md) | 75 | `result-track:28d58226e8ab85824d7b312d67b2e46a8cce9193b61058a529ad5d502d4b40c9` |
| 7 | `instance` | [(anonymous)](../../../../AlgebraicTopology/CompStructTruncatedPublic.lean/declarations/instance.md) | 80 | `declaration-track:3ce72639a79f4b340e0aba3a99972985b320c61d7c032a076adc764fc43f3946` |
| 8 | `structure` | [CompStruct](../../../../AlgebraicTopology/CompStructTruncatedPublic.lean/declarations/compstruct.md) | 91 | `declaration-track:de2b97eeba5f90e96de9b372bae06fbb6e47bd83f106ce0e8989be5636690a5e` |
| 9 | `lemma` | [exists_of_simplex](../../../../AlgebraicTopology/CompStructTruncatedPublic.lean/declarations/exists-of-simplex.md) | 103 | `result-track:0c21cb44a752e62156860826a248d8010b7fe0d3beca2fea52a6d670305405c9` |
| 10 | `def` | [idComp](../../../../AlgebraicTopology/CompStructTruncatedPublic.lean/declarations/idcomp.md) | 116 | `declaration-track:6dc614b1d0fbb4d9aea2331ac1307684b28514ec734e67b4485f4c81e378b8ee` |
| 11 | `def` | [compId](../../../../AlgebraicTopology/CompStructTruncatedPublic.lean/declarations/compid.md) | 130 | `declaration-track:0e77a4ab35c3edd64b3c660a7fbd721ecfe621ee3f36a301caf0fcdb1413e960` |
| 12 | `def` | [idCompId](../../../../AlgebraicTopology/CompStructTruncatedPublic.lean/declarations/idcompid.md) | 145 | `declaration-track:a42906fc1d3eaeac2b1040efecb62db06af5fe5e8d646e942d6ff44554c11ead` |
| 13 | `def` | [map](../../../../AlgebraicTopology/CompStructTruncatedPublic.lean/declarations/map-source-edition-2.md) | 153 | `declaration-track:eb67d8f4b7d2c9e8704972aa0c4a87376e544452dc0c77a2db39323ba764949e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb2d09cbc0317cbf046362ec5b94d8c4a865906d5b3d1a45cff490d1981183b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CompStructTruncated/Variant25aff7c3abf7b75f8e3d37a6453a938e4992676ba95ac567746d726ca02d54e9.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/CompStructTruncated/Variant25aff7c3abf7b75f8e3d37a6453a938e4992676ba95ac567746d726ca02d54e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
