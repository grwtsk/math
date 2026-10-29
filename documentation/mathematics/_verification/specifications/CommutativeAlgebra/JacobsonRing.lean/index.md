# Verification target: Jacobson Ring

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59e34e0f184baf6a3ede242a0820c02ea4e616a7",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ring/Variantaa39328182a8f313a05f68ef00b1997cfe82b0c0f89459240aed74833cb5947a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/JacobsonRing.lean/index.md) · [Full source](../../../../CommutativeAlgebra/JacobsonRing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59e34e0f184baf6a3ede242a0820c02ea4e616a7`.

Source path: `GRWTSK/Algebra/Ring/Variantaa39328182a8f313a05f68ef00b1997cfe82b0c0f89459240aed74833cb5947a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ring/Variantaa39328182a8f313a05f68ef00b1997cfe82b0c0f89459240aed74833cb5947a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.Away.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.GoingUp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Jacobson.Polynomial` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Artinian.Module` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsJacobsonRing](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/isjacobsonring.md) | 53 | `declaration-track:360f92970da24432c91d974ddf31dcd6de7094d9c2381467469a8ce4a8300e37` |
| 2 | `theorem` | [isJacobsonRing_iff](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/isjacobsonring-iff.md) | 56 | `result-track:818df079eb1efc9e2817b55e2cea2b3151dfc8e244ec94b06cbbf68d9aaf64a0` |
| 3 | `theorem` | [IsJacobsonRing.out](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/isjacobsonring-out.md) | 60 | `result-track:d4e27bf134b125cb7b3ff29be5d7a683edf96b5d91778c44600ae0099a48d0e7` |
| 4 | `theorem` | [isJacobsonRing_iff_prime_eq](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/isjacobsonring-iff-prime-eq.md) | 66 | `result-track:f910ec8809cb64144ab788c2dad426714bdf583e4a9a887e745e4624e0acc690` |
| 5 | `theorem` | [isJacobsonRing_iff_sInf_maximal](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/isjacobsonring-iff-sinf-maximal.md) | 80 | `result-track:00170ff03f13c3a87fb2f6c276c0f7d511dfd6ab79561b90e7ca4c898a3f6106` |
| 6 | `theorem` | [isJacobsonRing_iff_sInf_maximal'](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/isjacobsonring-iff-sinf-maximal-source-edition-2.md) | 86 | `result-track:5c2928383a15c51d11801165e17de13680a32fb33193faaba5de776373009fb7` |
| 7 | `theorem` | [Ideal.radical_eq_jacobson](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/ideal-radical-eq-jacobson.md) | 91 | `result-track:f5206ea68c55101e80c4d8cf4b96b949e79d2775e4b829874e327e2abe0798b5` |
| 8 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/instance-source-edition-3.md) | 95 | `declaration-track:ac2a005cdf2897fe625cf20a31ca8ae033a3a801b144cdcb3581a3fdd71feced` |
| 9 | `theorem` | [isJacobsonRing_of_surjective](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/isjacobsonring-of-surjective.md) | 98 | `result-track:18c14b34ec4ad48e668051c807e7744adc2f2da9f10090d23e7f001c358ae686` |
| 10 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/instance.md) | 109 | `declaration-track:414371d35a0780b47a4de3037183546bcdb414047bc6b57fce4b8b6e5f7889ec` |
| 11 | `theorem` | [isJacobsonRing_iso](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/isjacobsonring-iso.md) | 115 | `result-track:d2c527cbbb00528ec8c49d4198a2ad74e86f36392e4d475dc4014b56f4ed11c8` |
| 12 | `theorem` | [isJacobsonRing_of_isIntegral](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/isjacobsonring-of-isintegral-source-edition-2.md) | 119 | `result-track:9e5b1c3a63706f08176f41a8c1c0e6000e5098d19bb368d351cf6f8403a229fd` |
| 13 | `theorem` | [isJacobsonRing_of_isIntegral'](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/isjacobsonring-of-isintegral.md) | 138 | `result-track:4049b0cceae2ba2931cdcdc2587e3da95f14b7173d11515b84db8a62822dad67` |
| 14 | `theorem` | [IsLocalization.isMaximal_iff_isMaximal_disjoint](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/islocalization-ismaximal-iff-ismaximal-disjoint.md) | 158 | `result-track:a4cf8d27feb5e01e96b40ae4c9ab258c28396494fb07b2d2396792ff9ef2f646` |
| 15 | `theorem` | [IsLocalization.isMaximal_of_isMaximal_disjoint](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/islocalization-ismaximal-of-ismaximal-disjoint.md) | 190 | `result-track:0704ccef14325b8b6fd9cca176fb9904711f952fcc5a21bd17b21c5614edc536` |
| 16 | `def` | [IsLocalization.orderIsoOfMaximal](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/islocalization-orderisoofmaximal.md) | 200 | `declaration-track:2423449f3b256b0c5bdc711135b7d83e4e957ad0d0d4c678e0ea110ac31753c6` |
| 17 | `theorem` | [isJacobsonRing_localization](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/isjacobsonring-localization.md) | 214 | `result-track:b8158c7a3c90debb94fefff2e2ff45b8b5338d23271eb0c388af66437e4a3d14` |
| 18 | `lemma` | [Subring.mem_closure_image_of](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/subring-mem-closure-image-of.md) | 250 | `result-track:a1dc0595eb38656cac84ea1e2271408411b14e49ab44a3b1329d463eae6a9ec7` |
| 19 | `lemma` | [mem_closure_X_union_C](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/mem-closure-x-union-c.md) | 260 | `result-track:6f3ec1f4568cf205ddc5b70488fd4dc57a7f071d68fdca735b5cfbdaa35183d2` |
| 20 | `theorem` | [isIntegral_isLocalization_polynomial_quotient](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/isintegral-islocalization-polynomial-quotient.md) | 282 | `result-track:5d6e9a1ed72e608398050524cc286b7b1c28a739bc0d4ec625b4807b78a1271c` |
| 21 | `theorem` | [jacobson_bot_of_integral_localization](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/jacobson-bot-of-integral-localization.md) | 338 | `result-track:40e8608af537e29a697fc46167abd6c8642273f2aecd169a4528a1f6325a33c1` |
| 22 | `theorem` | [isJacobsonRing_polynomial_of_domain](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/isjacobsonring-polynomial-of-domain.md) | 384 | `result-track:0dfab8f550107b0fcd7a6e6444b4dd1f3d40fe553b2620be152ae7b53934a066` |
| 23 | `theorem` | [isJacobsonRing_polynomial_of_isJacobsonRing](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/isjacobsonring-polynomial-of-isjacobsonring.md) | 405 | `result-track:73a7c5af6a1d62618bda79f87c7b3c39470cb6d2c64edf7190b3ccaba39033d5` |
| 24 | `theorem` | [isJacobsonRing_polynomial_iff_isJacobsonRing](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/isjacobsonring-polynomial-iff-isjacobsonring.md) | 434 | `result-track:ba2f05606ab0ca838db3c63a0be6decd85cfec0159f37b69e35d538a9afea585` |
| 25 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/instance-source-edition-2.md) | 440 | `declaration-track:658922f54341202e46c060f7a1ed8558512718a888c4db514c430eb65e7e18de` |
| 26 | `theorem` | [isMaximal_comap_C_of_isMaximal](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/ismaximal-comap-c-of-ismaximal.md) | 450 | `result-track:5efc6cc3dbef77caf10b27c550119f81d5491bb139c38b2f682e730bd4914b3e` |
| 27 | `theorem` | [quotient_mk_comp_C_isIntegral_of_jacobson'](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/quotient-mk-comp-c-isintegral-of-jacobson.md) | 496 | `result-track:2cafc5d29a6b70e8867f6b0f34a18861d25e79e6e17a78930846ea30349a50bf` |
| 28 | `theorem` | [quotient_mk_comp_C_isIntegral_of_isJacobsonRing](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/quotient-mk-comp-c-isintegral-of-isjacobsonring-source-edition-2.md) | 535 | `result-track:238b152234225fe536f686455ff9065710de6842ced4b671ae02a06bd16d4431` |
| 29 | `theorem` | [isMaximal_comap_C_of_isJacobsonRing](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/ismaximal-comap-c-of-isjacobsonring.md) | 559 | `result-track:f10efca9adf8f190f66e5b541da2a1de34c0091f3412c7e90025aa5078a1647b` |
| 30 | `theorem` | [comp_C_integral_of_surjective_of_isJacobsonRing](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/comp-c-integral-of-surjective-of-isjacobsonring-source-edition-2.md) | 565 | `result-track:c2edd534c72611e8af743f60ef7e7504e789bd3e786161587a8edc8ed49cbebc` |
| 31 | `theorem` | [isJacobsonRing_MvPolynomial_fin](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/isjacobsonring-mvpolynomial-fin.md) | 585 | `result-track:ba2b46d57354bd232eaa5ea76eb35ae752c900ec5efb8a1598556fd390cf1a57` |
| 32 | `instance` | [isJacobsonRing](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/isjacobsonring-source-edition-2.md) | 596 | `declaration-track:bf8e23437eb794f351cb84c81b658f1d092d799d8fbed297633f8c4ea8ec873d` |
| 33 | `def` | [Cₐ](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/c.md) | 609 | `declaration-track:6eb82862c3257066a4ab5b0e3a81f64cc7096e0b8f95e3743a35b968abca15ac` |
| 34 | `lemma` | [aux_IH](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/aux-ih.md) | 613 | `result-track:60887c6b20c80d09e802c1ebefbc133c905e81d5f4e0ca53b140146478b73661` |
| 35 | `theorem` | [quotient_mk_comp_C_isIntegral_of_isJacobsonRing'](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/quotient-mk-comp-c-isintegral-of-isjacobsonring-source-edition-3.md) | 643 | `result-track:e93cc674d5a8e69a90d9e9f5ff54f77276fd22a1674026445becef20d99e8b20` |
| 36 | `theorem` | [quotient_mk_comp_C_isIntegral_of_isJacobsonRing](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/quotient-mk-comp-c-isintegral-of-isjacobsonring.md) | 653 | `result-track:205f4a0e1c3a421b14f58e818a96a4c1c9db32a06dd734b67bb12e87c61f908e` |
| 37 | `theorem` | [comp_C_integral_of_surjective_of_isJacobsonRing](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/comp-c-integral-of-surjective-of-isjacobsonring.md) | 660 | `result-track:8785792a18182a17c39f6a96dd8796ce15b56f0defdedae6bfaeb4efc573b1d8` |
| 38 | `lemma` | [isJacobsonRing_of_finiteType](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/isjacobsonring-of-finitetype.md) | 687 | `result-track:716c1a218a32efc5417640ab856db20fcf550a9da35b378bf3699d2bf064d4a9` |
| 39 | `lemma` | [RingHom.FiniteType.isJacobsonRing](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/ringhom-finitetype-isjacobsonring.md) | 692 | `result-track:ab322ab18f7d547013a24f6620bd1f248ac319c6aa6f709105470002f5c9113a` |
| 40 | `lemma` | [finite_of_finite_type_of_isJacobsonRing](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/finite-of-finite-type-of-isjacobsonring.md) | 697 | `result-track:6af166cca62427ac8d5d9cf456dbc96b3ce7f73df325f143c9e9be60e807d666` |
| 41 | `lemma` | [RingHom.finite_iff_finiteType_of_isJacobsonRing](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/ringhom-finite-iff-finitetype-of-isjacobsonring.md) | 713 | `result-track:9adfa87ee19a8e6fa41bb0b5c793de0bc14dd5b010bf82c9514fc0868ab044f8` |
| 42 | `theorem` | [finite_of_algHom_finiteType_of_isJacobsonRing](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/finite-of-alghom-finitetype-of-isjacobsonring.md) | 721 | `result-track:9e00bc6bfe27342b5b12d089e50a8d5a03d65f310024ec365c014db1f8d1f4f7` |
| 43 | `theorem` | [RingHom.finite_of_algHom_finiteType_of_isJacobsonRing](../../../../CommutativeAlgebra/JacobsonRing.lean/declarations/ringhom-finite-of-alghom-finitetype-of-isjacobsonring.md) | 735 | `result-track:4cd086302839d947a700835a45299d1b13de0925f0cddc9843fe0cbd7f73d657` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ffc87786fc643bf13bbaa8b178181fbac5b99183eb5a0985f57e04dbdae9107 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Ring/Variantaa39328182a8f313a05f68ef00b1997cfe82b0c0f89459240aed74833cb5947a.lean","GRWTSK/_verification/specifications/Algebra/RingTheory/Variantaa39328182a8f313a05f68ef00b1997cfe82b0c0f89459240aed74833cb5947a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
