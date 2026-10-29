# Verification target: Polynomial Coeff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a921e3c4585fb4c4716485ab6e4c1826c4b2ac19",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Coeff/Varianta3864ce60e872189ec8d47e29ad5833007600e6717ed2b0216a20c408c4bac0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a921e3c4585fb4c4716485ab6e4c1826c4b2ac19`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Coeff/Varianta3864ce60e872189ec8d47e29ad5833007600e6717ed2b0216a20c408c4bac0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Coeff/Varianta3864ce60e872189ec8d47e29ad5833007600e6717ed2b0216a20c408c4bac0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MonoidAlgebra.Support` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coeff_add](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-add.md) | 37 | `result-track:08d0b9b7ed4bf789190cd2d92c48535a4cac62cc71617561bfcaad006c26e930` |
| 2 | `theorem` | [coeff_smul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-smul.md) | 44 | `result-track:cb98d938fd9b6f74dddd2307db431860fb1498b26e0eaeea9fdd1e0cae1ea3a1` |
| 3 | `theorem` | [support_smul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/support-smul.md) | 50 | `result-track:401d5a46e590eac3de7333232d20a3ee8058f5fd7a52b131427b411755ee9b47` |
| 4 | `theorem` | [card_support_mul_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/card-support-mul-le.md) | 58 | `result-track:da103f769283c8ed3d909588a23e48d06474c9d27384fc85f35f14c7b9521734` |
| 5 | `def` | [lsum](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/lsum.md) | 67 | `declaration-track:e74e3ab6b7281c479f94cd8e163b2653d17d2ca14afc2f9584be63b2aa53d0e8` |
| 6 | `def` | [lcoeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/lcoeff.md) | 77 | `declaration-track:3e6d736868e5706eaad9cb5d4db2f7d4d73f9c121daf62b6dbe2b6d04877c4de` |
| 7 | `theorem` | [lcoeff_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/lcoeff-apply.md) | 83 | `result-track:fc9a1742065041af997241946e106b0bc625a1d9ab5a008a069ab5d581734a40` |
| 8 | `theorem` | [finset_sum_coeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/finset-sum-coeff.md) | 87 | `result-track:957448890a600d13ccb31fdf733be7e4a4b34f0301ef6767478ae08748587fe1` |
| 9 | `lemma` | [coeff_list_sum](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-list-sum.md) | 91 | `result-track:c5559368419daae4dd0304b3de80e5a0400971b13cb1d4b07c38900bda6dacc9` |
| 10 | `lemma` | [coeff_list_sum_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-list-sum-map.md) | 95 | `result-track:20b921c3ce821f780b1c748f5966e32d11a6637cba03e0d0d7b78cbdbfb391a7` |
| 11 | `theorem` | [coeff_sum](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-sum.md) | 100 | `result-track:c5cb062ab2e0d636b962294bcf48e210e08cd6bb433c79335030630481a1d373` |
| 12 | `theorem` | [coeff_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-mul.md) | 108 | `result-track:89834ff86b0cb2c316a47cd990ac2c644bacd67c56f11ee9e0e9a07d96d11798` |
| 13 | `theorem` | [mul_coeff_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/mul-coeff-zero.md) | 115 | `result-track:d455027d7d3085482e7dba1b5febc1d7011c1be5f3662e05dc155894b0a94192` |
| 14 | `theorem` | [mul_coeff_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/mul-coeff-one.md) | 117 | `result-track:dedb29493baba92b81e4f16524295277d6b0acb45e7d7d977021b7667d2cd794` |
| 15 | `def` | [constantCoeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/constantcoeff.md) | 125 | `declaration-track:ff09783630925c5b79d79c93bc7de7c9cdc2fbc1fb76952c85ba9d67eff9e78a` |
| 16 | `theorem` | [isUnit_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/isunit-c.md) | 132 | `result-track:480c79d35fc23345738f04681a1bca44cfbb03c99b36b8d6306ece3a18222d6a` |
| 17 | `theorem` | [coeff_mul_X_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-mul-x-zero.md) | 135 | `result-track:55393fb797b514d9ac0cd899987e92c480a88698924ffd9c1e1c9d40e9870370` |
| 18 | `theorem` | [coeff_X_mul_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-x-mul-zero.md) | 137 | `result-track:2b89b59cea36c60f2a00882613805cefe91ed357f3903f1a772d92b0f354c5d5` |
| 19 | `theorem` | [coeff_C_mul_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-c-mul-x-pow.md) | 139 | `result-track:7505bc98f63c4fe00bf929e5458a7b9dc2046b8966dc4197c255d57dd00fcb55` |
| 20 | `theorem` | [coeff_C_mul_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-c-mul-x.md) | 145 | `result-track:358f8057ebae7b8d5fa88af1dbf0b3534ef509ccf750457df53b117c96622155` |
| 21 | `theorem` | [coeff_C_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-c-mul.md) | 149 | `result-track:8754eeb1a94848cb8821c19904c1c5a24f74259793b7c118fa3269ba656b3356` |
| 22 | `theorem` | [C_mul'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/c-mul.md) | 154 | `result-track:e8fd036635077484dd8954339e27e4840f1b7c8445dde1f87f51d3257978d65e` |
| 23 | `theorem` | [coeff_mul_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-mul-c.md) | 159 | `result-track:5303f7eb93f895660108f4c12b1fc05732d62b5a609678ca404ea3e6b6f3f8ac` |
| 24 | `lemma` | [coeff_mul_natCast](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-mul-natcast.md) | 164 | `result-track:92b7675c0dbbdb4ef48d559299a9458eaf890502e55730459186ccd74e164a92` |
| 25 | `lemma` | [coeff_natCast_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-natcast-mul.md) | 167 | `result-track:9e46b1295f101144aa7bf3c24a0c2cb6b701fc0618abfa444640a269f24923de` |
| 26 | `lemma` | [coeff_mul_ofNat](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-mul-ofnat.md) | 170 | `result-track:e625a8a7ec1a4345778a6fb498f74189e1235f9b67335805d5b2d83753c4c846` |
| 27 | `lemma` | [coeff_ofNat_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-ofnat-mul.md) | 173 | `result-track:1c43a324cfc776fa4743e847e36dacb2177f388227db11d74da4326cf4460f0e` |
| 28 | `lemma` | [coeff_mul_intCast](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-mul-intcast.md) | 176 | `result-track:7ce4142a499807f11c47cf5c1298884db43e375bc5573c8166cd25c6e8e48992` |
| 29 | `lemma` | [coeff_intCast_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-intcast-mul.md) | 179 | `result-track:3c550656228b0d327867de5cf6e822f7a0cb8896ed720cacea8113f2bb788a34` |
| 30 | `theorem` | [coeff_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-x-pow.md) | 183 | `result-track:1c49306cf96070d1aeef6e65b336279e22b711a7ffe1b5a80cea06d17f2363b8` |
| 31 | `theorem` | [coeff_X_pow_self](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-x-pow-self.md) | 186 | `result-track:3912c3e48e6e0b98435f8940b01f2d50fd927af6070b6b49e0aba1ce9abb2f70` |
| 32 | `theorem` | [support_binomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/support-binomial.md) | 192 | `result-track:dc3f3725f1179846c9543d913342e4a1e1a6040e95a5d314af179c50a51c26c3` |
| 33 | `theorem` | [support_trinomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/support-trinomial.md) | 199 | `result-track:e9558bbf4e528538b1387b546d695d592b69bca87b67a3bb7b8587091bdee84f` |
| 34 | `theorem` | [card_support_binomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/card-support-binomial.md) | 208 | `result-track:76dd8dbe745829c1d7eb19767bfd3af40ba9ac6a3faae48eed7bdc70155840b5` |
| 35 | `theorem` | [card_support_trinomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/card-support-trinomial.md) | 212 | `result-track:9a71f6b48e3425df1320c145c933c8ad54e67f2eb5467bc0dcc2d01a31be04a7` |
| 36 | `theorem` | [coeff_mul_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-mul-x-pow-source-edition-2.md) | 222 | `result-track:cbe6d93cf0ac8ec77172ffa8ed70762b80302a1815c3400d65438d9e4eeb28e2` |
| 37 | `theorem` | [coeff_X_pow_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-x-pow-mul.md) | 235 | `result-track:b350d6ebb52710dc23500b178322ccc9e4c743769cb7dc6d3698ad1db21f90c7` |
| 38 | `theorem` | [coeff_mul_X_pow'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-mul-x-pow.md) | 239 | `result-track:a43b58d1352ccb3b7f6470c2e3b3e07294792190da907c4f32c626d5b0c95f7a` |
| 39 | `theorem` | [coeff_X_pow_mul'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-x-pow-mul-source-edition-2.md) | 247 | `result-track:e2d4d42b0cceb273e96927500404af9f36aa6abd9be77991a874b0ec8082f64a` |
| 40 | `theorem` | [coeff_mul_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-mul-x.md) | 252 | `result-track:213d6bff1a7d4225f86e2b7c134c647fdb0c796dfa00bb790e0bebf6cb0e66cb` |
| 41 | `theorem` | [coeff_X_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-x-mul.md) | 256 | `result-track:ae132f39d505c58e4edbdc072fecd26e29c2043d1975696178e736a0b1992651` |
| 42 | `theorem` | [coeff_mul_monomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-mul-monomial.md) | 259 | `result-track:32e3a3fe13f81b9e4c27a4374188546c893e7113e0e8989627342e9f4c4540f2` |
| 43 | `theorem` | [coeff_monomial_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-monomial-mul.md) | 263 | `result-track:3ab6ae96807f1d5de50640e53585097d0fb62ca7071ca86df080bcefe9f57359` |
| 44 | `theorem` | [coeff_mul_monomial_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-mul-monomial-zero.md) | 268 | `result-track:4ccd6bc236b4e27d363927b9b264a80aa139439eccf097389be73801a5e4f92a` |
| 45 | `theorem` | [coeff_monomial_zero_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-monomial-zero-mul.md) | 273 | `result-track:322af572b04719ad42bf0ddc059fbfb23c4af98a66d23d8f4f331b8c25bffdf3` |
| 46 | `theorem` | [mul_X_pow_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/mul-x-pow-eq-zero.md) | 277 | `result-track:fc6cf2f7abebc9e9b91d9f03e8cea9896cd2c2f7676e1d8d3428cc2652824462` |
| 47 | `theorem` | [isRegular_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/isregular-x-pow.md) | 280 | `result-track:9c14b11327e854a9b993f9dc2372bcfc61f691113e689b21abde3ab088033b76` |
| 48 | `theorem` | [isRegular_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/isregular-x.md) | 287 | `result-track:1257e37bc23604045c5206d2afcf53cc6fba7fa79f2a2a33a3cce98c49b0b3f7` |
| 49 | `theorem` | [coeff_X_add_C_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-x-add-c-pow.md) | 289 | `result-track:533ef375d9bea7ec496e7d46d8ac927cb4062d30723f26abee1d89cfd8923980` |
| 50 | `theorem` | [coeff_X_add_one_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-x-add-one-pow.md) | 300 | `result-track:cbfa8e75c0a17670c1d3fcd7469a2ad3d6b77fab51ec6abe8d82cbacebd9e669` |
| 51 | `theorem` | [coeff_one_add_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/coeff-one-add-x-pow.md) | 303 | `result-track:73ef4277eeb79a2452dd84b9b6224dc1d92a15f464e2b2ecb1e0125120b44c20` |
| 52 | `theorem` | [C_dvd_iff_dvd_coeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/c-dvd-iff-dvd-coeff.md) | 306 | `result-track:8d476a623a75302fcaa2427641fc8af509df71b71435b79b75818d4c1344cad0` |
| 53 | `theorem` | [smul_eq_C_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/smul-eq-c-mul.md) | 325 | `result-track:69bf97ffb9b2c1d71b67ced3edf9d90f6c489a4c794c7406663acf31ea57e444` |
| 54 | `theorem` | [update_eq_add_sub_coeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/update-eq-add-sub-coeff.md) | 327 | `result-track:8e1dd61057eaa2672e87a02314bb28968b5a5587405bb10e73b52bddc40833a8` |
| 55 | `theorem` | [natCast_coeff_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/natcast-coeff-zero.md) | 337 | `result-track:40400f3b53aad1a199da5c68372f8f2b945d653a145b1c3ebcb1b76243843250` |
| 56 | `theorem` | [natCast_inj](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/natcast-inj.md) | 341 | `result-track:fc581bbb488125ee8f8b0aca920c74eca8d8daa89a861ddc07a1d6307b1dff2b` |
| 57 | `theorem` | [intCast_coeff_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/intcast-coeff-zero.md) | 351 | `result-track:589c09a208b8d9239cbc0958ef9dcb974e2fa0779dc3d580751586b8cbde28c6` |
| 58 | `theorem` | [intCast_inj](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/intcast-inj.md) | 355 | `result-track:a3b8e081e7224a0821a41097852a74523cd3584c15d903d39a17fd1c4b770c3b` |
| 59 | `instance` | [charZero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/charzero.md) | 365 | `declaration-track:813ad408009dbd9c2dd8415433ecd3f0f176cee53fbccd0706628553b3b4b8bb` |
| 60 | `instance` | [charP](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeff.lean/declarations/charp.md) | 367 | `declaration-track:6a29c3069f9416a7e948dc51dba2e8650f1a9f46f6ef8f27e44928cb07bebaa8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ebc7a1580d6192191c118c51a2242d6ffd7232b477360b82ba3debaa717ae34 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Coeff/Varianta3864ce60e872189ec8d47e29ad5833007600e6717ed2b0216a20c408c4bac0b.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Coeff/Varianta3864ce60e872189ec8d47e29ad5833007600e6717ed2b0216a20c408c4bac0b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
