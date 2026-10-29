# Verification target: Data Polynomial Laurent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ddcdd2da5be10ba47a217ed213d062338bf2023",
  "lexical_observation_count": 74,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Laurent/Variantf7d2c31537df9eefea56c0000cd70a36c88229b7715356107166e50cb6a8a59d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ddcdd2da5be10ba47a217ed213d062338bf2023`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Laurent/Variantf7d2c31537df9eefea56c0000cd70a36c88229b7715356107166e50cb6a8a59d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Laurent/Variantf7d2c31537df9eefea56c0000cd70a36c88229b7715356107166e50cb6a8a59d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.AlgebraMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Reverse` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Inductions` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LaurentPolynomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/laurentpolynomial.md) | 85 | `declaration-track:00c9f365d48e4bbfb0850141003c68f448d228fa11e6078e7de8826d4ec2c23a` |
| 2 | `theorem` | [LaurentPolynomial.ext](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/laurentpolynomial-ext.md) | 96 | `result-track:6a7c8d8334fba9ef6328e16c466b14e7c52f71741f23fd8d29d6886b73c1f090` |
| 3 | `def` | [Polynomial.toLaurent](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/polynomial-tolaurent.md) | 101 | `declaration-track:07d6bbaa0c2d859f65c25877bfea1bcfc679f60b13d410bd93a04e3be2540374` |
| 4 | `theorem` | [Polynomial.toLaurent_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/polynomial-tolaurent-apply.md) | 107 | `result-track:5a5e47aef23fe4e905b14282600b95ae78f434c0ae0138f3001d13630d14d96a` |
| 5 | `def` | [Polynomial.toLaurentAlg](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/polynomial-tolaurentalg.md) | 114 | `declaration-track:0dd834329273b7bb9ff321d301513bb06f307106fdabbe8cd46bb189487760fe` |
| 6 | `lemma` | [Polynomial.coe_toLaurentAlg](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/polynomial-coe-tolaurentalg.md) | 119 | `result-track:e6c82203deb0e0532d023b095cb0b51a541934e689f41577c7f100bdd3c288c4` |
| 7 | `theorem` | [Polynomial.toLaurentAlg_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/polynomial-tolaurentalg-apply.md) | 123 | `result-track:87544e0b4f54315f48f9ec90fe3c976cce8e86d8d814aa8fffc91e30d0bbc623` |
| 8 | `theorem` | [single_zero_one_eq_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/single-zero-one-eq-one.md) | 133 | `result-track:c23e86885815d66d2ef929445f55ce96a70c014788b8a1127c9149f66eb4568e` |
| 9 | `def` | [C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/c.md) | 142 | `declaration-track:e612fa4aa82fe5ec7d33f5e459fe07d8410834211fbe1adae068ee3643c9b8b8` |
| 10 | `theorem` | [algebraMap_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/algebramap-apply.md) | 147 | `result-track:e87b59da56f8c365f1122aa689778dd81c9de1cc5977ef8ffbf3a449fc426c1e` |
| 11 | `theorem` | [C_eq_algebraMap](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/c-eq-algebramap.md) | 156 | `result-track:c0b57363a63dda6eedee6c590152535dc8b193d679525fcaba84cd968ee93716` |
| 12 | `theorem` | [single_eq_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/single-eq-c.md) | 161 | `result-track:e9bb299aac8119181f7c834d20aa361c39e71117e1e098cde1777a60f9f56db8` |
| 13 | `lemma` | [C_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/c-apply.md) | 165 | `result-track:1b7a054ff726fe7cde3eab3c7561976f8755fd96ab06f4eeb51679687d8938df` |
| 14 | `def` | [T](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/t.md) | 173 | `declaration-track:0b74882e14a991a10f7aa0a879cb5558a2cb276820c30ccbdae170da719af626` |
| 15 | `lemma` | [T_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/t-apply.md) | 178 | `result-track:edc9fdd68d3aabc4275843f424309fa39d85a7815a0bf35bcd4adee78fe16a65` |
| 16 | `theorem` | [T_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/t-zero.md) | 182 | `result-track:71fd2eef83db5e0475f48e49fdb62ca3b773dd871d69f36d73a501e22cc650fb` |
| 17 | `theorem` | [T_add](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/t-add.md) | 187 | `result-track:2d9b8b88e38668369bdeee017b4fcda7cdae681fa6baa311d536c9a5301e4bf6` |
| 18 | `theorem` | [T_sub](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/t-sub.md) | 193 | `result-track:51d3db4017f5d6749a993c0f46648b55a93029c4e4bb91b900bffbc321682d0a` |
| 19 | `theorem` | [T_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/t-pow.md) | 198 | `result-track:98acc592d3b7ef6539e4d97e9dd9bfabd9e62d6a20389b7451ea445a3d39c258` |
| 20 | `theorem` | [mul_T_assoc](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/mul-t-assoc.md) | 205 | `result-track:a9a3aa3bf18b370beb4db665fb73d10ae605b9397e3d4891a1400863295b3e14` |
| 21 | `theorem` | [single_eq_C_mul_T](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/single-eq-c-mul-t.md) | 211 | `result-track:a1552a326315048bce817a340bf1252365052e21ecf7436ca023769c50a3884f` |
| 22 | `theorem` | [_root_.Polynomial.toLaurent_C_mul_T](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/root-polynomial-tolaurent-c-mul-t.md) | 221 | `result-track:0e4a544110c1b9516070b2455447777dfbc3b3d79e2f04df30877a1357aeb404` |
| 23 | `theorem` | [_root_.Polynomial.toLaurent_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/root-polynomial-tolaurent-c.md) | 229 | `result-track:38ad5d2009d8bdc9b32b52bd82cdf3ba991b2dd89540417f4b4a0f94b85569af` |
| 24 | `theorem` | [_root_.Polynomial.toLaurent_comp_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/root-polynomial-tolaurent-comp-c.md) | 236 | `result-track:f04d061eadf2a42aebe532ee25c028a431a4137878378ad069292280218ab490` |
| 25 | `theorem` | [_root_.Polynomial.toLaurent_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/root-polynomial-tolaurent-x.md) | 240 | `result-track:400beb5c7d28c1bdf28d0f357c9bf96610aef64974383eeb1b16e898cd98d60e` |
| 26 | `theorem` | [_root_.Polynomial.toLaurent_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/root-polynomial-tolaurent-one.md) | 247 | `result-track:76fd9080be5da3382c5dd82355e06f3a6a5ec599b4216faf13cb7f28a5bc8aac` |
| 27 | `theorem` | [_root_.Polynomial.toLaurent_C_mul_eq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/root-polynomial-tolaurent-c-mul-eq.md) | 252 | `result-track:2fe55d23585ebc5e4b6370fe28a5780fb1c795ffb2eb1a2a6e39d15dfc833390` |
| 28 | `theorem` | [_root_.Polynomial.toLaurent_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/root-polynomial-tolaurent-x-pow.md) | 259 | `result-track:a774cc663c9c8ebe2597cb9cb77020dc73a4895ff136510d19a41d6e1f5d77c3` |
| 29 | `theorem` | [_root_.Polynomial.toLaurent_C_mul_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/root-polynomial-tolaurent-c-mul-x-pow.md) | 265 | `result-track:ac1a1f4a8f518bca1423182c5cbc34f7f6a3bcd6d1c466cea99b029f59a0933e` |
| 30 | `instance` | [invertibleT](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/invertiblet.md) | 271 | `declaration-track:268ae6cb081d66e610ae1653b6b2438624165e02c473689435624440b6e3776d` |
| 31 | `theorem` | [invOf_T](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/invof-t.md) | 279 | `result-track:c510f59ea9f573c06443543dad8fc76a0c1b20edb16a41f713f50baac0a17e01` |
| 32 | `theorem` | [isUnit_T](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/isunit-t.md) | 284 | `result-track:33b374b507454d2043d7357b311f23ab4c36ab0d620ed5bd46e5454f2dc46e28` |
| 33 | `theorem` | [induction_on](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/induction-on.md) | 290 | `result-track:1bde7be57c759a428d8342a47e07f886db942790d1424400005dc779ee066b54` |
| 34 | `theorem` | [induction_on'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/induction-on-source-edition-2.md) | 323 | `result-track:aaa26074b5eb066af8ccee5c9af0b05e10f251063636c2a7d3eb1dff6a9d151c` |
| 35 | `theorem` | [commute_T](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/commute-t.md) | 332 | `result-track:a9ad2fa9c011ca52041bd1fef83978e81e60bd298d5bc8d8e61ae148f13ad5ab` |
| 36 | `theorem` | [T_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/t-mul.md) | 341 | `result-track:6696dd63caf84ddbc4372c2b4b3e925650dac4623968f64c90c2f539c380e7ba` |
| 37 | `def` | [trunc](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/trunc.md) | 349 | `declaration-track:b254bfbe55608f87792fc631e7cd0c656d348a7dda99ccee7c21e08150737fdf` |
| 38 | `theorem` | [trunc_C_mul_T](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/trunc-c-mul-t.md) | 354 | `result-track:b8fa7a60104543f7217fa6e55a9220250db9e2705b602ee4c3a9da58b399045e` |
| 39 | `theorem` | [leftInverse_trunc_toLaurent](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/leftinverse-trunc-tolaurent.md) | 377 | `result-track:d76546f9fbd6b0c09a40bd5bd4d5935fd4477f58cb4624bb2b4d031b5ef8e29d` |
| 40 | `theorem` | [_root_.Polynomial.trunc_toLaurent](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/root-polynomial-trunc-tolaurent.md) | 388 | `result-track:cd2b2a80df52601f83bcda9c8c0cda44a08024204acfcb3c7b1ca77b4bccef5b` |
| 41 | `theorem` | [_root_.Polynomial.toLaurent_injective](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/root-polynomial-tolaurent-injective.md) | 392 | `result-track:0908a368df22e65e3d3b0fd5eb4ef1a982de02228b87ab15926dcaebcc7cfcad` |
| 42 | `theorem` | [_root_.Polynomial.toLaurent_inj](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/root-polynomial-tolaurent-inj.md) | 398 | `result-track:91e4ca0e1f0a48f8b69d5db831bb570e251ab74de36bffbccb9bc490f791f8a9` |
| 43 | `theorem` | [_root_.Polynomial.toLaurent_ne_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/root-polynomial-tolaurent-ne-zero.md) | 402 | `result-track:47d43e458ec5d28b2d749154e6cd137f208449e8abb0524864014ed461c377dc` |
| 44 | `theorem` | [exists_T_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/exists-t-pow.md) | 406 | `result-track:14c20d503e341b5af31fd74d5fdfb6e44cb53a6dbdf9e4d34abcb2c950bd78fa` |
| 45 | `theorem` | [induction_on_mul_T](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/induction-on-mul-t.md) | 422 | `result-track:c9ab5501d982fce8cc1453d5c4648af8020f7df5abf897710da0249d69fe97bc` |
| 46 | `theorem` | [reduce_to_polynomial_of_mul_T](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/reduce-to-polynomial-of-mul-t.md) | 435 | `result-track:09fb90bf2d0d793265c6a4ff1fcd3996275f9ec292849e266fe5e36a3e7ab7b3` |
| 47 | `theorem` | [support_C_mul_T](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/support-c-mul-t.md) | 447 | `result-track:0bbb21a1b90e83f46bc0cd0a3d4ad1bb1bdccc643ecb3849abce09c0e644e939` |
| 48 | `theorem` | [support_C_mul_T_of_ne_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/support-c-mul-t-of-ne-zero.md) | 455 | `result-track:15e4667f29994782e9b848679b9be4cceb1dceb0c6f89cb6c7c7fe24e77cd4c9` |
| 49 | `theorem` | [toLaurent_support](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/tolaurent-support.md) | 465 | `result-track:7b917bc98e7acf0e6fe99c8d00e399350429aab24f9a957ae4338efb3d406c06` |
| 50 | `def` | [degree](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/degree.md) | 492 | `declaration-track:aeafb3840f31f8bfaa50b706b42944c447a7043b2dd2e36c81e36998c8c35690` |
| 51 | `theorem` | [degree_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/degree-zero.md) | 497 | `result-track:ed0709dc949d1d2c94c7353d5ac224cab9236815d784c9b75af9c803b1a44e6b` |
| 52 | `theorem` | [degree_eq_bot_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/degree-eq-bot-iff.md) | 502 | `result-track:ff3b4c45e5c1324f863f62101552ea9a7291ebd8f0cac2326e955d1bd2f07bef` |
| 53 | `theorem` | [degree_C_mul_T](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/degree-c-mul-t.md) | 516 | `result-track:20cf34cf79ff8ea8d105df8fc35f9c84103fce7e3ce50050f4c40273e5104ca2` |
| 54 | `theorem` | [degree_C_mul_T_ite](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/degree-c-mul-t-ite.md) | 528 | `result-track:fd992c75aa744874f6cb1742e70000ed1f36eba2d3b9140a75d04306555e1681` |
| 55 | `theorem` | [degree_T](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/degree-t.md) | 536 | `result-track:273bd82fb445e404055ac26e68449a9355af13b726e78cb3bd4d35b40d846390` |
| 56 | `theorem` | [degree_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/degree-c.md) | 542 | `result-track:e2d3f7f5cd3545293e6320e32317277d7a717d0bf4102f74d64d7a66c2651681` |
| 57 | `theorem` | [degree_C_ite](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/degree-c-ite.md) | 548 | `result-track:672cc6856aeda9c857b3876732b37ab535a5633788687e0c29d55561131cc1aa` |
| 58 | `theorem` | [degree_C_mul_T_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/degree-c-mul-t-le.md) | 557 | `result-track:c7dd54cb4310789f36e7eb590cca738938c866ea61895663a32af57ff3314035` |
| 59 | `theorem` | [degree_T_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/degree-t-le.md) | 564 | `result-track:f02ea3d0cba52b713f2d92e65f7eaf83780ac171d4d308283949897274202b99` |
| 60 | `theorem` | [degree_C_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/degree-c-le.md) | 569 | `result-track:f5d1794429b5fb4300e83515dace3c0c045e8e0a2da6b83a64c8b3da4a262499` |
| 61 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/instance-source-edition-2.md) | 578 | `declaration-track:cb47d0b92df692a2619cc0db6b8e9f1ff29198776482ed016bca83082ae5b4b5` |
| 62 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/instance.md) | 581 | `declaration-track:acc158d425b2c16ad8099a97deb4427963fc9aba891416d67585c350589e53d2` |
| 63 | `instance` | [algebraPolynomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/algebrapolynomial.md) | 590 | `declaration-track:6cd7d7b151ba245f3e7488eb04f30a8324ce447288626588c4f08929df58f2f1` |
| 64 | `theorem` | [algebraMap_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/algebramap-x-pow.md) | 596 | `result-track:654b4989463a030dcc14c6a074b2d6a1c94922668b50e722968a3c53cf21db0c` |
| 65 | `theorem` | [algebraMap_eq_toLaurent](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/algebramap-eq-tolaurent.md) | 602 | `result-track:7abd01dfc01ff9403b1b33ff92cea84451e9269b16f34048fa47ddbedfe143fb` |
| 66 | `theorem` | [isLocalization](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/islocalization.md) | 606 | `result-track:e4caf73faba64db53573eb9b9e5386cc38b0bad7f5100cdb31a5e8e8e18a56d3` |
| 67 | `def` | [invert](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/invert.md) | 634 | `declaration-track:7c30b8ed8fd2358813d39eedeffeaea69560bbc540559f46db980b731d351d31` |
| 68 | `lemma` | [invert_T](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/invert-t.md) | 636 | `result-track:87eacf3cfa8b2137d28b91407bd64b1d7e92566b566a1d241eee5d77a86f5967` |
| 69 | `lemma` | [invert_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/invert-apply.md) | 639 | `result-track:489858c44c68599e95c82e3930f2ba16c42ce260c1b71376b7723bd4b383c47f` |
| 70 | `lemma` | [invert_comp_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/invert-comp-c.md) | 641 | `result-track:5e62dbe7ce215f715b1beefc27273407a6e8b979aa5c904d16ce7266aad4a13c` |
| 71 | `lemma` | [invert_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/invert-c.md) | 643 | `result-track:9fbf4d6c6b51792eba55bee31a69059988960bc8e053cc8ec51b22d8a3fa7ee1` |
| 72 | `lemma` | [involutive_invert](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/involutive-invert.md) | 645 | `result-track:ea6b25af2b76fa98b0eca2e07486f339898ddf2750069797a539e39f268382b1` |
| 73 | `lemma` | [invert_symm](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/invert-symm.md) | 647 | `result-track:a000400a998c7ad2246c9e7769bab41a60683b6399f3708805963993c1b09bbf` |
| 74 | `lemma` | [toLaurent_reverse](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialLaurent.lean/declarations/tolaurent-reverse.md) | 649 | `result-track:a6aa7f9d0693d4d9ab11e01459f688d73bc7f944ba4ea4575ed290d53bfde219` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=508dc77ebb36b98536e5ae9e54bd3aad98ba9ed9b8454f27a1ab0ae5b24787b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Laurent/Variantf7d2c31537df9eefea56c0000cd70a36c88229b7715356107166e50cb6a8a59d.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Laurent/Variantf7d2c31537df9eefea56c0000cd70a36c88229b7715356107166e50cb6a8a59d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
