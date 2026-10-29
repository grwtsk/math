# Verification target: Real Rpow Nonneg Of Nonneg

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f2f0e46ca3e84897756b6831bf647c91b8c7f84",
  "lexical_observation_count": 117,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Real/Variant647c7a5f530516e2b2d8100c38e22bf83046b57a1a93360d0829f40fc1fdf725.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/index.md) · [Full source](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f2f0e46ca3e84897756b6831bf647c91b8c7f84`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Real/Variant647c7a5f530516e2b2d8100c38e22bf83046b57a1a93360d0829f40fc1fdf725.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Real/Variant647c7a5f530516e2b2d8100c38e22bf83046b57a1a93360d0829f40fc1fdf725.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Complex` — import line 7; external provider; requires a separately pinned dependency.
- `Qq` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rpow](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow.md) | 34 | `declaration-track:2da00dafb79298f5ee03e194e73d61263062e06791a7c543685982fecb02b121` |
| 2 | `instance` | [(anonymous)](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/instance.md) | 38 | `declaration-track:91bd4477dd2622725a62f2221d08aa2e3f50e3ce3b751f901a677a5184f560d0` |
| 3 | `theorem` | [rpow_eq_pow](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-eq-pow.md) | 41 | `result-track:393e2d3150019957ab0969341349d43c7d25269723e437f1c72c65da78132f56` |
| 4 | `theorem` | [rpow_def](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-def.md) | 44 | `result-track:68032e838a72cd7a8656cdc147461b3bb73efcf94e1f03a80a85e2ba6faebbc9` |
| 5 | `theorem` | [rpow_def_of_nonneg](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-def-of-nonneg.md) | 47 | `result-track:b672f7ed1ee6a621372a4e826e6007637329486c76fcdf906b9c33d02bde02aa` |
| 6 | `theorem` | [rpow_def_of_pos](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-def-of-pos.md) | 54 | `result-track:c130572f107986506d1b85a5702a82a0b12b0741a638e1768f2b6b04660a4f63` |
| 7 | `theorem` | [exp_mul](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/exp-mul.md) | 58 | `result-track:8197010ddf20be6d34832652e86296e904a095fee5834982768a78d6f6c00238` |
| 8 | `theorem` | [exp_one_rpow](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/exp-one-rpow.md) | 62 | `result-track:c347c9b8608d6b3fd0cae7eba2f6d1e7a10244f86c6d2b57b9ffc06a29bf2b0a` |
| 9 | `theorem` | [rpow_eq_zero_iff_of_nonneg](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-eq-zero-iff-of-nonneg.md) | 65 | `result-track:5fd93ece1ca76ad24ce14718686a713ae055a4dcf6d3262d09264173be72824b` |
| 10 | `theorem` | [rpow_def_of_neg](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-def-of-neg.md) | 72 | `result-track:d855f1c9c1c565603d2ff1d80751b24515c777ce3d4fb98dbbb5a133860b1c28` |
| 11 | `theorem` | [rpow_def_of_nonpos](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-def-of-nonpos.md) | 87 | `result-track:5c6cfd3b04c69a817a7d148435dda65822a97a31cc739abb6cecb43d93661a76` |
| 12 | `theorem` | [rpow_pos_of_pos](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-pos-of-pos.md) | 92 | `result-track:6329dfe83701955724061904aa8d9fa20fe8e8580894a6b5a1f223b427c8c926` |
| 13 | `theorem` | [rpow_zero](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-zero.md) | 97 | `result-track:0a19914649b33bdde04d19558715af5f6fcff64cb8ca664a886f13f8a8f7abcc` |
| 14 | `theorem` | [rpow_zero_pos](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-zero-pos.md) | 100 | `result-track:251fd1e8782798a61c4b29754b59ea9b78acdb1f961b4efc6520e19485664fa1` |
| 15 | `theorem` | [zero_rpow](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/zero-rpow.md) | 103 | `result-track:2a5e595cd5026034d612801d5c6e7b0a79ada53eb0b53b9e23dd1902d755dde4` |
| 16 | `theorem` | [zero_rpow_eq_iff](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/zero-rpow-eq-iff.md) | 106 | `result-track:d3dbe78e58d7def4ac9005636bb8feb091a30e81db45e6c80c85f239c03e8642` |
| 17 | `theorem` | [eq_zero_rpow_iff](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/eq-zero-rpow-iff.md) | 121 | `result-track:6dc35f8a9844970581ac78dd07395a6d8a76d924dc9f4a4fca70202b87773350` |
| 18 | `theorem` | [rpow_one](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-one.md) | 126 | `result-track:525671800a95777cfad7bc296c254349bba8c7df663e8d9b7b5b80f3a7933b2d` |
| 19 | `theorem` | [one_rpow](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/one-rpow.md) | 130 | `result-track:5f2f2d62614a594d59fcb556a2c72332358902dacb363cbd9257fc7bd18251ca` |
| 20 | `theorem` | [zero_rpow_le_one](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/zero-rpow-le-one.md) | 133 | `result-track:2cfe328c8eb2488123933ece8d096df3db694d3d0355c9aa03aa5e6bbc2eabaf` |
| 21 | `theorem` | [zero_rpow_nonneg](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/zero-rpow-nonneg.md) | 137 | `result-track:372b7fad88d554241c67781b11afd337677c190c4eb96e28bd293b7d5f2efc46` |
| 22 | `theorem` | [rpow_nonneg_of_nonneg](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-nonneg-of-nonneg.md) | 141 | `result-track:039207461fb7b866ff7b89d913b11bd2f24e369aa5b797e1ac0df19e5ab5c19b` |
| 23 | `theorem` | [abs_rpow_of_nonneg](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/abs-rpow-of-nonneg.md) | 146 | `result-track:7665a809d232b1f0e5ca1be2c06503123f6001d86cf9c970d6f264ed87f3bcce` |
| 24 | `theorem` | [abs_rpow_le_abs_rpow](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/abs-rpow-le-abs-rpow.md) | 151 | `result-track:9274f61ae918c9e46896e14bad3f491d72104a191d6b3a170baf726516aced20` |
| 25 | `theorem` | [abs_rpow_le_exp_log_mul](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/abs-rpow-le-exp-log-mul.md) | 159 | `result-track:40d1718e178d0e6a68d0a5ccd01ce3efacb91a3abe77eaead0e66f3b74b513e8` |
| 26 | `theorem` | [norm_rpow_of_nonneg](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/norm-rpow-of-nonneg.md) | 166 | `result-track:9c7d92fec93b208d4b410c0f11e68342e12206bff1860c9197db1b535fd02530` |
| 27 | `theorem` | [rpow_add](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-add.md) | 173 | `result-track:393a61982bd535532cb5b0785e83bd222a98dfcddcaedef2511610902e637f9f` |
| 28 | `theorem` | [rpow_add'](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-add-source-edition-2.md) | 177 | `result-track:596fa06dd7dfecbd42cf0eccb10ad49acf6bd9f15a4c63bbcb7aa1a8c7dfa10f` |
| 29 | `theorem` | [rpow_add_of_nonneg](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-add-of-nonneg.md) | 185 | `result-track:d7b4591ec818f1d992603fd2bf06ce0484633976eb80bc4c2b8484f957de9091` |
| 30 | `theorem` | [le_rpow_add](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/le-rpow-add.md) | 195 | `result-track:ef160b10892ba5037da8c04491f9989528529211a8450630304d6480b5a0340b` |
| 31 | `theorem` | [rpow_sum_of_pos](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-sum-of-pos.md) | 208 | `result-track:5e9b481b7241335d09f56aea7741c493d1f7201f8ee81d70610d58d29daf212a` |
| 32 | `theorem` | [rpow_sum_of_nonneg](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-sum-of-nonneg.md) | 213 | `result-track:a047130266a63e8c2c5bd2ff750e239e07d18923ba22ea27e23612cc428fbf7e` |
| 33 | `theorem` | [rpow_neg](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-neg.md) | 221 | `result-track:1e4d38c0fd7b9b4a92e8f0f38d814cee6321c9be5e9863d878189ba9af3781e9` |
| 34 | `theorem` | [rpow_sub](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-sub-source-edition-2.md) | 225 | `result-track:f5c51b968e6e41b154f736f44d6b560452c6c1814a6a5c16f5812380964a6e9c` |
| 35 | `theorem` | [rpow_sub'](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-sub.md) | 229 | `result-track:76da176b3c1433c1b5cd6c65d80ca37b29313ef0a36ee5b0ddb94f2c3fd9c77a` |
| 36 | `theorem` | [ofReal_cpow](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/ofreal-cpow.md) | 243 | `result-track:d8544d7d6fbb6e08edd330e46e8b9bba7957c95e5b83d57943a0f7fd47787c32` |
| 37 | `theorem` | [ofReal_cpow_of_nonpos](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/ofreal-cpow-of-nonpos.md) | 248 | `result-track:76eb92d025c0d338bdf1a92ba0a13198fbf9c4b89a8cd3729ebef970dc463ee0` |
| 38 | `theorem` | [abs_cpow_of_ne_zero](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/abs-cpow-of-ne-zero.md) | 258 | `result-track:2d54e8d78a9efd283eb0af1c062386624b553bba0af8a5b6196dc296507dec72` |
| 39 | `theorem` | [abs_cpow_of_imp](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/abs-cpow-of-imp.md) | 264 | `result-track:38b2c8c03cb0f9816935697f7d06826620f1be189188a3c34ceaf03a10f1c2e3` |
| 40 | `theorem` | [abs_cpow_le](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/abs-cpow-le.md) | 273 | `result-track:65824cc4bfc0169c459df647b8ec124b3fd6399f697092da15acf9f00916f096` |
| 41 | `theorem` | [abs_cpow_real](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/abs-cpow-real.md) | 281 | `result-track:a8ed6c00f63e77aa5a67038c9857e5eaacdfb7341e3969a750e00601d805c105` |
| 42 | `theorem` | [abs_cpow_inv_nat](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/abs-cpow-inv-nat.md) | 287 | `result-track:60b492e30e5d19d896701b1c144249bed363deb256dedc4cb0ffaaae74d0ee27` |
| 43 | `theorem` | [abs_cpow_eq_rpow_re_of_pos](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/abs-cpow-eq-rpow-re-of-pos.md) | 291 | `result-track:76a1b8dc938e2433d33f2239d7a4158c4f5512cc72864c36b87c69a81cddf191` |
| 44 | `theorem` | [abs_cpow_eq_rpow_re_of_nonneg](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/abs-cpow-eq-rpow-re-of-nonneg.md) | 296 | `result-track:ed62e70d021b71ce9af1101637ef649ae1e5849b7ab7f1fbcb339f0c3ab36935` |
| 45 | `macro_rules` | [(anonymous)](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/macro-rules.md) | 313 | `declaration-track:241ac746815189e93328adb7779789014b02aa3256bb4bc4ba2d8dfc5d5c99a2` |
| 46 | `theorem` | [rpow_mul](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-mul.md) | 317 | `result-track:3161a582d0a3ce2a3228e7b9ce9f7515764e151934bdc9c5ae1e52593abe84c6` |
| 47 | `theorem` | [rpow_add_int](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-add-int.md) | 324 | `result-track:6f0e1c28c68eb5b9af0167663eaa1169840df03437457c23729112be99aded4a` |
| 48 | `theorem` | [rpow_add_nat](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-add-nat.md) | 330 | `result-track:ef5632847e943bcb09f570a13a9310ec86144269dd185a6422e854d84993ffad` |
| 49 | `theorem` | [rpow_sub_int](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-sub-int.md) | 334 | `result-track:1fec62c2592f736ee70ead959961d709043a8ad62fc9a0df215d143b2e09fefc` |
| 50 | `theorem` | [rpow_sub_nat](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-sub-nat.md) | 338 | `result-track:953efea312d382d332d03d09102415a3da7841010b2198eb4369dd105bd93e12` |
| 51 | `theorem` | [rpow_add_one](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-add-one.md) | 342 | `result-track:aa54443bea9b90f492980deabeeab7a665a72ef06476a00e1b8a62762e6fb084` |
| 52 | `theorem` | [rpow_sub_one](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-sub-one.md) | 346 | `result-track:fe80dedb6dbf24e2cb04c49ac530f461ea905b94564fd62aeba3905da58a1696` |
| 53 | `theorem` | [rpow_int_cast](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-int-cast.md) | 351 | `result-track:17e03e1e9e4df4eec67e3c722eed354a7a81899aa8ee2778a7b0c7b00ea214ed` |
| 54 | `theorem` | [rpow_nat_cast](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-nat-cast.md) | 357 | `result-track:d0a6043a4d7a25790dff7a3e4f8675aca75fa9b438477163a561eb31302702f9` |
| 55 | `theorem` | [rpow_two](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-two.md) | 362 | `result-track:f21f5ae5a4b5506e8f6c846d4da3d8a2c1d6dc95927b4c9a7feab6ab0f379f26` |
| 56 | `theorem` | [rpow_neg_one](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-neg-one.md) | 367 | `result-track:04dd4ecb881c5d7bc478d308c808025183b74030be983a7a102c38fdda6d2c94` |
| 57 | `theorem` | [mul_rpow](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/mul-rpow.md) | 372 | `result-track:f820ab8f1c338e2ce00aa96d5d63d26bc54551661c76ac74f29c4a08c65b9fa7` |
| 58 | `theorem` | [inv_rpow](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/inv-rpow.md) | 393 | `result-track:08e5f8a22dfcbfb5d377a84fc2fee389a2f53e003f0448a0f1c12932f25c0a32` |
| 59 | `theorem` | [div_rpow](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/div-rpow.md) | 397 | `result-track:08458287561156ee3a92cfc087e249f799994209b1327f2ca60fde5b760ffe8a` |
| 60 | `theorem` | [log_rpow](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/log-rpow.md) | 401 | `result-track:f525690a9b4df4e3dcd287d4898fd235a1f345cb2caa365b5ed5efa840b583c0` |
| 61 | `theorem` | [mul_log_eq_log_iff](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/mul-log-eq-log-iff.md) | 406 | `result-track:33b107bc001c4508a86a6016205b32131c5b819c26aec650ecc56af8809cb812` |
| 62 | `theorem` | [rpow_lt_rpow](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-lt-rpow.md) | 420 | `result-track:2bb235751629c03c93c119f996b205ae734bb2b7fbf4706cef9c13e8f230dca9` |
| 63 | `theorem` | [strictMonoOn_rpow_Ici_of_exponent_pos](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/strictmonoon-rpow-ici-of-exponent-pos.md) | 428 | `result-track:98b81f17124e9f785e46878416a7492bf5e23916e40f3a03e0a4a3a7b2582c51` |
| 64 | `theorem` | [rpow_le_rpow](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-le-rpow.md) | 433 | `result-track:bcc6a5e64e4a11e30e44be06fe21ef6f226ba06e97ac9fd6db13cb2e1d2ee41d` |
| 65 | `theorem` | [monotoneOn_rpow_Ici_of_exponent_nonneg](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/monotoneon-rpow-ici-of-exponent-nonneg.md) | 439 | `result-track:ea2b23fd8459341727dd8970eccc147f230c6f66e3e6577b1221e2af794aee07` |
| 66 | `theorem` | [rpow_lt_rpow_iff](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-lt-rpow-iff.md) | 443 | `result-track:3b0de860ce69e297ed6811dbb0ff490baba130caf41e28ce39c6ea044048379e` |
| 67 | `theorem` | [rpow_le_rpow_iff](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-le-rpow-iff.md) | 447 | `result-track:356cdb96b1bc9947ad3f37f4110c34a276a6081f4e5f0a412298d4a02a08fadd` |
| 68 | `theorem` | [le_rpow_inv_iff_of_neg](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/le-rpow-inv-iff-of-neg.md) | 451 | `result-track:e92aea8652ed7ea53244c332b82c1aa860a3a7d524b57638b021b55f69bb9037` |
| 69 | `theorem` | [lt_rpow_inv_iff_of_neg](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/lt-rpow-inv-iff-of-neg.md) | 462 | `result-track:28c9a3d91f50e2ee043757d5dd1cc9bdc332756e736dc9a0b95a50bbfc35780e` |
| 70 | `theorem` | [rpow_inv_lt_iff_of_neg](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-inv-lt-iff-of-neg.md) | 473 | `result-track:89daad2f7515b0b1127d33403c49f42887df469364a6553d02a4b1674d521ef0` |
| 71 | `theorem` | [rpow_inv_le_iff_of_neg](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-inv-le-iff-of-neg.md) | 479 | `result-track:8be0d60bc159977ba9cb32c372c25608b64e53f1db021a1803e91bd5b455009e` |
| 72 | `theorem` | [rpow_lt_rpow_of_exponent_lt](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-lt-rpow-of-exponent-lt.md) | 485 | `result-track:551815d5c9e7717691011f727d69eba097ef8417fb2949bc64706485a135af6b` |
| 73 | `theorem` | [rpow_le_rpow_of_exponent_le](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-le-rpow-of-exponent-le.md) | 491 | `result-track:cadd7591dd819df82963cd7ac19ebe1e8637826bf77cb4eac7149d81e6f76c59` |
| 74 | `theorem` | [rpow_lt_rpow_of_exponent_neg](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-lt-rpow-of-exponent-neg.md) | 496 | `result-track:9544f9c3275ef4939cb336f4b8c60fdbd903552376c3172a4c61c3465acf2a06` |
| 75 | `theorem` | [strictAntiOn_rpow_Ioi_of_exponent_neg](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/strictantion-rpow-ioi-of-exponent-neg.md) | 503 | `result-track:b7adf44257c0c462e81d5e483e3067bbc9ddf0ebd577c0b97e2f3422f8351944` |
| 76 | `theorem` | [rpow_le_rpow_of_exponent_nonpos](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-le-rpow-of-exponent-nonpos.md) | 507 | `result-track:0a15eea81363aad66547a94a5f6dc34157630391fb8b897f6add4857c7e4b89d` |
| 77 | `theorem` | [antitoneOn_rpow_Ioi_of_exponent_nonpos](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/antitoneon-rpow-ioi-of-exponent-nonpos.md) | 518 | `result-track:2a45302f039efe602aba483ad318f3d2d37128a6a044b167c2add718abd202f5` |
| 78 | `theorem` | [rpow_le_rpow_left_iff](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-le-rpow-left-iff.md) | 523 | `result-track:be3147e59a1f98325ceff35e656040172e0d2ed20dcaecc2aa42920c0688d5ee` |
| 79 | `theorem` | [rpow_lt_rpow_left_iff](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-lt-rpow-left-iff.md) | 530 | `result-track:748fd4aacf3598fa0521ba0724cd4628fd90a3d2a8f29c6412abd593e6ebceea` |
| 80 | `theorem` | [rpow_lt_rpow_of_exponent_gt](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-lt-rpow-of-exponent-gt.md) | 534 | `result-track:7c33637ff9feea9ff5647147b6123e447d17f6223f41a6e9e89cf44661c6e3f2` |
| 81 | `theorem` | [rpow_le_rpow_of_exponent_ge](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-le-rpow-of-exponent-ge.md) | 539 | `result-track:b6db20eaf2f5c2391f623438defc58a9bec8498cea00958d39a7debe6e62ecfe` |
| 82 | `theorem` | [rpow_le_rpow_left_iff_of_base_lt_one](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-le-rpow-left-iff-of-base-lt-one.md) | 545 | `result-track:c367598bc672305a923974be7e65ecd14462530b5ca9928e4508d615ec267e47` |
| 83 | `theorem` | [rpow_lt_rpow_left_iff_of_base_lt_one](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-lt-rpow-left-iff-of-base-lt-one.md) | 552 | `result-track:fc0825beef1a7e17bc7a451b123f0376c01accd032b483feb9292bae9490ad2b` |
| 84 | `theorem` | [rpow_lt_one](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-lt-one.md) | 556 | `result-track:b4d22392fc75949f5248e8ceb2e9b51ad2ff6819e48cd8fdb17664cb85d8b0be` |
| 85 | `theorem` | [rpow_le_one](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-le-one.md) | 561 | `result-track:bfbcfd2119bb7a9949aa888a050770ec010ce68b75e4a5352a075d0876a05e18` |
| 86 | `theorem` | [rpow_lt_one_of_one_lt_of_neg](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-lt-one-of-one-lt-of-neg.md) | 566 | `result-track:d5b67cb66196e68f42dee0b3c88fc89c8f1214a759b9dd6f79e4f2ce84d230ee` |
| 87 | `theorem` | [rpow_le_one_of_one_le_of_nonpos](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-le-one-of-one-le-of-nonpos.md) | 571 | `result-track:1932c1bda93b0ccd6066e1cdc3e3681a81d225460451c8e3bce27cd84430f29a` |
| 88 | `theorem` | [one_lt_rpow](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/one-lt-rpow.md) | 576 | `result-track:ae209212efff17d706fb6ba7b2e6df8970deb73a432f47e6efec11304926e0b7` |
| 89 | `theorem` | [one_le_rpow](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/one-le-rpow.md) | 581 | `result-track:9c059c06c6e13e6f1ad67a2288120c743da54675bad0c7abe33e74af6969b58c` |
| 90 | `theorem` | [one_lt_rpow_of_pos_of_lt_one_of_neg](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/one-lt-rpow-of-pos-of-lt-one-of-neg.md) | 586 | `result-track:ccee5be9eedccc720c5955c459680c2584ecd3aa54a194c532e983bc26ccb78c` |
| 91 | `theorem` | [one_le_rpow_of_pos_of_le_one_of_nonpos](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/one-le-rpow-of-pos-of-le-one-of-nonpos.md) | 592 | `result-track:afb59ec9e1eb266609076d7b028f711ffcced1adb41c73078617a5dce818dacf` |
| 92 | `theorem` | [rpow_lt_one_iff_of_pos](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-lt-one-iff-of-pos.md) | 598 | `result-track:ba1338e494c66657c1155f135c07361f7bb332b019ab796d27684e2bcababf1f` |
| 93 | `theorem` | [rpow_lt_one_iff](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-lt-one-iff.md) | 602 | `result-track:70c12c84a3afbb6b72c33944410ca5dd99cd6753760e7d3c213da9fd8fce7e14` |
| 94 | `theorem` | [one_lt_rpow_iff_of_pos](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/one-lt-rpow-iff-of-pos.md) | 609 | `result-track:1c1791d35586bb6653bb28f36865cd3d0c9012d1063fe911358438fb20d401df` |
| 95 | `theorem` | [one_lt_rpow_iff](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/one-lt-rpow-iff.md) | 613 | `result-track:2561ba8672de9618a4c2a7bfe71e6b57591555c0176714c38765607cf509cb67` |
| 96 | `theorem` | [rpow_le_rpow_of_exponent_ge'](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-le-rpow-of-exponent-ge-source-edition-2.md) | 619 | `result-track:dff698c0cf400a9408bc3bb1e7b3bd6a9205645bf50475940d9d7bc7dd535890` |
| 97 | `theorem` | [rpow_left_injOn](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-left-injon.md) | 628 | `result-track:975cb32d00e7ebc40fee3055459da7c562e456d6e370fbedbf256e98c7355695` |
| 98 | `theorem` | [le_rpow_iff_log_le](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/le-rpow-iff-log-le.md) | 633 | `result-track:01b83b511f8fdccd286d9be15696421deedc2df53f730c37bf04561948f5d8e9` |
| 99 | `theorem` | [le_rpow_of_log_le](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/le-rpow-of-log-le.md) | 637 | `result-track:42d6aa45271f914269eb5d989244c3654510b3f6e025499a63161b8b28219fd2` |
| 100 | `theorem` | [lt_rpow_iff_log_lt](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/lt-rpow-iff-log-lt.md) | 644 | `result-track:3ef4c57ca23ed7e3f31d4191e357f28773447da89f2361d5b22232b361591242` |
| 101 | `theorem` | [lt_rpow_of_log_lt](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/lt-rpow-of-log-lt.md) | 648 | `result-track:412bd0971cff3a8deb9b70742cebd1f786ddd5bc8e88e6c87a56add95b67647e` |
| 102 | `theorem` | [rpow_le_one_iff_of_pos](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-le-one-iff-of-pos.md) | 655 | `result-track:8eb9f3450a8c552a5a794fdbbdcb6649a4788cafed8eb967da2c762999a3d784` |
| 103 | `theorem` | [abs_log_mul_self_rpow_lt](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/abs-log-mul-self-rpow-lt.md) | 660 | `result-track:ce5d1b51a4f056f3dfce772d5f37ed5f31723e43c59f118b8a597418adc82729` |
| 104 | `theorem` | [pow_nat_rpow_nat_inv](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/pow-nat-rpow-nat-inv.md) | 667 | `result-track:b7c4ac50a64d2e94777b341709006dc630003705d4a088c7960dfbc2a62ea8c7` |
| 105 | `theorem` | [rpow_nat_inv_pow_nat](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-nat-inv-pow-nat.md) | 673 | `result-track:b7f243e572cba939f9dea3117f70cbfd5b314b4d792a93cb2252bba5a2abc816` |
| 106 | `lemma` | [strictMono_rpow_of_base_gt_one](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/strictmono-rpow-of-base-gt-one.md) | 679 | `result-track:b9860822535909fb54359bf6949deaa6a5949e68c69034646411833073f3216c` |
| 107 | `lemma` | [monotone_rpow_of_base_ge_one](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/monotone-rpow-of-base-ge-one.md) | 685 | `result-track:c95df1a9a22b68e8a5090ff3ecfd611c907ea161b48912aa956201871f49d973` |
| 108 | `lemma` | [strictAnti_rpow_of_base_lt_one](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/strictanti-rpow-of-base-lt-one.md) | 691 | `result-track:98fb2cc88f5547731c64455027112af99b33a11b7030e0f5b7831ec673cd32f7` |
| 109 | `lemma` | [antitone_rpow_of_base_le_one](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/antitone-rpow-of-base-le-one.md) | 698 | `result-track:d5eb8d07772f860af1173519af03406bf05b4dfc16f212603ecb7fe1a1b0501c` |
| 110 | `theorem` | [sqrt_eq_rpow](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/sqrt-eq-rpow.md) | 717 | `result-track:d0f80104f9541ef2acce3e0437c1b6192be3a226d2b3b7f5bbe29e02d761b6c4` |
| 111 | `theorem` | [rpow_div_two_eq_sqrt](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/rpow-div-two-eq-sqrt.md) | 727 | `result-track:cbb0287c452ee6fd3f5c3dc5632e9e49171eb39181f3f8484b16d4967e808056` |
| 112 | `macro_rules` | [(anonymous)](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/macro-rules-source-edition-2.md) | 737 | `declaration-track:f33ba3802501bb8de325f4c2c5c5d5e9b81379cfbf310a7253d406335f85607e` |
| 113 | `theorem` | [exists_rat_pow_btwn_rat_aux](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/exists-rat-pow-btwn-rat-aux.md) | 739 | `result-track:93ecea546a21a33fc802b394f2754e50b53c160f92a03f7864928a075f0caff5` |
| 114 | `theorem` | [exists_rat_pow_btwn_rat](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/exists-rat-pow-btwn-rat.md) | 754 | `result-track:ac1205eb8533ec2214fdacccec8cb38051aa6a397a2f5216a2e48a8a2e82d5ff` |
| 115 | `theorem` | [exists_rat_pow_btwn](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/exists-rat-pow-btwn.md) | 760 | `result-track:6635c4d67ab074409ad0132c205ff23c392cc2d838c64b084baca86cd46a7415` |
| 116 | `def` | [evalRpowZero](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/evalrpowzero.md) | 835 | `declaration-track:58c8f51c1070d64b69965f9f986c41b75e37cf033c65185a029a88bbb3e51fa0` |
| 117 | `def` | [evalRpow](../../../../SpecialFunctions/RealRpowNonnegOfNonneg.lean/declarations/evalrpow.md) | 844 | `declaration-track:be8e737f0b0cb6838762ac2c693c7d4586111aa34599440c0ca0f877604e2007` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=407ec1c0aefda8680f0c3183115ada08c4bb113dfd063cc07b36d6799d1110c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/Real/Variant647c7a5f530516e2b2d8100c38e22bf83046b57a1a93360d0829f40fc1fdf725.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/Real/Variant647c7a5f530516e2b2d8100c38e22bf83046b57a1a93360d0829f40fc1fdf725.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
