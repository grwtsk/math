# Verification target: Algebra Polynomial Reverse Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29062b5ab82c0ee24904586a14ad4c76993c79af",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variant495bd4ea05d31e61793fdd8954ec12435e0240ee74f685ef4b30f35e7c485bec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29062b5ab82c0ee24904586a14ad4c76993c79af`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variant495bd4ea05d31e61793fdd8954ec12435e0240ee74f685ef4b30f35e7c485bec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Reverse/Variant495bd4ea05d31e61793fdd8954ec12435e0240ee74f685ef4b30f35e7c485bec.lean.json)

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
| 1 | `def` | [revAtFun](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/revatfun.md) | 45 | `declaration-track:c0b6bbce2464c6d88c7d530836120e16376e79445d431f4eac27356183a04216` |
| 2 | `theorem` | [revAtFun_invol](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/revatfun-invol.md) | 48 | `result-track:17936080616b260acaa9dde2992ba10b8ad30e8b726bfd87c12916324aaf7de1` |
| 3 | `theorem` | [revAtFun_inj](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/revatfun-inj.md) | 52 | `result-track:27116f8195b611be4c83dcf9b0126fbdf85c2d8aec4d4ff2ff96ae2f67cfa6ce` |
| 4 | `def` | [revAt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/revat.md) | 60 | `declaration-track:ab62adc8127ea85a58e2c23154b36fd375814fc52e3d29ebf6b0b9ca7a2cc6ff` |
| 5 | `theorem` | [revAtFun_eq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/revatfun-eq.md) | 66 | `result-track:41160ba20b63ae2dd0a171fc98d0b8a4a22838561ffd27a818401ea62e3bfc7e` |
| 6 | `theorem` | [revAt_invol](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/revat-invol.md) | 70 | `result-track:9e14024b7606f2b2b794046966a4baf4ef0f3971bc6eac73b52d5fd0da0d699d` |
| 7 | `theorem` | [revAt_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/revat-le.md) | 74 | `result-track:4009359a0261482165d4559f4ecc76868242db8abca30fb8f87053d4db96f8af` |
| 8 | `lemma` | [revAt_eq_self_of_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/revat-eq-self-of-lt.md) | 78 | `result-track:93313c05b57124cc1ef06fc25d075c0c98e058194939361548f12e9789d2a6af` |
| 9 | `theorem` | [revAt_add](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/revat-add.md) | 80 | `result-track:3e6c8e5f0440c3bc7a3cd99240f3256cbd80f96e17d1506c55753e4cbd6862b8` |
| 10 | `theorem` | [revAt_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/revat-zero.md) | 88 | `result-track:30610451a259e6dd99ecb991c998f7abc8cc823a291f662cda681460513dfa7b` |
| 11 | `def` | [reflect](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reflect.md) | 96 | `declaration-track:fc4aea1f8dc04a4813825db4ed98c7dff14f7bc3c810bd996303512ad4280ec3` |
| 12 | `theorem` | [reflect_support](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reflect-support.md) | 99 | `result-track:3d7d2d2a2f777f4154200a1eada0426cedb2811b61e7608accbb50d3981a0c57` |
| 13 | `theorem` | [coeff_reflect](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/coeff-reflect.md) | 103 | `result-track:8cb35f9028e4b4023f96f5f4ea3fa2f5d0f3e51a3e434a32696aa2832db7f210` |
| 14 | `lemma` | [reflect_reflect](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reflect-reflect.md) | 111 | `result-track:1a36012ae266a211d02b285ee7562c969495fefee85fe15440640a3f1d5987ba` |
| 15 | `theorem` | [reflect_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reflect-zero.md) | 114 | `result-track:39a853181554fd839c1530e85abf1fd89b2d5b73b7c7903bad26dc26f83eced2` |
| 16 | `lemma` | [reflect_eq_zero_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reflect-eq-zero-iff.md) | 118 | `result-track:05e2edd26c608479f27b259851f21883c680d3d78b1720987a31fd76a4f98d9b` |
| 17 | `theorem` | [reflect_add](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reflect-add.md) | 121 | `result-track:0c28e934535d34be4dd6f90cd239ec373136a907834c81be2f0ecfb76222e01f` |
| 18 | `theorem` | [reflect_C_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reflect-c-mul.md) | 126 | `result-track:b4eab85d765175719eadcc8bf7185f7bdd9b6e25d302ee5b1cd4729680799414` |
| 19 | `theorem` | [reflect_C_mul_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reflect-c-mul-x-pow.md) | 130 | `result-track:194c63af04f67563d5cff65325a5ddf5549d17911e16f0b2f45594237e1e9541` |
| 20 | `theorem` | [reflect_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reflect-c.md) | 135 | `result-track:c3a9170fedbcecbf51a2f5321de5aede11832cc9fd233e3cc86ea9377b653c6a` |
| 21 | `theorem` | [reflect_monomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reflect-monomial.md) | 139 | `result-track:893ede9c6267688d39bbd0b9ff0b041ed6c1bd697a1b2f4dcdcaf163536c0e76` |
| 22 | `lemma` | [reflect_one_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reflect-one-x.md) | 142 | `result-track:9e063106995bf34729cb482bda58d9d06a9c6e53e283e03c05c8f593560263e9` |
| 23 | `lemma` | [reflect_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reflect-map.md) | 145 | `result-track:51b93d94b00c136438f4de6f3ec1f38044df7d4b82b8b335068720bcbac5e7a1` |
| 24 | `lemma` | [reflect_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reflect-one.md) | 150 | `result-track:b54a84adc83a783700050e6b8c87c36ddc4a2c2b84a091c361ffe4553ab857b2` |
| 25 | `theorem` | [reflect_mul_induction](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reflect-mul-induction.md) | 153 | `result-track:52a7ad155f53ee9916bdaa1cee03c9de1230f7b97a6444a53794d217b9851f79` |
| 26 | `theorem` | [reflect_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reflect-mul.md) | 184 | `result-track:793dc97253cf20180f5e6a5386a63f4a5d38a3de1cca9257bcbb1762a3cd5169` |
| 27 | `lemma` | [natDegree_reflect_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/natdegree-reflect-le.md) | 189 | `result-track:d42eaed374ae1affe70e997143d0545677faa52c1761dcb91c172cbc8ecf860d` |
| 28 | `theorem` | [eval₂_reflect_mul_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/eval-reflect-mul-pow.md) | 198 | `result-track:cbd207eddc0d549cd6215e23a2447460c28cfb12c3df3badd1feaf8e700c2c98` |
| 29 | `theorem` | [eval₂_reflect_eq_zero_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/eval-reflect-eq-zero-iff.md) | 211 | `result-track:020ed938c3303386ffe0168fcbd3c372d149ebd945dca416956470e33b892131` |
| 30 | `def` | [reverse](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reverse.md) | 225 | `declaration-track:b950e615ae2d516b532ab1663f3b4e89c3ca84e7710eb9ada408ecc1bc645863` |
| 31 | `theorem` | [coeff_reverse](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/coeff-reverse.md) | 228 | `result-track:0d3e82aa70dbb14a98846decb5c9638075afe5b80caa948d692db62446f3ddb3` |
| 32 | `theorem` | [coeff_zero_reverse](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/coeff-zero-reverse.md) | 232 | `result-track:6703168cb92ff0888c8e7c2b5500e0bd8cdf7223fba8a67e7f076414ceba8593` |
| 33 | `theorem` | [reverse_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reverse-zero.md) | 236 | `result-track:04e8a2066236c8d74b0551d1cc3649e62a385e473b5be7dd2f9a47860fb7dd6b` |
| 34 | `theorem` | [reverse_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reverse-eq-zero.md) | 240 | `result-track:e348a2eb554f23af470b17691c705d45c8d0f94637eb90fdaeb25d06c60fbcb0` |
| 35 | `theorem` | [reverse_natDegree_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reverse-natdegree-le.md) | 243 | `result-track:9421b395285219b435328b4d18afe6231ef948f9c4b70a2d6d80e7cb381913c7` |
| 36 | `theorem` | [natDegree_eq_reverse_natDegree_add_natTrailingDegree](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/natdegree-eq-reverse-natdegree-add-nattrailingdegree.md) | 250 | `result-track:b7f03cf00bbcc50460ca7aa5ed004f3762d9cb87be01729fecd9ab4d616953b7` |
| 37 | `theorem` | [reverse_natDegree](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reverse-natdegree.md) | 264 | `result-track:4bc0afb708a4e8ac611398bad4fb5af819a9b143a4698f20d02ddd6e08b1d050` |
| 38 | `theorem` | [reverse_leadingCoeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reverse-leadingcoeff.md) | 267 | `result-track:c6b015e2a3a77973d942c04a6c085d8329a55d36388612ac3820455e93f45d44` |
| 39 | `theorem` | [natTrailingDegree_reverse](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/nattrailingdegree-reverse.md) | 271 | `result-track:9e45492645884f64536dc20385f18239ce6e2342cdf05f810e531dd5623d6e1d` |
| 40 | `theorem` | [reverse_trailingCoeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reverse-trailingcoeff.md) | 275 | `result-track:fa3736307e12ba2cc277bf385dcea0bf4f84a70a65b6220690d1ffc4fbb5dfdd` |
| 41 | `theorem` | [reverse_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reverse-mul.md) | 278 | `result-track:7e7d9a27e77f04cdc0074d060bcf0480d5ab2766ae9e022a0d5acd44abb6d61e` |
| 42 | `theorem` | [reverse_mul_of_domain](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reverse-mul-of-domain.md) | 284 | `result-track:12f0ec73c5c3ec57611df1afc0f1f29be27794d2aca480bd84c69feff17315b0` |
| 43 | `theorem` | [trailingCoeff_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/trailingcoeff-mul.md) | 292 | `result-track:06d95fb9f0813e36c58fd59ecc8c4cb1fbc63dd5908fd135fe400ba3d929b92b` |
| 44 | `theorem` | [coeff_one_reverse](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/coeff-one-reverse.md) | 298 | `result-track:68d2222805e23d85ddb157dc55d540cc8b0f33d60efbbb8780a6160d3089d91b` |
| 45 | `lemma` | [reverse_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reverse-c.md) | 306 | `result-track:d42868d005b68a151b5bb3f353680fe791523fbd3dd590185f4fb2c5dff49684` |
| 46 | `lemma` | [reverse_mul_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reverse-mul-x.md) | 310 | `result-track:fe9964bd41bfc33f00b61309b5ad98b5d6fd7e9bdf6a9bf468f4f294b7295559` |
| 47 | `lemma` | [reverse_X_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reverse-x-mul.md) | 316 | `result-track:fda49859a6047f9f3bc811025cad1585e39054a5274ef26657b49bc5ac47faed` |
| 48 | `lemma` | [reverse_mul_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reverse-mul-x-pow.md) | 319 | `result-track:0bf384894030e3732f85b4c74365e6e5dbedf1d416626de8745d07a8d852714f` |
| 49 | `lemma` | [reverse_X_pow_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reverse-x-pow-mul.md) | 324 | `result-track:1dd1a3f47bf0262278d4c13456bc9eaa90eb8e8eb12d556fedaa1877216591e1` |
| 50 | `lemma` | [reverse_add_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reverse-add-c.md) | 327 | `result-track:c54d9c1b9739a05ebca75b0e79e654c3c0701349302fa98c56c276c44b85acf9` |
| 51 | `lemma` | [reverse_C_add](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reverse-c-add.md) | 331 | `result-track:8029152882eaf0de2174de5d10155c26df799918f6e2c2a7aa8cccb5ad8a1a8f` |
| 52 | `theorem` | [eval₂_reverse_mul_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/eval-reverse-mul-pow.md) | 339 | `result-track:b3a22b7d5e2fa9ba361bdb55226ace97652c00227236a356c550d69eb6ee5294` |
| 53 | `theorem` | [eval₂_reverse_eq_zero_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/eval-reverse-eq-zero-iff.md) | 344 | `result-track:5eca175972862da68a2ae962bda4ece74569eeb758d17f88303537270e9f29ce` |
| 54 | `theorem` | [reflect_neg](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reflect-neg.md) | 357 | `result-track:ee9d80afde282141fefbddb837ac72b9a72f213e208cb34d0f206dddba14a44e` |
| 55 | `theorem` | [reflect_sub](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reflect-sub.md) | 361 | `result-track:df1fc564823c39fc2fbc1e45936d23b33529523c1a3e72ddaa6e2a08e6139d4f` |
| 56 | `theorem` | [reverse_neg](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialReverseNamespacedPublic.lean/declarations/reverse-neg.md) | 365 | `result-track:8063cb3d2ad32f54339e113ffa5e93c5c7ea3abe7c48f7994188ab526aa086ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c5de0c13def1a0451e7ca14398d3b22981402921907e19550d8960e1adff2a2a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variant495bd4ea05d31e61793fdd8954ec12435e0240ee74f685ef4b30f35e7c485bec.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Reverse/Variant495bd4ea05d31e61793fdd8954ec12435e0240ee74f685ef4b30f35e7c485bec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
