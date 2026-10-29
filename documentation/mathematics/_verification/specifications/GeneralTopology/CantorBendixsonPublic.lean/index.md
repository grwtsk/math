# Verification target: Cantor Bendixson Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4585fb62d56d9ab18c619dea66e78d695f347f09",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CantorBendixson/Variant98f822458600dd9d2d8640360e6ab864684941fc4139b7287f7c93a62fda374e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/CantorBendixsonPublic.lean/index.md) · [Full source](../../../../GeneralTopology/CantorBendixsonPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4585fb62d56d9ab18c619dea66e78d695f347f09`.

Source path: `GRWTSK/Topology/GeneralTopology/CantorBendixson/Variant98f822458600dd9d2d8640360e6ab864684941fc4139b7287f7c93a62fda374e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CantorBendixson/Variant98f822458600dd9d2d8640360e6ab864684941fc4139b7287f7c93a62fda374e.lean.json)

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
| 1 | `def` | [iteratedDerivedSet](../../../../GeneralTopology/CantorBendixsonPublic.lean/declarations/iteratedderivedset.md) | 69 | `declaration-track:9fca272942513ee6d074ec5730834307d06c82ffcf421a5808a1e3250885c347` |
| 2 | `theorem` | [iteratedDerivedSet_zero](../../../../GeneralTopology/CantorBendixsonPublic.lean/declarations/iteratedderivedset-zero.md) | 78 | `result-track:757ee49100cf8db5eb83abf03f57069abc6cff90ecf0c99779326b140d72427f` |
| 3 | `theorem` | [iteratedDerivedSet_succ](../../../../GeneralTopology/CantorBendixsonPublic.lean/declarations/iteratedderivedset-succ.md) | 83 | `result-track:bbb788dede34eaa11969c4fc5eeecc796d199bbc5f26db63e51a8fa5103de669` |
| 4 | `theorem` | [iteratedDerivedSet_limit](../../../../GeneralTopology/CantorBendixsonPublic.lean/declarations/iteratedderivedset-limit.md) | 88 | `result-track:80b7372128dc7a26665805aeded6fecc23a8c707d1a7151d286dfb6f7412981d` |
| 5 | `theorem` | [iteratedDerivedSet_constant_iff_preperfect](../../../../GeneralTopology/CantorBendixsonPublic.lean/declarations/iteratedderivedset-constant-iff-preperfect.md) | 94 | `result-track:edc40aae73769aa033480f5f00087bd3f8996eb13bcda81335bcaa1702030175` |
| 6 | `theorem` | [isClosed_iteratedDerivedSet](../../../../GeneralTopology/CantorBendixsonPublic.lean/declarations/isclosed-iteratedderivedset.md) | 100 | `result-track:9f98496075f99d09dc0dec8ab77b3e3b7e552bded302981acaf6aff7298f313f` |
| 7 | `theorem` | [iteratedDerivedSet_antitone](../../../../GeneralTopology/CantorBendixsonPublic.lean/declarations/iteratedderivedset-antitone.md) | 111 | `result-track:0c7038637ee6734a5d93284377a02737aae55e808d8565a831e657f22d6b7090` |
| 8 | `theorem` | [iteratedDerivedSet_mono](../../../../GeneralTopology/CantorBendixsonPublic.lean/declarations/iteratedderivedset-mono.md) | 114 | `result-track:4271a5258253f4c167c6192eed5028bf88d7b277eb4ed958358ee0c3be12238b` |
| 9 | `theorem` | [mem_fixedPoints_of_iteratedDerivedSet_succ_eq](../../../../GeneralTopology/CantorBendixsonPublic.lean/declarations/mem-fixedpoints-of-iteratedderivedset-succ-eq.md) | 120 | `result-track:e36c55886d46e46c57da2b36aa6bd028adfee959ed57db5fb9a885afabf39f1d` |
| 10 | `theorem` | [iteratedDerivedSet_mem_fixedPoints](../../../../GeneralTopology/CantorBendixsonPublic.lean/declarations/iteratedderivedset-mem-fixedpoints.md) | 125 | `result-track:6c63b043809476d80d87e087320ddf2a1e56dae2d08e47f42187a1dd01b7f01f` |
| 11 | `def` | [perfectKernel](../../../../GeneralTopology/CantorBendixsonPublic.lean/declarations/perfectkernel.md) | 132 | `declaration-track:87612010fc92924b57427b1d44814aebbb2cd5477e4026bf533a2606d9de83ef` |
| 12 | `theorem` | [perfectKernel_subset_iteratedDerivedSet](../../../../GeneralTopology/CantorBendixsonPublic.lean/declarations/perfectkernel-subset-iteratedderivedset.md) | 135 | `result-track:1cbf449d3e5212f05e75c58cff2d2fd5889c33f6fa4bc86edfba3600e059405f` |
| 13 | `theorem` | [perfectKernel_subset](../../../../GeneralTopology/CantorBendixsonPublic.lean/declarations/perfectkernel-subset.md) | 139 | `result-track:a8880c60c7c1a6e9d59ea84edf14f2d3a1241c0bd0f6eb05b5dab4d6cadceb37` |
| 14 | `theorem` | [perfectKernel_mono](../../../../GeneralTopology/CantorBendixsonPublic.lean/declarations/perfectkernel-mono.md) | 143 | `result-track:416e5d5a43da8871c2bd44557bd9ec4362acd09a1c713cdd71cb43ec44b8922b` |
| 15 | `theorem` | [isClosed_perfectKernel](../../../../GeneralTopology/CantorBendixsonPublic.lean/declarations/isclosed-perfectkernel.md) | 147 | `result-track:9e4d1c6fdd7aa74bdf10a6974c85e997c624cb199b68dfaee4b6703cb6fde46e` |
| 16 | `theorem` | [perfectKernel_empty](../../../../GeneralTopology/CantorBendixsonPublic.lean/declarations/perfectkernel-empty.md) | 152 | `result-track:ee730d9e06f2e1a922b1876b4bbff29ba1dafa6e4273013ea60d491efff31380` |
| 17 | `theorem` | [perfectKernel_eq_iteratedDerivedSet_of_mem_fixedPoints](../../../../GeneralTopology/CantorBendixsonPublic.lean/declarations/perfectkernel-eq-iteratedderivedset-of-mem-fixedpoints.md) | 157 | `result-track:8927b60e778b11b6ced965357fd1c59f0e61a5434249f0a52ff65a59b400420a` |
| 18 | `theorem` | [_root_.Perfect.subset_perfectKernel](../../../../GeneralTopology/CantorBendixsonPublic.lean/declarations/root-perfect-subset-perfectkernel.md) | 167 | `result-track:49b83115bc1a5915c0c6a218a7d1c072267e47ce1a8cdcc6b2697de486393f20` |
| 19 | `theorem` | [perfect_perfectKernel](../../../../GeneralTopology/CantorBendixsonPublic.lean/declarations/perfect-perfectkernel.md) | 175 | `result-track:0b6aaa2da5ae7537ff647b24dcb655422dae976e7697db8d7579347a2a4d3cbe` |
| 20 | `theorem` | [perfectKernel_idem](../../../../GeneralTopology/CantorBendixsonPublic.lean/declarations/perfectkernel-idem.md) | 184 | `result-track:8edb38ff9f53ec28d0a87e479e9fe6bc701444b57e583254a57a8bd16c0ba441` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dffc76293d88a348fa2d417ede6475117b2ec60167c26a24c71ddf9198273f53 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/CantorBendixson/Variant98f822458600dd9d2d8640360e6ab864684941fc4139b7287f7c93a62fda374e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/CantorBendixson/Variant98f822458600dd9d2d8640360e6ab864684941fc4139b7287f7c93a62fda374e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
