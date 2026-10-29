# Verification target: Monoid Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5255705d9a7c5cc8031007d53cc4a77226e0b34a",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Defs/Varianta48564fe5194071775fe399302160d10f2a27b1ada8d2d098bb559cee9653968.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidDefsNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5255705d9a7c5cc8031007d53cc4a77226e0b34a`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Defs/Varianta48564fe5194071775fe399302160d10f2a27b1ada8d2d098bb559cee9653968.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Defs/Varianta48564fe5194071775fe399302160d10f2a27b1ada8d2d098bb559cee9653968.lean.json)

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
| 1 | `class` | [IsOrderedAddMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidDefsNamespacedPublic.lean/declarations/isorderedaddmonoid.md) | 35 | `declaration-track:3bfd100a9f37a7573f1f4da881658c75d7412149e26c5eb5c33832c1c8b91028` |
| 2 | `class` | [IsOrderedMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidDefsNamespacedPublic.lean/declarations/isorderedmonoid.md) | 42 | `declaration-track:889b3b6668831e281021a60362954c809afbee097a3ee4f972c8f85156f1cac6` |
| 3 | `lemma` | [IsOrderedMonoid.of_mulLeftMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidDefsNamespacedPublic.lean/declarations/isorderedmonoid-of-mulleftmono.md) | 53 | `result-track:8f0b418d81cb60e2a6fa0ec0f47c84b1fe5df4f24334e92947558c7fa8176870` |
| 4 | `lemma` | [IsOrderedMonoid.of_mulRightMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidDefsNamespacedPublic.lean/declarations/isorderedmonoid-of-mulrightmono.md) | 58 | `result-track:2d584a05b98cbfb4023bcc79c27f1ceab3d6c703e0cd0f3e43d40141b395f761` |
| 5 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidDefsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 64 | `declaration-track:2dc31e4f4f7676e20d68759fe66f6e11aa6029c1beb718c4a37762fbf595e866` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidDefsNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 68 | `declaration-track:a54884934b0bd178f42511f001dadcbf4577aadce107aec8ef6919b9b32a4c75` |
| 7 | `class` | [IsOrderedCancelAddMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidDefsNamespacedPublic.lean/declarations/isorderedcanceladdmonoid.md) | 75 | `declaration-track:d4bb5ec63b196bcf89655a315d256986218a65a720267e3945b202cadc7e1ea5` |
| 8 | `class` | [IsOrderedCancelMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidDefsNamespacedPublic.lean/declarations/isorderedcancelmonoid.md) | 84 | `declaration-track:5724693f713a75a11ce9cdc199ab93537f7509c9b744fcf361a288febf623239` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidDefsNamespacedPublic.lean/declarations/instance.md) | 90 | `declaration-track:0c261907fb502bd7621e0564893f7a72fec3f7ba7c41135efb75206f7548c0ca` |
| 10 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidDefsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 101 | `declaration-track:4839a4e857eb541c65c705873f53068fb319b2fc82b32df7c7397168f554e067` |
| 11 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidDefsNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 106 | `declaration-track:abcfbde0d99bae5bc8a1b21a8be6c289322ef0ab6f9e3183708ae47c75a55537` |
| 12 | `theorem` | [IsOrderedCancelMonoid.toMulRightReflectLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidDefsNamespacedPublic.lean/declarations/isorderedcancelmonoid-tomulrightreflectlt.md) | 110 | `result-track:dd7e28315320bea3976f40c1779a4c3117770abc1b93dad0da1ff1ff5ca16d69` |
| 13 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidDefsNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 115 | `declaration-track:fc145b51df15208b3cefe89309af244b9f41f6c25b32ded582c05392ed7bc43e` |
| 14 | `theorem` | [IsOrderedCancelMonoid.of_mul_lt_mul_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidDefsNamespacedPublic.lean/declarations/isorderedcancelmonoid-of-mul-lt-mul-left.md) | 122 | `result-track:a57a3a1f6071271a539f921b4514b1b47dc623b0fa28165d57c992b40d076b6e` |
| 15 | `theorem` | [one_le_mul_self_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidDefsNamespacedPublic.lean/declarations/one-le-mul-self-iff.md) | 137 | `result-track:c7ffab2554c3f66428543cbc7c0df34aaa1d226376c2e0952c059cd2ad4f7048` |
| 16 | `theorem` | [one_lt_mul_self_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidDefsNamespacedPublic.lean/declarations/one-lt-mul-self-iff.md) | 141 | `result-track:2dec672681c29fa01406019940ea88dd0f8c9e95fabec12cc6ffd2e32ffe9df3` |
| 17 | `theorem` | [mul_self_le_one_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidDefsNamespacedPublic.lean/declarations/mul-self-le-one-iff.md) | 145 | `result-track:bd702d955270f3c637cb663b77a2da7af4ae57bfd52c6f41bdc1618a8d7c7b67` |
| 18 | `theorem` | [mul_self_lt_one_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidDefsNamespacedPublic.lean/declarations/mul-self-lt-one-iff.md) | 148 | `result-track:a630ed97f13e402f14e94a747d5b2a963be58b3df6b1952d3e6bd59d95232a8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d93ce3cab9ed4618ef3437549e2d7a745e9d678f5b283f2959203fea12d76d33 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Defs/Varianta48564fe5194071775fe399302160d10f2a27b1ada8d2d098bb559cee9653968.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Defs/Varianta48564fe5194071775fe399302160d10f2a27b1ada8d2d098bb559cee9653968.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
