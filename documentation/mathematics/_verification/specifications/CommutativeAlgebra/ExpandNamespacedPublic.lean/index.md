# Verification target: Expand Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e77cb70151853865ea8417b14363edcb62805e46",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Expand/Variant0e52f0c9531504161a277ebc8e30004cbb2bb80bf7fe08a83936fe097386d32a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/ExpandNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/ExpandNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e77cb70151853865ea8417b14363edcb62805e46`.

Source path: `GRWTSK/Algebra/Expand/Variant0e52f0c9531504161a277ebc8e30004cbb2bb80bf7fe08a83936fe097386d32a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Expand/Variant0e52f0c9531504161a277ebc8e30004cbb2bb80bf7fe08a83936fe097386d32a.lean.json)

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
| 1 | `def` | [expand](../../../../CommutativeAlgebra/ExpandNamespacedPublic.lean/declarations/expand.md) | 41 | `declaration-track:81d5948009381ebea721bd5ef7c070f7047fb72401497ad441e1f9e973ad471c` |
| 2 | `theorem` | [expand_apply](../../../../CommutativeAlgebra/ExpandNamespacedPublic.lean/declarations/expand-apply.md) | 44 | `result-track:0010adc9574b740dc36ee9a63af2298b5119d919edcdf82f4a0582dc8a068e14` |
| 3 | `theorem` | [expand_C](../../../../CommutativeAlgebra/ExpandNamespacedPublic.lean/declarations/expand-c.md) | 47 | `result-track:65d6d83f7cbe15be73e7f54a3df7b7767433a7de129575d59b244a3003696278` |
| 4 | `theorem` | [expand_mul_eq_comp](../../../../CommutativeAlgebra/ExpandNamespacedPublic.lean/declarations/expand-mul-eq-comp.md) | 51 | `result-track:1fc22116d340b837ccac34a2f2c2453b0c7d06e614c7c2c3f688296e50032d26` |
| 5 | `theorem` | [expand_mul](../../../../CommutativeAlgebra/ExpandNamespacedPublic.lean/declarations/expand-mul.md) | 56 | `result-track:2a7fd8bb671b49a1d6a2796fcec0478a06e39853bc6829d2df977a8810600f67` |
| 6 | `theorem` | [expand_smul](../../../../CommutativeAlgebra/ExpandNamespacedPublic.lean/declarations/expand-smul.md) | 60 | `result-track:14e990a831b365c5c8cd613de5a7a875217052960f3bc3d3e1c71266ad7d830b` |
| 7 | `theorem` | [expand_X](../../../../CommutativeAlgebra/ExpandNamespacedPublic.lean/declarations/expand-x.md) | 64 | `result-track:22ac7ea81f862786f2497fe35df96396b2c4ade8cc571448a614e9a42294cf1b` |
| 8 | `theorem` | [expand_monomial](../../../../CommutativeAlgebra/ExpandNamespacedPublic.lean/declarations/expand-monomial.md) | 68 | `result-track:1b4b762fb3fb4558bae372b7241873cd4c66e813480e5e27b0ce27089de4dd68` |
| 9 | `theorem` | [expand_one](../../../../CommutativeAlgebra/ExpandNamespacedPublic.lean/declarations/expand-one.md) | 73 | `result-track:274246094fc89334e6abfe6f18e3802bc002e26127e00a38e2ed040ce01b1e5e` |
| 10 | `theorem` | [expand_one_apply](../../../../CommutativeAlgebra/ExpandNamespacedPublic.lean/declarations/expand-one-apply.md) | 76 | `result-track:e50652c7939f92a4c70751ef92a26bdfda44d9cd932cde121e49de562c2ae15c` |
| 11 | `theorem` | [map_expand](../../../../CommutativeAlgebra/ExpandNamespacedPublic.lean/declarations/map-expand.md) | 79 | `result-track:ff591165e397f559ede24be6853c2f0f365d56cca089ae37d5ed0ffa9bddcc48` |
| 12 | `theorem` | [expand_subst](../../../../CommutativeAlgebra/ExpandNamespacedPublic.lean/declarations/expand-subst.md) | 83 | `result-track:966fd363ca7f0adcb9bafa94e3bbb08635bd66b1d07a24f12778d83199374d18` |
| 13 | `theorem` | [coeff_expand_mul](../../../../CommutativeAlgebra/ExpandNamespacedPublic.lean/declarations/coeff-expand-mul.md) | 95 | `result-track:26079c3efe29ec22166bbf8925c374579b4b5270b78d39cff5e946035a8cf9cf` |
| 14 | `theorem` | [constantCoeff_expand](../../../../CommutativeAlgebra/ExpandNamespacedPublic.lean/declarations/constantcoeff-expand.md) | 100 | `result-track:551782157be773ec7f24e24d0744d4644f422a29138ca7ba6a9df37a71efb9fc` |
| 15 | `theorem` | [coeff_expand_of_not_dvd](../../../../CommutativeAlgebra/ExpandNamespacedPublic.lean/declarations/coeff-expand-of-not-dvd.md) | 105 | `result-track:331b28ae9c95849f8b7b9fa96c35123bb1968f81baa6bee0456986bc0836ffd2` |
| 16 | `theorem` | [support_expand_subset](../../../../CommutativeAlgebra/ExpandNamespacedPublic.lean/declarations/support-expand-subset.md) | 110 | `result-track:3719a0c25d4bca3083c3f2775ca0080488131bf280d3f3a5301a7ed85ec80264` |
| 17 | `theorem` | [support_expand](../../../../CommutativeAlgebra/ExpandNamespacedPublic.lean/declarations/support-expand.md) | 114 | `result-track:783f876bd3a28f97be411a9246318ceb6c1440ad05f825ed803ded4177f95872` |
| 18 | `theorem` | [coeff_expand](../../../../CommutativeAlgebra/ExpandNamespacedPublic.lean/declarations/coeff-expand.md) | 118 | `result-track:9a7d39cf41b0f0438c94b2dde4bf752471ea818696af6b986d211ed598c4261a` |
| 19 | `theorem` | [order_expand](../../../../CommutativeAlgebra/ExpandNamespacedPublic.lean/declarations/order-expand.md) | 126 | `result-track:16a79b624c6fa06ab45055b1635e12a1471e378b70f394244a3ce9c2aaa39200` |
| 20 | `theorem` | [map_frobenius_expand](../../../../CommutativeAlgebra/ExpandNamespacedPublic.lean/declarations/map-frobenius-expand.md) | 133 | `result-track:e0b22b04865af05942af685e04c621f61923aa0d4c1d13a69898e947f6628686` |
| 21 | `theorem` | [map_iterateFrobenius_expand](../../../../CommutativeAlgebra/ExpandNamespacedPublic.lean/declarations/map-iteratefrobenius-expand.md) | 137 | `result-track:9e603e7882744c99ddc762d05f2035deb0cf8e1ed8aafc6af0511b82a5c71a91` |
| 22 | `theorem` | [Expand Namespaced Public](../../../../CommutativeAlgebra/ExpandNamespacedPublic.lean/declarations/expand-card.md) | 141 | `result-track:7537532df69b95f70d3f13cdb37786e994f8170ba2c3b40114a1605f1bfed399` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=50b15a696328aeef68c642e575da8b84a0697080fe36630ef616b9a374071943 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Expand/Variant0e52f0c9531504161a277ebc8e30004cbb2bb80bf7fe08a83936fe097386d32a.lean","GRWTSK/_verification/specifications/Algebra/Expand/Variant0e52f0c9531504161a277ebc8e30004cbb2bb80bf7fe08a83936fe097386d32a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
