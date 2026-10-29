# Verification target: Basic Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "873466b39d96b9ccb46f350e75882ead92d13b91",
  "lexical_observation_count": 87,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant19ed29f867e3a72c824a2b1174135ad931485a96dce8b3bfce4a62d271725cf3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `873466b39d96b9ccb46f350e75882ead92d13b91`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant19ed29f867e3a72c824a2b1174135ad931485a96dce8b3bfce4a62d271725cf3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant19ed29f867e3a72c824a2b1174135ad931485a96dce8b3bfce4a62d271725cf3.lean.json)

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
| 1 | `theorem` | [eq_zero_of_not_dvd](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/eq-zero-of-not-dvd.md) | 88 | `result-track:58666d9de40669492c5d692f1c545d55a0a9332f45c1c92a55f9225b4f359559` |
| 2 | `theorem` | [dvd_of_ne_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/dvd-of-ne-zero.md) | 91 | `result-track:94e7d1f6d86afc2462007f0bf86f03acf00d4d245c74b055eea238e9543a24a3` |
| 3 | `def` | [padicValInt](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalint.md) | 98 | `declaration-track:7df789d22aecebf7498612cc3cfa80f59704d5ebbc2cc424245e40d6a40704a3` |
| 4 | `theorem` | [of_ne_one_ne_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/of-ne-one-ne-zero.md) | 105 | `result-track:3170ec910c1df539a83fab142b21b2154c1083e8d207a4aba6b745c232f70fef` |
| 5 | `theorem` | [zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/zero.md) | 112 | `result-track:c4b5fd6d3937b72e5b23162bf6f111fdf71e7587933680272399771236e49429` |
| 6 | `theorem` | [one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/one.md) | 116 | `result-track:571dd77c35c44aec1ea8a37d70c51a14fef766797199e73bb913c998d18b5081` |
| 7 | `theorem` | [of_nat](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/of-nat.md) | 120 | `result-track:dafe911d8d01518bee418cc002d1ff04b8b188cf1822e1cb93855b65faa217a6` |
| 8 | `theorem` | [self](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/self-source-edition-2.md) | 123 | `result-track:c7df034ba5d76c2e0a6fc546a197495dca057fa1c600e946fbd91b73e744805f` |
| 9 | `theorem` | [eq_zero_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/eq-zero-iff.md) | 126 | `result-track:a1f52666837d96389ba1c321f8379ac94b130eaf81b887237ab9e235046d4087` |
| 10 | `theorem` | [eq_zero_of_not_dvd](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/eq-zero-of-not-dvd-source-edition-2.md) | 129 | `result-track:d1f8296d974441c417b2761268fe191cd7f68a2edbb81d43f4f60156d60368a3` |
| 11 | `def` | [padicValRat](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalrat.md) | 136 | `declaration-track:e071bb59f03e72312249ddd07eebb93e6247c9825927ae30539982bb35ed2de8` |
| 12 | `lemma` | [padicValRat_def](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalrat-def.md) | 139 | `result-track:2ddc6e3ca9a5d44476932ac6105fc7ab7400c677e0df8db2bcef5b87f4855d12` |
| 13 | `theorem` | [neg](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/neg.md) | 149 | `result-track:1edc57a6752acadc9da47e570f291c1916f8aca042720f7666991a56ac818719` |
| 14 | `theorem` | [zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/zero-source-edition-2.md) | 154 | `result-track:cc7ca81fca4af82341c0d3b500148a3956f5d6fe0966d99586a6e52b97631280` |
| 15 | `theorem` | [one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/one-source-edition-2.md) | 158 | `result-track:e9402292ae70ed75173b574fb923dc35f263805c2975a9916ec2847dec7c7740` |
| 16 | `theorem` | [of_int](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/of-int.md) | 162 | `result-track:5d77f5525d0a894c490ef31029fca24178b2ebd10335ffdf3e79274e2b2f245a` |
| 17 | `theorem` | [of_int_multiplicity](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/of-int-multiplicity.md) | 165 | `result-track:e56d59e6899d3b1f56cd01f9f8b20712eb2b440000e6064b67412015ffa92825` |
| 18 | `theorem` | [multiplicity_sub_multiplicity](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/multiplicity-sub-multiplicity.md) | 169 | `result-track:745ae81ef9cdb5ab2b784268d1c41b8b5dbce5356b4303599838763e050ee697` |
| 19 | `theorem` | [of_nat](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/of-nat-source-edition-2.md) | 175 | `result-track:e7b82eaef4b27194d5e0059de19aff3a277187fcf73302e5c6f0117a73d14f4b` |
| 20 | `theorem` | [self](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/self.md) | 178 | `result-track:2a7c1be0904baca9f975339c03aeb6e16feece6260c1afc0914813532755d951` |
| 21 | `theorem` | [zero_le_padicValRat_of_nat](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/zero-le-padicvalrat-of-nat.md) | 186 | `result-track:7d1551c083f7f165bc1c3699ffd9fac909dd318f78e38bae051d697091d92547` |
| 22 | `theorem` | [padicValRat_of_nat](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalrat-of-nat.md) | 190 | `result-track:0e56f9f2bf1a795ffd3c55eb879f7a9d0503fa9c9700ade542d4e5e7a90446c2` |
| 23 | `theorem` | [padicValNat_self](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalnat-self.md) | 193 | `result-track:f097650dc61a80b5b82c2a0e014bb7fdcf0b1a3f4cb94f968e6be5b67d1f2c5e` |
| 24 | `theorem` | [one_le_padicValNat_of_dvd](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/one-le-padicvalnat-of-dvd.md) | 196 | `result-track:3fec954eefffcaca8d1f7cd1e353a3b93b258d2dc77c91ec6a8d6019c0fcd3fb` |
| 25 | `theorem` | [dvd_iff_padicValNat_ne_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/dvd-iff-padicvalnat-ne-zero.md) | 201 | `result-track:0b5acb034aafe33bc05ae0b3eb3c0397a7e3ad9e76e3051fa1bc22c0a091300c` |
| 26 | `theorem` | [finite_int_prime_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/finite-int-prime-iff.md) | 213 | `result-track:25dfd87771f802c4e6295b662c444b041f92aee977f83056b1ba8b5132fd226e` |
| 27 | `theorem` | [defn](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/defn.md) | 217 | `result-track:1d047bd320d783f718b1a4c589b4c28e74b2bdcb0c152328f61e010f79ea26a8` |
| 28 | `theorem` | [mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/mul.md) | 233 | `result-track:40e9d92a7f156022835a21f1fac89a30078a425ba50f50fe803560171ecd5a66` |
| 29 | `theorem` | [pow](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/pow-source-edition-2.md) | 250 | `result-track:8cd21cb37ca50f605a0182153ebb5df29ddb90a0a8ae7ec6acce5324d8c9d130` |
| 30 | `theorem` | [inv](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/inv.md) | 259 | `result-track:74eaabbcfe8bc842f994e1798b455b94a296f7b6502cb790b5685d6d5bd729e9` |
| 31 | `theorem` | [zpow](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/zpow.md) | 266 | `result-track:fcde5b0c6a3f8b379319fb8757b3eedbf3af211449e6e647f3cbb37a2ee94385` |
| 32 | `theorem` | [div](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/div-source-edition-2.md) | 271 | `result-track:bc74c5c333d76f14fe8d231381435f7eee47af9891ee4093ef6814ce40d711a1` |
| 33 | `theorem` | [padicValRat_le_padicValRat_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalrat-le-padicvalrat-iff.md) | 277 | `result-track:21b704014ba1b95c07ffe786462c48767542568b0aae44a3436696979925fcd2` |
| 34 | `theorem` | [le_padicValRat_add_of_le](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/le-padicvalrat-add-of-le.md) | 295 | `result-track:aab1ed42a41309506e957e13ceeb65c7395d7417d7da680e80a856baab366e9c` |
| 35 | `theorem` | [min_le_padicValRat_add](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/min-le-padicvalrat-add.md) | 322 | `result-track:028c61bc8c094590bce1917ed6af6abf903ecf58a8572417bd222699eb3f045d` |
| 36 | `lemma` | [add_eq_min](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/add-eq-min.md) | 329 | `result-track:09b32a75d33d1fdff0f8aca2953c0fa6d7a8a8add829527a213fb552b34abd5c` |
| 37 | `lemma` | [add_eq_of_lt](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/add-eq-of-lt.md) | 339 | `result-track:569ea6e5985cd354c0e760c0f5682799e1005e72bdcdd517c91043a701299977` |
| 38 | `lemma` | [lt_add_of_lt](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/lt-add-of-lt.md) | 344 | `result-track:522968cccea29ffe082a6d77c67d6d5ae157754d049bc286b3a22d07a028bed6` |
| 39 | `lemma` | [self_pow_inv](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/self-pow-inv.md) | 349 | `result-track:3d1281d29d040c8d3711e65519f7ce818044a757cb88ad20b780822c35c3b324` |
| 40 | `theorem` | [sum_pos_of_pos](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/sum-pos-of-pos.md) | 354 | `result-track:6b1a3289213e855098c78591382330aa5cb798a5c1cedfb6dec365590f53fdd8` |
| 41 | `theorem` | [lt_sum_of_lt](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/lt-sum-of-lt.md) | 369 | `result-track:8a678ada3fceba535adeec57720e555487686a32bba927ce2df0aeac96cd8987` |
| 42 | `theorem` | [num_or_den_zero_padicVal](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/num-or-den-zero-padicval.md) | 388 | `result-track:f3ecc7effaa4c02b662bd71600926900f72c50ac5b19491794505fd01ac602bb` |
| 43 | `theorem` | [num_den_even_padicVal_of_even_padicVal](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/num-den-even-padicval-of-even-padicval.md) | 397 | `result-track:3f94bdcae221eb1b73a377869c414cb1f81f0ac8f36df102facd31c717217138` |
| 44 | `theorem` | [isSquare_iff_even_factorization](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/issquare-iff-even-factorization.md) | 404 | `result-track:146ba9d8b18c9edcbc0b42402288d862e77e76177652af15c1ff9df030ef4042` |
| 45 | `theorem` | [mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/mul-source-edition-2.md) | 430 | `result-track:48a3845d125f02164ac210da73de1870b00e365b924d9f10e7a9e36e746fe163` |
| 46 | `theorem` | [div_of_dvd](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/div-of-dvd.md) | 433 | `result-track:1397283886bc8fe5e27352711208ff158db4acebc538521f49c4be0a3f048d53` |
| 47 | `theorem` | [div](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/div.md) | 442 | `result-track:062d9077d7d5a558ec01aae6dc63559bfc6340c001f7ea652253735f7b651411` |
| 48 | `theorem` | [pow](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/pow.md) | 447 | `result-track:5c54faf6557e98835d0543f3a3125feda377a47acb7a7b680e5e0d4ca39e1f9c` |
| 49 | `theorem` | [prime_pow](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/prime-pow.md) | 450 | `result-track:6a26fa6d81cf22af7d095d34a4f58063893194a00ef4afb4c5350c3bff072b8c` |
| 50 | `theorem` | [div_pow](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/div-pow.md) | 453 | `result-track:d986de0e3660eab59fdbf96089f585d2b464e9d4626284595a8557507b7919bf` |
| 51 | `theorem` | [div'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/div-source-edition-3.md) | 456 | `result-track:df03bcd4c355b0fd6e9dc4c5bc14d57033bda5676265146a763d3f9886ff38ec` |
| 52 | `theorem` | [dvd_of_one_le_padicValNat](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/dvd-of-one-le-padicvalnat.md) | 467 | `result-track:db9f1ab9b0414dcfbdf4c4f1db2edaedd535f5bb03279a20a9178f278fad520e` |
| 53 | `theorem` | [padicValNat_dvd_iff_le_of_ne_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalnat-dvd-iff-le-of-ne-one.md) | 472 | `result-track:c25602a42be254b8fb711d64e3ced3125b8d9f863c481fcc5bbbc744bcae17c5` |
| 54 | `theorem` | [padicValNat_dvd_iff_le](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalnat-dvd-iff-le.md) | 476 | `result-track:6925b8cfa1979005f036e3d8be7466000e85d46994b95cc5a2cbf9765faa4759` |
| 55 | `theorem` | [padicValNat_dvd_iff_of_ne_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalnat-dvd-iff-of-ne-one.md) | 480 | `result-track:014b63f53a4f541ef8f9a98977ee36fef7aa577c373d6cb7867c056973b8c4f0` |
| 56 | `theorem` | [padicValNat_dvd_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalnat-dvd-iff.md) | 486 | `result-track:a1d0aece56040d733ea569edbb9e5b9ee715b623eaea9758c2cfecf6cfbeae6c` |
| 57 | `theorem` | [pow_succ_padicValNat_not_dvd](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/pow-succ-padicvalnat-not-dvd.md) | 490 | `result-track:1ed260646d008dd43c0f652b04e3951391c8a95657d2a4d3e20470411ad1d2b3` |
| 58 | `theorem` | [padicValNat_primes](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalnat-primes.md) | 495 | `result-track:53d1375a3c5d7e99d84ad2fc0f1b4d984721b44a6dec0839bec2e56c299a8036` |
| 59 | `theorem` | [padicValNat_prime_prime_pow](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalnat-prime-prime-pow.md) | 500 | `result-track:f008702da16cfb3315a030caac4295c207c5b0791a33535600892f3d4ccf9c57` |
| 60 | `theorem` | [padicValNat_mul_pow_left](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalnat-mul-pow-left.md) | 504 | `result-track:d0235f0579418232395ab0d816ae9b594d07ed86479fadbeb80eea89d86dda47` |
| 61 | `theorem` | [padicValNat_mul_pow_right](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalnat-mul-pow-right.md) | 509 | `result-track:ca6c647e74d683cebc3b080b34e3d22b9af4465afdcbd78948469b3bc2b2a22f` |
| 62 | `lemma` | [padicValNat_le_nat_log](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalnat-le-nat-log.md) | 515 | `result-track:a90156393310a0b7efa616c90c70e6bd18f4d839081b18891d563dac2f63473f` |
| 63 | `lemma` | [padicValNat_add_le_self](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalnat-add-le-self.md) | 523 | `result-track:5db76ff3942aeed66971a50b0e5bead293ab12a4dc720c2088c0b2114a1de811` |
| 64 | `lemma` | [nat_log_eq_padicValNat_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/nat-log-eq-padicvalnat-iff.md) | 539 | `result-track:942b27750b39677b6e7bf5895b5dabfbe7b1d3307b320e5655f887459f9ec6fe` |
| 65 | `lemma` | [Nat.log_ne_padicValNat_succ](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/nat-log-ne-padicvalnat-succ.md) | 546 | `result-track:b14f2c5c60b3b9e78912713014ba5ebed85a104da5e0b1eca66256b0c5597ef1` |
| 66 | `lemma` | [Nat.max_log_padicValNat_succ_eq_log_succ](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/nat-max-log-padicvalnat-succ-eq-log-succ.md) | 555 | `result-track:31593f49fb0ae95b2c63842c23a988ab75c26b37df672734c14605a474d5219f` |
| 67 | `theorem` | [range_pow_padicValNat_subset_divisors](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/range-pow-padicvalnat-subset-divisors-source-edition-2.md) | 565 | `result-track:3304c658c21df01e0272cf76aae1a549f6b291faef8f04b6a8129c462b192003` |
| 68 | `theorem` | [range_pow_padicValNat_subset_divisors'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/range-pow-padicvalnat-subset-divisors.md) | 573 | `result-track:085a4225c80082806b4eb2343f28eda9892c2585e0ca35c03c7c5fee6f92719b` |
| 69 | `theorem` | [padicValNat_factorial_mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalnat-factorial-mul.md) | 585 | `result-track:e888c1f34d4dc3548464041cc58ac7e9d2d1f11bae70e3319187a557e1be1559` |
| 70 | `theorem` | [padicValNat_eq_zero_of_mem_Ioo](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalnat-eq-zero-of-mem-ioo.md) | 594 | `result-track:32d2832fd749cc7b0d713a46b85d80ba7031fa8e2de890b10c7e85c6d17aad44` |
| 71 | `theorem` | [padicValNat_factorial_mul_add](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalnat-factorial-mul-add.md) | 598 | `result-track:da790350973cf91023ed95e6321b3ad2e0b28dbe9e492f8c55b5bd067aba840e` |
| 72 | `theorem` | [padicValNat_mul_div_factorial](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalnat-mul-div-factorial.md) | 612 | `result-track:66afab23006ba57d18ff88ac814a01f4c22023f073f2b21ac61c3612bddc68a6` |
| 73 | `theorem` | [padicValNat_factorial](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalnat-factorial.md) | 621 | `result-track:ca6748220b0dccbbb97e739fb2bb5c3b19d3c5cd3c9984421241891871dcd785` |
| 74 | `theorem` | [sub_one_mul_padicValNat_factorial](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/sub-one-mul-padicvalnat-factorial.md) | 630 | `result-track:02fae47df5346333cc37ff10693455612d0cf0da23dd639a9e3c409f8a097b6e` |
| 75 | `theorem` | [sub_one_mul_padicValNat_factorial_lt_of_ne_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/sub-one-mul-padicvalnat-factorial-lt-of-ne-zero.md) | 639 | `result-track:a4f7301439cb380a7df496ae33da22c61b1139ad97ce970e1833707201133113` |
| 76 | `theorem` | [padicValNat_factorial_lt_of_ne_zero](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalnat-factorial-lt-of-ne-zero.md) | 647 | `result-track:c738f4cd01de486dde6629643c90fe353e46d54380162bd69097a263c1669832` |
| 77 | `theorem` | [padicValNat_factorial_le](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalnat-factorial-le.md) | 654 | `result-track:2d946363a9c05c3481a1edb2fc067c426a30acf511210a9dd5f009a45a73b097` |
| 78 | `theorem` | [padicValNat_choose](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalnat-choose-source-edition-2.md) | 666 | `result-track:477f604258a3bb6b02d9fdb54cddccd1cfb27a0eae948c2bc77f88ef32a23650` |
| 79 | `theorem` | [padicValNat_choose'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalnat-choose.md) | 676 | `result-track:267d7ec0bbfe413ea93d4bedcee1069160b9e5d41dbdc7edd7168fb68d4096e1` |
| 80 | `theorem` | [sub_one_mul_padicValNat_choose_eq_sub_sum_digits'](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/sub-one-mul-padicvalnat-choose-eq-sub-sum-digits.md) | 685 | `result-track:1730a56bb761dee46b80ffb55785a1db2d4c1e7268e9507ce3e9e36ec686d64c` |
| 81 | `theorem` | [sub_one_mul_padicValNat_choose_eq_sub_sum_digits](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/sub-one-mul-padicvalnat-choose-eq-sub-sum-digits-source-edition-2.md) | 702 | `result-track:ebeb319bca077d5743780116aaf92709722a76188b986df421813b8ee21c0573` |
| 82 | `theorem` | [padicValInt_dvd_iff_of_ne_one](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalint-dvd-iff-of-ne-one.md) | 714 | `result-track:e06abdc289a5c6296794a6a10d89a8d4fe46a3af3078592e7d537383f5bb0b47` |
| 83 | `theorem` | [padicValInt_dvd_iff](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalint-dvd-iff.md) | 719 | `result-track:5d5bc543a231513eaf6d8301c4468b204b78a38e149c1c95472746ca332ebeaf` |
| 84 | `theorem` | [padicValInt_dvd](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalint-dvd.md) | 723 | `result-track:a35ae66b5de1cc05710b779d35a105d3e1aef92af93f9485f1aa384b38afa0e9` |
| 85 | `theorem` | [padicValInt_self](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalint-self.md) | 729 | `result-track:38bb3981738b5ebdbce157a9b1ac3e6d442918708d82f7e263e2f067fdc32e47` |
| 86 | `theorem` | [padicValInt.mul](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalint-mul.md) | 732 | `result-track:9a204774ba06be35e98f451373af10305cce37ecd6fc25a9f59656820628d620` |
| 87 | `theorem` | [padicValInt_mul_eq_succ](../../../../../NumberTheory/AlgebraicNumberTheoryLocalFields/BasicBasicNamespacedPublic.lean/declarations/padicvalint-mul-eq-succ.md) | 737 | `result-track:ab29bd2a33684b5d1157b8fa501f08a81efb6af1f6f2e7088015f3565e616529` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a4de69b5520c66dca576f04f42417f583690ff151d8af4f4007e5ce274b5539 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant19ed29f867e3a72c824a2b1174135ad931485a96dce8b3bfce4a62d271725cf3.lean","GRWTSK/_verification/specifications/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Basic/Variant19ed29f867e3a72c824a2b1174135ad931485a96dce8b3bfce4a62d271725cf3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
