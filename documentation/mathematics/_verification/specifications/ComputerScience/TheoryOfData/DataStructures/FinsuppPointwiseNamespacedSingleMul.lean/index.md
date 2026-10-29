# Verification target: Finsupp Pointwise Namespaced Single Mul

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc30dd14400c6148d2bab53583198e61007cc7f9",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pointwise/Varianta3ef3a8a36240cbe2b9499906b989dcec6a484debbebedf44ad6cf2cd0eb2bc4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespacedSingleMul.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespacedSingleMul.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc30dd14400c6148d2bab53583198e61007cc7f9`.

Source path: `GRWTSK/Algebra/Pointwise/Varianta3ef3a8a36240cbe2b9499906b989dcec6a484debbebedf44ad6cf2cd0eb2bc4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pointwise/Varianta3ef3a8a36240cbe2b9499906b989dcec6a484debbebedf44ad6cf2cd0eb2bc4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.InjSurj` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Pi` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Single` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespacedSingleMul.lean/declarations/instance-source-edition-5.md) | 48 | `declaration-track:86b80061c7b617a26740efb914604c46a54087b7f2033e754b490aa194d302d6` |
| 2 | `theorem` | [coe_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespacedSingleMul.lean/declarations/coe-mul.md) | 51 | `result-track:42f136af86650b3feb5f66901a462553287ea068a383fe8b8e292c90263fd3eb` |
| 3 | `theorem` | [mul_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespacedSingleMul.lean/declarations/mul-apply.md) | 55 | `result-track:54a91d9ac0d7ade700f3febb00ccfc510a07ef88a57ff3b9b13bb4a9377d93a5` |
| 4 | `theorem` | [single_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespacedSingleMul.lean/declarations/single-mul.md) | 59 | `result-track:519268f7fccad26ae74743590fe956d6cac1f50b6766ec2584cce87066766c58` |
| 5 | `lemma` | [support_mul_subset_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespacedSingleMul.lean/declarations/support-mul-subset-left.md) | 62 | `result-track:65c7d2628079b0453e3348954debf305e2083dd76b75bc83f60a51233ad34728` |
| 6 | `lemma` | [support_mul_subset_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespacedSingleMul.lean/declarations/support-mul-subset-right.md) | 66 | `result-track:a98c611dcbbcac3b1dec47a032adbd193f04afb784469cb688c6dd42bb49d461` |
| 7 | `theorem` | [support_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespacedSingleMul.lean/declarations/support-mul.md) | 70 | `result-track:bb53ec868fa13ebb8091df3d3b21a1b26e74831064b25b5bb45f5f9abc832aa4` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespacedSingleMul.lean/declarations/instance-source-edition-9.md) | 74 | `declaration-track:e5f0de8e18a83c6d61021a8fb95f51e50cd18101c86c2b5c62bd1c75a175bcfb` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespacedSingleMul.lean/declarations/instance-source-edition-3.md) | 79 | `declaration-track:449e6359adc5492f2a59e832911bbed0bd2344d8254fc71a63bd81044c27fd62` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespacedSingleMul.lean/declarations/instance.md) | 82 | `declaration-track:16d890fc9898c803d7d93ee8e9d2fa105f26a45392ff3b599d17e86b2f01d485` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespacedSingleMul.lean/declarations/instance-source-edition-8.md) | 85 | `declaration-track:b035216719354b566dc4b3a1fc3cbd201e772bb5ab6a902fc2c2a1e6d67d05b8` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespacedSingleMul.lean/declarations/instance-source-edition-4.md) | 88 | `declaration-track:48665593ba2a102afbff32e82eb14d97d398c9c96430ea00ac943f000bd5491e` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespacedSingleMul.lean/declarations/instance-source-edition-2.md) | 91 | `declaration-track:251dd159e64bc1999293f4b1e10eda804b1606491847ccdb825db4f37e8ce1ee` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespacedSingleMul.lean/declarations/instance-source-edition-7.md) | 95 | `declaration-track:9608fffc12231511af2c35826e0b64b7f8482f16915362f63e8fd70c578f383e` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespacedSingleMul.lean/declarations/instance-source-edition-6.md) | 99 | `declaration-track:8802b9a19a94056e57dd58d1f25cb5f4d13bb3b7073a023e8c31db72603b56e5` |
| 16 | `instance` | [pointwiseScalar](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespacedSingleMul.lean/declarations/pointwisescalar.md) | 106 | `declaration-track:a4ef8ee2e0d0d72ec10fc1f8c5031c9bd0ac6f1349596f9ddb2854914cacd4e6` |
| 17 | `theorem` | [coe_pointwise_smul](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespacedSingleMul.lean/declarations/coe-pointwise-smul.md) | 117 | `result-track:37f9d7b561125ee9c52af71e57228b5e33ab9cc6a7c469770897bdace68a7800` |
| 18 | `instance` | [pointwiseModule](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespacedSingleMul.lean/declarations/pointwisemodule.md) | 121 | `declaration-track:684e3dfe417a2f094d87be9f32cab97b68b8e93f511989d6e726cd96906f5dd2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7b443b161871153348e2d75b9914591d0d522b79895dbb5913479bc97d2d9fdb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Pointwise/Varianta3ef3a8a36240cbe2b9499906b989dcec6a484debbebedf44ad6cf2cd0eb2bc4.lean","GRWTSK/_verification/specifications/Algebra/Pointwise/Varianta3ef3a8a36240cbe2b9499906b989dcec6a484debbebedf44ad6cf2cd0eb2bc4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
