# Verification target: Vector Mem Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80665e84571f035e07abd6a137ceb1542f01b3fb",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant95a9bb7bafa2d0216e71c5b4e8eed0318ed53ff994630992aa08467db8926ec4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorMemNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorMemNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80665e84571f035e07abd6a137ceb1542f01b3fb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant95a9bb7bafa2d0216e71c5b4e8eed0318ed53ff994630992aa08467db8926ec4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant95a9bb7bafa2d0216e71c5b4e8eed0318ed53ff994630992aa08467db8926ec4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [get_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorMemNamespacedPublic.lean/declarations/get-mem.md) | 37 | `result-track:3a91d3a2773938b249c216c5f45374e9e30376e12a98d61b3ebcce54322e327f` |
| 2 | `theorem` | [mem_iff_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorMemNamespacedPublic.lean/declarations/mem-iff-get.md) | 39 | `result-track:ce717021dda320444df655731c73415c16098e54d83c7ade6080f5a0016b811a` |
| 3 | `theorem` | [notMem_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorMemNamespacedPublic.lean/declarations/notmem-nil.md) | 45 | `result-track:1bc156f3084c26e51fc597e3d74c7c6e86b1bcc8fa968e5148c7169cd2826df6` |
| 4 | `theorem` | [notMem_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorMemNamespacedPublic.lean/declarations/notmem-zero.md) | 48 | `result-track:be672031391366597d8a2e539ce459c3634b3afbbf4073ec8273ca2e8d5a83ad` |
| 5 | `theorem` | [mem_cons_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorMemNamespacedPublic.lean/declarations/mem-cons-iff.md) | 51 | `result-track:f115ecae907ca5cba9700821aae4b14677ae8f8e581d630f81073cbf22867b71` |
| 6 | `theorem` | [mem_succ_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorMemNamespacedPublic.lean/declarations/mem-succ-iff.md) | 54 | `result-track:ae28af1b8ffad112cb8e084a472892f202d071c43f8b4f83d611bbf71d5ef4c3` |
| 7 | `theorem` | [mem_cons_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorMemNamespacedPublic.lean/declarations/mem-cons-self.md) | 58 | `result-track:d622aa4fa76522921ebde513ecf0481b9cc461a25d0abbbc4b0bd2bf9c33ea2c` |
| 8 | `theorem` | [head_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorMemNamespacedPublic.lean/declarations/head-mem.md) | 62 | `result-track:31b55c9466335bb313438b84eee8a1051533cdf7c8f3c41701f8c6385a6bc2e2` |
| 9 | `theorem` | [mem_cons_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorMemNamespacedPublic.lean/declarations/mem-cons-of-mem.md) | 65 | `result-track:97c57c43abab04337ff7d79da4165c8596b7390bffc01c2bc29b1875c710ed44` |
| 10 | `theorem` | [mem_of_mem_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorMemNamespacedPublic.lean/declarations/mem-of-mem-tail.md) | 68 | `result-track:9a16b63f75ba90bb54ec27f345801b1c277ce9f2679dc6ff11827f27c02237fd` |
| 11 | `theorem` | [mem_map_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorMemNamespacedPublic.lean/declarations/mem-map-iff.md) | 73 | `result-track:e8909183c4e39d3bed65c9eef5c6ac3ec14d71da5d80ae71de9c6a492a1795bc` |
| 12 | `theorem` | [notMem_map_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorMemNamespacedPublic.lean/declarations/notmem-map-zero.md) | 77 | `result-track:52d9e432d10a34ccdd170c949b1913aef34c354cc566e78ebaac4d0f79c5d01c` |
| 13 | `theorem` | [mem_map_succ_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorMemNamespacedPublic.lean/declarations/mem-map-succ-iff.md) | 80 | `result-track:9b526cc68c58460bd95dbb7648d3991755f653c81eb7f0ceeabe4c41959e7724` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4e54e6efed012bcb9974571f11c18a37bd2bd9f2bcc3ec9e19b471ef801dfa82 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant95a9bb7bafa2d0216e71c5b4e8eed0318ed53ff994630992aa08467db8926ec4.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mem/Variant95a9bb7bafa2d0216e71c5b4e8eed0318ed53ff994630992aa08467db8926ec4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
