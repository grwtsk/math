# Verification target: Monoid Type Tags Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ed01639d764b48d0279297f446999b29d4b7bae",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TypeTags/Variantb4f22807a186674e501396d32d094a661ae0f2a8477c89494e7539bd8555d2af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ed01639d764b48d0279297f446999b29d4b7bae`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TypeTags/Variantb4f22807a186674e501396d32d094a661ae0f2a8477c89494e7539bd8555d2af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TypeTags/Variantb4f22807a186674e501396d32d094a661ae0f2a8477c89494e7539bd8555d2af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.TypeTags` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Cancel.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/instance-source-edition-5.md) | 24 | `declaration-track:d10edcb0684aba2d73cfe024a52696adf7fa3928a11d7e8e05835fa5e9d65640` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/instance-source-edition-4.md) | 27 | `declaration-track:bd8aa0fa0a9b4aff4a7ddce54cd9296979634dc5356120023fed6205a91cc37f` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/instance-source-edition-3.md) | 30 | `declaration-track:5769000e4ace5bd49cf9ec5a618d6d5ee4935495ab0c4a120f0b42e46c66ac81` |
| 4 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/instance-source-edition-2.md) | 33 | `declaration-track:33a56a47661ed68c258c79e178e7ca2a2288c6f16c0267f6fb0b0a79466bc968` |
| 5 | `instance` | [Multiplicative.preorder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/multiplicative-preorder.md) | 36 | `declaration-track:1e9ffaa260b8a6f7f0da877006555e7d08cb8834f2ab313b3e87b03b832fff6c` |
| 6 | `instance` | [Additive.preorder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/additive-preorder.md) | 39 | `declaration-track:01af8f2ec1856a066f515d6b2890d71e8f22863893adf17c758cf1e434448664` |
| 7 | `instance` | [Multiplicative.partialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/multiplicative-partialorder.md) | 42 | `declaration-track:44662595bc655ba89449b744991d30ecc66c8fc7522bb748a60e8c7e796ba863` |
| 8 | `instance` | [Additive.partialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/additive-partialorder.md) | 45 | `declaration-track:dd73974e5ad57b9ecac13fa4c0dae144611bcdf5e9accc91bf1f22da6cca293f` |
| 9 | `instance` | [Multiplicative.linearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/multiplicative-linearorder.md) | 48 | `declaration-track:eb6eb28f0a48cc542b9fe603f2e7e174f40a3d37055e31f85338acf90b251131` |
| 10 | `instance` | [Additive.linearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/additive-linearorder.md) | 51 | `declaration-track:efa99b16a6f6589bba703f3cfe160360b3d36a502c53640764f1cbff883d8861` |
| 11 | `instance` | [Multiplicative.orderBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/multiplicative-orderbot.md) | 54 | `declaration-track:8a6d466a31b55344ff28545f2aac86774b52d44cd2714df9b8ed2b84cc71a32c` |
| 12 | `instance` | [Additive.orderBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/additive-orderbot.md) | 57 | `declaration-track:88b630a1b52b5bc0031721301a4fa617f9e2fad65f48805b5ee6e6064e6710cf` |
| 13 | `instance` | [Multiplicative.orderTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/multiplicative-ordertop.md) | 60 | `declaration-track:36f90ceeb21a84e16d2453042fee06b882d196fc9b219e8e8bba13a7330c6ebe` |
| 14 | `instance` | [Additive.orderTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/additive-ordertop.md) | 63 | `declaration-track:f682a1d4bb0f743de44e0be8c3e93aead603ea8ea9bca85e76970e8d23cfe445` |
| 15 | `instance` | [Multiplicative.boundedOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/multiplicative-boundedorder.md) | 66 | `declaration-track:f567d96bb2e62e120457d14817302cac80a1c0317307096f460421d8058721db` |
| 16 | `instance` | [Additive.boundedOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/additive-boundedorder.md) | 69 | `declaration-track:be179ef396251c21b8cb590cefafe6af4a0fd667a34f360c07bbfd584232f717` |
| 17 | `instance` | [Multiplicative.orderedCommMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/multiplicative-orderedcommmonoid.md) | 72 | `declaration-track:c32eefd82f3c805b669b800837677772b2272bb6563500d7416a06d864c5aa2e` |
| 18 | `instance` | [Additive.orderedAddCommMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/additive-orderedaddcommmonoid.md) | 77 | `declaration-track:76565bf81a951025de63e3c1f34f9f2118730612587b25f8d04f703eb3d840d1` |
| 19 | `instance` | [Multiplicative.orderedCancelAddCommMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/multiplicative-orderedcanceladdcommmonoid.md) | 82 | `declaration-track:2bfc6c51ec2dd6eb07620db87554d59ed19b92d5099e09a38d3db6be749ff9e4` |
| 20 | `instance` | [Additive.orderedCancelAddCommMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/additive-orderedcanceladdcommmonoid.md) | 87 | `declaration-track:1e32e08d4059bb7ebbaf3fa3e1e72120b79c45dc85aee11c895a0c987bb48d7e` |
| 21 | `instance` | [Multiplicative.linearOrderedCommMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/multiplicative-linearorderedcommmonoid.md) | 92 | `declaration-track:c2a2fc5bdad56d38dbe6e7b1d23bfc4c2a3c71d0ade4b71658f8cf7d40072a59` |
| 22 | `instance` | [Additive.linearOrderedAddCommMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/additive-linearorderedaddcommmonoid.md) | 96 | `declaration-track:84bc38ec549b0d68289cff0f6e4733974b4f655ff15cd32e2e2215d6b17baed2` |
| 23 | `instance` | [Multiplicative.existsMulOfLe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/multiplicative-existsmulofle.md) | 100 | `declaration-track:f11f432a9e47a53fe85363f459766c25b9e6f5b61f5aeb1138b02c108cea965a` |
| 24 | `instance` | [Additive.existsAddOfLe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/additive-existsaddofle.md) | 104 | `declaration-track:3456f301a1140a189a03566b3d622c6829ea70b0334373c33314637482746f67` |
| 25 | `instance` | [Multiplicative.canonicallyOrderedMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/multiplicative-canonicallyorderedmonoid.md) | 107 | `declaration-track:94c3e6d9b3ed50c5aea20c46a6d180378218c94fe81e3ddc9f7cd8d3fc95458b` |
| 26 | `instance` | [Additive.canonicallyOrderedAddMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/additive-canonicallyorderedaddmonoid.md) | 112 | `declaration-track:29114b8181727b0a9dfb8ce67f103e5982187c04e74d078f1d08855ebd8a3e09` |
| 27 | `instance` | [Multiplicative.canonicallyLinearOrderedMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/multiplicative-canonicallylinearorderedmonoid.md) | 117 | `declaration-track:d6ef7844e87e17fec386a1d3db7dd47603c618dcfc9ae88614181c83456fdc2b` |
| 28 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/instance.md) | 121 | `declaration-track:20a234247b505bf22920682602c73813fd0dac318596fb763097ec318472b1e1` |
| 29 | `theorem` | [ofMul_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/ofmul-le.md) | 129 | `result-track:389d6efe2c0dc6efd0c103110e3e774e408d5d2a27ee48fc5b63abc08bac2644` |
| 30 | `theorem` | [ofMul_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/ofmul-lt.md) | 134 | `result-track:0ffd6965caeac80916c9afad05e948582ad9a5971ed1c5ca006cce16a18403d4` |
| 31 | `theorem` | [toMul_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/tomul-le.md) | 139 | `result-track:cf0379ec0f022fd714b6b8ef71dc3053553b2e16939958c86539388ddfe59f5b` |
| 32 | `theorem` | [toMul_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/tomul-lt.md) | 144 | `result-track:98fdcfbe78fe268ee519188dc7ff7594418371c29961a9934bf43d35e5369f54` |
| 33 | `theorem` | [ofAdd_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/ofadd-le.md) | 155 | `result-track:c4faf323f5991b13b7458a188958c7113266f8c0cb6c405d0fc0c078ef482285` |
| 34 | `theorem` | [ofAdd_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/ofadd-lt.md) | 160 | `result-track:1dc408ec3811a66100de2b196e28eb32afc21ba8f65f434fc0a023db59c23891` |
| 35 | `theorem` | [toAdd_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/toadd-le.md) | 165 | `result-track:9c819547522ff692a033a0bd0c7ff5f7795e461ab9b981215454501feba54165` |
| 36 | `theorem` | [toAdd_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidTypeTagsNamespacedSourceEdition2.lean/declarations/toadd-lt.md) | 170 | `result-track:b04b7e77daf186a63639547f3f12fb37a6e158618345d6a28a96edc00612abf8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=42ccc59ab49cf832748751166a3450046d48c1cea236184f86128e412f43cc2e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TypeTags/Variantb4f22807a186674e501396d32d094a661ae0f2a8477c89494e7539bd8555d2af.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TypeTags/Variantb4f22807a186674e501396d32d094a661ae0f2a8477c89494e7539bd8555d2af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
