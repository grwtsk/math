# Verification target: Polynomial Coeff Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eecf58618c9327e008ffc8c8dcc2997f26cfd521",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant9189c5e938d974f7ffb0f7aff60257c1d8080dd2fcf6ca820a66a3ad6763c849.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eecf58618c9327e008ffc8c8dcc2997f26cfd521`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant9189c5e938d974f7ffb0f7aff60257c1d8080dd2fcf6ca820a66a3ad6763c849.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Coeff/Variant9189c5e938d974f7ffb0f7aff60257c1d8080dd2fcf6ca820a66a3ad6763c849.lean.json)

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
| 1 | `theorem` | [coeff_add](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-add.md) | 49 | `result-track:1856226fd066224c048995aa7d4646e8fd0a4611cfdd0b1f95b93a8989ad53bd` |
| 2 | `theorem` | [coeff_smul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-smul.md) | 56 | `result-track:67db1b23b5f738435c228c3c4e910f53adf91bc749bb94031a3fc29babe1b57d` |
| 3 | `theorem` | [support_smul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/support-smul.md) | 60 | `result-track:8cf0794e09c159bc9c0f214a77f72cd3937fbc1ccb72cb51857afb45057b98fa` |
| 4 | `theorem` | [card_support_mul_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/card-support-mul-le.md) | 68 | `result-track:cb8aad425357640d235a387828f1355010944e81fdab03d819556289fdde637f` |
| 5 | `def` | [lsum](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/lsum.md) | 77 | `declaration-track:bb512810e0278bc5ffa1b256a7d6053984a008ec76abee4d78b63a8787689aed` |
| 6 | `def` | [lcoeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/lcoeff.md) | 87 | `declaration-track:0ff467f543f83ae1bc22c84302f8813cd282ae199238eb67a4616556ebcafe70` |
| 7 | `theorem` | [lcoeff_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/lcoeff-apply.md) | 93 | `result-track:341842c614e75b6df3b0422ae25595c818f78deb2a1f17f0ac94b50aa2e78332` |
| 8 | `theorem` | [finsetSum_coeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/finsetsum-coeff.md) | 97 | `result-track:e7e5322d9f87275a91b3ee6955ed9f71d6970fdef2e7580304d3e0eba121e979` |
| 9 | `lemma` | [coeff_list_sum](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-list-sum.md) | 103 | `result-track:685d525972179f816e05514f70f67f640286d14de006fe88eeffc830e0eb437e` |
| 10 | `lemma` | [coeff_list_sum_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-list-sum-map.md) | 107 | `result-track:02728c45603f8dd5470c44cd568d50d329615c5e7d1c94126e1f72dd702e56e9` |
| 11 | `theorem` | [coeff_sum](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-sum.md) | 112 | `result-track:99c7d461017f9cf3a3cc265e7970f53f89d425fd60f1b1bea6952aeb9b7d8456` |
| 12 | `theorem` | [coeff_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-mul.md) | 119 | `result-track:efe0683ffcf12d07f63460db175b24d88d281d5e2882844a369d90676cbc455a` |
| 13 | `theorem` | [mul_coeff_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/mul-coeff-zero.md) | 126 | `result-track:ce3b68312cf246fdf89471246c4701e0e83f6eac36f6670dfe21d9dd5479ba10` |
| 14 | `theorem` | [mul_coeff_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/mul-coeff-one.md) | 129 | `result-track:a032401b1a84005cdd23c7c96bbd04f7ca1b30d7e56c3cad4f056ef59a1ae0e7` |
| 15 | `def` | [constantCoeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/constantcoeff.md) | 137 | `declaration-track:941f21e5986f418b64ea274aee653d59ff7a4c0ab87ebdf2e0423b5815228c40` |
| 16 | `lemma` | [constantCoeff_surjective](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/constantcoeff-surjective.md) | 144 | `result-track:a79972b64b30c2db049fa3e5a7ace682aff920c3b07fe4ea5f3f5d63546267be` |
| 17 | `theorem` | [isUnit_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/isunit-c.md) | 147 | `result-track:286bce323120595370d21aa8548b1728063612657f200add277a73c0182cbce3` |
| 18 | `theorem` | [coeff_mul_X_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-mul-x-zero.md) | 150 | `result-track:cfc0ab3022568f87cf1496d3e78d7b88d98cabdd43c8a4009318a6cdc8d2a7ba` |
| 19 | `theorem` | [coeff_X_mul_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-x-mul-zero.md) | 152 | `result-track:d9234c39d7b913027fbd92a9c0386551e2223dc1fb7391fe9091885b9c1bcb15` |
| 20 | `theorem` | [coeff_C_mul_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-c-mul-x-pow.md) | 154 | `result-track:656fbc3441f2014cf098bfb35d4c3ad55da6b60d6b682f831e38a80de43f9386` |
| 21 | `theorem` | [coeff_C_mul_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-c-mul-x.md) | 159 | `result-track:8e635f08d51db82a7b739bf7222d9fa51252a3e50b33aa260cf179e73070dbe6` |
| 22 | `theorem` | [coeff_C_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-c-mul.md) | 163 | `result-track:6a7ad09d2be526773fee9d50828835f5845b7baf5d4d06c5d7c59b256c0689e0` |
| 23 | `theorem` | [C_mul'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/c-mul.md) | 168 | `result-track:1e09ff723ad852010ba339d66d1c8e1390ebeacc7072f70783d641b49ef0a611` |
| 24 | `theorem` | [coeff_mul_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-mul-c.md) | 173 | `result-track:019487d1f77ff7e1535a79e7a5b60d97115618ad55dc52a81dd48d2eb34be7eb` |
| 25 | `lemma` | [coeff_mul_natCast](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-mul-natcast.md) | 178 | `result-track:540fe03a850d61851adfd5f368835f9ecd0ca8bfd9263b7166b079c0b132e709` |
| 26 | `lemma` | [coeff_natCast_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-natcast-mul.md) | 181 | `result-track:0664d77d327ca28433d8d4f9ecadb7699e3fcc29f0100416b93ae2557ab5ee96` |
| 27 | `lemma` | [coeff_mul_ofNat](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-mul-ofnat.md) | 184 | `result-track:4bd4681d1e3e301c709aa19a48bc80c0a12a87f2a9ee698609d8ad52c706908e` |
| 28 | `lemma` | [coeff_ofNat_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-ofnat-mul.md) | 187 | `result-track:f804dcc4bec46e97f5bde78bc111bb8c2dbee128abf12906995df2d9b26e5263` |
| 29 | `lemma` | [coeff_mul_intCast](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-mul-intcast.md) | 190 | `result-track:5ca5f59924a596fc3383cb83d7a528ab31e81c43a022f52d9d1caa1e1bb635a9` |
| 30 | `lemma` | [coeff_intCast_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-intcast-mul.md) | 193 | `result-track:9259d29ee8e7c8e3b1027ab55efaee0e77ac4f90b1038f0352c69784ea557dc8` |
| 31 | `theorem` | [coeff_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-x-pow.md) | 197 | `result-track:f2b1941a4a5120a6f6821fb790992857c550db83e394020528be9b8a23e21501` |
| 32 | `theorem` | [coeff_X_pow_self](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-x-pow-self.md) | 200 | `result-track:8b88341e4406ed0bf30d22a4862e63d97948e71d82f48bb8c3c78eab1226622f` |
| 33 | `theorem` | [support_binomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/support-binomial.md) | 206 | `result-track:e25389ca59abfab0dcc36a39d2e1e2e40fa933e5afe52cd67eda3eee638d389b` |
| 34 | `theorem` | [support_trinomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/support-trinomial.md) | 213 | `result-track:d4651c4d86fcb44c816339a269cce95e8f51e1fc43145ddba40847f08bb621de` |
| 35 | `theorem` | [card_support_binomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/card-support-binomial.md) | 223 | `result-track:a34961b94eef69e309ed7af1e6095158a641cb324f0802b32a8a4f75728f9ace` |
| 36 | `theorem` | [card_support_trinomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/card-support-trinomial.md) | 227 | `result-track:06bb86cd6635281e683cac4786bc9bbd5088cd0fea18061147b012318b834ae7` |
| 37 | `theorem` | [coeff_mul_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-mul-x-pow.md) | 237 | `result-track:8a4c660b5a19d7f19691f6ba9b19d4692c88852a44d4ede8fb722e8e1b50b9ae` |
| 38 | `theorem` | [coeff_X_pow_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-x-pow-mul-source-edition-2.md) | 246 | `result-track:cb109aa1bf6b6b259f0386ec5c40224dc1a942eb311bd9b0e690dd7c9967d426` |
| 39 | `theorem` | [coeff_mul_X_pow'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-mul-x-pow-source-edition-2.md) | 250 | `result-track:f317881f6b4e6483c3b3ce4f0f95d73ece37a19e0338e3710086a15ecb200485` |
| 40 | `theorem` | [coeff_X_pow_mul'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-x-pow-mul.md) | 258 | `result-track:65d9027405e5e8ca36906ec7938e2dec23e2ac4ca7448babaa4e608ca553681c` |
| 41 | `theorem` | [coeff_mul_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-mul-x.md) | 263 | `result-track:db4699822bcd3a9e7aa9b672d052084011233aef6f27d1d37f3a054a4e7ae73d` |
| 42 | `theorem` | [coeff_X_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-x-mul.md) | 267 | `result-track:c93494a2ee02593194d8a8ba942f9924ddf1a799b39816b867795ab6bb0ef507` |
| 43 | `theorem` | [coeff_mul_monomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-mul-monomial.md) | 270 | `result-track:178a04d544186cf03cc5d617f7bae8f82c7335f94dfe7f7c748d3e3b556200a9` |
| 44 | `theorem` | [coeff_monomial_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-monomial-mul.md) | 274 | `result-track:f51154010799e70e38c66b0abd914bf2bf00bb990d9728200c481bd9428bb8b7` |
| 45 | `theorem` | [coeff_mul_monomial_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-mul-monomial-zero.md) | 279 | `result-track:2fde7123c193996115fa23f23ca2198ed8e7c02fcf43fa7a5783d0e2ddce497f` |
| 46 | `theorem` | [coeff_monomial_zero_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-monomial-zero-mul.md) | 284 | `result-track:8fbc9b125f1d40390bdb93ac8e3d7a56ffa6206c85fde4bd218604a89e0b9dca` |
| 47 | `theorem` | [mul_X_pow_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/mul-x-pow-eq-zero.md) | 288 | `result-track:d8c0c3d2486cb7512a78e3ecc737e08504ea0bfbfd25a216a36e1e2eb9a59f7f` |
| 48 | `theorem` | [isRegular_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/isregular-x-pow.md) | 291 | `result-track:84cc81640a9649efbc753dfe3a98157d7f23375d755a4285a1ccc1f0987f865b` |
| 49 | `theorem` | [isRegular_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/isregular-x.md) | 298 | `result-track:59071d8adbf6abf76a428ce6b34c226ec9ac5a8d0116e942423f94c62c540a49` |
| 50 | `theorem` | [coeff_X_add_C_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-x-add-c-pow.md) | 300 | `result-track:d03a555ab2b19c6867a3a7777ecfb3979beaa080364ac398a87a0a6cf87be141` |
| 51 | `theorem` | [coeff_X_add_one_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-x-add-one-pow.md) | 311 | `result-track:8a10b219fe6d9c5962da50be19f1e9ec85b4d064e4e040f0b8a159c0beb45aa2` |
| 52 | `theorem` | [coeff_one_add_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/coeff-one-add-x-pow.md) | 314 | `result-track:515c22ad40f0b618de3e572d3569046829ec28e8e3a7d1313c23461c28ade067` |
| 53 | `theorem` | [one_add_X_pow_sub_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/one-add-x-pow-sub-x-pow.md) | 317 | `result-track:442b9b9bc6492a5d60e2d1df87d460d394427f5fdab9369e154c8f08ff37c28e` |
| 54 | `theorem` | [C_dvd_iff_dvd_coeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/c-dvd-iff-dvd-coeff.md) | 323 | `result-track:e54b08bcdf936c1108c91f34c4f4daadbf7e6da6814633afa9576421e48c7a30` |
| 55 | `theorem` | [smul_eq_C_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/smul-eq-c-mul.md) | 342 | `result-track:e82d8cec5461c57077c97a554766c85eb3bd3039bd3442d81b854e61fbc5a1f4` |
| 56 | `theorem` | [update_eq_add_sub_coeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/update-eq-add-sub-coeff.md) | 344 | `result-track:27c80f6f147b175b625a176682378464acba1fb89377744e0ea778952a996cfc` |
| 57 | `theorem` | [natCast_coeff_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/natcast-coeff-zero.md) | 354 | `result-track:b7573dfcebda837d30f7ea1a581abd88a94232111e4738bcb18aac086f7b3431` |
| 58 | `theorem` | [natCast_inj](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/natcast-inj.md) | 358 | `result-track:954b139bf10123debb13edfb61d1b33b0a8732e1022da222cc0c3a7de1a92b9e` |
| 59 | `theorem` | [intCast_coeff_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/intcast-coeff-zero.md) | 368 | `result-track:905a759d776374956ed3ec1ca8c00806af6e5730cac100a53213481d4d26438b` |
| 60 | `theorem` | [intCast_inj](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/intcast-inj.md) | 372 | `result-track:7fa5bb05121096b9e77a0c0510728391fd7fb7634d69f621333dfd2c2eea9724` |
| 61 | `instance` | [charZero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/charzero.md) | 382 | `declaration-track:a7f9d41552a11f6fb8168acd0fa105b923c8ea93d01b7dc07b1532a406d0b6bf` |
| 62 | `instance` | [charP](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespacedPublic.lean/declarations/charp.md) | 384 | `declaration-track:6a639c40eab4afe963b8370729586901e6eff84d0c871177b8c8ee3b933396a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=21c01b7ab2929bc98017d71e086ee885d429bce7e76fa6cbd2687e63584d6bc5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant9189c5e938d974f7ffb0f7aff60257c1d8080dd2fcf6ca820a66a3ad6763c849.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Coeff/Variant9189c5e938d974f7ffb0f7aff60257c1d8080dd2fcf6ca820a66a3ad6763c849.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
