# Verification target: Map Floor Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7450afeddd32b7d45a6ed4c9a4d54809a0e36263",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/MapFloor/Variant0aed2b4bd2d9bbb2b36c5fa8ffe0ffb051992d70ca0efe478c57fe51de535eb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MapFloorNamespacedPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MapFloorNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7450afeddd32b7d45a6ed4c9a4d54809a0e36263`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/MapFloor/Variant0aed2b4bd2d9bbb2b36c5fa8ffe0ffb051992d70ca0efe478c57fe51de535eb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/MapFloor/Variant0aed2b4bd2d9bbb2b36c5fa8ffe0ffb051992d70ca0efe478c57fe51de535eb1.lean.json)

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
| 1 | `abbrev` | [IntWithEpsilon](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MapFloorNamespacedPublic.lean/declarations/intwithepsilon.md) | 56 | `declaration-track:f7f8c2586bd1ef98f786ba14093b3e60ff81a06cdc8cfa13aac4aef1e8c4805b` |
| 2 | `instance` | [linearOrder](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MapFloorNamespacedPublic.lean/declarations/linearorder.md) | 64 | `declaration-track:3b01d535a0473c241339133c4ff07491fc6e5a47bf5a8f5328a3b838269aaa63` |
| 3 | `instance` | [isOrderedAddMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MapFloorNamespacedPublic.lean/declarations/isorderedaddmonoid.md) | 67 | `declaration-track:eebe1394a595df6a3009d9d023851d1519dd63a95c8b0f42009079837681143f` |
| 4 | `theorem` | [pos_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MapFloorNamespacedPublic.lean/declarations/pos-iff.md) | 71 | `result-track:bdad68f64e971291b93a26706694cff81b99beb5d4b181283b1b7b3583138867` |
| 5 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MapFloorNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 81 | `declaration-track:fc38b2b7d7aa72438c697b5aa042f3755997b70a45a4e28b4b1275e70ce023fb` |
| 6 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MapFloorNamespacedPublic.lean/declarations/instance.md) | 84 | `declaration-track:e14ae6c2e3f20f3b599ac27f8253d8321c69c1e6443b83e95e94ef64c0201a4c` |
| 7 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MapFloorNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 87 | `declaration-track:e48f243f7241da4a27997a90384f1492920ce43029bf01da023b8a5944756fcf` |
| 8 | `def` | [forgetEpsilons](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MapFloorNamespacedPublic.lean/declarations/forgetepsilons.md) | 105 | `declaration-track:301d5f31af461cf99e37ec08f76a04009e1c2b7bd56bc23a684ca4772ab867dc` |
| 9 | `theorem` | [forgetEpsilons_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MapFloorNamespacedPublic.lean/declarations/forgetepsilons-apply.md) | 118 | `result-track:1adfb0cf22919809c9f2203a1e86faabca4e02c5aeadf7934e5f8e629dc402de` |
| 10 | `theorem` | [forgetEpsilons_floor_lt](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MapFloorNamespacedPublic.lean/declarations/forgetepsilons-floor-lt.md) | 123 | `result-track:ed141d0753911242c4eee5a96bbf0d69a20fb5038aa91a495b683da4dfbff114` |
| 11 | `theorem` | [lt_forgetEpsilons_ceil](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/MapFloorNamespacedPublic.lean/declarations/lt-forgetepsilons-ceil.md) | 132 | `result-track:0dfa13d8acb7b15d1e3d0b67d32660b5dc952a60a2e4b4910308e67dc0900a0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b827880a54dcde7879be96a2f0ad1558b2df62d95a374d249b164cfc61ee54f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/MapFloor/Variant0aed2b4bd2d9bbb2b36c5fa8ffe0ffb051992d70ca0efe478c57fe51de535eb1.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/MapFloor/Variant0aed2b4bd2d9bbb2b36c5fa8ffe0ffb051992d70ca0efe478c57fe51de535eb1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
