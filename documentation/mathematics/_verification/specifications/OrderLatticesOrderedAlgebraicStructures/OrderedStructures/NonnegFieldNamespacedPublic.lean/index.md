# Verification target: Nonneg Field Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1b1d69058989981719193db5017ce0f08f5ab01",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Field/Varianteae069062629db73070949243a1489beea0a0fe79ec52dcd4bfb453f0c83a15f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1b1d69058989981719193db5017ce0f08f5ab01`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Field/Varianteae069062629db73070949243a1489beea0a0fe79ec52dcd4bfb453f0c83a15f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Field/Varianteae069062629db73070949243a1489beea0a0fe79ec52dcd4bfb453f0c83a15f.lean.json)

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
| 1 | `lemma` | [NNRat.cast_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldNamespacedPublic.lean/declarations/nnrat-cast-nonneg.md) | 40 | `result-track:27e62a9e133b52871b8f7462d931d50fcd91376f21ffc9ee3bb0c34f224c6b4c` |
| 2 | `lemma` | [nnqsmul_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldNamespacedPublic.lean/declarations/nnqsmul-nonneg.md) | 43 | `result-track:f5205aaa5f30f9b8933094830993caf19119c69f6eef6f3b3eb977c239cfe6fa` |
| 3 | `def` | [unitsEquivPos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldNamespacedPublic.lean/declarations/unitsequivpos.md) | 52 | `declaration-track:5f07f5611f8fe572ba330b2600ce61301490caa5806bfe8ce5e9d5b47629f6ad` |
| 4 | `instance` | [inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldNamespacedPublic.lean/declarations/inv.md) | 66 | `declaration-track:154c99c20ad9e8bcfab310aa12ea13b2f3f9660e423b4586a9662dc721d7646d` |
| 5 | `theorem` | [coe_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldNamespacedPublic.lean/declarations/coe-inv.md) | 70 | `result-track:cf2612eace66a69ca4794593715953024ac6a1fd92be1770f553791bfbcbca35` |
| 6 | `theorem` | [inv_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldNamespacedPublic.lean/declarations/inv-mk.md) | 74 | `result-track:bae3f56b987f0e6bc42b1bcb60cb6a2fbbbf18fbd0300d62afc8e4f92defcb19` |
| 7 | `instance` | [div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldNamespacedPublic.lean/declarations/div.md) | 78 | `declaration-track:dca297d4443bd93595f5db855a209b0c491385a334ecca700a3ab7c720ec8a4b` |
| 8 | `theorem` | [coe_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldNamespacedPublic.lean/declarations/coe-div.md) | 82 | `result-track:204e1f13cd50d81800af8a3a56d44a35280c03fde0dc73e1927c4f3d8fc0a402` |
| 9 | `theorem` | [mk_div_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldNamespacedPublic.lean/declarations/mk-div-mk.md) | 86 | `result-track:12815766c10d6d6364558b74e627058c8faa5ecd0e54cfee26b265ec710717bf` |
| 10 | `instance` | [zpow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldNamespacedPublic.lean/declarations/zpow.md) | 90 | `declaration-track:70c5331876dce596372ab5c4eee2cfeabc499858fa120905095d9054ff95c5c8` |
| 11 | `theorem` | [coe_zpow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldNamespacedPublic.lean/declarations/coe-zpow.md) | 94 | `result-track:1816e42e4680b7254e55db30369967bdece7c54a388c0cebb5ee64d79ffbc574` |
| 12 | `theorem` | [mk_zpow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldNamespacedPublic.lean/declarations/mk-zpow.md) | 99 | `result-track:2a315be41002d7e00820f14d3e9804d06093150f90ff9223fe7de708d7e687e8` |
| 13 | `instance` | [instNNRatCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldNamespacedPublic.lean/declarations/instnnratcast.md) | 103 | `declaration-track:d7161e6af58e3a48ca3a7b4422d0cf8d81f9bee6e063b1f50338256631f8226e` |
| 14 | `instance` | [instNNRatSMul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldNamespacedPublic.lean/declarations/instnnratsmul.md) | 104 | `declaration-track:523ed255edef041a23c74b3ef9d5589f94affdcab3157a6eabd347456f4a8c06` |
| 15 | `lemma` | [coe_nnratCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldNamespacedPublic.lean/declarations/coe-nnratcast.md) | 107 | `result-track:1b0fc9813b7af74c49a1ae49034521ebe04de705bc60b21cc12f981d784a99bb` |
| 16 | `lemma` | [mk_nnratCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldNamespacedPublic.lean/declarations/mk-nnratcast.md) | 108 | `result-track:58c986e722a6a651d63aba5742448321c6679233ec156399fe4025c6ff91a8aa` |
| 17 | `lemma` | [coe_nnqsmul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldNamespacedPublic.lean/declarations/coe-nnqsmul.md) | 110 | `result-track:c767faa241c55d64f67aadd3d1101df2320b4f90bfe9ae3bfcef89b9396593fe` |
| 18 | `lemma` | [mk_nnqsmul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldNamespacedPublic.lean/declarations/mk-nnqsmul.md) | 112 | `result-track:ecbee2c20b74803a24226190317907b5b0492f0ced20a789b10e041105cca982` |
| 19 | `instance` | [divisionSemiring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldNamespacedPublic.lean/declarations/divisionsemiring.md) | 116 | `declaration-track:eb3fb5a68f6621accd96eba303ceb336f0a47477f92a7027c7698d5e2453c3c4` |
| 20 | `instance` | [semifield](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldNamespacedPublic.lean/declarations/semifield.md) | 127 | `declaration-track:de820f252b610e67969c1a561b8f3176d663907d82107840fc8b7f5f13284843` |
| 21 | `instance` | [linearOrderedCommGroupWithZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldNamespacedPublic.lean/declarations/linearorderedcommgroupwithzero.md) | 134 | `declaration-track:bcc80c294a1a33741e3ec44ac1531ff7378727cd6e96610e4f0bd7423b697035` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=21a4bd028da8f7bfbc3db9a3210697debcab9e01339ba4689549824d3f6c15d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Field/Varianteae069062629db73070949243a1489beea0a0fe79ec52dcd4bfb453f0c83a15f.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Field/Varianteae069062629db73070949243a1489beea0a0fe79ec52dcd4bfb453f0c83a15f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
