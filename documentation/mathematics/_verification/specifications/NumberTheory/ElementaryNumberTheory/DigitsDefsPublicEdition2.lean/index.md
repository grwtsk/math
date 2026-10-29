# Verification target: Digits Defs Public Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b23d25af60d7728540bbc6b1a569d4961c04634",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Varianteda07bac05080fbab7767b0e96ed965ef6bba0c0d81780fbab8791ace17bc8ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b23d25af60d7728540bbc6b1a569d4961c04634`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Varianteda07bac05080fbab7767b0e96ed965ef6bba0c0d81780fbab8791ace17bc8ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Varianteda07bac05080fbab7767b0e96ed965ef6bba0c0d81780fbab8791ace17bc8ce.lean.json)

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
| 1 | `def` | [digitsAux0](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/digitsaux0.md) | 41 | `declaration-track:f727d87bf6eea01932913c81f952ed424540e859e93be9a5a5aa55d02a2a54f2` |
| 2 | `def` | [digitsAux1](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/digitsaux1.md) | 46 | `declaration-track:7aba30ee94f0265be547ef3ba5f76844aad0f8f4da882e59bc9f4b69e3bcfead` |
| 3 | `def` | [digitsAux](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/digitsaux.md) | 50 | `declaration-track:4f02a1e987393ef31146ea9b2155c45955e59bbd5f0025bf78c9120a7a72520f` |
| 4 | `theorem` | [digitsAux_zero](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/digitsaux-zero.md) | 57 | `result-track:10941f10695862627f5863e9f51ed7175d4c3102351b9518c5995e13a533714f` |
| 5 | `theorem` | [digitsAux_def](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/digitsaux-def.md) | 59 | `result-track:fcc07e4fa29a1490a8e51f9ab9568b8e24250ed2b85f0cc722f85211d83d58bf` |
| 6 | `def` | [digits](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/digits.md) | 78 | `declaration-track:4c794ca30e1c57bd877bbaa94a1f100aef8455d7c0de3d1283395c7cacc55fe3` |
| 7 | `theorem` | [digits_zero](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/digits-zero.md) | 84 | `result-track:f4c941894099aaf10be0df99d2dd32efb5fc99711992dc0e2389cd4dfa05b994` |
| 8 | `theorem` | [digits_zero_zero](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/digits-zero-zero.md) | 87 | `result-track:213d67debd08c559b23703dfd917526ba397aad4d8809547e00c0855aa2e888a` |
| 9 | `theorem` | [digits_zero_succ](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/digits-zero-succ-source-edition-2.md) | 91 | `result-track:69e3e0872b1fed3f6862d78705ecd58b02cb2cc8138428d4a0f4224e5c1c877b` |
| 10 | `theorem` | [digits_zero_succ'](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/digits-zero-succ.md) | 94 | `result-track:4313392208d67453eaacb81dd4c421d02ef6e16e182c67d854d3410c9f6d6b39` |
| 11 | `theorem` | [digits_one](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/digits-one.md) | 99 | `result-track:c60dab164ccb1323a6de14d2a4d6db32def3ec0f30eb7e1ebc4da4c6829ff56a` |
| 12 | `theorem` | [digits_one_succ](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/digits-one-succ.md) | 103 | `result-track:b334b85c8326d13c5d0f97de9c9251eabd0d1e4e98c383ec95d0d4baef25b23c` |
| 13 | `theorem` | [digits_add_two_add_one](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/digits-add-two-add-one.md) | 106 | `result-track:89478be28ad24331ae93be372c456e1e143c40fc4e03b456ea9f353ba43ed72d` |
| 14 | `lemma` | [digits_of_two_le_of_pos](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/digits-of-two-le-of-pos.md) | 111 | `result-track:048ca64fa7765c3296f8530ff9362e990fba93f910abfe7734359ac70e27d0de` |
| 15 | `theorem` | [digits_def'](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/digits-def.md) | 115 | `result-track:ee3b04a0ab18ce9b40cd6885968951b13fcf45a87294e6952fd3ea67ac7d1cae` |
| 16 | `theorem` | [digits_of_lt](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/digits-of-lt.md) | 122 | `result-track:e98ffcac8c123a4d6a0f0ee0e0598997eda322094dec33d0b222d64c6c49dc44` |
| 17 | `theorem` | [digits_add](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/digits-add.md) | 127 | `result-track:6cd9b92ace9ecef88027fa81f1952716f1ba8c82f1e339a801d956f8bb84a6fd` |
| 18 | `def` | [ofDigits](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/ofdigits.md) | 145 | `declaration-track:0d280afedaef2a2eb3c58901b86c1099c74c022ff42441de8902a6f1c3c28a78` |
| 19 | `theorem` | [ofDigits_eq_foldr](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/ofdigits-eq-foldr.md) | 149 | `result-track:6ec5e0bc2b2a9a07a88875be2bbe5d2e70afed0ce0cff6eaf6d6e02288392c36` |
| 20 | `theorem` | [ofDigits_nil](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/ofdigits-nil.md) | 156 | `result-track:1b451fd2758b7a04e6c3f407f32bd5782be3b0acd0264c51c65372ec0554ce04` |
| 21 | `theorem` | [ofDigits_singleton](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/ofdigits-singleton.md) | 159 | `result-track:d0b8f501be47fbc39073916b99cca2511c0eddbaf0be938bb42bbdf5c285d54e` |
| 22 | `theorem` | [ofDigits_one_cons](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/ofdigits-one-cons.md) | 162 | `result-track:06cb5cb08aa01d17a0b765e17305dbe9dc0ae992ce00dc5c2d8d70267ffb0d79` |
| 23 | `theorem` | [ofDigits_cons](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/ofdigits-cons.md) | 165 | `result-track:a9c67afee8423079a2d1384526e8a57fc8e447b7f0e6d26faab9a6034612d617` |
| 24 | `theorem` | [ofDigits_append](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/ofdigits-append.md) | 168 | `result-track:2a0902f65f7f80e15409337e4777fada9262354e0ad561f2d5e44ae897ca011b` |
| 25 | `theorem` | [ofDigits_append_zero](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/ofdigits-append-zero.md) | 177 | `result-track:22004f087b4b3934175f3ca8f1403afbe06764fa66de5e6ef82e4f67e77310e8` |
| 26 | `theorem` | [ofDigits_replicate_zero](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/ofdigits-replicate-zero.md) | 182 | `result-track:2b0adb8c99cfc2c1e8597968d0466df6319978dd11d2143c41af2767f9f56348` |
| 27 | `theorem` | [ofDigits_append_replicate_zero](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/ofdigits-append-replicate-zero.md) | 188 | `result-track:2943dea6b6f97f72138702dc5087cfdb8e8fecbdf98a6b1cda81df243a602654` |
| 28 | `theorem` | [ofDigits_reverse_cons](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/ofdigits-reverse-cons.md) | 193 | `result-track:665168e3abe575fbbe1c5b24c06bad3612c9bd752a87c191a9653a97357c2e86` |
| 29 | `theorem` | [ofDigits_reverse_zero_cons](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/ofdigits-reverse-zero-cons.md) | 199 | `result-track:7b502c188dcdae7f42b55ea3c8d335e6a0d22f93647079bfc870bd2a792e8101` |
| 30 | `theorem` | [coe_ofDigits](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/coe-ofdigits.md) | 204 | `result-track:173e36021b067c73711b580bdf11c450789535817be64c045c7494634762059b` |
| 31 | `theorem` | [digits_zero_of_eq_zero](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/digits-zero-of-eq-zero.md) | 210 | `result-track:3f5af58ed8be9bec924dbc44cf700736e994df5c35be8f3e5b00a35ece34d3a3` |
| 32 | `theorem` | [digits_ofDigits](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/digits-ofdigits.md) | 216 | `result-track:2414b36e358eb68f23548fe7be4c53577ba2dd87e6c1411af2ec821f05d52be1` |
| 33 | `theorem` | [ofDigits_digits](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/ofdigits-digits.md) | 242 | `result-track:63f84bdf2eba05fae9de095e32bb72c7dbdc97a42ebc07a543dd52d201fd6f54` |
| 34 | `theorem` | [ofDigits_one](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/ofdigits-one.md) | 262 | `result-track:209e35548d2b13f9349029d26560fe7521c089c3992447bf2710d11c1daa4325` |
| 35 | `theorem` | [digits_eq_nil_iff_eq_zero](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/digits-eq-nil-iff-eq-zero.md) | 274 | `result-track:3febc893363d374a8fe23d7ca2321e4b067e9cc16217ffaea98bc5b143caa057` |
| 36 | `theorem` | [digits_ne_nil_iff_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/digits-ne-nil-iff-ne-zero.md) | 283 | `result-track:f5baa343d9c5b1c5a13a6a6e9829d6813530e876ff011970fc7cf4a3d7d068c3` |
| 37 | `theorem` | [digits_eq_cons_digits_div](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/digits-eq-cons-digits-div.md) | 286 | `result-track:eef89e4a5bee1ebafbc8679a2304ed8e006a633768f0c2ddca64e23cf890fd77` |
| 38 | `theorem` | [digits_getLast](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/digits-getlast.md) | 290 | `result-track:15edd5d47f320f740ef174c58e59c42a9edfa07d8524ca1790e82321e578f59b` |
| 39 | `theorem` | [digits.injective](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/digits-injective.md) | 297 | `result-track:e4a0963e171fc0e552571e6e95a0f2ed211bf124e1291d551d04575e6d6d1bfe` |
| 40 | `theorem` | [digits_inj_iff](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/digits-inj-iff.md) | 301 | `result-track:defb1ceda1a4de1dafad0469abfeabc7e3569fb4fc652ade42d8d63799bb0186` |
| 41 | `theorem` | [mul_ofDigits](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/mul-ofdigits.md) | 304 | `result-track:326e41eea1fb2808ad6ab84d1f8b99133eb40bfaf9e938c27128b27218f513bb` |
| 42 | `lemma` | [ofDigits_inj_of_len_eq](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/ofdigits-inj-of-len-eq.md) | 312 | `result-track:abe2179c73f1d8d300301473bc19b03c60f3c6cd24c51acfbd35583443e5e986` |
| 43 | `theorem` | [ofDigits_add_ofDigits_eq_ofDigits_zipWith_of_length_eq](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/ofdigits-add-ofdigits-eq-ofdigits-zipwith-of-length-eq.md) | 333 | `result-track:ed83a1577fc3dd41ac32b17a3463896dbdbf3c539281fbff21fd6ae511ebf71e` |
| 44 | `theorem` | [digits_lt_base'](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/digits-lt-base.md) | 348 | `result-track:207a40076311ede7b1f24086854e1d12a3266dbdc8a9788e5e9d36fbffe5b040` |
| 45 | `theorem` | [digits_lt_base](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/digits-lt-base-source-edition-2.md) | 363 | `result-track:611bd764184de3a064b326e52874d5ea54dc81cd2fe2e7e6b637bfcf09b24ffd` |
| 46 | `theorem` | [ofDigits_lt_base_pow_length'](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/ofdigits-lt-base-pow-length-source-edition-2.md) | 367 | `result-track:8cb8619d5c02490682a88c6943d5bb940d62857c6bb82faa68ffeb460791378e` |
| 47 | `theorem` | [ofDigits_lt_base_pow_length](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/ofdigits-lt-base-pow-length.md) | 380 | `result-track:135804ebdca383ae5e517c3a2f75a664effda58b8a4dbb363b15e417406c784c` |
| 48 | `theorem` | [lt_base_pow_length_digits'](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/lt-base-pow-length-digits.md) | 385 | `result-track:479e426c55b739012e8c9f11350c7e90f10cd37efdd087ea07877868e3c4c976` |
| 49 | `theorem` | [lt_base_pow_length_digits](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/lt-base-pow-length-digits-source-edition-2.md) | 390 | `result-track:6fe233180a69f2f391eb8bbd41d9749c4622c8ee3a3b2d2eba9efd56c0827779` |
| 50 | `theorem` | [digits_base_mul](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/digits-base-mul.md) | 393 | `result-track:80ef900f44f98a232848b6197b3015954451cc07f0040694fdc4278019ebd007` |
| 51 | `theorem` | [digits_base_pow_mul](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/digits-base-pow-mul.md) | 398 | `result-track:997d2353d0f931613a8c60475d8a798b4adea2d3dce69db43491bf2c8d7f6389` |
| 52 | `theorem` | [ofDigits_digits_append_digits](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/ofdigits-digits-append-digits.md) | 406 | `result-track:7dcb58595e4b2e1d75a55286852872b7336b6f6fe65387231c68c35a055d1bd7` |
| 53 | `theorem` | [ofDigits_monotone](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/ofdigits-monotone.md) | 411 | `result-track:af55df6219ad8792ca1f754a132837f74c0f2eef19e9672a97e5e712ba8ce44e` |
| 54 | `theorem` | [sum_le_ofDigits](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/sum-le-ofdigits.md) | 418 | `result-track:71cbd0aa22eaa9a6ebf985697cb04db7e73af5ac5a1589a3982bbee224a02b0e` |
| 55 | `theorem` | [digit_sum_le](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/digit-sum-le.md) | 421 | `result-track:f12839a4c9f22af10081abcc54c1d2314b19e215b25bc162f59ec059b286587e` |
| 56 | `lemma` | [ofDigits_div_eq_ofDigits_tail](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/ofdigits-div-eq-ofdigits-tail.md) | 434 | `result-track:4654da025bd33baece78bffea2c1ce19b6610ea33d9ff1a638bdc22b52a6a00c` |
| 57 | `lemma` | [ofDigits_div_pow_eq_ofDigits_drop](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/ofdigits-div-pow-eq-ofdigits-drop.md) | 444 | `result-track:404849d130806732f057a0ab72d8ed824f3cccaf0e74056fcfe59d9abe163420` |
| 58 | `lemma` | [self_div_pow_eq_ofDigits_drop](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/self-div-pow-eq-ofdigits-drop.md) | 456 | `result-track:b5f8949a4a7f94725354127b7e93e055842bce407f7c2275464c85530cb5d105` |
| 59 | `lemma` | [ofDigits_mod_pow_eq_ofDigits_take](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/ofdigits-mod-pow-eq-ofdigits-take.md) | 465 | `result-track:538a4bf309c231975e390913cd8ac52841141a84268f135ed85fa2b5cbb142de` |
| 60 | `lemma` | [self_mod_pow_eq_ofDigits_take](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/self-mod-pow-eq-ofdigits-take.md) | 486 | `result-track:ca26e3481665f3587a78f8d7510196742947e10ee1c897c50e6a2b5f39af2b40` |
| 61 | `lemma` | [toDigitsCore_lens_eq_aux](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/todigitscore-lens-eq-aux.md) | 495 | `result-track:bab45cf32c995d63b618c42682da47986788d7ea9d2acb4235cc8d754c0fb6c5` |
| 62 | `lemma` | [toDigitsCore_lens_eq](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/todigitscore-lens-eq.md) | 509 | `result-track:40a6e61f446c1094a2c0b647154e49d369d3d64e4daa834ef1aaa7d594c6180d` |
| 63 | `lemma` | [nat_repr_len_aux](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/nat-repr-len-aux.md) | 515 | `result-track:656319f58b2c63244d1ef507687a4ae8b0b090b65e719ec9c127ba7e32db9994` |
| 64 | `lemma` | [toDigitsCore_length](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/todigitscore-length.md) | 522 | `result-track:a7e735a23dde70f6dd0058969c3b90418e4af2df0d2f88c67d32004da335f189` |
| 65 | `lemma` | [toDigits_length](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/todigits-length.md) | 545 | `result-track:8c9b7839b2a412b84709c146a43f891a3767a9b4c57df9ee405524fc82cdfc52` |
| 66 | `lemma` | [repr_length](../../../../../NumberTheory/ElementaryNumberTheory/DigitsDefsPublicEdition2.lean/declarations/repr-length.md) | 551 | `result-track:9d164cece6c774cbd9006fbf1822dc67adb698c0d465f046a738fdf687209b28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=858a8418cc716f2aaaa0f5211ae3aa0675b0f7fafd3a17382c044b1ac9ffb41d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Varianteda07bac05080fbab7767b0e96ed965ef6bba0c0d81780fbab8791ace17bc8ce.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Varianteda07bac05080fbab7767b0e96ed965ef6bba0c0d81780fbab8791ace17bc8ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
