# Verification target: Order Pi Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "acc495b497d98896f4b3d95d53919d863928ef72",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `acc495b497d98896f4b3d95d53919d863928ef72`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean.json)

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
| 1 | `instance` | [isOrderedMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiPublic.lean/declarations/isorderedmonoid.md) | 32 | `declaration-track:116f7b50fb005b58bcba172182e43a4cbd2596edb28b21040f6bb7c37f538ca3` |
| 2 | `instance` | [existsMulOfLe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiPublic.lean/declarations/existsmulofle.md) | 38 | `declaration-track:7830477d0a853633b7ab5a8986549dd5c87510663165f2dfc711fb1a33e87b42` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiPublic.lean/declarations/instance.md) | 48 | `declaration-track:1fdfd5eae7fbc574916205a86a77b34f6a30389055812e8aa3182991aff99866` |
| 4 | `instance` | [isOrderedCancelMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiPublic.lean/declarations/isorderedcancelmonoid.md) | 56 | `declaration-track:38c5fcd560592c46b5d41d0c9a61ceecbe56ff20fb3e96b823e63ee08f63560e` |
| 5 | `instance` | [isOrderedRing](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiPublic.lean/declarations/isorderedring.md) | 61 | `declaration-track:a56ede287b41f7cb56d7ea39ee105b0f5c521ca2f77e0da7fe9d312f64c3cf0d` |
| 6 | `theorem` | [one_le_const_of_one_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiPublic.lean/declarations/one-le-const-of-one-le.md) | 75 | `result-track:755c0be9a57102c57501f6024f70a34a5596d566b265529662148d1a80ef63ca` |
| 7 | `theorem` | [const_le_one_of_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiPublic.lean/declarations/const-le-one-of-le-one.md) | 78 | `result-track:393c4b8cc11a8c994bf9f2c431b4416049cedcb5ce0cb609e8fa8385bf7f73aa` |
| 8 | `theorem` | [one_le_const](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiPublic.lean/declarations/one-le-const.md) | 83 | `result-track:c1c7428615d8b408c69f746ad358d08f8fdf0a6c6ccf272096ba85c8d6dab575` |
| 9 | `theorem` | [one_lt_const](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiPublic.lean/declarations/one-lt-const.md) | 87 | `result-track:82ca233dc939939bf15b46a5d786f0d40edc20beaeb5baeb1480b93b2f6a4fce` |
| 10 | `theorem` | [const_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiPublic.lean/declarations/const-le-one.md) | 91 | `result-track:fd504ba695acfcc63b6bdc0758ccd7f4da8fec4c0fca0ba990392398b3a75f1c` |
| 11 | `theorem` | [const_lt_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiPublic.lean/declarations/const-lt-one.md) | 95 | `result-track:d25297a59853d0005bf2ff062909b62e74af556f73802c9ce836942821423e73` |
| 12 | `lemma` | [one_le_extend](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiPublic.lean/declarations/one-le-extend.md) | 103 | `result-track:7bd35fefae974aa62b564dd522cf316fb9601fc2269735824ebf8e2901a23935` |
| 13 | `lemma` | [extend_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiPublic.lean/declarations/extend-le-one.md) | 106 | `result-track:ee623a78e400525bf02b89cfe6e4941841764ab583040445aa7d83a6fec4b333` |
| 14 | `lemma` | [mulSingle_le_mulSingle](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiPublic.lean/declarations/mulsingle-le-mulsingle.md) | 117 | `result-track:5d7b81b0afeee030b56f2dab2c7f8bf28f633217f519ea251937adf428f5c761` |
| 15 | `lemma` | [one_le_mulSingle](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiPublic.lean/declarations/one-le-mulsingle.md) | 121 | `result-track:2e9879d627bcfe118293273593f19aa3421dd7ac02bf22d05abcadd0e1306ef0` |
| 16 | `lemma` | [one_lt_mulSingle](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiPublic.lean/declarations/one-lt-mulsingle.md) | 124 | `result-track:1acade63e05b6e11855d297d113666d469645e453c5219dcf2d15434f46b65e5` |
| 17 | `lemma` | [mulSingle_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderPiPublic.lean/declarations/mulsingle-le-one.md) | 127 | `result-track:97399c7a185c738fab8535f03973f077d91b7661397448a8a2b93c1e565653ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=451fb7872690a090a0e278db2df87a3b38df04fe43b1cb953a55f55443eba77e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Pi/Variantf43a749432a1b5a0ab1f63266b5e69461ff207fe032d9101a2a2acde8d7ed0a5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
