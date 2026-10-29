# Verification target: Smeval

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "483bd1a95e7535a79dd90eb4333ee4f0c7575482",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Smeval/Variantbd4b0ad6e8fd7bb34383117029f2f9ace4d6f8525fb59cdce2846d9dcb911fa1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `483bd1a95e7535a79dd90eb4333ee4f0c7575482`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Smeval/Variantbd4b0ad6e8fd7bb34383117029f2f9ace4d6f8525fb59cdce2846d9dcb911fa1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Smeval/Variantbd4b0ad6e8fd7bb34383117029f2f9ace4d6f8525fb59cdce2846d9dcb911fa1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.NatPowAssoc` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.SMul` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smul_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smul-pow.md) | 48 | `declaration-track:c4dfc34b4b67d94840da1229c42fb0f4c69ceae4e6b2eb99a41e42965717292d` |
| 2 | `theorem` | [smeval_eq_sum](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smeval-eq-sum.md) | 54 | `result-track:8b8e8f81f7a7fbe7b9efebb63dde5f0ee915744d20d64a092a119c86ada36a44` |
| 3 | `theorem` | [smeval_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smeval-c.md) | 57 | `result-track:aa213a68735de78bb975e3eb3a77413d710f1e4cac5d172ff875531e8bda13a2` |
| 4 | `theorem` | [smeval_monomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smeval-monomial.md) | 61 | `result-track:6b44ba9d497b80a04b72019d12f732d3baf5c2787405f885d5691c6cf3d840de` |
| 5 | `theorem` | [eval_eq_smeval](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/eval-eq-smeval.md) | 65 | `result-track:34ef2387cbbaea33503417c7dc9857de7145c17344a2475021a03e8d82f718fd` |
| 6 | `theorem` | [eval₂_smulOneHom_eq_smeval](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/eval-smulonehom-eq-smeval.md) | 69 | `result-track:9f08eecd5c6b4bd4bf382127a1dbc711b3a51437643f9c5fb109aa41aa58b48b` |
| 7 | `theorem` | [smeval_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smeval-zero.md) | 79 | `result-track:5d8c50c4d447e4fe46ffd09b5423c21da30a75f473f4a6088426ac5d1497a8dc` |
| 8 | `theorem` | [smeval_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smeval-one.md) | 83 | `result-track:cca1306549e946c05cdc9e302656d69a05d466cbdba5acf7a727cad0454d7ad3` |
| 9 | `theorem` | [smeval_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smeval-x.md) | 88 | `result-track:3b945155b359cff3aaea0be2082ad2614c7bcf696b4ff7cbe25401ae63f2aa77` |
| 10 | `theorem` | [smeval_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smeval-x-pow.md) | 93 | `result-track:ce4a883bf99853aed4420426542a7985fa9b9eaed4c5124fa397f8dbe07ea8bf` |
| 11 | `theorem` | [smeval_add](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smeval-add.md) | 105 | `result-track:692dad429590cca32418ee2f65856eec7e8daf309defedf17197cd3a03dc667d` |
| 12 | `theorem` | [smeval_natCast](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smeval-natcast.md) | 111 | `result-track:cd8c685183a552432d043c70457a839800e6000c0728f37c3aa83010ca914e1c` |
| 13 | `theorem` | [smeval_smul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smeval-smul.md) | 117 | `result-track:d1b647e852d3c16f7aa1e5e3724fa43467235c9b1b8a9dd4c65487176a4fb032` |
| 14 | `def` | [smeval.linearMap](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smeval-linearmap.md) | 123 | `declaration-track:6bccffbfa899f6668c6face037364d3624aeb60dd1dcf34a94d47a48486ae627` |
| 15 | `theorem` | [smeval.linearMap_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smeval-linearmap-apply.md) | 129 | `result-track:307939547b3ad483f24dcb5e91282e0d2253a5bc798a43d1e600c74b2279d1f0` |
| 16 | `theorem` | [leval_coe_eq_smeval](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/leval-coe-eq-smeval.md) | 131 | `result-track:3f1c6fd21381dcf23da8fb9d63bd8408805e2ffa0bc2fdac0e8871a4ebd89503` |
| 17 | `theorem` | [leval_eq_smeval.linearMap](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/leval-eq-smeval-linearmap.md) | 138 | `result-track:bd0e9522e6d5689ab60a2e95b011640ef953652f5a00f606436af046286250f1` |
| 18 | `theorem` | [smeval_neg](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smeval-neg.md) | 152 | `result-track:347df30a23a0bd56f5d868286f0a1884c5b4ae9612aa3c968f6101885ba8c323` |
| 19 | `theorem` | [smeval_sub](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smeval-sub.md) | 156 | `result-track:334fda7c8ccd7108a13fa1771e8927615be780627a3afbc84b4572220b834322` |
| 20 | `theorem` | [smeval_neg_nat](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smeval-neg-nat.md) | 159 | `result-track:7350d06e6ce8f82dd879d7f5809f71a30d03f09b7d5fbd0ec8033a6753763f58` |
| 21 | `theorem` | [smeval_C_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smeval-c-mul.md) | 183 | `result-track:752641e24fb78e49e3b8393d289cbe1fdbb67e3f273913031c2a32af8bbb1f37` |
| 22 | `theorem` | [smeval_at_natCast](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smeval-at-natcast.md) | 190 | `result-track:681cb6e988a45b47449ea3a5a903c95198017aada6cf7452069b56b07db47a8d` |
| 23 | `theorem` | [smeval_at_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smeval-at-zero.md) | 199 | `result-track:70500e28708b9fcb935b1765b053a33edcb66fe7fdde5337deff387cb7bd35b0` |
| 24 | `theorem` | [smeval_X_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smeval-x-mul.md) | 211 | `result-track:147c504c8ddeda774bf34302e94175843d6054a78d1affa534fdd3eee9a0bab2` |
| 25 | `theorem` | [smeval_X_pow_assoc](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smeval-x-pow-assoc.md) | 218 | `result-track:a7b34357b819d9f5b6ab828f0f6857ee5e30e3e4f3642e6eb609c379a209a848` |
| 26 | `theorem` | [smeval_X_pow_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smeval-x-pow-mul.md) | 224 | `result-track:78d605b495d61a00a53175f256c1b9bc1e6888a725ec9340672fd451c0fb2115` |
| 27 | `theorem` | [smeval_monomial_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smeval-monomial-mul.md) | 231 | `result-track:264163330615a41f986098e6a1bd656086551fc4dee539749c58c5dfa0fa0dff` |
| 28 | `theorem` | [smeval_mul_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smeval-mul-x.md) | 244 | `result-track:f1b94e92b5ba30a29cc1df025bb5fd864f143a65f3c82f3b886da68cf60403d3` |
| 29 | `theorem` | [smeval_assoc_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smeval-assoc-x-pow.md) | 251 | `result-track:018313ffbc85dabbb894015c52392d98e2ac098dc1e6966f95d3f4a38a118ad9` |
| 30 | `theorem` | [smeval_mul_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smeval-mul-x-pow.md) | 258 | `result-track:62d549bc7cace2e03c88fe3c8cd5f7ae84cd4532378c48dd34a096ff042776a7` |
| 31 | `theorem` | [smeval_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smeval-mul.md) | 267 | `result-track:fb5487466a94143d3dcf6868455d5e40c48325b538d122246d26b9f4dd67dc02` |
| 32 | `theorem` | [smeval_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smeval-pow.md) | 273 | `result-track:674acda4d05a98a7d4cadd3b5f73f276c980ca723523420a8e2cf31a419a6cd3` |
| 33 | `theorem` | [smeval_comp](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smeval-comp.md) | 279 | `result-track:8a97fafe99722f8b732a609803a9ccd7d321dc1a9fdecdc225b093656c12693f` |
| 34 | `theorem` | [smeval_commute_left](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smeval-commute-left.md) | 291 | `result-track:1c1d5d6db5859025a3c9f80dee1a4aa9499a3aab3604efd2cfb0808fffb5e12f` |
| 35 | `theorem` | [smeval_commute](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/smeval-commute.md) | 305 | `result-track:3ea47188b699bff982c6413a6352725792a95c84c766a5c91c786150be8ced89` |
| 36 | `theorem` | [aeval_eq_smeval](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/aeval-eq-smeval.md) | 325 | `result-track:762938a5e15afd6fdaf28728e46764410b3286b7eff0031d66700235148d29cb` |
| 37 | `theorem` | [aeval_coe_eq_smeval](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/Smeval.lean/declarations/aeval-coe-eq-smeval.md) | 331 | `result-track:9de52741c15745d05a42ac1fab941c5e3a838b1df933b79b8cb789e984c7624c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6eb4a874d654fcc91f2d197899adf8f6974438cee2c32d457a907e99b872f129 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Smeval/Variantbd4b0ad6e8fd7bb34383117029f2f9ace4d6f8525fb59cdce2846d9dcb911fa1.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Smeval/Variantbd4b0ad6e8fd7bb34383117029f2f9ace4d6f8525fb59cdce2846d9dcb911fa1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
