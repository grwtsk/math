# Verification target: Cotangent Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0761331c051277a84db00556545645181178064",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Cotangent/Variant64a346603de60e8056093a59db96e3bf0b97a08e38ab72fcc79d7aceb0432ee7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0761331c051277a84db00556545645181178064`.

Source path: `GRWTSK/Algebra/Cotangent/Variant64a346603de60e8056093a59db96e3bf0b97a08e38ab72fcc79d7aceb0432ee7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Cotangent/Variant64a346603de60e8056093a59db96e3bf0b97a08e38ab72fcc79d7aceb0432ee7.lean.json)

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
| 1 | `def` | [Cotangent](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/cotangent.md) | 50 | `declaration-track:521b86ddf607fad67e70a660f0d8ed550127b45acd4a2ebc01b9c02c1bb21618` |
| 2 | `def` | [toCotangent](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/tocotangent.md) | 62 | `declaration-track:021af036ddf9c814b650d4db942465b0b13bdaa2d2fcedb5f6d71756e83a1105` |
| 3 | `theorem` | [map_toCotangent_ker](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/map-tocotangent-ker.md) | 65 | `result-track:6dcf285916623e7d14d1f34a1cd85905e4e2d12c71a83fcad935709bcecd310a` |
| 4 | `theorem` | [mem_toCotangent_ker](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/mem-tocotangent-ker.md) | 69 | `result-track:0dfb28df8179480a027a346103256b527f3ce9c2cd9e6856bb1c1d56bc99d952` |
| 5 | `theorem` | [toCotangent_eq](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/tocotangent-eq.md) | 73 | `result-track:3e98e6ab617ded4bb90fbdcb3fde3e11859d31593aab0332846109324f4a6de3` |
| 6 | `theorem` | [toCotangent_eq_zero](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/tocotangent-eq-zero.md) | 77 | `result-track:ae036d89c7eab044eac2306da7289a3b1f77429db2f71db92afaa7eeefc4f618` |
| 7 | `theorem` | [toCotangent_surjective](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/tocotangent-surjective.md) | 79 | `result-track:d5a120606d603614ba0352cb729da283c729a2f4b4b2ea20735e765a38ff587a` |
| 8 | `theorem` | [toCotangent_range](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/tocotangent-range.md) | 81 | `result-track:326c5a4f28968ad8c7b0ff10ebd663ae61827786ac28d049c6854edb8edaa618` |
| 9 | `theorem` | [cotangent_subsingleton_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/cotangent-subsingleton-iff.md) | 83 | `result-track:f5a7603205e72528199db47e5ce735e107fcb54ef879819a02306d0e74cb356a` |
| 10 | `def` | [cotangentToQuotientSquare](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/cotangenttoquotientsquare.md) | 94 | `declaration-track:826a479b5326181cbbf028dc371a608dea6a47dc6f3bb8ca352a1e172b65e095` |
| 11 | `theorem` | [to_quotient_square_comp_toCotangent](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/to-quotient-square-comp-tocotangent.md) | 100 | `result-track:0597667adcd91ba1cd81f127d3208410412f18a8beb901e8120d90b85672c7e1` |
| 12 | `theorem` | [toCotangent_to_quotient_square](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/tocotangent-to-quotient-square.md) | 105 | `result-track:60037e9efc2e24f0ad9f2a53045fd0e93335dfbda2bedc5dd3b9ca85f089ed42` |
| 13 | `lemma` | [cotangentToQuotientSquare_injective](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/cotangenttoquotientsquare-injective.md) | 108 | `result-track:8e402a2dcec895708326cb2d5a7d63adb7fe3da8e8a4152a9fc1e9ab8844f325` |
| 14 | `lemma` | [Cotangent.smul_eq_zero_of_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/cotangent-smul-eq-zero-of-mem.md) | 115 | `result-track:71392efcd1ab909cf48c6de4deb0e383e0679113f7a258ef084a1ea3d62c26a4` |
| 15 | `lemma` | [isTorsionBySet_cotangent](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/istorsionbyset-cotangent.md) | 121 | `result-track:ed1aff420d7fe9b2b8139004f97140714f9fa7f9fd62b85f6b2b300863c3803a` |
| 16 | `def` | [cotangentIdeal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/cotangentideal.md) | 126 | `declaration-track:afa8708b3aed0256dadadba0b8e2c866ab5e9941e6875b1bfedf4fcd78335176` |
| 17 | `theorem` | [cotangentIdeal_square](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/cotangentideal-square.md) | 129 | `result-track:d79bb1c326e593fbf8f351160afe4817e0bd2d686bafec508a7915df050c660d` |
| 18 | `lemma` | [mk_mem_cotangentIdeal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/mk-mem-cotangentideal.md) | 137 | `result-track:ef8b1f10489a6e3d60c35cb4ff35527a94953505ec95e6d53922e09afe1452b2` |
| 19 | `lemma` | [comap_cotangentIdeal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/comap-cotangentideal.md) | 143 | `result-track:411ebb7b523453b6182dd697ee72e73650206ba8b867937b660cd2ec905845a8` |
| 20 | `theorem` | [range_cotangentToQuotientSquare](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/range-cotangenttoquotientsquare.md) | 147 | `result-track:276eb802a3bfcd93b9aa42b22fe7570ef38c90106cef0da8a3c0dd6c059811e3` |
| 21 | `def` | [cotangentEquivIdeal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/cotangentequivideal.md) | 155 | `declaration-track:61a4d37164f36622ea05630f4612a00923dcae3d5ae9cbeaaaf330d7e559ba61` |
| 22 | `theorem` | [cotangentEquivIdeal_apply](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/cotangentequivideal-apply.md) | 171 | `result-track:dbbfbf66a762c4158e45e04bcd89de3775437fecd6e75aab8a3cb61bfc8b37c2` |
| 23 | `theorem` | [cotangentEquivIdeal_symm_apply](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/cotangentequivideal-symm-apply.md) | 174 | `result-track:b6fc7aa3b80053a825be5e1b9c2cc0d480ca98e4a83dc6a08420bbb1dc1b0b6b` |
| 24 | `abbrev` | [Cotangent Namespaced Public](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/kersquarelift.md) | 182 | `declaration-track:67ecf7875b27c3ecc42c21b66d7d853eb0450a5cf03a3dfbdc3cd0cc7e9872db` |
| 25 | `lemma` | [Cotangent Namespaced Public](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/kersquarelift-mk.md) | 188 | `result-track:7a0ece28b743beeb434ed2e878a0e462dc0232be653d897eaa6597877b07d1b3` |
| 26 | `theorem` | [Cotangent Namespaced Public](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/ker-kersquarelift.md) | 191 | `result-track:c69de5a86b24a89f80fd7f5eb9eb13e2b1b59c4f7323bce283e2a734e5bb56d8` |
| 27 | `instance` | [Algebra.kerSquareLift](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/algebra-kersquarelift.md) | 197 | `declaration-track:09361ba953b10142af875ec6d104d64efe664b86ca719ed0045dcb0202020f6f` |
| 28 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/instance.md) | 200 | `declaration-track:65670e25e3860ca5bfb976723235b251110e6d4fed61ff6d2b16ea3932e2bc93` |
| 29 | `def` | [quotCotangent](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/quotcotangent.md) | 206 | `declaration-track:92ee18afbd95a0c3e96248a40048a5b63e401d6bf5c22dc66c0f42d248ebf8e9` |
| 30 | `def` | [mapCotangent](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/mapcotangent.md) | 213 | `declaration-track:0ec68d9db899f0c6d7b741b87f9f4b6b95a9aa6c18579f308a52414461f1be68` |
| 31 | `lemma` | [mapCotangent_toCotangent](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/mapcotangent-tocotangent.md) | 230 | `result-track:bde396d2a710d53c2a71bedf10eeb7dab615d4c811afb9fc293f286ed9af6361` |
| 32 | `def` | [lift](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/lift.md) | 243 | `declaration-track:bb899d28fdd99f2b8923cd1e88636d0398c44cf70860bd103bf2518156c026a4` |
| 33 | `lemma` | [lift_toCotangent](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/lift-tocotangent.md) | 254 | `result-track:dcd17e7c4a4c0f012316a75a5ba27a27f078f3b8518c0a69a6bcf569b54b08b2` |
| 34 | `lemma` | [lift_comp_toCotangent](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/lift-comp-tocotangent.md) | 259 | `result-track:65868f42e3f1515f37f9a174a62a31439b5eca5ba07ea8e226b8b6727be095a1` |
| 35 | `lemma` | [lift_surjective_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/lift-surjective-iff.md) | 264 | `result-track:159a04754102be7e312f4e82d6a371bd0c5c3cc55447d1919c5ffb54d9a5c152` |
| 36 | `def` | [equivOfEq](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/equivofeq.md) | 275 | `declaration-track:6dbdbdf7b056ec3b5023aae5844f70adbd591d298d108c8808ebb02389847702` |
| 37 | `lemma` | [equivOfEq_toCotangent](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/equivofeq-tocotangent.md) | 291 | `result-track:9799985aabd7d9453c01ec02bafcb7c33825be78d455f515f16f4c09190771ec` |
| 38 | `lemma` | [equivOfEq_symm](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/equivofeq-symm.md) | 296 | `result-track:5beab0f41ad73ec9e045770468d93a51cda9f9f8565725b6f7c4c508bf7b633e` |
| 39 | `abbrev` | [CotangentSpace](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/cotangentspace.md) | 307 | `declaration-track:5b79921b4e315c7c963ca951cb13dad286721e39cc585fa3f13113ab7cc81d5b` |
| 40 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 309 | `declaration-track:a90392e73309e9749acfbf9fdbdde38407fae59fb4a22e4f0ddfffd38f5ad653` |
| 41 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 312 | `declaration-track:e9d6996598c40d0c62ac57e090259b1ed8908a94267471b5d7b4dcd0447acad3` |
| 42 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 316 | `declaration-track:ffb0e5ad607121899937fa5ddb62e816b5c357bccc9cc004e032665eaf5364a6` |
| 43 | `lemma` | [subsingleton_cotangentSpace_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/subsingleton-cotangentspace-iff.md) | 321 | `result-track:e70db9fcde0dda1a6b3c81465b0616f2625e188bd49478fc907abc854fdb69ae` |
| 44 | `lemma` | [CotangentSpace.map_eq_top_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/cotangentspace-map-eq-top-iff.md) | 328 | `result-track:a5fbba3ce667417ad3519addded348f3e43a40efccf479eed28f299cb282217a` |
| 45 | `lemma` | [CotangentSpace.span_image_eq_top_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/cotangentspace-span-image-eq-top-iff.md) | 338 | `result-track:bfc30ce6aede5f45296b1a57806e7dfd8794840ced1a56762eb57247d0085de1` |
| 46 | `theorem` | [rank_cotangentSpace_eq_spanrank_maximalIdeal_of_fg](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/rank-cotangentspace-eq-spanrank-maximalideal-of-fg.md) | 350 | `result-track:e2aea862008d672c7f6d8b94cf1531c90534f787950d88903109151e00f3b639` |
| 47 | `theorem` | [rank_cotangentSpace_eq_spanrank_maximalIdeal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/rank-cotangentspace-eq-spanrank-maximalideal.md) | 383 | `result-track:a5c3d3eb062b21fa5209545883ba928992d02e15c8822f0b496240c32472035f` |
| 48 | `lemma` | [finrank_cotangentSpace_eq_zero_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/finrank-cotangentspace-eq-zero-iff.md) | 389 | `result-track:7f71c91d4cdf27f7e3f0620c362b59d099cbe97378e44aaf5385e58f567d665a` |
| 49 | `lemma` | [finrank_cotangentSpace_eq_zero](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/finrank-cotangentspace-eq-zero.md) | 393 | `result-track:d10966de4ade006893dc990189d647d58e607b60a23479f6986d7402b56a69d4` |
| 50 | `theorem` | [finrank_cotangentSpace_le_one_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/finrank-cotangentspace-le-one-iff.md) | 398 | `result-track:871398a53356392f6f8b26b6f3c7779d7802633c19be80c7659408c3231b7dd0` |
| 51 | `lemma` | [Ideal.mapCotangent_surjective_of_comap_eq](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/ideal-mapcotangent-surjective-of-comap-eq.md) | 411 | `result-track:307a4b0fd8315cfbdf7bf838a38f11d741fb1297b9a6849492a9079a9193c197` |
| 52 | `lemma` | [Ideal.mapCotangent_ker_of_surjective](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/CotangentNamespacedPublic.lean/declarations/ideal-mapcotangent-ker-of-surjective.md) | 422 | `result-track:66537c73f005930321f0e2b3026ab721b0aaa840d7c134921fcdc8e36fa23013` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8860a91ceb44ae061880b66928e67d973afd2a540068715b36992d3c8819b1b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Cotangent/Variant64a346603de60e8056093a59db96e3bf0b97a08e38ab72fcc79d7aceb0432ee7.lean","GRWTSK/_verification/specifications/Algebra/Cotangent/Variant64a346603de60e8056093a59db96e3bf0b97a08e38ab72fcc79d7aceb0432ee7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
