# Verification target: Factorization Basic Prod Factorization Eq Prod Prime Factors

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27f661a0f628913e0e536f153412aafac6bf9355",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantd374623f49dc6e1dbf35693c6ffd5123e6ca4c7c790c6a7f843e7f159eb47350.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27f661a0f628913e0e536f153412aafac6bf9355`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantd374623f49dc6e1dbf35693c6ffd5123e6ca4c7c790c6a7f843e7f159eb47350.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Basic/Variantd374623f49dc6e1dbf35693c6ffd5123e6ca4c7c790c6a7f843e7f159eb47350.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Interval.Finset.SuccPred` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.GCD.BigOperators` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [factorization_eq_zero_of_lt](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/factorization-eq-zero-of-lt.md) | 26 | `result-track:344474aab253e29ef75f6c9067c54fd080f4fd7afdb172d31e56ecec4d9014cc` |
| 2 | `theorem` | [factorization_one_right](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/factorization-one-right.md) | 30 | `result-track:3f1b50b208b508f90d1d6502b1aee7b8fb719adce35925ea851af952efaa82ad` |
| 3 | `theorem` | [dvd_of_factorization_pos](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/dvd-of-factorization-pos.md) | 33 | `result-track:37351971b528c67ae6334122b795637c44a42daadd601c7bf432a3e7a012d297` |
| 4 | `theorem` | [factorization_eq_zero_iff_remainder](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/factorization-eq-zero-iff-remainder.md) | 36 | `result-track:92fe139868a7354d6bd0eb21656925fbe738305265735897f747575dcb569236` |
| 5 | `theorem` | [factorization_eq_zero_iff'](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/factorization-eq-zero-iff.md) | 47 | `result-track:ef0b9240f545f5d74093e0392553f7ebcc6d9babe95211efecc8bf09953d979f` |
| 6 | `lemma` | [prod_factorization_eq_prod_primeFactors](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/prod-factorization-eq-prod-primefactors.md) | 55 | `result-track:9bd54ed6758c1476577d694cb7848cb4279a4dae6286a07ff5022bddc961318a` |
| 7 | `lemma` | [prod_primeFactors_prod_factorization](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/prod-primefactors-prod-factorization.md) | 59 | `result-track:a5b772e80c9f58a95aef48df7cadb6d905a9aa6f07d21d4301de5c7f3ad76e1c` |
| 8 | `theorem` | [Prime.factorization_self](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/prime-factorization-self.md) | 67 | `result-track:6ddc6cf39c1e082079b339174986b221d2d4db247993662ed437107c75a4b300` |
| 9 | `theorem` | [eq_pow_of_factorization_eq_single](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/eq-pow-of-factorization-eq-single.md) | 70 | `result-track:e9d90709c435e07a49d758378865e39b2e8b98287143216b6c2d1cebbd659a9e` |
| 10 | `theorem` | [Prime.eq_of_factorization_pos](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/prime-eq-of-factorization-pos.md) | 76 | `result-track:a849bcc77e5e5e0190a86af024552df09b61be50db65d74184edff96473852c0` |
| 11 | `theorem` | [eq_factorization_iff](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/eq-factorization-iff.md) | 82 | `result-track:80ba49ac117b3f98b623e696310a566ce4c1112f5a4b24e7502109bb59854f53` |
| 12 | `theorem` | [factorizationEquiv_inv_apply](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/factorizationequiv-inv-apply.md) | 87 | `result-track:7dc12736ad56e227a82749cda75ef78ae30e26c71b38344099b5b772c663e2d4` |
| 13 | `theorem` | [ordProj_of_not_prime](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/ordproj-of-not-prime.md) | 92 | `result-track:c9952d1650780bcfa2d0784fc4061ad1fe4e3e43238a25f809b97eb7d64a8964` |
| 14 | `theorem` | [ordCompl_of_not_prime](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/ordcompl-of-not-prime.md) | 98 | `result-track:a23da2e1e3caa76ed0fba17f713678e3e83186b3ccfb1a9304896317ec2d1806` |
| 15 | `theorem` | [ordCompl_dvd](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/ordcompl-dvd.md) | 103 | `result-track:7ed4c94bb0d2cbfbf6f955abd258cf6b7cd86c1de84f831bbf4c261b77a313c7` |
| 16 | `theorem` | [ordProj_pos](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/ordproj-pos.md) | 108 | `result-track:7c98120ea5b41f5d15e3077aee0cae04f5d26f0cfea254ab6208607cfcddc4b2` |
| 17 | `theorem` | [ordProj_le](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/ordproj-le.md) | 113 | `result-track:d8a20998621b097c053872af482d0f4d444b5ea664aa37cd0cfed7abe93d3060` |
| 18 | `theorem` | [ordCompl_pos](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/ordcompl-pos.md) | 118 | `result-track:7567d01465301c41c0a10077eb092ec95e37082ca42e31dad6911fff267d12a6` |
| 19 | `theorem` | [ordCompl_le](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/ordcompl-le.md) | 126 | `result-track:50645082c131883ffa80d9151cfb8b9bb93d1ebd8d603cb7d9d787e5a015d408` |
| 20 | `theorem` | [ordProj_mul_ordCompl_eq_self](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/ordproj-mul-ordcompl-eq-self.md) | 131 | `result-track:83f590758b7ac0129c10a9043027d4c3ae579bed274514390879b22e71a26fa8` |
| 21 | `theorem` | [ordProj_mul](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/ordproj-mul.md) | 137 | `result-track:e2e03d3c5bc8b6dc45d2628e839c48e111397dafd4ab0739b2810e9d669dcdca` |
| 22 | `theorem` | [ordCompl_mul](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/ordcompl-mul.md) | 143 | `result-track:9a30d5dc51b8af911dab7ab583da0f5da2e18a43b80912c5e69b894ba51f2c37` |
| 23 | `theorem` | [factorization_lt](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/factorization-lt.md) | 154 | `result-track:2b51cd9fcdb54cc912c43f7bf86b6d19ebb90489006fd045616d5b66644cd705` |
| 24 | `theorem` | [factorization_le_of_le_pow](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/factorization-le-of-le-pow.md) | 161 | `result-track:d3a02269c199b28a547d2fdcdf0c097c45375065adce20ef757ba04e9bfeff08` |
| 25 | `theorem` | [factorization_prime_le_iff_dvd](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/factorization-prime-le-iff-dvd.md) | 168 | `result-track:61b49820d60d9bc1aa8a003d5adb5f1ab5b52dd3eec9ed33ceb10b229d881764` |
| 26 | `theorem` | [factorization_le_factorization_mul_left](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/factorization-le-factorization-mul-left.md) | 175 | `result-track:bfb09cc0550fb45aea1dfc41efe9851d1fd06067a979e97c8a84839b3180b2ea` |
| 27 | `theorem` | [factorization_le_factorization_mul_right](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/factorization-le-factorization-mul-right.md) | 182 | `result-track:a4490e6adfb63c6265964beae7087df9e382a653ff8c3e04e8e4afe8baa98f0c` |
| 28 | `theorem` | [Prime.pow_dvd_iff_le_factorization](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/prime-pow-dvd-iff-le-factorization.md) | 187 | `result-track:5e775c7a38d71c77f68d7f8462a37ead8999e25c96ee73a8311a7dbb4d68066c` |
| 29 | `theorem` | [Prime.pow_dvd_iff_dvd_ordProj](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/prime-pow-dvd-iff-dvd-ordproj.md) | 191 | `result-track:85386c828350991c49abcf31ab1473de548511e9e62f34f0f5d396dc70233890` |
| 30 | `theorem` | [Prime.dvd_iff_one_le_factorization](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/prime-dvd-iff-one-le-factorization.md) | 198 | `result-track:4b0e6d8105bf7ce58c91d30cb5bba63a4018737cf3b5f3fedc471a8945871ea7` |
| 31 | `theorem` | [exists_factorization_lt_of_lt](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/exists-factorization-lt-of-lt.md) | 202 | `result-track:da266244d738c60f6b9932bc03692fb94c3e8d28a95de5b8e4f1ed1a6bed5ef8` |
| 32 | `theorem` | [factorization_div](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/factorization-div.md) | 210 | `result-track:379d3fdc4d4ff177a8e0d665a8dc36ddb8c9ffe01715ae4719a53e105823525f` |
| 33 | `theorem` | [dvd_ordProj_of_dvd](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/dvd-ordproj-of-dvd.md) | 220 | `result-track:4501e6678d4efc270f4bee764ec001e17b8efb25ba079fc546290e0ca0630619` |
| 34 | `theorem` | [not_dvd_ordCompl](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/not-dvd-ordcompl.md) | 225 | `result-track:2f3b046d9cd436f3b347345d743883715a6c312cf4c4e63bfa4ca09315918264` |
| 35 | `theorem` | [coprime_ordCompl](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/coprime-ordcompl.md) | 232 | `result-track:dc7155159e4bdba43f66b8cd130446a529b26e5c97d204d412d5c93ddad1c29e` |
| 36 | `theorem` | [factorization_ordCompl](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/factorization-ordcompl.md) | 237 | `result-track:f894fe339c3fb9a33bb4eebd5852d5ab409663cb60fd01f0a1ee8ff28a10f8ff` |
| 37 | `theorem` | [dvd_ordCompl_of_dvd_not_dvd](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/dvd-ordcompl-of-dvd-not-dvd.md) | 252 | `result-track:42a0ed80c9c9a25f556a28d7eee3188204e049d85465af0cc5cecdbe11142177` |
| 38 | `theorem` | [exists_eq_pow_mul_and_not_dvd](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/exists-eq-pow-mul-and-not-dvd.md) | 268 | `result-track:4f63826462dc03874248ecf348b031895bb8ac6ba23c902824d4d318afe54334` |
| 39 | `theorem` | [exists_eq_two_pow_mul_odd](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/exists-eq-two-pow-mul-odd.md) | 276 | `result-track:fa90799418ec3df6b5b0a0cb33460ee71fda92dcad769f4fda2d8e5569b7945d` |
| 40 | `theorem` | [dvd_iff_div_factorization_eq_tsub](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/dvd-iff-div-factorization-eq-tsub.md) | 281 | `result-track:db24abdf42de42bb07f39ed26946b849b78305f83d4efd49f83b1fb654863587` |
| 41 | `theorem` | [ordProj_dvd_ordProj_of_dvd](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/ordproj-dvd-ordproj-of-dvd.md) | 293 | `result-track:1c16fdfdbfeb80b2c7f74d53b3fd6d7540936766ff6f603127fb7f85276bbbc2` |
| 42 | `theorem` | [ordProj_dvd_ordProj_iff_dvd](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/ordproj-dvd-ordproj-iff-dvd.md) | 303 | `result-track:93b07c38242853ca9d77c8214235cc16d4dcbbb09678ffc6c8fef4b994402268` |
| 43 | `theorem` | [ordCompl_dvd_ordCompl_of_dvd](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/ordcompl-dvd-ordcompl-of-dvd.md) | 315 | `result-track:921fb6d81dcd01aa19acfef0d902d2fdcdfd5357dd7e5d94e044f263b482d321` |
| 44 | `theorem` | [ordCompl_dvd_ordCompl_iff_dvd](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/ordcompl-dvd-ordcompl-iff-dvd.md) | 335 | `result-track:e3b00d0ebb16dfc77e0c2779e78ce568685598c21d73f11dca9ebfd0dfb21084` |
| 45 | `theorem` | [dvd_iff_prime_pow_dvd_dvd](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/dvd-iff-prime-pow-dvd-dvd.md) | 351 | `result-track:ecd1588d319a7c5fe646121667647f3102f100f48766a6be190a20d7ddc1c2b9` |
| 46 | `theorem` | [prod_primeFactors_dvd](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/prod-primefactors-dvd.md) | 364 | `result-track:b6c411dc1169cebe17ff967a59a3b5df2b36dcdd57accf3295ddaff90422a836` |
| 47 | `theorem` | [factorization_gcd](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/factorization-gcd.md) | 370 | `result-track:4f1860edfb65d953c890a6ec86595f44c360859f22ddae573bd6761543c693b3` |
| 48 | `theorem` | [factorization_lcm](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/factorization-lcm.md) | 394 | `result-track:70cc3bc671272e1ec89e56852e857dd4bf8123b649266166d6730f8a636cdd6d` |
| 49 | `lemma` | [factorizationLCMLeft_zero_left](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/factorizationlcmleft-zero-left.md) | 405 | `result-track:ab06ebee471d6ec5c99e5081df963e3e08aa6775766765748c5e40e91810cd64` |
| 50 | `lemma` | [factorizationLCMLeft_zero_right](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/factorizationlcmleft-zero-right.md) | 409 | `result-track:33453b6a87c9b698e934e587c45a3580ab5d411db121f9485d46d3bbd8662e16` |
| 51 | `lemma` | [factorizationLCRight_zero_left](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/factorizationlcright-zero-left.md) | 413 | `result-track:eeca831c26e5e6ceadadcc3ecc61798d063283bc972038f41fa92bc80d7920b1` |
| 52 | `lemma` | [factorizationLCMRight_zero_right](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/factorizationlcmright-zero-right.md) | 416 | `result-track:bdef12687087cf071299365379cc8bbe1f6c31d3d2506274ce5475785a88021f` |
| 53 | `lemma` | [factorizationLCMLeft_pos](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/factorizationlcmleft-pos.md) | 419 | `result-track:7f2e8fec08977e1caf770dcdf2f840010a761a92b22456e6aa92533192e760ee` |
| 54 | `lemma` | [factorizationLCMRight_pos](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/factorizationlcmright-pos.md) | 429 | `result-track:3ebddc463802a7336e8fb428d5d58601867f2cd526f90e7c8a14de4152d6e7e3` |
| 55 | `lemma` | [coprime_factorizationLCMLeft_factorizationLCMRight](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/coprime-factorizationlcmleft-factorizationlcmright.md) | 439 | `result-track:d8765c72077fa6f4450ba1482457b0be9bc89555c000512ad9cb83d503060f62` |
| 56 | `lemma` | [factorizationLCMLeft_mul_factorizationLCMRight](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/factorizationlcmleft-mul-factorizationlcmright.md) | 450 | `result-track:4464b37e53173352f4d48ad1ce3ac2a546d7e8af6d3841850d6fdebd1ac6fdae` |
| 57 | `lemma` | [factorizationLCMLeft_dvd_left](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/factorizationlcmleft-dvd-left.md) | 458 | `result-track:8c048d012ef06b2e154f69e28561088dd8e426d89c0fe9dd26c877b1445cb907` |
| 58 | `lemma` | [factorizationLCMRight_dvd_right](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/factorizationlcmright-dvd-right.md) | 472 | `result-track:fdcb75763666045f1cf184cce226fa0f48f59a512cccf2a255e323ee555d0797` |
| 59 | `theorem` | [prod_primeFactors_gcd_mul_prod_primeFactors_mul](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/prod-primefactors-gcd-mul-prod-primefactors-mul.md) | 487 | `result-track:d53942f8921dd2a97d2bb36b1d58bbb2d51cd7e9c66f464bc9fbf250173effc1` |
| 60 | `theorem` | [setOf_pow_dvd_eq_Icc_factorization](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/setof-pow-dvd-eq-icc-factorization.md) | 497 | `result-track:eda44620453c5c7ac0e809a96f8f4f90635077b8af61a850a791f2a295c4e91b` |
| 61 | `theorem` | [Icc_factorization_eq_pow_dvd](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/icc-factorization-eq-pow-dvd.md) | 504 | `result-track:6c03bd641c80065f5725ed7947a53242f53e4fed4fc62275893c13a1593c7a72` |
| 62 | `theorem` | [factorization_eq_card_pow_dvd](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/factorization-eq-card-pow-dvd.md) | 513 | `result-track:40cb5d3c02d683d6201c6c3cc08c67ebaa58d6768d7ecba63bec499b86daa5f9` |
| 63 | `theorem` | [Ico_filter_pow_dvd_eq](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/ico-filter-pow-dvd-eq.md) | 517 | `result-track:46caf31b050863c2b040d1689ba5eb86bde5ef072bdfe0a665bf1a15cb2ac2c0` |
| 64 | `theorem` | [factorization_eq_of_coprime_left](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/factorization-eq-of-coprime-left.md) | 530 | `result-track:6478294f63c5671c30debb88dcc286c742f7977e3824c12568aa196a552640f7` |
| 65 | `theorem` | [factorization_eq_of_coprime_right](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/factorization-eq-of-coprime-right.md) | 538 | `result-track:3b9487d95efd0f3a51e8995d7d70c9d35424d9e97c21cc27d67046f6588f65c8` |
| 66 | `theorem` | [eq_iff_prime_padicValNat_eq](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/eq-iff-prime-padicvalnat-eq.md) | 544 | `result-track:74305af53bd6bdfb9efd8dc256f6cd483747ef4a049d295d9c94bfca8fc33ad2` |
| 67 | `theorem` | [prod_pow_prime_padicValNat](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/prod-pow-prime-padicvalnat.md) | 555 | `result-track:430ed0abb957336365b87067baebefc3fa4d00c3a2ea4f12f2f9225e4087eb19` |
| 68 | `theorem` | [card_multiples](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/card-multiples-source-edition-2.md) | 575 | `result-track:92019c0fca8a636e3366a0b1da8262c30a317dd71521e0b4091c2115e0788249` |
| 69 | `theorem` | [Ioc_filter_dvd_card_eq_div](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/ioc-filter-dvd-card-eq-div.md) | 582 | `result-track:48859fd68e829159d53f2557775b4a00b670cd03f6d28c7c719da3778a92bc0f` |
| 70 | `lemma` | [card_multiples'](../../../../../NumberTheory/ElementaryNumberTheory/FactorizationBasicProdFactorizationEqProdPrimeFactors.lean/declarations/card-multiples.md) | 596 | `result-track:34dc91f2da82ffc1f2c9109774fbe8d6d91a167eba2da3f3c957e0392ebccda2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd41d8387ffddfe7fad411f6930f27376580713afc10f90b89a10a75140357d4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantd374623f49dc6e1dbf35693c6ffd5123e6ca4c7c790c6a7f843e7f159eb47350.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/Basic/Variantd374623f49dc6e1dbf35693c6ffd5123e6ca4c7c790c6a7f843e7f159eb47350.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
