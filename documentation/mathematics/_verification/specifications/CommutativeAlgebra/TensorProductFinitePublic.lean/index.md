# Verification target: Tensor Product Finite Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e075b40d649c364a50f47ebbe7ce9235b5be7b1",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finite/Variant97f6e8845c93b4c346b21ce24a2e640d9982b0ced42a6829d8e157beee9a25b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/TensorProductFinitePublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/TensorProductFinitePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e075b40d649c364a50f47ebbe7ce9235b5be7b1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finite/Variant97f6e8845c93b4c346b21ce24a2e640d9982b0ced42a6829d8e157beee9a25b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finite/Variant97f6e8845c93b4c346b21ce24a2e640d9982b0ced42a6829d8e157beee9a25b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_fg_le_eq_rTensor_subtype](../../../../CommutativeAlgebra/TensorProductFinitePublic.lean/declarations/exists-fg-le-eq-rtensor-subtype.md) | 34 | `result-track:71aa7a5a7ff487b69be940e532cdf695cbc73c1577195cbc44a3b81e25cb1a85` |
| 2 | `theorem` | [exists_fg_le_subset_range_rTensor_subtype](../../../../CommutativeAlgebra/TensorProductFinitePublic.lean/declarations/exists-fg-le-subset-range-rtensor-subtype.md) | 46 | `result-track:f6aea90268ea4c39f60edf3cab38bad30f12820c4245fca4ae4c7b01e8a4cd9e` |
| 3 | `theorem` | [exists_fg_le_eq_rTensor_inclusion](../../../../CommutativeAlgebra/TensorProductFinitePublic.lean/declarations/exists-fg-le-eq-rtensor-inclusion.md) | 57 | `result-track:3b5b3e675a5e29dfee8ea8cb9aa96b8f9ce0865be7d69d4c97943f7d665d42e5` |
| 4 | `theorem` | [exists_fg_le_subset_range_rTensor_inclusion](../../../../CommutativeAlgebra/TensorProductFinitePublic.lean/declarations/exists-fg-le-subset-range-rtensor-inclusion.md) | 64 | `result-track:973d7d3872cde4872828aaea2cb2dc05658e709bf4ec587b87798c450ae31c0b` |
| 5 | `instance` | [Module.Finite.base_change](../../../../CommutativeAlgebra/TensorProductFinitePublic.lean/declarations/module-finite-base-change.md) | 79 | `declaration-track:d37232be62f79d0c2b40e0c33271f4b3dd7097701c5d5aafd084848208f60704` |
| 6 | `instance` | [Module.Finite.tensorProduct](../../../../CommutativeAlgebra/TensorProductFinitePublic.lean/declarations/module-finite-tensorproduct.md) | 93 | `declaration-track:8e79f5c835986cecc18026386204c0e21266e848b5c9685f8b77434e343ca334` |
| 7 | `lemma` | [Module.exists_isPrincipal_quotient_of_finite](../../../../CommutativeAlgebra/TensorProductFinitePublic.lean/declarations/module-exists-isprincipal-quotient-of-finite.md) | 104 | `result-track:9f908e4f682cbb5b05fec2e2d17ffa21475221ce8f05637c45712b81e086cee1` |
| 8 | `lemma` | [Module.exists_surjective_quotient_of_finite](../../../../CommutativeAlgebra/TensorProductFinitePublic.lean/declarations/module-exists-surjective-quotient-of-finite.md) | 126 | `result-track:458789b10974504199d8b6e3470e7e100172ca8dd40f60fcc1fd1361ac7d3921` |
| 9 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/TensorProductFinitePublic.lean/declarations/instance.md) | 138 | `declaration-track:e87f430e566dff06da55580e813a553136edaae10c092b7b5b3e598e6687ac42` |
| 10 | `theorem` | [Subalgebra.finite_sup](../../../../CommutativeAlgebra/TensorProductFinitePublic.lean/declarations/subalgebra-finite-sup.md) | 149 | `result-track:6aefee9f6de3e9904ac5c1c318260a3cedb6d8d8e4666d5b07cbe1f75e737295` |
| 11 | `lemma` | [RingHom.Finite.tensorProductMap_id](../../../../CommutativeAlgebra/TensorProductFinitePublic.lean/declarations/ringhom-finite-tensorproductmap-id.md) | 156 | `result-track:fcf0030064cc3b2a0e66a0ae9bb10c0ec749682ac376d1fb58e054bf58d89055` |
| 12 | `lemma` | [RingHom.Finite.tensorProductMap](../../../../CommutativeAlgebra/TensorProductFinitePublic.lean/declarations/ringhom-finite-tensorproductmap.md) | 171 | `result-track:919dc6459dc02e903d7845f0909b8ca033086372e9c72ca659ad5d284737bae1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ff3b6069d4e0ced449c9eca6c97acd9cce04e736bcc5abff596d9364bbebe712 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Finite/Variant97f6e8845c93b4c346b21ce24a2e640d9982b0ced42a6829d8e157beee9a25b4.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Finite/Variant97f6e8845c93b4c346b21ce24a2e640d9982b0ced42a6829d8e157beee9a25b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
