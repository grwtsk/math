# Verification target: Rat Defs Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6cfe75c22ec9c6f6ac810b97a48a74d1c4d1a932",
  "lexical_observation_count": 103,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant55d8147aae66cf29f38e84ec71d0303f5abb37228310f9704870a17efd997819.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6cfe75c22ec9c6f6ac810b97a48a74d1c4d1a932`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant55d8147aae66cf29f38e84ec71d0303f5abb37228310f9704870a17efd997819.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant55d8147aae66cf29f38e84ec71d0303f5abb37228310f9704870a17efd997819.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.Rat.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Init` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pos](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/pos.md) | 41 | `result-track:131f242d5c4c417225d64a537fd1e876f12b447fd06c1e2832cc7e506469cbeb` |
| 2 | `lemma` | [mk'_num_den](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/mk-num-den.md) | 43 | `result-track:255c30346e95e1e8ee7467cd98902bd650c36c3c8ecacad5e648c430e3b7ea4d` |
| 3 | `theorem` | [ofInt_eq_cast](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/ofint-eq-cast.md) | 46 | `result-track:f5c093f49c36804c0b1a2895a39536387a637873a15df5061d2c94aa98e5d0b6` |
| 4 | `lemma` | [num_ofNat](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/num-ofnat.md) | 50 | `result-track:a9f224888eae5c95b7bd8c2a20b91877ec5ddbbacbf431bab4fb61035a1eaf68` |
| 5 | `lemma` | [den_ofNat](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/den-ofnat.md) | 51 | `result-track:309f01fa86104e78d6dd8c09c1d912a615612316457b369e4b9e392e4bfad02a` |
| 6 | `lemma` | [num_natCast](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/num-natcast.md) | 53 | `result-track:b0d78fb5a3dfaccb118b0faf552232cf80782f730ec35276ef814cd804215ca3` |
| 7 | `lemma` | [den_natCast](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/den-natcast.md) | 55 | `result-track:ccd08ecfa68e5c6e59823cb90ac807f1192c4d4f132778cdae6c1e8a54093b0e` |
| 8 | `lemma` | [num_intCast](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/num-intcast.md) | 58 | `result-track:539c8710d58da669e3390fb3034bbeadacbbf8783d04a020cfd2ec39497d2ec1` |
| 9 | `lemma` | [den_intCast](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/den-intcast.md) | 60 | `result-track:51b665f305adbf012bfdbf9e369fdbfc84df1363cd3c88d53b6434daea5bca0a` |
| 10 | `lemma` | [intCast_injective](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/intcast-injective.md) | 62 | `result-track:5e78c47c62db488675ea86f230fa1ef22c7b6192b0ad6f2db26f5dffe14b60a8` |
| 11 | `lemma` | [natCast_injective](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/natcast-injective.md) | 63 | `result-track:c920c036e77ad4270cccd67201b49865d91ac598ebef242f292a8717b4139a68` |
| 12 | `lemma` | [natCast_inj](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/natcast-inj.md) | 66 | `result-track:d064b5207a7c2f6da539cc3edc6255d0d5d727bcfdee6d3a353c482615b0d8b0` |
| 13 | `lemma` | [intCast_eq_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/intcast-eq-zero.md) | 68 | `result-track:52585bb4f2c27bdc5be84225199385a3620b2cf8dee552d2ce094f9b142fa2bb` |
| 14 | `lemma` | [natCast_eq_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/natcast-eq-zero.md) | 69 | `result-track:7436a11c323a7b319f0695c732ad68c435ac01f6fdddbc9f1960ba7cce6e3795` |
| 15 | `lemma` | [intCast_eq_one](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/intcast-eq-one.md) | 70 | `result-track:5044caefff5247ae85e1673b9f14488317d5a3d9c64c602c1b7c4c945df8e953` |
| 16 | `lemma` | [natCast_eq_one](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/natcast-eq-one.md) | 71 | `result-track:5c0a2db2b353d992af4156485ae01dd1b6093554f61272b94ea59c5bac4dedd7` |
| 17 | `lemma` | [mkRat_eq_divInt](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/mkrat-eq-divint.md) | 73 | `result-track:ac638dd04612b117051e45b163a973d9f68ed4b9fa6401a175a630ab243ba8d4` |
| 18 | `lemma` | [mk'_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/mk-zero.md) | 75 | `result-track:e0d32433d55fbf3415c98967f158d499b694b8b9ea4342930036d3dea6112d32` |
| 19 | `lemma` | [num_eq_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/num-eq-zero.md) | 78 | `result-track:1ba95d29fafaa7020037d6fbeb9ea45e64a4303bad7032022bb7b53bab1fae1f` |
| 20 | `lemma` | [num_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/num-ne-zero.md) | 85 | `result-track:a3022be90db16470bbd1bab2ee1c5c61a57ea49c1d2b156d21f4e1daa3efe522` |
| 21 | `lemma` | [den_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/den-ne-zero.md) | 87 | `result-track:7efe824f7025a53b0d8302341feb630dbd6eb7d7171c0b22a4612c9a276c46ef` |
| 22 | `lemma` | [num_nonneg](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/num-nonneg.md) | 89 | `result-track:c14c4713011d4640811ae80b9496fb2d39b895995f39cd4ccfa18b527b2b3ba0` |
| 23 | `theorem` | [divInt_eq_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/divint-eq-zero.md) | 93 | `result-track:ff0d4f88f9f6f69362bb50ba730763cefd7cc6a336e63fee4ce1776955672ae6` |
| 24 | `theorem` | [divInt_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/divint-ne-zero.md) | 96 | `result-track:af1b71fb1537b0fe48bee77e493a1df5319bf0966e20add3b55921f3c3fad307` |
| 25 | `theorem` | [normalize_eq_mk'](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/normalize-eq-mk.md) | 100 | `result-track:7b835cdf6e94a935d6574839f0ba39abdbb18ded6f67c86b93853e1f6aa8fbf3` |
| 26 | `lemma` | [num_divInt_den](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/num-divint-den.md) | 107 | `result-track:6a845b62f03fc5067c6d169ff61cce24776a4debeb1d30c4cfd666c1e8b6893e` |
| 27 | `lemma` | [mk'_eq_divInt](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/mk-eq-divint.md) | 109 | `result-track:638747ece3e950db517daa893438a64b977ad848907dc6e6b92eff7c858482c0` |
| 28 | `theorem` | [intCast_eq_divInt](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/intcast-eq-divint.md) | 111 | `result-track:bdac04344970fbb24ea3f097c3b0b6890305a1e660a55422b881d9deb0f0fdc8` |
| 29 | `lemma` | [divInt_self'](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/divint-self.md) | 114 | `result-track:0da3f4e0bb9557111f543c609d53d69540dc20561f76922e86c96f5dbe78b98a` |
| 30 | `def` | [numDenCasesOn.](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/numdencaseson-source-edition-3.md) | 120 | `declaration-track:f1c013757b6ab7603e98c4b41ac8210974edf94360d0e25653a7a52827ad9903` |
| 31 | `def` | [numDenCasesOn'.](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/numdencaseson-source-edition-2.md) | 127 | `declaration-track:47f17a7ad75aad053319d484791e8598b697232c0265588b382d99ad066a24ae` |
| 32 | `def` | [numDenCasesOn''.](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/numdencaseson.md) | 134 | `declaration-track:3ce0785a112860628bfb8decb380abf94643d1e7d6a0e2797ef288e39ae40df9` |
| 33 | `theorem` | [lift_binop_eq](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/lift-binop-eq.md) | 138 | `result-track:41b75d167925fd583f1dfffd86524045faaf56093d79c83d8bfc7eb5b7257e18` |
| 34 | `lemma` | [neg_def](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/neg-def.md) | 160 | `result-track:32fe1574dba8d5c98a58b66f412e8a07516179d42d960fcca75d08f2d84095a3` |
| 35 | `lemma` | [divInt_neg](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/divint-neg.md) | 162 | `result-track:dec2d1987fb92eeb44e2030208cc13f0e0b1ffecbf5ea963a0b64e7a0f336792` |
| 36 | `lemma` | [divInt_mul_divInt'](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/divint-mul-divint.md) | 167 | `result-track:06452e8b76733c95b5d59b3e95e7ec4bcfcfd50b3183229e5a73ec907f9e8b85` |
| 37 | `lemma` | [mk'_mul_mk'](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/mk-mul-mk.md) | 176 | `result-track:6d40141f6202dcbb48277e0b8524d82e5cb3e13e5d8b5c5abe45524e5ec90178` |
| 38 | `lemma` | [mul_eq_mkRat](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/mul-eq-mkrat.md) | 182 | `result-track:9a142730a9a9841eced0083e2b88d63c991be68c98bf852c66c239719e07fc6b` |
| 39 | `instance` | [instPowNat](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/instpownat.md) | 188 | `declaration-track:43af8991d351f09da57156050e08588a231a4bd51b96bd07a03837837ad0272c` |
| 40 | `lemma` | [pow_def](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/pow-def.md) | 192 | `result-track:6ec4bd40af6b4fcd4895bcee4fa0461a1c76e2022348d5e9c469a15ffd1d29bb` |
| 41 | `lemma` | [pow_eq_mkRat](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/pow-eq-mkrat.md) | 197 | `result-track:6c4943e1a2ac6a2a77b5aeb374eed99aa1795bee5a899e62b83619a617b0d287` |
| 42 | `lemma` | [pow_eq_divInt](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/pow-eq-divint.md) | 200 | `result-track:cab945bc89646a56785c282af90b8eebd2b38cb73515d6965960daff99fdb775` |
| 43 | `lemma` | [num_pow](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/num-pow.md) | 203 | `result-track:a8c4d6cb80de194c1a7c856719968f63fbf87b083a5316c2f525007d74123470` |
| 44 | `lemma` | [den_pow](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/den-pow.md) | 204 | `result-track:0106a75f232a4e2ff93706f11c29de0d7058d1beda774d1e5a2ac2829894fcb8` |
| 45 | `lemma` | [mk'_pow](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/mk-pow.md) | 206 | `result-track:e1d31e6c5fbfd973e8a1c3840d1b5ed6619867079b560ab23904dcdc867488c7` |
| 46 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/instance.md) | 210 | `declaration-track:657a98f4068653b9e0a3d93139ca05ca9a31fa18c752fe8fccf6ed99f7637ee2` |
| 47 | `lemma` | [inv_divInt'](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/inv-divint.md) | 213 | `result-track:b7e5b607d3125052b941f62e5aadebeee49302a9e42961492c66cf6f3d1c6649` |
| 48 | `lemma` | [inv_mkRat](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/inv-mkrat.md) | 215 | `result-track:fa70c96efc016ce9fddfdab7f27e4d72d9b58e2b891f686b6243eef8bbc4ea6f` |
| 49 | `lemma` | [inv_def'](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/inv-def.md) | 218 | `result-track:cf0d8f9b09445bb9d1600ce910bf999e7500ad12206dcfe3488c4bfb9f37a350` |
| 50 | `lemma` | [divInt_div_divInt](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/divint-div-divint.md) | 220 | `result-track:7547e7b916d4ebc9de4a18ddcec84eccc80ce1b22df721171b57c2fec2c6f2a4` |
| 51 | `lemma` | [div_def'](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/div-def.md) | 224 | `result-track:279c5ecb7864abd023d39c20e6d9b8c07b071017ef95c7fe5306f2a9acd83489` |
| 52 | `lemma` | [add_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/add-zero.md) | 229 | `result-track:79285763653e4d43fd885a40bd339019c9f40e0034ca4994dd795e08ac90d531` |
| 53 | `lemma` | [zero_add](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/zero-add.md) | 231 | `result-track:3e7ee8ae0210d35ec0d5dd19d33ccd619c040e89f81a31d176e6ea5724ef04a0` |
| 54 | `lemma` | [add_comm](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/add-comm.md) | 233 | `result-track:659b4bbd5383b3b84d019c593e25e60414db3c1a7511d56c429863a7ae4b6ecc` |
| 55 | `theorem` | [add_assoc](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/add-assoc.md) | 236 | `result-track:02050420048758283cdd60beee999b2accaefbb62a4ea8508dc8028234b6698e` |
| 56 | `lemma` | [neg_add_cancel](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/neg-add-cancel.md) | 244 | `result-track:0beaea6d8326e61557b835461eb13f3a8bead6e65d36b213064310f0e889cb15` |
| 57 | `lemma` | [divInt_one](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/divint-one.md) | 247 | `result-track:0d0dcc09150e1495b6cf1d69a2830987449a6232089f8ea868acd831681f8dc5` |
| 58 | `lemma` | [mkRat_one](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/mkrat-one.md) | 248 | `result-track:f68492e6d543538cfab7e154c30211abaea7e084e1b5ec1b84ef4cf97792cee2` |
| 59 | `lemma` | [divInt_one_one](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/divint-one-one.md) | 250 | `result-track:778155ce71100ebfd017507cd770e7283f5a3bf08ec06aa6408e5cc7db44b603` |
| 60 | `theorem` | [mul_assoc](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/mul-assoc.md) | 252 | `result-track:0ca6d8d26d3c6c342b46cbbe9db9208638d60f67291598ef6262d8b00cdfa88f` |
| 61 | `theorem` | [add_mul](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/add-mul.md) | 258 | `result-track:b4dd0cda54fa2f41fc286da37708ef482e74a80fbb5a5d08b3b44386775a47b5` |
| 62 | `theorem` | [mul_add](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/mul-add.md) | 265 | `result-track:229729b88a4c3aa3d84791d3e462ece1c8a1e9ef2167123331fcacf0e8111242` |
| 63 | `theorem` | [zero_ne_one](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/zero-ne-one.md) | 268 | `result-track:92c7be99e548bebeb575557cbf24b9a952c6113f588c07c8eba43ef40d7cb530` |
| 64 | `theorem` | [mul_inv_cancel](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/mul-inv-cancel.md) | 273 | `result-track:ee386b0596d9f35e5f604670b5ecc3727f7792462d26bdf50cd8532a88081c56` |
| 65 | `theorem` | [inv_mul_cancel](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/inv-mul-cancel.md) | 278 | `result-track:5782d0f0cf6fd60988a0c0313fcbeb3ae1d1092820de66f2009abcb3132d4020` |
| 66 | `instance` | [nontrivial](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/nontrivial.md) | 283 | `declaration-track:172462b084864c7f258913cf1072463c8c839962029c3d5114b9a47e356c0088` |
| 67 | `instance` | [addCommGroup](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/addcommgroup.md) | 287 | `declaration-track:019b7c2ac6a3ed93741c8fb8ccea72d3af9ed3daf998c71ad7b95644019536a4` |
| 68 | `instance` | [addGroup](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/addgroup.md) | 300 | `declaration-track:f47921b89b2eb819e16fcbe23d30fe08fe1859651aa0a2a662b29dd3a86824a8` |
| 69 | `instance` | [addCommMonoid](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/addcommmonoid.md) | 302 | `declaration-track:367d417230b52bcc8faee5ef994fdca1aa63470e594eb2caed31df4493e0d725` |
| 70 | `instance` | [addMonoid](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/addmonoid.md) | 304 | `declaration-track:8a8797e9929b69206390be868873bae2926c08be8c679dcdcfee8a64614471e4` |
| 71 | `instance` | [addLeftCancelSemigroup](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/addleftcancelsemigroup.md) | 306 | `declaration-track:962e75db28a79ca18076ecfa37d8035ad2c7ace6b4323cb4f8a56e9b33f9f85b` |
| 72 | `instance` | [addRightCancelSemigroup](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/addrightcancelsemigroup.md) | 308 | `declaration-track:d444f5bb4c8c95d1f2a003a4803a59517ecb36d364a684e453845fd5f3de9267` |
| 73 | `instance` | [addCommSemigroup](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/addcommsemigroup.md) | 310 | `declaration-track:5e9f8121586fe9b032a514a71679c1d9f1876562f0fe6407ee8a6db37ec6230a` |
| 74 | `instance` | [addSemigroup](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/addsemigroup.md) | 312 | `declaration-track:216280a8d7c50a08230c221e15d27eb36893cf077faad4cbcfc990dfa400d51d` |
| 75 | `instance` | [commMonoid](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/commmonoid.md) | 314 | `declaration-track:71fedfa56df16627cbd8fc91e811bb18f49685bc5a53759ae62570ec98972235` |
| 76 | `instance` | [monoid](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/monoid.md) | 331 | `declaration-track:2afa2411864f6161cb2676d409327cc6de1e7abd3798743131f492355eb53971` |
| 77 | `instance` | [commSemigroup](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/commsemigroup.md) | 333 | `declaration-track:8ee1353f3f115d7238db29b530c5d8a22464f8309dece9db10e265b4c30a2078` |
| 78 | `instance` | [semigroup](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/semigroup.md) | 335 | `declaration-track:157d951621755f73c5d8b45d9646238ec70c9979ab165cd2495b145998009c67` |
| 79 | `theorem` | [eq_iff_mul_eq_mul](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/eq-iff-mul-eq-mul.md) | 337 | `result-track:df9c03ed55130789b0e19f5b623a9739b72469c6f5cc174bbf8b25a3bef32630` |
| 80 | `theorem` | [den_neg_eq_den](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/den-neg-eq-den.md) | 346 | `result-track:44dd6dd1734aadb8ba841cc507cfc44d5a79b03e57a22529ccc38d2b4aeea806` |
| 81 | `theorem` | [num_neg_eq_neg_num](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/num-neg-eq-neg-num.md) | 350 | `result-track:66fd040d545ab868181f5a06a69bf9541884a160cf136576c2359dd9429f278b` |
| 82 | `theorem` | [num_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/num-zero.md) | 354 | `result-track:4fba323820fb9b1f09dc7ad56f81afe83c5b2095325c1ff7720f94f0e994dfff` |
| 83 | `theorem` | [den_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/den-zero.md) | 358 | `result-track:42c290586a8853d3f68d7ca5f09d0566cbdd379c9ae80665011f65df5332cbbd` |
| 84 | `lemma` | [zero_of_num_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/zero-of-num-zero.md) | 361 | `result-track:8a05294b318d747e06d7f78825882b98cf3ff230ca6bb7987000ffcbd40ce66f` |
| 85 | `theorem` | [zero_iff_num_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/zero-iff-num-zero.md) | 363 | `result-track:f96e0c682b699b99cd34485ad726e13a15a599d850ee3daa1858089ee30f3a2d` |
| 86 | `theorem` | [num_one](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/num-one.md) | 367 | `result-track:91335f7482b3d746b4d4f4f66f8c095d89b119cb885120d3f227dcffbff6ce95` |
| 87 | `theorem` | [den_one](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/den-one.md) | 371 | `result-track:4eb612be049d5ab2da42373d57dfc5bdcd565d4eac689cb6c0142e00feb41705` |
| 88 | `theorem` | [mk_num_ne_zero_of_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/mk-num-ne-zero-of-ne-zero.md) | 374 | `result-track:b5594593a3ccfd262f635e63e9c8293ae5e3026fd2a3c643592f25f6cf60c287` |
| 89 | `theorem` | [mk_denom_ne_zero_of_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/mk-denom-ne-zero-of-ne-zero.md) | 377 | `result-track:e535e5612774940a062eb629077bc24bc8701e7df42b8cdcbcd60687c3174da2` |
| 90 | `theorem` | [divInt_ne_zero_of_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/divint-ne-zero-of-ne-zero.md) | 380 | `result-track:9279e52c37109a03b8851bf2367ebf09925f46c53f9b8c321e5075943b6418da` |
| 91 | `lemma` | [nonneg_antisymm](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/nonneg-antisymm.md) | 383 | `result-track:b074a191cccde2c3e9eae7d82dff4664a8bbeda2e3bbfd9c54fab90503bbccbe` |
| 92 | `lemma` | [nonneg_total](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/nonneg-total.md) | 387 | `result-track:0a2ad292d9e8efbb6d6c25e39e5a8cb7c9e407a31b85d738b4f8deb91d228356` |
| 93 | `theorem` | [add_divInt](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/add-divint.md) | 392 | `result-track:c3d4210682699845b543476fa997bc55a7542789575fb5ac1b4f139c192d6ee0` |
| 94 | `theorem` | [divInt_eq_div](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/divint-eq-div.md) | 398 | `result-track:8987eee454c7ee098867f68d51f539807a76319438e75f148d785b2f3afcdf13` |
| 95 | `lemma` | [intCast_div_eq_divInt](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/intcast-div-eq-divint.md) | 400 | `result-track:804ee20d1f97b9f2567a4d85902c843e96d5f714aec156d60138dca3838747db` |
| 96 | `theorem` | [natCast_div_eq_divInt](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/natcast-div-eq-divint.md) | 402 | `result-track:99b12a90744a426bddbfcabd207a85856ff201c3b4e68f15a742e8cab4fbb98a` |
| 97 | `theorem` | [divInt_mul_divInt_cancel](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/divint-mul-divint-cancel.md) | 404 | `result-track:9f913e0e436841d20a5e591a6c9b1888de12f64d565a2ae0225cc00507f2fb19` |
| 98 | `theorem` | [coe_int_num_of_den_eq_one](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/coe-int-num-of-den-eq-one.md) | 410 | `result-track:899456d624cdccd9b031cb05f3c384286c45f97d510fbaf54b5257dbae1f44c1` |
| 99 | `lemma` | [eq_num_of_isInt](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/eq-num-of-isint.md) | 415 | `result-track:17e872ab0e3152a915fab99189e59a7097a3d65f6b2e4771ee6c85bed6ac738e` |
| 100 | `theorem` | [den_eq_one_iff](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/den-eq-one-iff.md) | 419 | `result-track:58590241a6f1d4f01f2b099efebf0c4d780a01aa6be0ea492926eea5c4ebd8b9` |
| 101 | `instance` | [canLift](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/canlift.md) | 422 | `declaration-track:cccfa0edceb2b05758981bd98a4b3010394424ca368f4682eecf6ddb81e5bf92` |
| 102 | `theorem` | [coe_int_inj](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/coe-int-inj.md) | 427 | `result-track:08a4ba3da37ff6973309470008e2eb622b989de73db433e7dd334e881d0a84eb` |
| 103 | `def` | [divCasesOn](../../../../../NumberTheory/ElementaryNumberTheory/RatDefsSourceEdition2.lean/declarations/divcaseson.md) | 440 | `declaration-track:e0e0deb0e735b52e2cfd8617eee990049d1f9130c8f205a1cd4c303c117923e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=888094abf8e551999487d90f7dfdd900bd041cde48470b4ad3a5ff760ac1e962 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variant55d8147aae66cf29f38e84ec71d0303f5abb37228310f9704870a17efd997819.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Defs/Variant55d8147aae66cf29f38e84ec71d0303f5abb37228310f9704870a17efd997819.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
