# Verification target: Nonneg Field Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2a5a66d4bf8ac0e9b54e7547a19f0be8e497151",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Field/Variant62d2e154f39259c86c371028a928eb3163975779d018c23a9a51e6a34ca31fe2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2a5a66d4bf8ac0e9b54e7547a19f0be8e497151`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Field/Variant62d2e154f39259c86c371028a928eb3163975779d018c23a9a51e6a34ca31fe2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Field/Variant62d2e154f39259c86c371028a928eb3163975779d018c23a9a51e6a34ca31fe2.lean.json)

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
| 1 | `lemma` | [NNRat.cast_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldPublic.lean/declarations/nnrat-cast-nonneg.md) | 32 | `result-track:ca21a41703cbcdb7552d74f4f6ce971661b91a55be27ca6619973c0badec893f` |
| 2 | `lemma` | [nnqsmul_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldPublic.lean/declarations/nnqsmul-nonneg.md) | 35 | `result-track:17a4db60489aa96147e5a67de3ea1dbf1534b3baba197db02c73575599898326` |
| 3 | `def` | [unitsEquivPos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldPublic.lean/declarations/unitsequivpos.md) | 44 | `declaration-track:49f7e22fcfb47fbac1c2a89a018ae12e331377819fd5e3304fd6172b07ac70d9` |
| 4 | `instance` | [inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldPublic.lean/declarations/inv.md) | 58 | `declaration-track:49a49e63415595afe5e2e02442611cca836568574c9c440eab5440ffbb34a505` |
| 5 | `theorem` | [coe_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldPublic.lean/declarations/coe-inv.md) | 62 | `result-track:3463c041c87bde0971e9c75d32e889a668cd4c480dc01ca461f568268799c9cd` |
| 6 | `theorem` | [inv_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldPublic.lean/declarations/inv-mk.md) | 66 | `result-track:2def7f92608a1230a997f091c764229df2a06afe098d6317668678ad40fd0db4` |
| 7 | `instance` | [div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldPublic.lean/declarations/div.md) | 70 | `declaration-track:5926c5da6d00c2e19d5c76d430c51cc06379bcd0ea0b1df9890dae75adfb0c5b` |
| 8 | `theorem` | [coe_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldPublic.lean/declarations/coe-div.md) | 74 | `result-track:f2e3e65bc4d8ad8acc50ce5f922a512d007698ce8f4f651884d04a41048d52b5` |
| 9 | `theorem` | [mk_div_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldPublic.lean/declarations/mk-div-mk.md) | 78 | `result-track:8a096de5ed02b342cd6e9b9b24f580a8771b534170ac02be25de9c245931a280` |
| 10 | `instance` | [zpow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldPublic.lean/declarations/zpow.md) | 82 | `declaration-track:569d99c5620bb9c82100facca31ebc219c0317c63a897d7c954ed2e2c0f3ac72` |
| 11 | `theorem` | [coe_zpow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldPublic.lean/declarations/coe-zpow.md) | 86 | `result-track:bcc78e803cb46660e30645c7983fa60e401c670c2f8030bd5f02e4e8eb864a47` |
| 12 | `theorem` | [mk_zpow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldPublic.lean/declarations/mk-zpow.md) | 91 | `result-track:4cf0b3bfd3ad74c385cba4eefb80372ce5491bc54fb9f690850fbe4520335da5` |
| 13 | `instance` | [instNNRatCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldPublic.lean/declarations/instnnratcast.md) | 95 | `declaration-track:475e0b27b0e37a571c01184bf89e5e54fda6451a1015f4afbd3b0a03ebfb49cb` |
| 14 | `instance` | [instNNRatSMul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldPublic.lean/declarations/instnnratsmul.md) | 96 | `declaration-track:45ff1f40d593c0590e184f9a1c72e68f07a7911c57ccfeeaaa798d4e56337622` |
| 15 | `lemma` | [coe_nnratCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldPublic.lean/declarations/coe-nnratcast.md) | 99 | `result-track:ba021c58db316ef951afbba17cce1c802a68d43fcccf334665923b9759ddca68` |
| 16 | `lemma` | [mk_nnratCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldPublic.lean/declarations/mk-nnratcast.md) | 100 | `result-track:e8259d61daaaa8995483ba6e1ade967091caed4217e2169354baf42324ecf1ca` |
| 17 | `lemma` | [coe_nnqsmul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldPublic.lean/declarations/coe-nnqsmul.md) | 102 | `result-track:c63244c629ebcf86cd8a9e04eb26adeea51b263b3727537a5cf3f8e4f552fc7c` |
| 18 | `lemma` | [mk_nnqsmul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldPublic.lean/declarations/mk-nnqsmul.md) | 104 | `result-track:0e954bd109cdbce6d4506432ef2af494e8560cd9b04e8f28163b3609851395b8` |
| 19 | `instance` | [divisionSemiring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldPublic.lean/declarations/divisionsemiring.md) | 108 | `declaration-track:b2c89ab0992140da6f505c5f3e75154b810434d33a1c7f7859628c2c51ae2435` |
| 20 | `instance` | [semifield](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldPublic.lean/declarations/semifield.md) | 119 | `declaration-track:8c918ac2239b139349a45635b686835c9a83172bbd2ea40c9c044a86e888d31c` |
| 21 | `instance` | [linearOrderedCommGroupWithZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegFieldPublic.lean/declarations/linearorderedcommgroupwithzero.md) | 126 | `declaration-track:04d5acf8253c1885cfc57966674906d2b473724aa33d72eaeecfd0c15f5f6f06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=00966b42fb058ab7f0d6f7ac3fc5fc6d0a189f61d799f8e9d008a4074096b65e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Field/Variant62d2e154f39259c86c371028a928eb3163975779d018c23a9a51e6a34ca31fe2.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Field/Variant62d2e154f39259c86c371028a928eb3163975779d018c23a9a51e6a34ca31fe2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
