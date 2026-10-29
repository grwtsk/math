# Verification target: Order Pi Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9bf21ef8e856b21033a9338693fea2830bb1e7f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pi/Variantd51c693b7180c36f54349b7f81561dd785d4ee08238c831e57dba894d6219adc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiSourceEdition2.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9bf21ef8e856b21033a9338693fea2830bb1e7f`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pi/Variantd51c693b7180c36f54349b7f81561dd785d4ee08238c831e57dba894d6219adc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pi/Variantd51c693b7180c36f54349b7f81561dd785d4ee08238c831e57dba894d6219adc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Notation.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Pi` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [isOrderedMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiSourceEdition2.lean/declarations/isorderedmonoid.md) | 28 | `declaration-track:96d69ed49e0651c8c381a90322c4c96ad7acfa037d80c7c339cefa35197e16ee` |
| 2 | `instance` | [existsMulOfLe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiSourceEdition2.lean/declarations/existsmulofle.md) | 34 | `declaration-track:7593a9ae253f530a6ad610cc3db8ffd7db736966172c95bc051c6f345c562f5d` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiSourceEdition2.lean/declarations/instance.md) | 44 | `declaration-track:454aa781e95bac67890ddfd494be7d0f80cda71125f29c2ca093327676caf2bb` |
| 4 | `instance` | [isOrderedCancelMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiSourceEdition2.lean/declarations/isorderedcancelmonoid.md) | 51 | `declaration-track:e1b001fa4f286aa3a0a6985044df39b234f5c6ac7ad0d9f158abecc0211477fa` |
| 5 | `instance` | [isOrderedRing](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiSourceEdition2.lean/declarations/isorderedring.md) | 56 | `declaration-track:37ce59afe40d7c731057ed762890c59e70c0459000bcb17896c04b7a8f068225` |
| 6 | `theorem` | [one_le_const_of_one_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiSourceEdition2.lean/declarations/one-le-const-of-one-le.md) | 70 | `result-track:4cb2a7c341b547f550757f89f151ee8d170f8a88c03205fe0d694eadbc795170` |
| 7 | `theorem` | [const_le_one_of_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiSourceEdition2.lean/declarations/const-le-one-of-le-one.md) | 73 | `result-track:7e21d8ea6d130ef1aa7bf5a6738c2fcf283ff4bfaa4091105462a9778d9828ee` |
| 8 | `theorem` | [one_le_const](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiSourceEdition2.lean/declarations/one-le-const.md) | 78 | `result-track:7b11a9fca6d1b870681848a1577bdb3de8f840799bb118f16c982906305095d8` |
| 9 | `theorem` | [one_lt_const](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiSourceEdition2.lean/declarations/one-lt-const.md) | 82 | `result-track:9cb8cd0e7b5400ec02abfa859511615f2ef7957d90fb00f4bf9f5ac0e5e19f4f` |
| 10 | `theorem` | [const_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiSourceEdition2.lean/declarations/const-le-one.md) | 86 | `result-track:7795d9db0a171ed5d1b525dd7373c9a0b60f4dadbd4fd376ab871bb277427827` |
| 11 | `theorem` | [const_lt_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiSourceEdition2.lean/declarations/const-lt-one.md) | 90 | `result-track:b90cdc095bd1990ad05ae9e29d3019d72db2eeaf9b347ca23bb42e3e16ce0b54` |
| 12 | `lemma` | [one_le_extend](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiSourceEdition2.lean/declarations/one-le-extend.md) | 98 | `result-track:654a87bb3fdf80f76994d6ea0fece1ca6ca177c30aa86e2c4943d7615265cbb6` |
| 13 | `lemma` | [extend_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiSourceEdition2.lean/declarations/extend-le-one.md) | 101 | `result-track:f0473cb414ef182951a1c6335dc9ae340a9101a7dca93223b62986cf6c6d0a98` |
| 14 | `lemma` | [mulSingle_le_mulSingle](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiSourceEdition2.lean/declarations/mulsingle-le-mulsingle.md) | 112 | `result-track:e23daf2aa7dcab244c72cdda7cf6b046b36480ba9df94c9266bd311bfc8e566a` |
| 15 | `lemma` | [one_le_mulSingle](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiSourceEdition2.lean/declarations/one-le-mulsingle.md) | 118 | `result-track:52af7a9d60ca6431e4ea69d073ff3dbcb21afafc5452def85f75a70e67484f77` |
| 16 | `lemma` | [mulSingle_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiSourceEdition2.lean/declarations/mulsingle-le-one.md) | 121 | `result-track:5c6a6281c644f315c5dd3df891a82a6e525c6062f98a65902873397c9140ec1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb90ac01d1f3d682d11b613ed805a7431a2146ba2b6c70c8196bbc8a1ec32670 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Pi/Variantd51c693b7180c36f54349b7f81561dd785d4ee08238c831e57dba894d6219adc.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Pi/Variantd51c693b7180c36f54349b7f81561dd785d4ee08238c831e57dba894d6219adc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
