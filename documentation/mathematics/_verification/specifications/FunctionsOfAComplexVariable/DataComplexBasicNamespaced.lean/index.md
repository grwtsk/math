# Verification target: Data Complex Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50ef67dd96268e3f063c40aed5d49495e60a5263",
  "lexical_observation_count": 211,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Basic/Variant1d7e7afc2c8367c46b01aee713ed03a7c547918106349df2c2d4830df83984ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50ef67dd96268e3f063c40aed5d49495e60a5263`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Basic/Variant1d7e7afc2c8367c46b01aee713ed03a7c547918106349df2c2d4830df83984ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Basic/Variant1d7e7afc2c8367c46b01aee713ed03a7c547918106349df2c2d4830df83984ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.CharZero` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.UnorderedInterval` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Complex](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/complex.md) | 36 | `declaration-track:1f8ff16f98cc3392c2ca6dab47a3a405bf070f4269e9248ca40e3e1d4b0ce641` |
| 2 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/instance-source-edition-10.md) | 48 | `declaration-track:bf93924b8b4b30e92160f1bf047d69f2b279ca8ac76c9bda56ee0685e7d395ea` |
| 3 | `def` | [equivRealProd](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/equivrealprod.md) | 53 | `declaration-track:68df645d2893534a6654cb3181ffaf5638e4b1cd112c12843c75d6230bf737ca` |
| 4 | `theorem` | [eta](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/eta.md) | 60 | `result-track:754e0e4b76097125c05814ccaf8584ebe329cdc601abf7e55ab60c458a70f471` |
| 5 | `theorem` | [ext](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ext.md) | 64 | `result-track:7209bcd64b1e1568fec892471079ed8baf16b354b3565643cb62ab63e6456243` |
| 6 | `lemma` | [«forall»](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/forall.md) | 69 | `result-track:d2c1ad6201c13760634d3c726041fe2cf9a1c209362fbfae861752d24982e541` |
| 7 | `lemma` | [«exists»](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/exists.md) | 70 | `result-track:cb69e0adef735b6a1868bd72d81e438ccddd5bea54f23725fb664e90d8516cdf` |
| 8 | `theorem` | [re_surjective](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/re-surjective.md) | 72 | `result-track:fe199c6b23e1a027559e2b3159ce318071316677f98f6f623fecee2d17bd79d9` |
| 9 | `theorem` | [im_surjective](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/im-surjective.md) | 74 | `result-track:1dc52752d30c5e6158b77f718515554c0dfa1012e5aba3fae4f4187d95280eba` |
| 10 | `theorem` | [range_re](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/range-re.md) | 77 | `result-track:8e35b105619bc8cc50d1b6a3bcda6428d103230837bb36d2c46c741aa368646d` |
| 11 | `theorem` | [range_im](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/range-im.md) | 81 | `result-track:4eadca7a4c07bd389d339270fbf3cb2e163883bf3ded021fb22ff48a27f7581e` |
| 12 | `def` | [ofReal](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal.md) | 86 | `declaration-track:4798cb0f62254c06e087c573c96b2ae6ed3db328503017cc48afb6e6b4099f78` |
| 13 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/instance.md) | 88 | `declaration-track:0a00506d0e47a3ef86340c93225c8a35597bebfdaa6fdbcd1d3bb9c24cff47d6` |
| 14 | `theorem` | [ofReal_re](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-re.md) | 92 | `result-track:87e9ebd9c21a21708f240eac9b8dbee6181dfa9e5402896e3f030830794a3452` |
| 15 | `theorem` | [ofReal_im](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-im.md) | 96 | `result-track:f1cbc8c7e65e392298a4b3cbda67ab544b5e0c01f6a9e92205e04bc10413c60e` |
| 16 | `theorem` | [ofReal_def](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-def.md) | 99 | `result-track:0bb35422b19caeb5eda4c5eb2e762cdf3063eb5756f52390e95e8e210ae535d8` |
| 17 | `theorem` | [ofReal_inj](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-inj.md) | 103 | `result-track:00c52cb0a8c38ae270bc17c5450ec71f616b156e4a60cd570b9e0e85d1b11cf5` |
| 18 | `theorem` | [ofReal_injective](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-injective.md) | 106 | `result-track:2ca323d53aca7b1301a3c3a275acd93e4b665bbd75d2fe40e7ff178544384381` |
| 19 | `instance` | [canLift](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/canlift.md) | 108 | `declaration-track:773de99a93a9554f67848eced94752ceb327ca3b0ad790c8760d06f5756d774e` |
| 20 | `def` | [reProdIm](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/reprodim.md) | 113 | `declaration-track:bd3fcfea5ce79d057b6c36ea1b89ee287cd6327a82a5125b9308a6ed39ca0b65` |
| 21 | `theorem` | [mem_reProdIm](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/mem-reprodim.md) | 121 | `result-track:8d43ebee47acc0866c5c3df9b9c91b50b52dacfcc7ddd4f7919b0de7fa61338d` |
| 22 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/instance-source-edition-12.md) | 124 | `declaration-track:dec462fe6c9966711e608a57e0c48ba86cd0a07d9e4d1b6de476bd409b1838a2` |
| 23 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 127 | `declaration-track:4743d2c4c65860816f9dd356f2c868ec9ce5b503a06c9b4dbfe7a9f89a1f6d88` |
| 24 | `theorem` | [zero_re](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/zero-re.md) | 131 | `result-track:554f530e96267b2f1c216dd7ca9bc7f0c23c78ec66932cde3f5d858f7e1aff7b` |
| 25 | `theorem` | [zero_im](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/zero-im.md) | 135 | `result-track:babd3e075f047c63af90211a292324d2c2a71238a06564eb5c803dfe9e6c3de6` |
| 26 | `theorem` | [ofReal_zero](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-zero.md) | 139 | `result-track:a8368d08f01c2b081a6a37d74added64c81e9a82e40434e8db167c08a56954fc` |
| 27 | `theorem` | [ofReal_eq_zero](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-eq-zero.md) | 143 | `result-track:730bfaecde8b885d86011d53b878c80584405fa5cd51b2cedc61eea590a0c370` |
| 28 | `theorem` | [ofReal_ne_zero](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-ne-zero.md) | 146 | `result-track:59268288b55f8721aba5733676fa0c0184dc324c5794fc1388248f4224d029f6` |
| 29 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 149 | `declaration-track:87aad6c36a03c7bc39ce327a4df3c6c0fa0e0d7596c7ff7610c8e9db5d2ff754` |
| 30 | `theorem` | [one_re](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/one-re.md) | 153 | `result-track:7f0a6b9b5b8b69cf8e261262f70e440e04025e0caeb79aaf3dc5992d95b85ee8` |
| 31 | `theorem` | [one_im](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/one-im.md) | 157 | `result-track:9a6e72c99753a6f731653e2e277d334eb3ec8ec25ea76a3465c58fb0ac7bc86d` |
| 32 | `theorem` | [ofReal_one](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-one.md) | 161 | `result-track:34fa661dfc9ceb412dacff400d1b88168068bfd8a776f26c37c3f1acb2c1a64b` |
| 33 | `theorem` | [ofReal_eq_one](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-eq-one.md) | 165 | `result-track:09a1952fb8da624f8fe15891fa4bd994dd9136a29b4658346a76225421d72caf` |
| 34 | `theorem` | [ofReal_ne_one](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-ne-one.md) | 168 | `result-track:933f9f67cd16be974fa1161f752a8e021808e1ce2ade81771ed38ee007e36fdd` |
| 35 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/instance-source-edition-9.md) | 171 | `declaration-track:bba31365966714e6c2326c97504fa5e9e07fd9ef8578f228e491fcea1e58de28` |
| 36 | `theorem` | [add_re](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/add-re.md) | 175 | `result-track:3706cbc66ae4d37718cba5fbf7a073083d1df0d8d4273a0cd434394cb06af0db` |
| 37 | `theorem` | [add_im](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/add-im.md) | 179 | `result-track:c426464f16d72c34e8d75d42c7d26c358524169579b8cd61f3773c71f358b8d9` |
| 38 | `theorem` | [ofReal_add](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-add.md) | 186 | `result-track:1a72a11616cf465133b128cacbd9fbbfaf276d70f71f5c4a4ff6543e244ee23c` |
| 39 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/instance-source-edition-7.md) | 191 | `declaration-track:9cf6324399107bbc6ad9844325b3ab4858824a03bd78057f2afbf70f0298be65` |
| 40 | `theorem` | [neg_re](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/neg-re.md) | 195 | `result-track:eb3b6a016764a6474f94ac4033e31c956983fe170a69518fb76d505a79c5f22b` |
| 41 | `theorem` | [neg_im](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/neg-im.md) | 199 | `result-track:8f9d70abc0281577d9d9c735f6532e4062766d213cd7a68dfc40e657c505977e` |
| 42 | `theorem` | [ofReal_neg](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-neg.md) | 203 | `result-track:eb8b411999f3787cfda74960e29b8b4840ad519d409d9111aea2c8ae02aa36df` |
| 43 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 206 | `declaration-track:1d5ebd8f618ccc4da79a3d1e1515d71efd911756e773db0660fc50fe941f0575` |
| 44 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 209 | `declaration-track:617a398751898904363b0d485c8ba9f7c89f7a9fc181cd5f2b627ceb17010d2a` |
| 45 | `theorem` | [mul_re](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/mul-re.md) | 213 | `result-track:91f0c6d71ef0b92b2d5084c15b472198c9ddfd5581c1e32e540395a004a9de23` |
| 46 | `theorem` | [mul_im](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/mul-im.md) | 217 | `result-track:65e123c0d8012a531ca43b82a88be6b3a4bf5aa784591b0160a132fcf8024ec4` |
| 47 | `theorem` | [ofReal_mul](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-mul-source-edition-2.md) | 221 | `result-track:bbcef6e5309c8b0bb6bba506832e3891f2b0c781c4d294ce3d7c2a859a71b710` |
| 48 | `theorem` | [re_ofReal_mul](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/re-ofreal-mul.md) | 224 | `result-track:ffe2ac28a41fc89a62ea760412d5e3f21ac69015c585f1e2dca6a07c6acf2eef` |
| 49 | `theorem` | [im_ofReal_mul](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/im-ofreal-mul.md) | 226 | `result-track:e058f08cb0d2c5683bb31cfdcb583c338897304b815c4ffdc88902a705b098cf` |
| 50 | `lemma` | [re_mul_ofReal](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/re-mul-ofreal.md) | 228 | `result-track:0ef3fb96e5e1aa9f96b54e05a79b6469a823d3d4ee2dec27ff0fcbb8853e2e67` |
| 51 | `lemma` | [im_mul_ofReal](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/im-mul-ofreal.md) | 229 | `result-track:f7348a2a2f176ab823e23c28fc31e368058675c69453c8d8120a375ca561d321` |
| 52 | `theorem` | [ofReal_mul'](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-mul.md) | 231 | `result-track:9970a27f2744893fbfb4e84f374df40b822a9820e358ea176f1c0d8c8a50c7ee` |
| 53 | `def` | [I](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/i.md) | 238 | `declaration-track:56e1d132370ee7d07f5f79012f561c8cfa6d0b3dec1e41acf1454197d6fd7088` |
| 54 | `theorem` | [I_re](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/i-re.md) | 242 | `result-track:98e60345e5c3922035749553b614b1a7dcf51ff650c010afdb63a0e0f702ee5d` |
| 55 | `theorem` | [I_im](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/i-im.md) | 246 | `result-track:c3e14e6db27ac12de7f8230802aafc1a952a13e3ae8fd259033e3b3c300abaa6` |
| 56 | `theorem` | [I_mul_I](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/i-mul-i.md) | 250 | `result-track:e9daf82d417659ebb86cd68f7e988422083d23078a44230bfeb68bbf7dc9654d` |
| 57 | `theorem` | [I_mul](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/i-mul.md) | 253 | `result-track:cd51c0c0d6c7d35f8a95a6e1b6181ae645d17c4f23d107aa0d9a31c6ef4ac7b9` |
| 58 | `lemma` | [I_ne_zero](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/i-ne-zero.md) | 256 | `result-track:1fdb62b07cac0b512a127341d770eda7dcca2bd16f4f3e61d04c19e9577013a3` |
| 59 | `theorem` | [mk_eq_add_mul_I](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/mk-eq-add-mul-i.md) | 258 | `result-track:5669d38eb5d2799ef61af424b09958ba13bfb253dc8f3d0f57be05c59b1716ae` |
| 60 | `theorem` | [re_add_im](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/re-add-im.md) | 262 | `result-track:42e74543421bd87e2e8815d19b1dff72bfa2933d00622c85dbb565032756f991` |
| 61 | `theorem` | [mul_I_re](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/mul-i-re.md) | 265 | `result-track:376791160269d9b45c5e8933f62cdee45311e75449f1ab9ec5d6bc07da06dd6f` |
| 62 | `theorem` | [mul_I_im](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/mul-i-im.md) | 267 | `result-track:6700e4867e48304612e26ae0fef9a3fb66182ac5a61f25e9bdedd9f0132f41ee` |
| 63 | `theorem` | [I_mul_re](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/i-mul-re.md) | 269 | `result-track:e9a01b69ab66ebfe9afedb1f05879466247f3c692622990e96fe6465d9b54570` |
| 64 | `theorem` | [I_mul_im](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/i-mul-im.md) | 271 | `result-track:2b085f24fc8005ce2e333aaf0fdb4a393dbfc5f0a61b1ffa2154a05c4236b466` |
| 65 | `theorem` | [equivRealProd_symm_apply](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/equivrealprod-symm-apply.md) | 274 | `result-track:eb8cc0e1858e9e5e02f74c39e03a5a3cd16d815bdbc0b05b28caad232f293713` |
| 66 | `def` | [equivRealProdAddHom](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/equivrealprodaddhom.md) | 279 | `declaration-track:8b8d8140c15c367f53d49a585cdd9d95364d47dd95cc25b64358ec2f6b6887cd` |
| 67 | `theorem` | [equivRealProdAddHom_symm_apply](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/equivrealprodaddhom-symm-apply.md) | 282 | `result-track:427ef5d790719b48ebc1240a0e1c50a11ba9c897c5bf22d9b62b3e3da882008b` |
| 68 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/instance-source-edition-13.md) | 291 | `declaration-track:ec2f948cde322ed9a312b79ca9e95cf110b1bc21b4541ce89bd54ba721850782` |
| 69 | `instance` | [instSMulRealComplex](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/instsmulrealcomplex.md) | 303 | `declaration-track:a8076b6624d5e2f77a818c2c4179fa32f31079e6855340437254279823ba9206` |
| 70 | `theorem` | [smul_re](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/smul-re.md) | 314 | `result-track:b54cf7f005a91c8a69c0ffe3cdb99e0bdb334d6f8d137e7a9882ac5f9e68da1e` |
| 71 | `theorem` | [smul_im](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/smul-im.md) | 316 | `result-track:4c08f8832696b185b999ea7be872acfef97224b7732b05f2b09b3fc7a90aeade` |
| 72 | `theorem` | [real_smul](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/real-smul.md) | 319 | `result-track:7ff739241bf3c1362b6495f6d9fc80b56194f5a3da71a434e257062707528889` |
| 73 | `instance` | [addCommGroup](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/addcommgroup.md) | 324 | `declaration-track:42ab9effff2db7284cb42c870fb59d83f66fbb629ccef9a29af939b7e58f55d5` |
| 74 | `instance` | [addGroupWithOne](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/addgroupwithone.md) | 343 | `declaration-track:9550de2072a3f2f327f9f8dd8b5eacfe69c749ab8e7a3013d0bd7031157ddfda` |
| 75 | `instance` | [commRing](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/commring.md) | 361 | `declaration-track:8c745ac5ce0faf061b1b5c576693ca7e1baeacedde5cb785455fa7519eddde67` |
| 76 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 377 | `declaration-track:3b96d53eb2b758d6b57f0e331c8cb10536a28fa76ea13674be0fd315ae62773c` |
| 77 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/instance-source-edition-14.md) | 381 | `declaration-track:f0909d2e054dffd622db47fdc381da23f6139d37f0ba84dd96d4a7857608faa9` |
| 78 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/instance-source-edition-8.md) | 386 | `declaration-track:b57796b8fd1ee5d005fa24f4860e12cd806a486042af6972ebb39b698bc40e94` |
| 79 | `def` | [reAddGroupHom](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/readdgrouphom.md) | 390 | `declaration-track:332a644f3ce277bfa6cd4f2193082a892af3edef030196ca302b8b0ea2a94048` |
| 80 | `theorem` | [coe_reAddGroupHom](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/coe-readdgrouphom.md) | 396 | `result-track:3984661c6a5bb18ab7b86aca7cc6187684d9bd1beb75d2c91b4dc6322ad28140` |
| 81 | `def` | [imAddGroupHom](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/imaddgrouphom.md) | 400 | `declaration-track:6be162a205950ffae65054787c858757c7a90e6fc1ebf984ebe2181de4bb023b` |
| 82 | `theorem` | [coe_imAddGroupHom](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/coe-imaddgrouphom.md) | 406 | `result-track:01a3321a946ef66e17e5795a3966a6678b5ec6edc0f9cb6cbe058e39f190eea1` |
| 83 | `instance` | [instNNRatCast](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/instnnratcast.md) | 411 | `declaration-track:7ed2d72da6f104c53f9d76613c201fd54e9eb7b2c4ace573ff242d9fba286eac` |
| 84 | `instance` | [instRatCast](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/instratcast.md) | 412 | `declaration-track:b3943b6b751ca5429a7a4b8e1f6fe4a8c045f1522192b4c61d9d50a91b40442a` |
| 85 | `lemma` | [ofReal_ofNat](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-ofnat.md) | 414 | `result-track:1660c76962d9bf04f3b19fa5059f98f407a48194d8cd1440b72a6f801894bedf` |
| 86 | `lemma` | [ofReal_natCast](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-natcast.md) | 415 | `result-track:37ad448219708eb6bc29a3db34b7c37403d8ba832603401f9a943070edd61752` |
| 87 | `lemma` | [ofReal_intCast](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-intcast.md) | 416 | `result-track:339c6e5d8baee63db9f53eb32af75220d5e7bdbc974daad33f70c8cc70c2304c` |
| 88 | `lemma` | [ofReal_nnratCast](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-nnratcast.md) | 417 | `result-track:3b6f1fa7383e48c3d9d210f44d1c337c5b8d526efcb6fe48038ce7c87a99446e` |
| 89 | `lemma` | [ofReal_ratCast](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-ratcast.md) | 418 | `result-track:a13d117123e09cc667d88c447a313eaa5cea843e2137311a4f5eb66b58305a6b` |
| 90 | `lemma` | [re_ofNat](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/re-ofnat.md) | 421 | `result-track:54e8732fc3790ff1df095fcbea3ea492f760a3b4b4fb7f2d44340b22935adbb1` |
| 91 | `lemma` | [im_ofNat](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/im-ofnat.md) | 422 | `result-track:fa6f81716a27a8f9c37fd2f55d45c356785868851b972cb2c019cada172ef068` |
| 92 | `lemma` | [natCast_re](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/natcast-re.md) | 423 | `result-track:f39121d99df37edca7963ace35517de021878988fac50d87927bc3fbf4a16e0e` |
| 93 | `lemma` | [natCast_im](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/natcast-im.md) | 424 | `result-track:b8e7f3db336b3e6126d432554d70df31e53fed7b8e5b12cc10c7399d8d9ab5bd` |
| 94 | `lemma` | [intCast_re](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/intcast-re.md) | 425 | `result-track:9fffebc46350465e6af6370891d503e7b7871757df02b2b52a09a08afe8cf5b5` |
| 95 | `lemma` | [intCast_im](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/intcast-im.md) | 426 | `result-track:fe27291b938f46f77b1466bfab7c8e448d7e223cb6414a2e355f5e00ee57d75e` |
| 96 | `lemma` | [re_nnratCast](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/re-nnratcast.md) | 427 | `result-track:11381ee244fc601696a373e169612592d6864a85443eaba79ae2a077b3ac646e` |
| 97 | `lemma` | [im_nnratCast](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/im-nnratcast.md) | 428 | `result-track:e9c1c4dab0cf9b4127e9dfba93f15b8ca83ae0f44ac84d8f0fd0ae89059ce1e7` |
| 98 | `lemma` | [ratCast_re](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ratcast-re.md) | 429 | `result-track:42d4ddd66a49e8d1a098a57572e2978233e49a8b9168c8e3640a749be861320d` |
| 99 | `lemma` | [ratCast_im](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ratcast-im.md) | 430 | `result-track:469263a20a54c6ce92c449b3dc4aca8ad1afb7aebcf5c388104690d835180649` |
| 100 | `lemma` | [re_nsmul](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/re-nsmul.md) | 432 | `result-track:47ee81f6dc4e880ed5607dbdef8e9a74d0ec6476c5b3955a7408db5e906f42ea` |
| 101 | `lemma` | [im_nsmul](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/im-nsmul.md) | 433 | `result-track:7025707f41c28130ad94edfc03d5ca9324f31856485301cc459e25a2cc4e09cd` |
| 102 | `lemma` | [re_zsmul](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/re-zsmul.md) | 434 | `result-track:82df90195325ff834f9ade1c9bfeaf29a0021b2b3279709d25bb6d251c9863db` |
| 103 | `lemma` | [im_zsmul](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/im-zsmul.md) | 435 | `result-track:bf296ebd072b9f3464e15514427b0db3f410760c18fb935968426b82d392f017` |
| 104 | `lemma` | [re_nnqsmul](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/re-nnqsmul.md) | 436 | `result-track:055c216e7944d4f85dd6705148574ba16afdfd5eb98590939b5536f0b2c61af8` |
| 105 | `lemma` | [im_nnqsmul](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/im-nnqsmul.md) | 437 | `result-track:98d5d6c0da31e45c6b450a6ec9b0ae58e0a3d0d7b2c9d8642081b38e26cc5bee` |
| 106 | `lemma` | [re_qsmul](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/re-qsmul.md) | 438 | `result-track:4d278719a7d436353954e31782647e1b1df4018bbf0f58f0438decda4f209ace` |
| 107 | `lemma` | [im_qsmul](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/im-qsmul.md) | 439 | `result-track:32bce6c8a5d7f025b736a918682a05f9140e54a2fe9f07a2ee26aff96e48fe72` |
| 108 | `lemma` | [ofReal_nsmul](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-nsmul.md) | 441 | `result-track:98f7209012bf763732a4056566d13f7743d6d9580f34aad376f36f3a309abd7d` |
| 109 | `lemma` | [ofReal_zsmul](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-zsmul.md) | 442 | `result-track:a1b5d8047e68be985a90414b866275869a759745e28f90e7c99aa4eadbceca19` |
| 110 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/instance-source-edition-15.md) | 450 | `declaration-track:fc604ab71331be68ba32debb6dd81dc3549d5b2a6e10af295e8853d89d6761ad` |
| 111 | `theorem` | [conj_re](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/conj-re.md) | 457 | `result-track:ff921a841fbcdc92127b5a583e972c8ac7934a4744649c5011cf3c3079527f60` |
| 112 | `theorem` | [conj_im](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/conj-im.md) | 461 | `result-track:e9fa724dab225bd1ccf90028150e10958915d983394e5dfbd78437f567113fd4` |
| 113 | `theorem` | [conj_ofReal](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/conj-ofreal.md) | 465 | `result-track:214562fb65baf6a0f83e3966112302d96da3fd818425086c2cf7a33ebe47a915` |
| 114 | `theorem` | [conj_I](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/conj-i.md) | 469 | `result-track:d617f09712a4ce09593f8fa29eb279ce5fb3fd0a7f1f0a5d915470caec61c8a1` |
| 115 | `theorem` | [conj_natCast](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/conj-natcast.md) | 472 | `result-track:fcf1c5cad0bf6ce47412a5867fd780279060b32d814540e4f6cc6a75ab3da0ab` |
| 116 | `theorem` | [conj_ofNat](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/conj-ofnat.md) | 474 | `result-track:1771025bacd878e80859f8128986bb98a9dc8b1a08308187988dc7f50e65932f` |
| 117 | `theorem` | [conj_neg_I](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/conj-neg-i.md) | 477 | `result-track:3bb0896f8a4a471bceb2e5facd6b73f7824dfc3954e3da685c296378a6fb93a2` |
| 118 | `theorem` | [conj_eq_iff_real](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/conj-eq-iff-real.md) | 479 | `result-track:0e4279bb935ff2609e4c64d70ca5fb9a86fcfcb016f51666ee4d6237176b89bb` |
| 119 | `theorem` | [conj_eq_iff_re](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/conj-eq-iff-re.md) | 483 | `result-track:714473fed4bfec7d57aa9df205c824c83109e4d8f325d49b8d9fa2edc63d266c` |
| 120 | `theorem` | [conj_eq_iff_im](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/conj-eq-iff-im.md) | 486 | `result-track:02967f3ed7a562e7b3f5e157e755c98e9381112849f2c6f1ca9b8df3a59ff289` |
| 121 | `theorem` | [star_def](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/star-def.md) | 491 | `result-track:731c3ef328ee6ad44c30d80e1c131c0c173ffd0a316a6bc5a135b0b30b0a1c61` |
| 122 | `def` | [normSq](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/normsq.md) | 499 | `declaration-track:145464e90b7f3fce247fa2019d3d837e311a65d33ae2bd7468716c8270f391b8` |
| 123 | `theorem` | [normSq_apply](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/normsq-apply.md) | 507 | `result-track:9a083280211307206284ba39c8b856a934c8f5f80093d05376b9702187da49a5` |
| 124 | `theorem` | [normSq_ofReal](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/normsq-ofreal.md) | 511 | `result-track:51bb3459ecc86eee278766d81d9f18c06a2733bef19870af4b3ab6f32ec633cf` |
| 125 | `theorem` | [normSq_natCast](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/normsq-natcast.md) | 515 | `result-track:a82f0cd92d161de95eedf88b5a8b0567f5d0e97eb85d28dd42280ce3b8501e51` |
| 126 | `theorem` | [normSq_intCast](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/normsq-intcast.md) | 518 | `result-track:29c817cafce15c76c5969c12630ec9174a869956bbcde268b3236708112406cd` |
| 127 | `theorem` | [normSq_ratCast](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/normsq-ratcast.md) | 521 | `result-track:0cc57be01932ad1910c9f6abb9f9d12dd2dd3c66945deafaf51be7fa18862dad` |
| 128 | `theorem` | [normSq_ofNat](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/normsq-ofnat.md) | 524 | `result-track:7a4b2f8f0cd2fd988ba1ec91a31cc98ba130fb35b4c741db214fd001f562f3c6` |
| 129 | `theorem` | [normSq_mk](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/normsq-mk.md) | 529 | `result-track:4b8cf83e1b86c2bc52653875fd243d233fef333df70053ecaed738bde2f23ac6` |
| 130 | `theorem` | [normSq_add_mul_I](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/normsq-add-mul-i.md) | 532 | `result-track:fbc4c2ce33361d26dd64e6341139391bea07e0f0ce304f7b6eaacd74e23af136` |
| 131 | `theorem` | [normSq_eq_conj_mul_self](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/normsq-eq-conj-mul-self.md) | 535 | `result-track:95a51d9ae5a87915cb7ed955221b7e6cdc06a0b3d51c2bc6006709b9018772f3` |
| 132 | `theorem` | [normSq_zero](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/normsq-zero.md) | 538 | `result-track:3cca6b59350b7e4e46f0ca24bf078e0596513aa6a5d0bd86e128e782dc65d7ab` |
| 133 | `theorem` | [normSq_one](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/normsq-one.md) | 540 | `result-track:8b8dff92e4903b5af99809999b308422652344e4cedab912cb47cb263e71deb0` |
| 134 | `theorem` | [normSq_I](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/normsq-i.md) | 543 | `result-track:26838935122315f91646713778f6e5110aabf05af3193d87120f49dff0ec24a2` |
| 135 | `theorem` | [normSq_nonneg](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/normsq-nonneg.md) | 545 | `result-track:4dbac112feb37cd96595367a2d74ccf7579c6cabacbc69b5347e8eaaf1d1897b` |
| 136 | `theorem` | [normSq_eq_zero](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/normsq-eq-zero.md) | 548 | `result-track:b125db606ba6b294713f5757b27a0c0a793a3211f68a30cfdb7225887e7ed6f1` |
| 137 | `theorem` | [normSq_pos](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/normsq-pos.md) | 555 | `result-track:d3dc7c7aec5e4a279d704c6e8386e144577fc0aa23f5691b125c51e5941d847b` |
| 138 | `theorem` | [normSq_neg](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/normsq-neg.md) | 559 | `result-track:dec5f326e38c66f9fdc303c69fa3ed6c5cd105d8a06e26dcab6ba5cb8b499e16` |
| 139 | `theorem` | [normSq_conj](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/normsq-conj.md) | 562 | `result-track:613145fbca514cfea83be7f13c55fc710a923c4de5d3ba7af5ab51cbfeb78bf0` |
| 140 | `theorem` | [normSq_mul](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/normsq-mul.md) | 564 | `result-track:306f1b0944cd96501e2c8a4e7a843965eaf193f753d56cee7080f56fa084fa88` |
| 141 | `theorem` | [normSq_add](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/normsq-add.md) | 567 | `result-track:d91eca8a193375ad29e38616be1e7305c1f93ae961edc213862dff9af8fb1a86` |
| 142 | `theorem` | [re_sq_le_normSq](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/re-sq-le-normsq.md) | 570 | `result-track:70d1f9fa7a07937e71befc06d9e60aea3b59241e944c03826fd503bb19b5b21f` |
| 143 | `theorem` | [im_sq_le_normSq](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/im-sq-le-normsq.md) | 573 | `result-track:9f2ae87035920073f815659a46809fc583505a796b86d3a03999feb6f5dd0bc6` |
| 144 | `theorem` | [mul_conj](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/mul-conj.md) | 576 | `result-track:18648a41b59dc15ca3d7b6658909bd3d5c709e4816c506d7afb20b3ae6ebc45b` |
| 145 | `theorem` | [add_conj](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/add-conj.md) | 579 | `result-track:98d00be0d5dcc4ab8d09321a68215d731e966a8a9b33569b27e3eff168349f6c` |
| 146 | `def` | [ofRealHom](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofrealhom.md) | 583 | `declaration-track:a4f5629a85f5c3702d7b38393e7d06181116e20813feb03ae43f540d32f0be0e` |
| 147 | `lemma` | [ofRealHom_eq_coe](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofrealhom-eq-coe.md) | 590 | `result-track:d0b81ffbbe5aef635f6e0f035523bbc05eafb6679aba0ef8a80d4fafbdaa49bc` |
| 148 | `lemma` | [ofReal_comp_add](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-comp-add.md) | 594 | `result-track:32b6cc7487c1064816200f3e363f9aeaaed79959e5733526bebb8a5c663308d7` |
| 149 | `lemma` | [ofReal_comp_sub](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-comp-sub.md) | 597 | `result-track:19b1ff194a5d86c8c774061890a2ee1ea59d5cc8f1b2dd41e37cdea0971fa148` |
| 150 | `lemma` | [ofReal_comp_neg](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-comp-neg.md) | 600 | `result-track:eaf1e064e94ea9433e99754f8c16925381e494ac70a5c6af7144e98a3fa0e2e2` |
| 151 | `lemma` | [ofReal_comp_nsmul](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-comp-nsmul.md) | 603 | `result-track:8c08182c62e37512e02d821fe85e1d981cb11a9f1cc2eaf59526710f17a34a72` |
| 152 | `lemma` | [ofReal_comp_zsmul](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-comp-zsmul.md) | 606 | `result-track:2e76478b60f6222c9e7f4b9791fe27cdfca4955280622d8b14ed65170514a6d4` |
| 153 | `lemma` | [ofReal_comp_mul](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-comp-mul.md) | 609 | `result-track:71426491952d2889be7ee9eed3161260007b01cbfedf5822640799f51a1efea5` |
| 154 | `lemma` | [ofReal_comp_pow](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-comp-pow.md) | 612 | `result-track:af9c8807994f9bd405fe04d79829fa42a1250b99816974eff25c064dbaf7f6d5` |
| 155 | `theorem` | [I_sq](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/i-sq.md) | 616 | `result-track:0afc16868fd53e257a05a5ec62dce4fb5cb841cbcc5c7d7bc3d375f4ed2c54d4` |
| 156 | `lemma` | [I_pow_three](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/i-pow-three.md) | 619 | `result-track:7d4ffeabf30a6646cd2158666c33582ebb2d02da6483c1ffe63718a94913df35` |
| 157 | `theorem` | [I_pow_four](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/i-pow-four.md) | 622 | `result-track:2535ee523b6a2016aeee79c1272481373d86ed4d72de659ff0824e0ea4a1848c` |
| 158 | `lemma` | [I_pow_eq_pow_mod](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/i-pow-eq-pow-mod.md) | 624 | `result-track:d95cb41f8bf5cd1c5f6fe2f28787bc5e75b31daaa9dccb82af9ff7aa87e473ce` |
| 159 | `theorem` | [sub_re](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/sub-re.md) | 629 | `result-track:a34a2228f9ef4e704083605a62deeb6710e88b72f0ba21cc8ac62fecd4a7c776` |
| 160 | `theorem` | [sub_im](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/sub-im.md) | 633 | `result-track:9ef86e0f823a9ca87512e9767073d41e9c76e53226b3da71950f06a4b47c2693` |
| 161 | `theorem` | [ofReal_sub](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-sub.md) | 637 | `result-track:e2478e5d63ae688112c3513fb79c6289d8f15cf6c0c73d8dea103416dee2dd6b` |
| 162 | `theorem` | [ofReal_pow](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-pow.md) | 641 | `result-track:7db5b5b40b971e377c48eeba9a627d02e170791b6a6a184e66d33d9fbe6fd049` |
| 163 | `theorem` | [sub_conj](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/sub-conj.md) | 644 | `result-track:9bf239c2c4377d8a4b567bcfc54c3dda6abcbf378f025be11aba14db3311e940` |
| 164 | `theorem` | [normSq_sub](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/normsq-sub.md) | 647 | `result-track:0e5c121c0c350edab2f08a693be389c89611dae1b664074198269ec477e4dd8f` |
| 165 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/instance-source-edition-11.md) | 655 | `declaration-track:cdd58b1b8b8b95ceda26398170980f913135f6e5db3dbf93e75eee91db044d73` |
| 166 | `theorem` | [inv_def](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/inv-def.md) | 658 | `result-track:a3a352650e0beec0205e9cf317ece8bf2ea8a96a37a1c9d8cbbbaaae2b9ef544` |
| 167 | `theorem` | [inv_re](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/inv-re.md) | 662 | `result-track:f8ae3a33e56c7e8c1447cf1887e5476f1ee2c643a477f443feb4846d8d024035` |
| 168 | `theorem` | [inv_im](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/inv-im.md) | 665 | `result-track:864776449d98b29f8168361704ec8028eaf5dbaebf71acc43791dba246768a63` |
| 169 | `theorem` | [ofReal_inv](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-inv.md) | 668 | `result-track:cbdcfefd585c7edcbfff674228203e89b028cf4ae7bee30e77a5b0bd6d2d4658` |
| 170 | `theorem` | [inv_zero](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/inv-zero.md) | 671 | `result-track:f64e57bcfb38c8c7fbdb2550c72a4efe26964fc56e732aca525910fa41b575d1` |
| 171 | `theorem` | [mul_inv_cancel](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/mul-inv-cancel.md) | 674 | `result-track:0be0ac8d217b4b3cef7665670c378664ce8ebe1966c709d347f889fddd0ef6c5` |
| 172 | `instance` | [instDivInvMonoid](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/instdivinvmonoid.md) | 678 | `declaration-track:3c6cde12dc355aaf97a6baacf5d078038b0ddb71faf16b79909756fa7b42a795` |
| 173 | `lemma` | [div_re](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/div-re.md) | 680 | `result-track:938b335bcb44f4d45fde914704cc54324dd80318493f0185b938f3572afee28c` |
| 174 | `lemma` | [div_im](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/div-im.md) | 683 | `result-track:3d8e5ad651741f0c36ba769d40d3f9533177c543fb2c7376942c98fa95153a94` |
| 175 | `instance` | [instField](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/instfield.md) | 688 | `declaration-track:aced732823803f2d283ad25befed5c0076b058ba3f03c660cc28b04c0a04c437` |
| 176 | `lemma` | [ofReal_nnqsmul](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-nnqsmul.md) | 699 | `result-track:33fdd0a35bd6d8f9c3e02c5936a38533644b93fba6bbb4d08ad2dd6d0a434285` |
| 177 | `lemma` | [ofReal_qsmul](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-qsmul.md) | 702 | `result-track:621a84de2a86e94a012433a8a6fc57349ceeeed3b062d6b3151b1e70b1217ae9` |
| 178 | `theorem` | [conj_inv](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/conj-inv.md) | 704 | `result-track:b49e916a9310d9b276767fbbe1a24fd817c303ea94df72e4b9dccdf7d2aa0c46` |
| 179 | `theorem` | [ofReal_div](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-div.md) | 708 | `result-track:f1f2694f4885ec7dbef57ac5f338e55e0dc366c455332c8305209fa2cd870cd7` |
| 180 | `theorem` | [ofReal_zpow](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/ofreal-zpow.md) | 711 | `result-track:6f42a82c148cbf8d125dc1b978e498432a85563b80f79beb81da0d75fd2b488c` |
| 181 | `theorem` | [div_I](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/div-i.md) | 714 | `result-track:c25e5f2be667c6f2f3f91b7a3352bd667c0ecad1a31d3c13ea1826d80ed26679` |
| 182 | `theorem` | [inv_I](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/inv-i.md) | 718 | `result-track:aa11ac33f1417bbe16709f9fcd18cdc013867f0ddbd23bfcee61494ab6abf285` |
| 183 | `theorem` | [normSq_inv](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/normsq-inv.md) | 721 | `result-track:f32f90a01a393b99db5075d40cdf3f2ec23ed6c9dd83cd9d0e199d5d516f3486` |
| 184 | `theorem` | [normSq_div](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/normsq-div.md) | 723 | `result-track:649c9fd6c14393c381a0da001bef96e92e2ef10cbf97207c6ec0a19a028f0a62` |
| 185 | `lemma` | [div_ofReal](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/div-ofreal.md) | 725 | `result-track:00e3415aa27d7f033235b865a5c6c73ba45ce276919cb92fafb5a0e701d39cb7` |
| 186 | `lemma` | [div_natCast](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/div-natcast.md) | 728 | `result-track:c6f34e2eee26169f0b513a271bb219171ad6cb28a2c44489b572a40c929bfdb2` |
| 187 | `lemma` | [div_intCast](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/div-intcast.md) | 731 | `result-track:874c4a4a02ed79847ed07c591e2f46b18689b5f07db216d3b310b347f61f5162` |
| 188 | `lemma` | [div_ratCast](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/div-ratcast.md) | 734 | `result-track:eb726bf35681a196b53e46f70b22046e9cc5a35b4433f4a1effb40e6767029a7` |
| 189 | `lemma` | [div_ofNat](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/div-ofnat.md) | 737 | `result-track:b442fc4cb9060532b85dcae78333690a374799d7d495941edf0be98541ca212c` |
| 190 | `lemma` | [div_ofReal_re](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/div-ofreal-re.md) | 741 | `result-track:934f38ac4b38e31a644037452222a9a3a525c8db488e044da8ded3f60a009585` |
| 191 | `lemma` | [div_ofReal_im](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/div-ofreal-im.md) | 742 | `result-track:cb7eee60ba727263b0d566115f6a0707b742917139b2cfefdfa88c1467e3deec` |
| 192 | `lemma` | [div_natCast_re](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/div-natcast-re.md) | 743 | `result-track:fa87b9263e812326c71fb9299613880f53f8fdb7308a532077732e553f595800` |
| 193 | `lemma` | [div_natCast_im](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/div-natcast-im.md) | 744 | `result-track:da777fb4c4046f81ce3b13f930a2c5660c199f8afe965ac5140c4a93b526c0b7` |
| 194 | `lemma` | [div_intCast_re](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/div-intcast-re.md) | 745 | `result-track:a7ddaef4bcb04778e6228a923b4b7799e61adc8acc7d6b4ee438896e1812a4f7` |
| 195 | `lemma` | [div_intCast_im](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/div-intcast-im.md) | 746 | `result-track:f7ab55c559df6143a45eb02091d0a954a4a4ee697ecf8e9b76ed41c4e841b002` |
| 196 | `lemma` | [div_ratCast_re](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/div-ratcast-re.md) | 747 | `result-track:6d89ba3aa71e8424e9914b172c822ad6bf8f3bd1cc0c3bbca67c32431c1ab072` |
| 197 | `lemma` | [div_ratCast_im](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/div-ratcast-im.md) | 748 | `result-track:7b5db6dad2680d21ff62bc684f33b491e255b2cfa06ba05b9836a532d744ab12` |
| 198 | `lemma` | [div_ofNat_re](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/div-ofnat-re.md) | 751 | `result-track:5fef84fd4148afe515c62f2fe58cb42a95c13219d47d163b25cc57043ab472ca` |
| 199 | `lemma` | [div_ofNat_im](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/div-ofnat-im.md) | 755 | `result-track:d8f79a64134cf6faae279d1d37f40c53ae7e8dbb5c97eab14f8f73757eb3f4c0` |
| 200 | `instance` | [instCharZero](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/instcharzero.md) | 761 | `declaration-track:662f11b9a7f9996a444b3aa9da34b96800de1442791eb3278db7aad53dd8c701` |
| 201 | `theorem` | [re_eq_add_conj](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/re-eq-add-conj.md) | 765 | `result-track:02a70e332d84c9cbbff1c4f019f55922d56aeb8b34614ce633bbef42028ac3a7` |
| 202 | `theorem` | [im_eq_sub_conj](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/im-eq-sub-conj.md) | 769 | `result-track:e8f03426cecad8dba743835dd4945f2167f5d7ab34d6bdc36773021bafee0585` |
| 203 | `instance` | [instRepr](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/instrepr.md) | 778 | `declaration-track:fd988df30d0f7f18ceb96f34b42c064d8936addfc11800d4c56ae02755f60378` |
| 204 | `lemma` | [preimage_equivRealProd_prod](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/preimage-equivrealprod-prod.md) | 786 | `result-track:d70d81b4ff7b35468c8da6ab7ef5831c8e42bebffce68d51700f06f08db1d280` |
| 205 | `lemma` | [reProdIm_subset_iff](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/reprodim-subset-iff-source-edition-2.md) | 789 | `result-track:dbf83c14af21a09ce5e06ba462c98602e861997324da293013bac3d54341e2d2` |
| 206 | `lemma` | [reProdIm_subset_iff'](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/reprodim-subset-iff.md) | 794 | `result-track:71c7249800d417c5cdad43f00042a0a0ee07955ffe9c907169cd12acef5875b4` |
| 207 | `lemma` | [reProdIm_nonempty](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/reprodim-nonempty.md) | 801 | `result-track:d0956e34f7e3277bb352a66d7abd6e51cd0c804a8c618e8cb558bc2c6ee5fd6b` |
| 208 | `lemma` | [reProdIm_eq_empty](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/reprodim-eq-empty.md) | 804 | `result-track:b3f0272f24582b5c5b2304405db4046a02f14893168a72fea94a3795530ba74f` |
| 209 | `def` | [Rectangle](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/rectangle.md) | 814 | `declaration-track:6688efd7c6a60ff8f5436ad74a6235360b139ba1d7f0e91b3b4f5b0f4fdd5647` |
| 210 | `lemma` | [horizontalSegment_eq](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/horizontalsegment-eq.md) | 821 | `result-track:3f816e761e5364285b1ead8746c053395729391490131f775a6162cb04010ab4` |
| 211 | `lemma` | [verticalSegment_eq](../../../../FunctionsOfAComplexVariable/DataComplexBasicNamespaced.lean/declarations/verticalsegment-eq.md) | 834 | `result-track:a816b47a20a00be57769ca10e5532631d488f2976ee6066393fac44ad77ef8c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d793cad439e64299904eba0aa6d567b85a8c2c7923d1d7413b9739efb90babb5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/Basic/Variant1d7e7afc2c8367c46b01aee713ed03a7c547918106349df2c2d4830df83984ee.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/Basic/Variant1d7e7afc2c8367c46b01aee713ed03a7c547918106349df2c2d4830df83984ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
