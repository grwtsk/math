# Verification target: Polynomial Coeff Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13b9666e4c3036fb88db8011afae7dda62ca792b",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13b9666e4c3036fb88db8011afae7dda62ca792b`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MonoidAlgebra.Support` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coeff_add](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-add.md) | 45 | `result-track:411a47c2ae220ae710a303d910c2a50bd895dad51be12cdaeed4ef512c04b578` |
| 2 | `theorem` | [coeff_smul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-smul.md) | 52 | `result-track:1c909c6e78729b66fdb24d2f9b62e4373e057f930cd22ca753a218f884edcbbe` |
| 3 | `theorem` | [support_smul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/support-smul.md) | 58 | `result-track:fe5c234138fe26c9a5078799224360576510ec585d25052a7b0155d1d81701b1` |
| 4 | `theorem` | [card_support_mul_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/card-support-mul-le.md) | 66 | `result-track:d8c03fd2c20fb761a97e120876f3fc34d7789a4a01b26620486afc9991042651` |
| 5 | `def` | [lsum](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/lsum.md) | 75 | `declaration-track:938f584976d0d4e1b8e2d1feb40649bcc4ae726d2befb8550a9e4f57de579b13` |
| 6 | `def` | [lcoeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/lcoeff.md) | 85 | `declaration-track:816d97a4cb39ac0285d0ecc6e6e8b7bb0d56fab099e4be44fe924db23c8763d7` |
| 7 | `theorem` | [lcoeff_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/lcoeff-apply.md) | 91 | `result-track:b57e1127d5c928a0ebc593d0e42da8fc5c75144982109f848dba5b5f796d3da4` |
| 8 | `theorem` | [finset_sum_coeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/finset-sum-coeff.md) | 95 | `result-track:e448f7e6908ae1e14135ab45d1e1cb004f68834740f8513209e3503ea0517c21` |
| 9 | `lemma` | [coeff_list_sum](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-list-sum.md) | 99 | `result-track:edc1974b7f5796fdf9fb915281a9bfa6305ebf9ddbc4303bebb6b9458675d513` |
| 10 | `lemma` | [coeff_list_sum_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-list-sum-map.md) | 103 | `result-track:24782a07f7b31c68d34c39530922807b270dbfdb1d490d98c4a8b35389346540` |
| 11 | `theorem` | [coeff_sum](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-sum.md) | 108 | `result-track:ea753f947eb6399ec12628222c1276f990caff309d272dbed566e776bd1f18f5` |
| 12 | `theorem` | [coeff_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-mul.md) | 116 | `result-track:526a2fc8b76dd98facd02369381631e4ea705eacf8fa9315ced447b2450f8773` |
| 13 | `theorem` | [mul_coeff_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/mul-coeff-zero.md) | 123 | `result-track:767ac346a207987c35e57cac7ec21f4f8436af050f2a7d8fd0b397cb09524da4` |
| 14 | `theorem` | [mul_coeff_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/mul-coeff-one.md) | 125 | `result-track:53aa68723d32b8b25ad053cc9676de9dfe90605427e31ff0f766066339016f2b` |
| 15 | `def` | [constantCoeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/constantcoeff.md) | 133 | `declaration-track:63d3770e9db0b19cec2e3e0f2c0124b46934da5dad99afe988149fb6da9004dd` |
| 16 | `theorem` | [isUnit_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/isunit-c.md) | 140 | `result-track:b93b426cab8f8bdb8f2efa07e18dc752f2736d4e7b487074ee1e85506f59210f` |
| 17 | `theorem` | [coeff_mul_X_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-mul-x-zero.md) | 143 | `result-track:0af8dfb53746ae874482151708e682f803130b2129eb8bc85a4de75220b3d2a9` |
| 18 | `theorem` | [coeff_X_mul_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-x-mul-zero.md) | 145 | `result-track:d6c424cdb6c883e299f1bfb9b10a59d729eca5c9cf6bbe45635c8f718c44bba3` |
| 19 | `theorem` | [coeff_C_mul_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-c-mul-x-pow.md) | 147 | `result-track:9de2255fe2ae31b87f26a4d12cf2b8438d17d62de148213d7049b1a678abc84f` |
| 20 | `theorem` | [coeff_C_mul_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-c-mul-x.md) | 153 | `result-track:0b803cea2a870eb80f89f802bb4f0827c7603cd721f6e9b69e5e3e2c3e03f6c8` |
| 21 | `theorem` | [coeff_C_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-c-mul.md) | 157 | `result-track:2fba8fbe42e9db0acd7343dd488061556f56c17f16667c52510aa3a0cd7c48a8` |
| 22 | `theorem` | [C_mul'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/c-mul.md) | 162 | `result-track:38aa0b3ee2991226ee5678471ac2aa947d406e2d821166e8ece1a90cb5a5f77b` |
| 23 | `theorem` | [coeff_mul_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-mul-c.md) | 167 | `result-track:6f155d52b0935b0513414d49ef595b034ce020bdeb06e648169955c7c6d93084` |
| 24 | `lemma` | [coeff_mul_natCast](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-mul-natcast.md) | 172 | `result-track:e2551a2571a7c7fbe78bcc1a55fb99c1784e315d5a7c4287a4dee47fd9fe660c` |
| 25 | `lemma` | [coeff_natCast_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-natcast-mul.md) | 175 | `result-track:4388a6dceec380069086d803c22198ea93a27a68a0d293e26b04498afaf8c4fd` |
| 26 | `lemma` | [coeff_mul_ofNat](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-mul-ofnat.md) | 178 | `result-track:01853ba7b3c72ebbf9c4155d1cee47cbccd617236bc584609de88a85cd941e59` |
| 27 | `lemma` | [coeff_ofNat_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-ofnat-mul.md) | 181 | `result-track:f74938785b11fa73ed70a46aa9c9d0a657eb8026ef69dba3b8b863f7514c4211` |
| 28 | `lemma` | [coeff_mul_intCast](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-mul-intcast.md) | 184 | `result-track:aebfa9093a2bd68684a8052573f0d504cb2a36e042299a5b69574c44eae0381e` |
| 29 | `lemma` | [coeff_intCast_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-intcast-mul.md) | 187 | `result-track:e8faf81a23a24a8c08a72c9d30dca49966768da51fe2acdd3b28131a94dbb05e` |
| 30 | `theorem` | [coeff_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-x-pow.md) | 191 | `result-track:d1e9efb161e99ea13df8f1fcc3deaef3319f13466cc95f5db9f138599bedb33e` |
| 31 | `theorem` | [coeff_X_pow_self](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-x-pow-self.md) | 194 | `result-track:bb618c4a7bd948aa1bc09e6f7093f035c75889a20455204d26cfa35c1a70625a` |
| 32 | `theorem` | [support_binomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/support-binomial.md) | 200 | `result-track:6ea25a85b9979b33b5eb1b354ba38de144ef93432d1d6d3d87aa7bb791c98b16` |
| 33 | `theorem` | [support_trinomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/support-trinomial.md) | 207 | `result-track:817b77c384d0849149c89c95087a87f6311d373fe012095a6f77f48743166446` |
| 34 | `theorem` | [card_support_binomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/card-support-binomial.md) | 216 | `result-track:96f0f49d638904b6cf593fbedcc5eaa2d6da73f1e5e5e7686d20ccdd6b5393f4` |
| 35 | `theorem` | [card_support_trinomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/card-support-trinomial.md) | 220 | `result-track:b92a5b8cac723f3b0d7811b310ffcfd04f02432cc9cb03b42282dcbb196967b4` |
| 36 | `theorem` | [coeff_mul_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-mul-x-pow-source-edition-2.md) | 230 | `result-track:ef258aebe09487ee354eac6fce3031965ff036987b07e2d356aeae97b810b0a7` |
| 37 | `theorem` | [coeff_X_pow_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-x-pow-mul.md) | 243 | `result-track:667de3013bbd553a0fc6de46acf741ed65f0f90a2ba6b74b04abf735e6ece012` |
| 38 | `theorem` | [coeff_mul_X_pow'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-mul-x-pow.md) | 247 | `result-track:9b6039deb33fa977c888db6576b7157b3d2c71bc241240c1a55963dfe583647a` |
| 39 | `theorem` | [coeff_X_pow_mul'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-x-pow-mul-source-edition-2.md) | 255 | `result-track:ff4bda58c47fc5a894411666993f126814b5f92fcb98fb5a101d96a030c3b862` |
| 40 | `theorem` | [coeff_mul_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-mul-x.md) | 260 | `result-track:988b9e91653520f8e76f366265bdc71bce4e9923ad24ddccd095b800d62829d7` |
| 41 | `theorem` | [coeff_X_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-x-mul.md) | 264 | `result-track:690fbb8202ceb94d4b46fa3c6446222e3376cfe584e5378c782150246f61435b` |
| 42 | `theorem` | [coeff_mul_monomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-mul-monomial.md) | 267 | `result-track:2f096cee36867199ae0b801fd496adb458caaacf5fd83d4f66239763227dc255` |
| 43 | `theorem` | [coeff_monomial_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-monomial-mul.md) | 271 | `result-track:e1bdde7242559b94639690981ebe5759c930c287678d0b44062b42e8d758a2ae` |
| 44 | `theorem` | [coeff_mul_monomial_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-mul-monomial-zero.md) | 276 | `result-track:253941459157d3cfb2ac61af26a0c2e26d9bca2287e097fbfe6a0f99e2df953a` |
| 45 | `theorem` | [coeff_monomial_zero_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-monomial-zero-mul.md) | 281 | `result-track:4026b41dea0ec3fdde99a538bff965cbe26731e82b8553b931f994bb58768ba3` |
| 46 | `theorem` | [mul_X_pow_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/mul-x-pow-eq-zero.md) | 285 | `result-track:af1bdb7778c2e0b0a31e95bddf570ea99b872cd0a78375e47946020a780a25ad` |
| 47 | `theorem` | [isRegular_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/isregular-x-pow.md) | 288 | `result-track:3d8f0ca9b12bf213143c68a914bc4f04ef9f2a598f17f63808482fba3febfe53` |
| 48 | `theorem` | [isRegular_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/isregular-x.md) | 295 | `result-track:82775e82da897ddd41ac5a4fd25ac59dd8637d1ba8c8d266db7684dab78d5a0c` |
| 49 | `theorem` | [coeff_X_add_C_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-x-add-c-pow.md) | 297 | `result-track:5550843a0eb8713ebbce4a26aafdb74c1d99c7de76a80fc527ee7ec68acc8b9d` |
| 50 | `theorem` | [coeff_X_add_one_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-x-add-one-pow.md) | 308 | `result-track:28a4a51b1b1b6e4eca95ce86ec28d346c317bebfc79361177179d3fcd9af9f12` |
| 51 | `theorem` | [coeff_one_add_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/coeff-one-add-x-pow.md) | 311 | `result-track:6c385481be352ec7204fdd30ae38e534bf9bd797848def0e859cc8bd9d52af04` |
| 52 | `theorem` | [C_dvd_iff_dvd_coeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/c-dvd-iff-dvd-coeff.md) | 314 | `result-track:aba1fa3d59e3c86837f440b1266c2e24179159b76cace4cbe7960468791d8ff8` |
| 53 | `theorem` | [smul_eq_C_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/smul-eq-c-mul.md) | 333 | `result-track:d0545a2403b4b20aa7560392a8a786ca52f5c20e35fc7a551ebc7d8018e6661b` |
| 54 | `theorem` | [update_eq_add_sub_coeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/update-eq-add-sub-coeff.md) | 335 | `result-track:3ec000e434856d7d10e17a954dd4d8d9c7850b841ceb21c3632001405fbdc088` |
| 55 | `theorem` | [natCast_coeff_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/natcast-coeff-zero.md) | 345 | `result-track:6d33ece0d265598d3af58d6e0ca64b1637bc4c56094186d1572941de67c06612` |
| 56 | `theorem` | [natCast_inj](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/natcast-inj.md) | 349 | `result-track:f5b161fa1bb11043aa1e3109aebaaf2a175872e11f170484b1a48ae35ab61b5c` |
| 57 | `theorem` | [intCast_coeff_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/intcast-coeff-zero.md) | 359 | `result-track:f1d09db319e3319c82c6d24de619e51d5c492865d2eba7fb3257e4dcfe5acc39` |
| 58 | `theorem` | [intCast_inj](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/intcast-inj.md) | 363 | `result-track:52fc1aa0601a7fa4e414b38feeb845a4b9a21aced01d3ffce1b16ad75c463dfb` |
| 59 | `instance` | [charZero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/charzero.md) | 373 | `declaration-track:97a63392f76a8cb8a6010766ef61c6cb001051f965e8ca3a47e614cab9365974` |
| 60 | `instance` | [charP](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/declarations/charp.md) | 375 | `declaration-track:5d629aeb55347e2553689c9ba28c6f57c8ba4a7d9955371502e52d6c4b6b39ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2cd93ec2373e4b9731814fb0673b18736a9a6d958297a48513a0eafb1d9f6d7b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
