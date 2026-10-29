# Verification target: Dedekind Domain Ideal Den Mem Inv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a79b324db55b900a4c86c965f46a6cfa7f456e81",
  "lexical_observation_count": 136,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ideal/Variantd82c9d68f99afb4d3986965511707a94f7becd5af45aff413763e7684625b018.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/index.md) · [Full source](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a79b324db55b900a4c86c965f46a6cfa7f456e81`.

Source path: `GRWTSK/Algebra/Ideal/Variantd82c9d68f99afb4d3986965511707a94f7becd5af45aff413763e7684625b018.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ideal/Variantd82c9d68f99afb4d3986965511707a94f7becd5af45aff413763e7684625b018.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Pointwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.FieldDivision` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Maximal.Localization` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.ChainOfDivisors` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FractionalIdeal.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Squarefree.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/instance.md) | 64 | `declaration-track:34d2529a8f11d7cbeae115287518c6f26a66e326891c0ef30dfeb9daab1141a1` |
| 2 | `theorem` | [inv_eq](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/inv-eq.md) | 66 | `result-track:663a2bfda0c5bb3bf53dcf69c1d33a6860c1f4724a6300c4a12dfe6fb1f4f55e` |
| 3 | `theorem` | [inv_zero'](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/inv-zero.md) | 68 | `result-track:30b86d0d1a28fefbb694d07bee363f173ce288e9112e94e2a2c659b751452335` |
| 4 | `theorem` | [inv_nonzero](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/inv-nonzero.md) | 70 | `result-track:ecbd2fc02236bb8988555dd68dc0d088f847742988ec873d3a114f3d12e55025` |
| 5 | `theorem` | [coe_inv_of_nonzero](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/coe-inv-of-nonzero.md) | 73 | `result-track:e9bc4be5dddd4ff967f277c80ecf76ea0f1e8583a0458262b41936c73c86f245` |
| 6 | `theorem` | [mem_inv_iff](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/mem-inv-iff.md) | 79 | `result-track:0b3c15789627f436033c7d3a7d37e85c23cb378cb057907a1e50fe7c880871b9` |
| 7 | `theorem` | [inv_anti_mono](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/inv-anti-mono.md) | 82 | `result-track:9c8bce80530fd06bb9241685e3d6bd9d427be8c693abaf482683644721ac75df` |
| 8 | `theorem` | [le_self_mul_inv](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/le-self-mul-inv.md) | 89 | `result-track:e61138edea66c6278409130dac806423ddb363f1a4dab71cd6ac3ec4f1f6b227` |
| 9 | `theorem` | [coe_ideal_le_self_mul_inv](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/coe-ideal-le-self-mul-inv.md) | 95 | `result-track:2d9bc91f64f8185cef6f2a7bbb92dfba0a086509261067b3e985d8ac3227744f` |
| 10 | `theorem` | [right_inverse_eq](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/right-inverse-eq.md) | 100 | `result-track:77051981a50512b54562bea23125a1d6c3d7c9768f030547c05a160963b2f08e` |
| 11 | `theorem` | [mul_inv_cancel_iff](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/mul-inv-cancel-iff.md) | 116 | `result-track:3b65364021b0115e256b93d9172022c85fb0ca8da40836f74375f0e052e46f4c` |
| 12 | `theorem` | [mul_inv_cancel_iff_isUnit](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/mul-inv-cancel-iff-isunit.md) | 119 | `result-track:e9d716677fe3dcaaa4429d779179652d0d459b183ed015e76052cbb1b77d96d4` |
| 13 | `theorem` | [map_inv](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/map-inv.md) | 125 | `result-track:595d1e2645d1a37d62789a12d806d2c6b2f1e119bda01f9acec2c646ce0dca70` |
| 14 | `theorem` | [spanSingleton_inv](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/spansingleton-inv.md) | 132 | `result-track:c5f90f0a7f327017674963da4b9e36c38936b1f3c69d16fca1382db354af7a2b` |
| 15 | `theorem` | [spanSingleton_div_spanSingleton](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/spansingleton-div-spansingleton.md) | 135 | `result-track:7c88e8e6b596ead2b752ea685626778de7f724f5f0ea709ef907acffaa18c0f5` |
| 16 | `theorem` | [spanSingleton_div_self](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/spansingleton-div-self.md) | 139 | `result-track:2d4cd91e7ae8f211bbba97aae0249164e94d972d9662226e160776d4ce1c27d6` |
| 17 | `theorem` | [coe_ideal_span_singleton_div_self](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/coe-ideal-span-singleton-div-self.md) | 143 | `result-track:05b8fac91fad3224f222837d87306bf8f10b30c88630ad784e9eb7e75d8421ec` |
| 18 | `theorem` | [spanSingleton_mul_inv](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/spansingleton-mul-inv.md) | 149 | `result-track:97849af1624f7a0699cfee412b753b0d72d26102bb62f47ef2718e9faa95a24e` |
| 19 | `theorem` | [coe_ideal_span_singleton_mul_inv](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/coe-ideal-span-singleton-mul-inv.md) | 153 | `result-track:e136e5c45097aa7c56fead0ab7690ec95e6dcc2def99e7965aabdfed2ec00b8b` |
| 20 | `theorem` | [spanSingleton_inv_mul](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/spansingleton-inv-mul.md) | 160 | `result-track:ad855fb5ba14c630676f300b9ea0db9903d8a54aefe19a9b355670967621d1c1` |
| 21 | `theorem` | [coe_ideal_span_singleton_inv_mul](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/coe-ideal-span-singleton-inv-mul.md) | 164 | `result-track:45851f32b78fd8edf6aff82edf83dc0b8dbc40fe4dd9534c45af5c5ac49ec403` |
| 22 | `theorem` | [mul_generator_self_inv](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/mul-generator-self-inv.md) | 168 | `result-track:e9e794a66eb1be44575563668310665a3139db5d2f99edd84a48d09f064c75a0` |
| 23 | `theorem` | [invertible_of_principal](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/invertible-of-principal.md) | 178 | `result-track:5965e19b7a37c3a8e56cac3964da2d8b85cfab6549defacea4230116dae9e4fe` |
| 24 | `theorem` | [invertible_iff_generator_nonzero](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/invertible-iff-generator-nonzero.md) | 183 | `result-track:6a063e6f8b6a96713ddb92eab3faa1d754d7ca60ff46712dad9a0e77ca28bb2d` |
| 25 | `theorem` | [isPrincipal_inv](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/isprincipal-inv.md) | 198 | `result-track:e00ebb8eebed15b62859853f37cea559dfbf1229971871bc6dc9a35aada147ff` |
| 26 | `lemma` | [den_mem_inv](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/den-mem-inv.md) | 208 | `result-track:8c0a23b4404e8bdd1f83c408836700d0c321e61b730b06fda7ca7decf5fbbc14` |
| 27 | `lemma` | [num_le_mul_inv](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/num-le-mul-inv.md) | 218 | `result-track:d271ba96811cdd8e1015509a8979001b0304440c2c0d2901bd5104d1ba3168c9` |
| 28 | `lemma` | [bot_lt_mul_inv](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/bot-lt-mul-inv.md) | 225 | `result-track:c6cdbf8d32fe583e78a1156806a71a1d4dccf71ae9b5283f8c74e99ed41d0cde` |
| 29 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/instance-source-edition-2.md) | 228 | `declaration-track:3bcd874ea1e91a76b346d0ca141aeea3f0f6415713728421ade5e7a9e4390c15` |
| 30 | `def` | [IsDedekindDomainInv](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/isdedekinddomaininv.md) | 242 | `declaration-track:45c3bc8fec75d6bf11b814898755f95ce7fe4ec9a41470048f91cfbeb0c038d0` |
| 31 | `theorem` | [isDedekindDomainInv_iff](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/isdedekinddomaininv-iff.md) | 249 | `result-track:615927bb3a93bfa1f5ca357261c40a7ab4ec790a2b137a2e9427f080d23bf588` |
| 32 | `theorem` | [FractionalIdeal.adjoinIntegral_eq_one_of_isUnit](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/fractionalideal-adjoinintegral-eq-one-of-isunit.md) | 257 | `result-track:15bf6f7ef6ea0457c9d6b8312a3060596e4c0002c6facaf285b0d6fa857382ef` |
| 33 | `theorem` | [mul_inv_eq_one](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/mul-inv-eq-one.md) | 272 | `result-track:cbbb3a6fce38f0eada479ba4825717ab83a231862519ef3f09d1304cfbe2bcba` |
| 34 | `theorem` | [inv_mul_eq_one](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/inv-mul-eq-one.md) | 275 | `result-track:93d33f26abb88e04dd5b2bf5110c8ca2208092f126bb19455e4c6ad87b4183c8` |
| 35 | `theorem` | [isUnit](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/isunit.md) | 278 | `result-track:02ce81662238b01f599dee6d90c5545a6b723bf5768632a969a33ea7601b9708` |
| 36 | `theorem` | [isNoetherianRing](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/isnoetherianring.md) | 281 | `result-track:12c8f45d84652d138cdd48cb40e77398c70e828f96eda89ad4e082f77f6cdbee` |
| 37 | `theorem` | [integrallyClosed](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/integrallyclosed.md) | 288 | `result-track:78830e7510c962d75327a5241be846b26b1070a4166a26e447a3a7cf900e2e54` |
| 38 | `theorem` | [dimensionLEOne](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/dimensionleone.md) | 300 | `result-track:9feec5c8f28afb648ec1d5f816ed03fbd36b1daed661e9df5485e8a9a5712665` |
| 39 | `theorem` | [isDedekindDomain](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/isdedekinddomain.md) | 337 | `result-track:9f8c92c7501e08d347d4f8fbfdac56a8d1f93cae94fb660648390352dc345ff8` |
| 40 | `theorem` | [one_mem_inv_coe_ideal](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/one-mem-inv-coe-ideal.md) | 348 | `result-track:1d48e95514c41a232eba39cb2c07ee0af0c849036d2d5aa1965989f5a9b66291` |
| 41 | `theorem` | [exists_multiset_prod_cons_le_and_prod_not_le](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/exists-multiset-prod-cons-le-and-prod-not-le.md) | 361 | `result-track:f836411328a5e065f3374a6fdc513bcb387978f201581223bec987046be40398` |
| 42 | `lemma` | [not_inv_le_one_of_ne_bot](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/not-inv-le-one-of-ne-bot.md) | 393 | `result-track:35607e33a8a775329dbeaba1b673de80d05803de9ed4191b2477d5773998450e` |
| 43 | `theorem` | [exists_notMem_one_of_ne_bot](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/exists-notmem-one-of-ne-bot.md) | 434 | `result-track:f05ca8bb8e30e57aa52e8fb5c67a5af9d7788669e294786156cc02e23c1e15b3` |
| 44 | `theorem` | [mul_inv_cancel_of_le_one](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/mul-inv-cancel-of-le-one.md) | 441 | `result-track:3d2f4367e76dd91d0f87a2b09060d20ced906bf4ce9edc433779736d92beee67` |
| 45 | `theorem` | [coe_ideal_mul_inv](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/coe-ideal-mul-inv.md) | 461 | `result-track:0e946c0d8d062c97a045619ba48c2751727820fa9db99f884d04026499fb80b5` |
| 46 | `theorem` | [mul_inv_cancel](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/mul-inv-cancel.md) | 501 | `result-track:6e5d5e306c5bcba095aac4646f42691608b832aca360187400e842fc489975d0` |
| 47 | `theorem` | [mul_right_le_iff](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/mul-right-le-iff.md) | 515 | `result-track:f46ca512d0622d234e17ae835201bc775e8a96e5cee1b16c0424274d2a3dc204` |
| 48 | `theorem` | [mul_left_le_iff](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/mul-left-le-iff.md) | 524 | `result-track:8444ed45ff228396aca8fb3a0ecac45230638f536f54c0b9ed65159f16d7f461` |
| 49 | `theorem` | [mul_right_strictMono](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/mul-right-strictmono.md) | 527 | `result-track:b6d9a827c7aa72fd41fad3d88b9dc08f7295c1e2887416a1630258adf021367b` |
| 50 | `theorem` | [mul_left_strictMono](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/mul-left-strictmono.md) | 531 | `result-track:9c557a7bc7ee7655650f82bccd13cb6800c5212979f6606a71c3e73d0a8a6476` |
| 51 | `theorem` | [div_eq_mul_inv](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/div-eq-mul-inv.md) | 538 | `result-track:70b47978d32e1dee45b862f70b7bf1407d6744703893f80718269fc91a618695` |
| 52 | `theorem` | [isDedekindDomain_iff_isDedekindDomainInv](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/isdedekinddomain-iff-isdedekinddomaininv.md) | 553 | `result-track:66b1f63fa249d41f8db70d44593ffd06c62d4bc739c816093021032a0fbcf6c0` |
| 53 | `instance` | [FractionalIdeal.semifield](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/fractionalideal-semifield.md) | 568 | `declaration-track:42f4e171a90a93a7a6b5916b77445a5f396f81e574ccc5298a08c53377804fc9` |
| 54 | `instance` | [FractionalIdeal.cancelCommMonoidWithZero](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/fractionalideal-cancelcommmonoidwithzero.md) | 584 | `declaration-track:d14969406b54b696db12af86ce529c7b01c798513a53fbf6ec4f3e1575736261` |
| 55 | `instance` | [Ideal.cancelCommMonoidWithZero](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/ideal-cancelcommmonoidwithzero.md) | 589 | `declaration-track:d1145541de52f98ec9d14db94625296ddb5cb65986ed3f13e1f7ed171c18db8a` |
| 56 | `instance` | [Ideal.isDomain](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/ideal-isdomain.md) | 593 | `declaration-track:43f25f324e1dfa7e12cb39714d4fa85706ba74dfc3e36a91ddf6bbf41e511fc5` |
| 57 | `theorem` | [Ideal.dvd_iff_le](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/ideal-dvd-iff-le.md) | 596 | `result-track:5c2fc37a587046b20f29233a23d5a76398ce8c8df5640a2693479492de08b34b` |
| 58 | `theorem` | [Ideal.dvdNotUnit_iff_lt](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/ideal-dvdnotunit-iff-lt.md) | 610 | `result-track:878c0c2ffa2be2446cb3aeb8ed8c2565ab73957b16fed4c66e6f8c8722cfaad5` |
| 59 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/instance-source-edition-4.md) | 622 | `declaration-track:c4d0968b7359ee86ecf0d13d9d44f475373ef504e309da994a1e25825264c86f` |
| 60 | `instance` | [Ideal.uniqueFactorizationMonoid](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/ideal-uniquefactorizationmonoid.md) | 629 | `declaration-track:9f634503efd344d4b9be2f43de6190e1c8c26829b1d7295a5adbb3242e3f9ff4` |
| 61 | `instance` | [Ideal.normalizationMonoid](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/ideal-normalizationmonoid.md) | 646 | `declaration-track:32485fd2f5507867ab07024f5ac9948d8f506af639f225058a12996d5bec18d6` |
| 62 | `theorem` | [Ideal.dvd_span_singleton](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/ideal-dvd-span-singleton.md) | 649 | `result-track:113bd0391881905a571dccde707fd9df1eee8bfd6af19c01d11bc4a91435c231` |
| 63 | `theorem` | [Ideal.isPrime_of_prime](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/ideal-isprime-of-prime.md) | 652 | `result-track:7e1441f0e116ee245a361f0a37e7f9fd574c84da28f8a9839b2ca23477df071b` |
| 64 | `theorem` | [Ideal.prime_of_isPrime](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/ideal-prime-of-isprime.md) | 660 | `result-track:b477bf1eb7d6ba177f7e89ad88aa11bbdf25d583c5cbd805f76a51606108f7b1` |
| 65 | `theorem` | [Ideal.prime_iff_isPrime](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/ideal-prime-iff-isprime.md) | 666 | `result-track:317bc43a1407a5dcf36d8a2ad9f0202880a9b6633934dea1abf23e1c9197f428` |
| 66 | `theorem` | [Ideal.isPrime_iff_bot_or_prime](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/ideal-isprime-iff-bot-or-prime.md) | 671 | `result-track:82aa63ef5eb46c0ec157a887ff2b08f9d82fea0e9413e9f78a5bf55364daf4c5` |
| 67 | `theorem` | [Ideal.prime_span_singleton_iff](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/ideal-prime-span-singleton-iff.md) | 676 | `result-track:cf6bc015c37f7273baff6dcc3f52848077837fd3d69c31da03715ac02bf1c076` |
| 68 | `theorem` | [Ideal.prime_generator_of_prime](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/ideal-prime-generator-of-prime.md) | 684 | `result-track:00de1fd22020eca763480e87fe8aed403157ec9b80719dee50de4aa5677fbd26` |
| 69 | `theorem` | [Ideal.mem_normalizedFactors_iff](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/ideal-mem-normalizedfactors-iff.md) | 690 | `result-track:cc220c21b434bc2a79b177cd7eddf12f6371df80fd5255a293f730a867dd078f` |
| 70 | `theorem` | [Ideal.pow_right_strictAnti](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/ideal-pow-right-strictanti.md) | 699 | `result-track:b958d7551dea3d4ad8656ec2b76d98484e04253d2ca5a8067786a596f37c87c7` |
| 71 | `theorem` | [Ideal.pow_lt_self](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/ideal-pow-lt-self.md) | 704 | `result-track:ff96e51892a3b6bcebff03d00617c165b4509ce4736e32f5f421f8288f7229f2` |
| 72 | `theorem` | [Ideal.exists_mem_pow_notMem_pow_succ](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/ideal-exists-mem-pow-notmem-pow-succ.md) | 710 | `result-track:3ac632958d9472ae0c46c008d87c0bd1991e8d46fe9157962ca89c03ca71c95c` |
| 73 | `theorem` | [Ideal.eq_prime_pow_of_succ_lt_of_le](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/ideal-eq-prime-pow-of-succ-lt-of-le.md) | 719 | `result-track:af9c6a3c0c3941365fbcc17f8fc235a69e04ac753a365894dcdfdc550d572fb3` |
| 74 | `theorem` | [Ideal.pow_succ_lt_pow](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/ideal-pow-succ-lt-pow.md) | 733 | `result-track:aac410bd044c0540bc41f598c81488b7da3ed9bb34183d45ebe96ecedfe43d62` |
| 75 | `theorem` | [Associates.le_singleton_iff](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/associates-le-singleton-iff.md) | 738 | `result-track:f536c85dcc3b5ee092e047df74d35ff60ac4c43ad767fac1b57cc310f898ecc0` |
| 76 | `lemma` | [FractionalIdeal.le_inv_comm](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/fractionalideal-le-inv-comm.md) | 745 | `result-track:4b4bd0646b7ebc4507480aaf1ee893152eee660ee392cbba5cd1b751a7b437f4` |
| 77 | `lemma` | [FractionalIdeal.inv_le_comm](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/fractionalideal-inv-le-comm.md) | 749 | `result-track:41bc23de1f5860da267c393e1c28a4e8dc88f5643b33a9fdfb9626112d134687` |
| 78 | `theorem` | [Ideal.exist_integer_multiples_notMem](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/ideal-exist-integer-multiples-notmem.md) | 760 | `result-track:d6e8b2b3116ec82f1e73f9c90ffba8a07e4e03e216f6dc6ccde4722dea5252d8` |
| 79 | `theorem` | [sup_mul_inf](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/sup-mul-inf.md) | 810 | `result-track:47181cf43ca91f1e34d952cc8ca891604967615e9b4a55a6f703297275de900b` |
| 80 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/instance-source-edition-3.md) | 828 | `declaration-track:88b36877fc1ab4b72a72eeaa665a63bb2cba597117910f660fa545342813b6ec` |
| 81 | `theorem` | [gcd_eq_sup](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/gcd-eq-sup.md) | 845 | `result-track:cedace265cda674ee881fe2e451a3ffa1181a034c58b5e44d3cf72d42620c9f6` |
| 82 | `theorem` | [lcm_eq_inf](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/lcm-eq-inf.md) | 848 | `result-track:7422b8649115c2cfba3fba618b61f7e24454c7a8def5802098e47b96b5060fa4` |
| 83 | `theorem` | [isCoprime_iff_gcd](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/iscoprime-iff-gcd.md) | 850 | `result-track:0ad50575bb0acc8670c7b1baf4c80ec6001cf6c62f38a05bd2395577c4a7030b` |
| 84 | `theorem` | [factors_span_eq](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/factors-span-eq.md) | 853 | `result-track:5def0a6ca15c93f984d2310de3caedb21305e5d7243d146bb1d3d9a418c1b05b` |
| 85 | `theorem` | [prod_normalizedFactors_eq_self](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/prod-normalizedfactors-eq-self.md) | 873 | `result-track:758b837b121141e83097e61e7a685ede490e77ab5c0dd9a76d66f1f140e9553c` |
| 86 | `theorem` | [count_le_of_ideal_ge](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/count-le-of-ideal-ge.md) | 876 | `result-track:a39f2fa48e231c236f1e57b84fc938b92f377d7ec9342443df52f3791ea0c1af` |
| 87 | `theorem` | [sup_eq_prod_inf_factors](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/sup-eq-prod-inf-factors.md) | 883 | `result-track:1a0673c1436b6108578b671bce42172886ddfd1f487d9d42ef3496a6678e2b1a` |
| 88 | `theorem` | [irreducible_pow_sup](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/irreducible-pow-sup.md) | 911 | `result-track:100b6e4066c4d57c09f8aad3d909d1a7caba70df13eb594a48d3627f879eead3` |
| 89 | `theorem` | [irreducible_pow_sup_of_le](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/irreducible-pow-sup-of-le.md) | 916 | `result-track:09e6be5863405bb5518035d865219820680680534ce2b9b6ac08c5da79cd3ab1` |
| 90 | `theorem` | [irreducible_pow_sup_of_ge](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/irreducible-pow-sup-of-ge.md) | 925 | `result-track:a6f000372c862b60cd4a184f899bb12ab755c5b34720f8c4465e06975e2982aa` |
| 91 | `theorem` | [Ideal.eq_prime_pow_mul_coprime](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/ideal-eq-prime-pow-mul-coprime.md) | 938 | `result-track:a3e282b0ee9a5d74c13280ae936cf72c32d31e80ec25a650bcbd266192ce0959` |
| 92 | `structure` | [HeightOneSpectrum](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/heightonespectrum.md) | 967 | `declaration-track:ef7a669d4381cd59ccb1aadb53edbc4ea7426a51587635048a1d549e78dba227` |
| 93 | `instance` | [isMaximal](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/ismaximal.md) | 978 | `declaration-track:e26f9cce63f4cec2fe17fa72a8f06c1aa2c55cf5ca049ed97c95010a16ed3d03` |
| 94 | `theorem` | [prime](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/prime.md) | 980 | `result-track:1a25adcb0929428c859f84f31658797caf74afbee8e91ffb1caef6c234648dd2` |
| 95 | `theorem` | [irreducible](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/irreducible.md) | 982 | `result-track:7ada383189c7b038be2012a66a16039490032f6ea6e45b7b50374aeea7ef684d` |
| 96 | `theorem` | [associates_irreducible](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/associates-irreducible.md) | 985 | `result-track:f089677cc07e5035b15a782499314c21dd460f4ee1246f24b7a0ef86febd813a` |
| 97 | `def` | [equivMaximalSpectrum](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/equivmaximalspectrum.md) | 989 | `declaration-track:9558459a2d702213316deb3fb71205ded265cd197670cce8c73b0113ecb15861` |
| 98 | `theorem` | [iInf_localization_eq_bot](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/iinf-localization-eq-bot.md) | 1000 | `result-track:16a0510306b089a3ca4f988e4bf85d77b9a1f63c446cca08e243958bde9618cb` |
| 99 | `def` | [idealFactorsFunOfQuotHom](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/idealfactorsfunofquothom.md) | 1029 | `declaration-track:f3a1ba995fcd0ab8bccbb7eacfbb4d132ba44534dfc4fd0ac6d1af24ead1d0d4` |
| 100 | `theorem` | [idealFactorsFunOfQuotHom_id](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/idealfactorsfunofquothom-id.md) | 1050 | `result-track:4c34422505e58d67b715ef99d436f90ffcb5588c2da1d2fd70f8a4fc1a9332dd` |
| 101 | `theorem` | [idealFactorsFunOfQuotHom_comp](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/idealfactorsfunofquothom-comp.md) | 1061 | `result-track:f30c697ea863ce5236a7c758d6047471d9e78455abb030576b1ff9c718dda131` |
| 102 | `def` | [idealFactorsEquivOfQuotEquiv](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/idealfactorsequivofquotequiv.md) | 1075 | `declaration-track:7d938c0724672499b90fc7e19e4859f4d7dac4545e2f61b8993fd54e697c245f` |
| 103 | `theorem` | [idealFactorsEquivOfQuotEquiv_symm](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/idealfactorsequivofquotequiv-symm.md) | 1087 | `result-track:f5ed1b0d57294cc227285e65fa541bce8824d1d7e9fde592a39f282147c98795` |
| 104 | `theorem` | [idealFactorsEquivOfQuotEquiv_is_dvd_iso](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/idealfactorsequivofquotequiv-is-dvd-iso.md) | 1090 | `result-track:7617300145fa85cfdff09594906ec52ceb913bd7639235fc2479d1d6dbc20b3e` |
| 105 | `theorem` | [idealFactorsEquivOfQuotEquiv_mem_normalizedFactors_of_mem_normalizedFactors](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/idealfactorsequivofquotequiv-mem-normalizedfactors-of-mem-normalizedfact.md) | 1101 | `result-track:627f77f8a1b7e1679549a60fbb61edb6a7130232daa21477e7d51b75708810d8` |
| 106 | `def` | [normalizedFactorsEquivOfQuotEquiv](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/normalizedfactorsequivofquotequiv.md) | 1117 | `declaration-track:d7712c1578ddae078f22309fda9f3548acae81ba6685a606a8f97fa66d046bb6` |
| 107 | `theorem` | [normalizedFactorsEquivOfQuotEquiv_symm](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/normalizedfactorsequivofquotequiv-symm.md) | 1132 | `result-track:5191b8b69113454002cbb57c32914190f8ebcafe50123b7a6b71e5a958bdfb6c` |
| 108 | `theorem` | [normalizedFactorsEquivOfQuotEquiv_emultiplicity_eq_emultiplicity](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/normalizedfactorsequivofquotequiv-emultiplicity-eq-emultiplicity.md) | 1137 | `result-track:e1d7fd77e3b09e59947c17a649871edb105e2b4e577704d3c9044c28e22c14f0` |
| 109 | `theorem` | [Ring.DimensionLeOne.prime_le_prime_iff_eq](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/ring-dimensionleone-prime-le-prime-iff-eq.md) | 1153 | `result-track:d4f098765e2e8dee266056021c44d9e99072ceff625277473f422298520b0f68` |
| 110 | `theorem` | [Ideal.coprime_of_no_prime_ge](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/ideal-coprime-of-no-prime-ge.md) | 1157 | `result-track:fe7fd6657fdf56a7990d374d4373fafefd160332098ab0efa96dfe66c0878c2c` |
| 111 | `theorem` | [Ideal.IsPrime.mul_mem_pow](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/ideal-isprime-mul-mem-pow.md) | 1168 | `result-track:d4eee0b8c28917b42bb0715464b5aff9a4cbb62a048606b3e3136a2c52a1bfd4` |
| 112 | `theorem` | [Ideal.IsPrime.mem_pow_mul](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/ideal-isprime-mem-pow-mul.md) | 1179 | `result-track:f363c1de6e583e6138d772d4b22c2b804185314fd58e96bcb13e03339870b872` |
| 113 | `theorem` | [Ideal.count_normalizedFactors_eq](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/ideal-count-normalizedfactors-eq.md) | 1187 | `result-track:a5fee8dd67e2ba9bff16c5a91ddd7209ad68fb9e91239168d243cc4e8d44d209` |
| 114 | `theorem` | [count_associates_factors_eq](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/count-associates-factors-eq.md) | 1194 | `result-track:43241979e8ad09c31bedee10e9099edfb4bf8bc23086f5b705ea435b2bff6267` |
| 115 | `theorem` | [Ideal.le_mul_of_no_prime_factors](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/ideal-le-mul-of-no-prime-factors.md) | 1210 | `result-track:77866839801119eaff51c73c54898efacf43a9a64ab35930d65fd4b5c1613df0` |
| 116 | `theorem` | [IsDedekindDomain.inf_prime_pow_eq_prod](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/isdedekinddomain-inf-prime-pow-eq-prod.md) | 1223 | `result-track:5ba9eb28ab8fa8446feaef6eea7d81f63fa23f9e63a3cfd50edc82ed556d3f33` |
| 117 | `def` | [IsDedekindDomain.quotientEquivPiOfProdEq](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/isdedekinddomain-quotientequivpiofprodeq.md) | 1250 | `declaration-track:053b557fba0ac42a703c0e4e25f200d71065af6f93f6f25020094d6c5842de4e` |
| 118 | `def` | [IsDedekindDomain.quotientEquivPiFactors](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/isdedekinddomain-quotientequivpifactors.md) | 1270 | `declaration-track:0bd81c88121f7be74e4c918137b2c6c2c51d7f3050c5e258554c169310642348` |
| 119 | `theorem` | [IsDedekindDomain.quotientEquivPiFactors_mk](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/isdedekinddomain-quotientequivpifactors-mk.md) | 1285 | `result-track:fcd7f09b3f6a5969de504c49dc711010d0e91690fa2e84c55101a93f4e4aa771` |
| 120 | `def` | [IsDedekindDomain.quotientEquivPiOfFinsetProdEq](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/isdedekinddomain-quotientequivpioffinsetprodeq.md) | 1295 | `declaration-track:1469e1e177be2d097e2fe114d71fc22f3195f20c7890e8ae6716dcd4f3d2d93e` |
| 121 | `theorem` | [IsDedekindDomain.exists_representative_mod_finset](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/isdedekinddomain-exists-representative-mod-finset.md) | 1305 | `result-track:0b4886e12db77a4050b3910233bb198e3136293b88ac096a3c6f3655cf804b7e` |
| 122 | `theorem` | [IsDedekindDomain.exists_forall_sub_mem_ideal](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/isdedekinddomain-exists-forall-sub-mem-ideal.md) | 1316 | `result-track:bd1fd64a4d1da2b5d0d7df3bcdab134acb5c23a54baa7c11281abd98bc499c80` |
| 123 | `theorem` | [span_singleton_dvd_span_singleton_iff_dvd](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/span-singleton-dvd-span-singleton-iff-dvd.md) | 1336 | `result-track:b7083d35b307c45ffd37e3c478cf290a69f2529a97cc0a62ac676a61e3320eb8` |
| 124 | `theorem` | [Ideal.squarefree_span_singleton](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/ideal-squarefree-span-singleton.md) | 1342 | `result-track:791bf769273606f8afe47b93c15a36cfd8027311fa420e5dadc5e7aafcbdce63` |
| 125 | `theorem` | [singleton_span_mem_normalizedFactors_of_mem_normalizedFactors](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/singleton-span-mem-normalizedfactors-of-mem-normalizedfactors.md) | 1351 | `result-track:24f7fc0f765042d3a63f326b2958ef48892202cb064bb2019eaad49e71fd5df3` |
| 126 | `theorem` | [emultiplicity_eq_emultiplicity_span](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/emultiplicity-eq-emultiplicity-span.md) | 1370 | `result-track:a0b73e430f38e9c6b9bcfa1cb1348e12149c7934b990e21deb4009ea2af2ede8` |
| 127 | `def` | [normalizedFactorsEquivSpanNormalizedFactors](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/normalizedfactorsequivspannormalizedfactors.md) | 1390 | `declaration-track:919d76ca4e36ea79571baa3e5cace50e9011d677265ddb66eab99ac48d4eef3c` |
| 128 | `theorem` | [emultiplicity_normalizedFactorsEquivSpanNormalizedFactors_eq_emultiplicity](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/emultiplicity-normalizedfactorsequivspannormalizedfactors-eq-emultiplici.md) | 1417 | `result-track:f3b5e4b50ae2f34067dcf43e4551989fc263336a9059e382d8255a76b23f15b8` |
| 129 | `theorem` | [emultiplicity_normalizedFactorsEquivSpanNormalizedFactors_symm_eq_emultiplicity](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/emultiplicity-normalizedfactorsequivspannormalizedfactors-symm-eq-emulti.md) | 1427 | `result-track:5a053b94ef743a4b36193855d2d2060415f8d993d7485cd879d901d53119a6a5` |
| 130 | `theorem` | [count_span_normalizedFactors_eq](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/count-span-normalizedfactors-eq.md) | 1442 | `result-track:405cfa79c440cf947d121ea479ce372c2c42f5e3f0f10e40942102a2b2e15c12` |
| 131 | `theorem` | [count_span_normalizedFactors_eq_of_normUnit](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/count-span-normalizedfactors-eq-of-normunit.md) | 1453 | `result-track:db8949013d24f807690e4830cb41bd42abb5947ca6f9e28b0b6e793bf288b630` |
| 132 | `abbrev` | [primesOverFinset](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/primesoverfinset.md) | 1469 | `declaration-track:75bedbd68c29e39fcb92f7178f740053c4f446ef774999d8e0520120d3533a45` |
| 133 | `theorem` | [coe_primesOverFinset](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/coe-primesoverfinset.md) | 1477 | `result-track:84b109e0187d3208e0128a6bfee827edf8a80fcc7dfc69ab57b42742fb48d140` |
| 134 | `theorem` | [primesOver_finite](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/primesover-finite.md) | 1487 | `result-track:fe13d8475b9ef00b61b6e80957ac3971d4aa2e0d6669b0cad32606644ca6db95` |
| 135 | `theorem` | [primesOver_ncard_ne_zero](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/primesover-ncard-ne-zero.md) | 1496 | `result-track:90e13bc9bcbe9be30cd2624f0c6a070fa3b8e264d49df554f6ffa69be8faecec` |
| 136 | `theorem` | [one_le_primesOver_ncard](../../../../CommutativeAlgebra/DedekindDomainIdealDenMemInv.lean/declarations/one-le-primesover-ncard.md) | 1500 | `result-track:68f22ba5a6c4bda2b8ee76a4fdaf007f227f43493d054496220ea60e65ef9dd8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a1710b53985c994736cb24c8cd46dc043e97ee55d523fb5dd9067f932d2c59cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Ideal/Variantd82c9d68f99afb4d3986965511707a94f7becd5af45aff413763e7684625b018.lean","GRWTSK/_verification/specifications/Algebra/Ideal/Variantd82c9d68f99afb4d3986965511707a94f7becd5af45aff413763e7684625b018.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
