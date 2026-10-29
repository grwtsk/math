# Verification target: Pointwise Complete Lattice Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "358097b4331965c808451d250ad7de100a70723b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variantbe68066de2017c58336fff2a6a9a926d6ca4312e485c0d6667e95b2b08694d9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticePublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `358097b4331965c808451d250ad7de100a70723b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variantbe68066de2017c58336fff2a6a9a926d6ca4312e485c0d6667e95b2b08694d9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variantbe68066de2017c58336fff2a6a9a926d6ca4312e485c0d6667e95b2b08694d9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [csSup_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticePublic.lean/declarations/cssup-one.md) | 35 | `result-track:e58545dc4598fefeb32fcd95cc9950a06d7b6931a8fe6d15a9ae802c4f846778` |
| 2 | `lemma` | [csInf_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticePublic.lean/declarations/csinf-one.md) | 36 | `result-track:6d540206f1f419626c7b2a8802b202d764f2a3af3be992b8e594e17c57671d6d` |
| 3 | `lemma` | [csSup_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticePublic.lean/declarations/cssup-inv.md) | 45 | `result-track:39329a931049e5d2d51912287fb5389014610033fa6d15b921cd09cac6bf4991` |
| 4 | `lemma` | [csInf_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticePublic.lean/declarations/csinf-inv.md) | 50 | `result-track:645389b2464bdb132c2bb2c4df10da569643dadcf1feb7ac6fc494052e3fa8b8` |
| 5 | `lemma` | [csSup_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticePublic.lean/declarations/cssup-mul.md) | 55 | `result-track:faef203b8419c11d39e08bd7099a1aac1b65305a69e585daf7fdeefa0e0207a3` |
| 6 | `lemma` | [csInf_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticePublic.lean/declarations/csinf-mul.md) | 61 | `result-track:f511e8193248c6aeac053c4720b3c91bca0363b5800ffc4dd82891e6f45c3289` |
| 7 | `lemma` | [csSup_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticePublic.lean/declarations/cssup-div.md) | 67 | `result-track:880c0656c7045c27dadaeed9660e96758ff87827f61f8778434056b5a061c0e5` |
| 8 | `lemma` | [csInf_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticePublic.lean/declarations/csinf-div.md) | 72 | `result-track:bc3fc7e4b06e0f3bc0de5a9e58aa00243bfd3ca9028c901f5a15fa204bb53543` |
| 9 | `lemma` | [sSup_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticePublic.lean/declarations/ssup-one.md) | 85 | `result-track:9ea2f25392c4f9ae60a1ab469db694e2b472be48e767598ac1c65d4981935b7d` |
| 10 | `lemma` | [sInf_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticePublic.lean/declarations/sinf-one.md) | 86 | `result-track:72aa6f11ead9f908a100a1998fa3cb4fc920eb014b3af528dc3e292b91081cbf` |
| 11 | `lemma` | [sSup_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticePublic.lean/declarations/ssup-inv.md) | 95 | `result-track:decba2e6deb4f33562df9c69500ac09772280b72f906ca685c0528402fbd468c` |
| 12 | `lemma` | [sInf_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticePublic.lean/declarations/sinf-inv.md) | 100 | `result-track:ee3d485d065d561e34fa95324edb5e9f036558ca25929940eba0fdd78191da07` |
| 13 | `lemma` | [sSup_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticePublic.lean/declarations/ssup-mul.md) | 105 | `result-track:39cbd5bbec256ace24aa9910a82ecb91ed6ec4f0c321b6e6e8dd73f841225581` |
| 14 | `lemma` | [sInf_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticePublic.lean/declarations/sinf-mul.md) | 110 | `result-track:c4bb1e038b1e62801eac8eb228180d31088f51be76115f7afab18826206507ad` |
| 15 | `lemma` | [sSup_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticePublic.lean/declarations/ssup-div.md) | 115 | `result-track:73d993317e20694c7783df4962b60a888652e93ce7ed61acbb871d76a53323bd` |
| 16 | `lemma` | [sInf_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/PointwiseCompleteLatticePublic.lean/declarations/sinf-div.md) | 118 | `result-track:ac1031dfa11ea5f38760a4b3cf3e98cd76db4087b1b7cb2fc4cbc1bbb0851cad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9de507b2e8570ab7d845817082955458e11a0f159fe157149c4028400c6ede79 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variantbe68066de2017c58336fff2a6a9a926d6ca4312e485c0d6667e95b2b08694d9a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variantbe68066de2017c58336fff2a6a9a926d6ca4312e485c0d6667e95b2b08694d9a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
