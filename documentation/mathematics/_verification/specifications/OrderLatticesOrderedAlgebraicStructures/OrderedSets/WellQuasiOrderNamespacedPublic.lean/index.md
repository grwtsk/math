# Verification target: Well Quasi Order Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42940579c57840d95df50e0c1d5dac335a0f5b77",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellQuasiOrder/Variant4ab0fa293faefb11fadc88e67deb8908d1e876a22f0866658364a1efae1f2330.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42940579c57840d95df50e0c1d5dac335a0f5b77`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellQuasiOrder/Variant4ab0fa293faefb11fadc88e67deb8908d1e876a22f0866658364a1efae1f2330.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellQuasiOrder/Variant4ab0fa293faefb11fadc88e67deb8908d1e876a22f0866658364a1efae1f2330.lean.json)

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
| 1 | `def` | [WellQuasiOrdered](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderNamespacedPublic.lean/declarations/wellquasiordered.md) | 50 | `declaration-track:465471e04a252dc15bc0574ace0ce58ed85e7972048bb4c47045aac4f094cf11` |
| 2 | `theorem` | [wellQuasiOrdered_of_isEmpty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderNamespacedPublic.lean/declarations/wellquasiordered-of-isempty.md) | 53 | `result-track:87e75d65f735a66abcfebc5157442ebbc8cfb3044f367a252395811f517e9f21` |
| 3 | `theorem` | [IsAntichain.finite_of_wellQuasiOrdered](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderNamespacedPublic.lean/declarations/isantichain-finite-of-wellquasiordered.md) | 56 | `result-track:256c5c5f0d2d0bcf6852b9269bdd0ca5fd94a360f090853d9b7646bb959a6422` |
| 4 | `theorem` | [Finite.wellQuasiOrdered](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderNamespacedPublic.lean/declarations/finite-wellquasiordered.md) | 63 | `result-track:f7a337e2301ca3956cdcd3fc8c5e9ebe24afaeb7d5d4619a4f9c79175e77fc86` |
| 5 | `theorem` | [WellQuasiOrdered.exists_monotone_subseq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderNamespacedPublic.lean/declarations/wellquasiordered-exists-monotone-subseq.md) | 70 | `result-track:281a29f73359489cb0f156df0f6948c83b3755240d9b056bed6aa89c3188cd88` |
| 6 | `theorem` | [wellQuasiOrdered_iff_exists_monotone_subseq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderNamespacedPublic.lean/declarations/wellquasiordered-iff-exists-monotone-subseq.md) | 79 | `result-track:396066f47595ecc1c96899b2907a4e28935b03e05c5c790ab9aab1c6c956f2e2` |
| 7 | `theorem` | [WellQuasiOrdered.prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderNamespacedPublic.lean/declarations/wellquasiordered-prod.md) | 86 | `result-track:de095e4c53c7f7a9e39f98111639e5811fab9c193058e455aa2a2ead2994e6a2` |
| 8 | `theorem` | [WellQuasiOrdered.pi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderNamespacedPublic.lean/declarations/wellquasiordered-pi.md) | 96 | `result-track:1c9339fd6b9baf845a23b7f0499b6e24bee40e910b8de4fdc07b8f03304a4f10` |
| 9 | `theorem` | [RelIso.wellQuasiOrdered_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderNamespacedPublic.lean/declarations/reliso-wellquasiordered-iff.md) | 118 | `result-track:51de237ac5f170c4b93783d7e35f9d309befbaad5c86876c5dcc31bb3df69b3c` |
| 10 | `theorem` | [WellQuasiOrdered.of_surjective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderNamespacedPublic.lean/declarations/wellquasiordered-of-surjective.md) | 124 | `result-track:eb8d03ae8e3a0893b3d5ae0de8538ce32ef8b50e3b8062b244e9581dc57a229b` |
| 11 | `class` | [WellQuasiOrderedLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderNamespacedPublic.lean/declarations/wellquasiorderedle.md) | 135 | `declaration-track:8bfb2816fce898ec62c3fbaf4eb72a2e4e3104ea5396e7ae6d74d467658cd913` |
| 12 | `theorem` | [wellQuasiOrdered_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderNamespacedPublic.lean/declarations/wellquasiordered-le.md) | 138 | `result-track:cbcd07468730d2c349a4bfc61b44e6612a83e62a2645a1ca420dae618af60f67` |
| 13 | `theorem` | [OrderIso.wellQuasiOrderedLE_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderNamespacedPublic.lean/declarations/orderiso-wellquasiorderedle-iff.md) | 141 | `result-track:614fc452a61a3fe13c82d15963884b3e0f6d44ea5951f5a29c52ead9399c6d36` |
| 14 | `lemma` | [Finite.to_wellQuasiOrderedLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderNamespacedPublic.lean/declarations/finite-to-wellquasiorderedle.md) | 150 | `result-track:74437ede38da612f39845870b9010528a6bb7e9beb904555e0e846d0eda0863e` |
| 15 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 153 | `declaration-track:a684d5e067e45e38adb44a88bd8bd78b57a0dc355ac9802b3bd104abb0cd6954` |
| 16 | `theorem` | [WellQuasiOrdered.wellFounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderNamespacedPublic.lean/declarations/wellquasiordered-wellfounded.md) | 160 | `result-track:6d381d0e4e453a13511ff298953261a2e2bd893e38f0f686d42fdb0f3279abb5` |
| 17 | `theorem` | [WellQuasiOrderedLE.finite_of_isAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderNamespacedPublic.lean/declarations/wellquasiorderedle-finite-of-isantichain.md) | 169 | `result-track:b39f83479bc16479b03a17f23b6bfb8041119d2090258ac389acc3dece571b54` |
| 18 | `theorem` | [wellQuasiOrderedLE_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderNamespacedPublic.lean/declarations/wellquasiorderedle-iff.md) | 174 | `result-track:36f8afe875941e015a9108633122eba6e167e02a08b865d21d7fcfcc41801f6e` |
| 19 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderNamespacedPublic.lean/declarations/instance.md) | 193 | `declaration-track:0b00b98b4ffcf13a13361c7cc920d27ff9fdd17b713368046689d0d8215d413e` |
| 20 | `theorem` | [Monotone.wellQuasiOrderedLE_of_wellQuasiOrderedLE_of_surjective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderNamespacedPublic.lean/declarations/monotone-wellquasiorderedle-of-wellquasiorderedle-of-surjective.md) | 196 | `result-track:f2b1a7853158e0d1fcd15d1ab5ec65b6dbf2ccb79e3726fbd33adcd0939dc69a` |
| 21 | `theorem` | [OrderHom.wellQuasiOrderedLE_of_wellQuasiOrderedLE_of_surjective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderNamespacedPublic.lean/declarations/orderhom-wellquasiorderedle-of-wellquasiorderedle-of-surjective.md) | 201 | `result-track:6e81e4571114c321d3fa3dffc8cfd823cbda4c4b9f30c869b2c9e6ebda1c722d` |
| 22 | `theorem` | [wellQuasiOrderedLE_iff_wellFoundedLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderNamespacedPublic.lean/declarations/wellquasiorderedle-iff-wellfoundedlt.md) | 212 | `result-track:3ea2f1723aa82af52d3b64de40908cef0a14c2a84c91c9cfc9d71f7c4c42c323` |
| 23 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 216 | `declaration-track:0cbefae8f2c973900f6508be85f17abfe5e2d33ed0943c2484d22bd68e071d81` |
| 24 | `instance` | [Pi.wellQuasiOrderedLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WellQuasiOrderNamespacedPublic.lean/declarations/pi-wellquasiorderedle.md) | 223 | `declaration-track:af5fa00d236101506cb27ecc5e96e81a8c155c595855c18b1b4cd25399823fe1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb8285996b000550b920bc754d6a2a8ce803e93d202e856df3e156478d1df43a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellQuasiOrder/Variant4ab0fa293faefb11fadc88e67deb8908d1e876a22f0866658364a1efae1f2330.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellQuasiOrder/Variant4ab0fa293faefb11fadc88e67deb8908d1e876a22f0866658364a1efae1f2330.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
