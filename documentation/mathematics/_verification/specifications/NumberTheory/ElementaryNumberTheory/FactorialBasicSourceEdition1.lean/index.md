# Verification target: Factorial Basic Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6e6106f1bb15e7e3c38e173fa8f1843e566fd90",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant5912ca928f4bcf9a152c9f2fb64082d87f042c8a0fd34346383f09cfa0f4bdb5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6e6106f1bb15e7e3c38e173fa8f1843e566fd90`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant5912ca928f4bcf9a152c9f2fb64082d87f042c8a0fd34346383f09cfa0f4bdb5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Basic/Variant5912ca928f4bcf9a152c9f2fb64082d87f042c8a0fd34346383f09cfa0f4bdb5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Pow` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr.Core` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [factorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/factorial.md) | 30 | `declaration-track:a9d72ba40c26e660e686cb39ca6b677477ffb2fc425aac433df8c82b4fe7a7ec` |
| 2 | `theorem` | [factorial_zero](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/factorial-zero.md) | 43 | `result-track:6cd5acb0053fe9413dde838f4260c7d769ab4802cfdb0d695c157f7218bac878` |
| 3 | `theorem` | [factorial_succ](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/factorial-succ.md) | 47 | `result-track:4fdf86447ae4e1b534fb19c47bd10018e608e8beaab173f6f826fb34e2d2ef47` |
| 4 | `theorem` | [factorial_one](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/factorial-one.md) | 53 | `result-track:869913722f73a15f41377778078458cee6483530974167b2afbbbfbd69b1bd91` |
| 5 | `theorem` | [factorial_two](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/factorial-two.md) | 58 | `result-track:7b7e0debbab8a8910aa151a456bbd94630c4c1b1fed35eb3c8f087c281d484f3` |
| 6 | `theorem` | [mul_factorial_pred](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/mul-factorial-pred.md) | 62 | `result-track:c694fe040112bb860a3ec85ea3a03d6c7e62873c366204f86d21be9894a0848e` |
| 7 | `theorem` | [factorial_pos](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/factorial-pos.md) | 66 | `result-track:bc4fd067dc0cfc93a36d488301135c18489dde31162689caa3d40b10cfffb91f` |
| 8 | `theorem` | [factorial_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/factorial-ne-zero.md) | 71 | `result-track:4fcb19d3cc3e39d74026fc394a461f5187c3d72e8f66fc4f8a7ce178159138d4` |
| 9 | `theorem` | [factorial_dvd_factorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/factorial-dvd-factorial.md) | 75 | `result-track:7f995162fc6e0064ac838d54b903bdd10ceb11214bd3d342b67055daf620a0db` |
| 10 | `theorem` | [dvd_factorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/dvd-factorial.md) | 83 | `result-track:dccea1133eef93e65044184c89bc816a145ae6b6c0cba92b357827038afa5728` |
| 11 | `theorem` | [factorial_le](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/factorial-le.md) | 88 | `result-track:854245d9fdd625759f59437198f89d2ca9a20f742c6f30af2654a6e76933c3a9` |
| 12 | `theorem` | [factorial_mul_pow_le_factorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/factorial-mul-pow-le-factorial.md) | 93 | `result-track:39adc065ae6dc5737902ed17620949943761006a5b88e13304619bf72f8778d3` |
| 13 | `theorem` | [monotone_factorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/monotone-factorial.md) | 103 | `result-track:7e6d456dcef593a592dd672e6860fcec50e25e9c397e4bfa2fd5ff4454bb7778` |
| 14 | `lemma` | [factorial_le_of_le](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/factorial-le-of-le.md) | 107 | `result-track:25ee5dcbcddd310342c99dcfb070c8ab05ece35c64e7657d07c4e38c394f2992` |
| 15 | `theorem` | [factorial_lt](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/factorial-lt.md) | 109 | `result-track:209e2b68912a08281c41e29608c7f0010ff68c9834aa5dc557534eeb8f90feb0` |
| 16 | `lemma` | [factorial_lt_of_lt](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/factorial-lt-of-lt.md) | 121 | `result-track:7deb9e1876e27b51aefc113c96932859a266ad51314bdfa0c3b24020e8b6a167` |
| 17 | `theorem` | [one_lt_factorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/one-lt-factorial.md) | 123 | `result-track:d37f996f5b784b3448c8ced49a42726635f674a66cddb870aa3c32817fde2525` |
| 18 | `theorem` | [factorial_eq_one](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/factorial-eq-one.md) | 128 | `result-track:e8244ee1b0f32aeea33e8270f3845ae830b934e1a1bce43dd8378ee42694fa56` |
| 19 | `theorem` | [factorial_inj](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/factorial-inj.md) | 137 | `result-track:5073db0854c772f031bd9937997775fe7c4f3ac06510c299898fc8807779b88b` |
| 20 | `theorem` | [self_le_factorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/self-le-factorial.md) | 148 | `result-track:bbebb07e30028727f74b3850a708f7ec27fa18abf7144e0c8d141d875044dd08` |
| 21 | `theorem` | [lt_factorial_self](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/lt-factorial-self.md) | 155 | `result-track:720b67ced939cadb77a74d54e3305d200206a87f68fe23fe3cf515d1cc44a6c6` |
| 22 | `theorem` | [add_factorial_succ_lt_factorial_add_succ](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/add-factorial-succ-lt-factorial-add-succ.md) | 164 | `result-track:6e2f003d02d82afbec6628e8e1a612382c860beb31239a0218303641c8e0a0be` |
| 23 | `theorem` | [add_factorial_lt_factorial_add](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/add-factorial-lt-factorial-add.md) | 180 | `result-track:7dc52fa86b6adbe3b1fac20756dc633a044d9c430fb09a0854fc93656cd9d7a3` |
| 24 | `theorem` | [add_factorial_succ_le_factorial_add_succ](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/add-factorial-succ-le-factorial-add-succ.md) | 188 | `result-track:12110ac136748db1cafa45ffa2575277145792aa7e7e735fe5dcaebbfc499573` |
| 25 | `theorem` | [add_factorial_le_factorial_add](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/add-factorial-le-factorial-add.md) | 206 | `result-track:c29f1609372927da0d485e22c4c3afddc07d43640d2175cf8281bbd51f78bbd4` |
| 26 | `theorem` | [factorial_mul_pow_sub_le_factorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/factorial-mul-pow-sub-le-factorial.md) | 212 | `result-track:aaec8641d403e911c42ccae57df1aa8e2e3e5808122a2c74b2c2014e65a4bac2` |
| 27 | `def` | [ascFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/ascfactorial.md) | 232 | `declaration-track:da47142ad3642b82eb865116ca780c3912d1bd7e39fd9ac765ccce8360967ec5` |
| 28 | `theorem` | [ascFactorial_zero](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/ascfactorial-zero.md) | 238 | `result-track:79e9e86495dd99260da2b2acca85f3d2c32b909ef90f97d4c1dc3dd98c0f98f7` |
| 29 | `theorem` | [zero_ascFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/zero-ascfactorial.md) | 243 | `result-track:015f8af725043575cc7f8e04b2d2ce4f14cd731d5aa26e5da864f1ff5da06af2` |
| 30 | `theorem` | [ascFactorial_succ](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/ascfactorial-succ.md) | 249 | `result-track:d25b584ae4c9922407d8093a1f130e2c0c55f1dcce35958c6af9033e13eda5a3` |
| 31 | `theorem` | [succ_ascFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/succ-ascfactorial.md) | 254 | `result-track:30e921e1e08f995e799fb148c27c6c9e755f87e54923270dc0941fdb339d2ed0` |
| 32 | `theorem` | [factorial_mul_ascFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/factorial-mul-ascfactorial.md) | 266 | `result-track:1957369375953201019048c6d7a68eff58df1b18ee2fa735d55bed2949658e97` |
| 33 | `theorem` | [ascFactorial_eq_div](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/ascfactorial-eq-div.md) | 274 | `result-track:b623f8d8d03fd050e421320cd405be48301fcaef3c5a7a4225855b92b6052f88` |
| 34 | `theorem` | [ascFactorial_of_sub](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/ascfactorial-of-sub.md) | 280 | `result-track:d5edc8f3d10873865c06a635c0694583a63ec3af99234569f9a536022ab9f7d8` |
| 35 | `theorem` | [pow_succ_le_ascFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/pow-succ-le-ascfactorial.md) | 288 | `result-track:0d5a71b3571dddce95b87d69b5b92a8a5bc08f1e0107d20cd16c4beec1cfb968` |
| 36 | `theorem` | [pow_lt_ascFactorial'](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/pow-lt-ascfactorial-source-edition-2.md) | 295 | `result-track:b3227c64103dfeaded2a42df7447a207ce47389efd25fb03b24c8608c08af22a` |
| 37 | `theorem` | [pow_lt_ascFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/pow-lt-ascfactorial.md) | 302 | `result-track:0f91462a8e8511e299301980a51931f00507931159aaf47ecbf79c58e512ab63` |
| 38 | `theorem` | [ascFactorial_le_pow_add](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/ascfactorial-le-pow-add.md) | 308 | `result-track:8387e077dc53b6717689ab7ca12f2a75380fe95b4d5f7f753205b0417463f79c` |
| 39 | `theorem` | [ascFactorial_lt_pow_add](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/ascfactorial-lt-pow-add.md) | 318 | `result-track:5ea7028af70f04783acd35e4aa9b8bddff318766bd3acb4be8a6dd5c5d2bc31f` |
| 40 | `theorem` | [ascFactorial_pos](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/ascfactorial-pos.md) | 331 | `result-track:679d2ed70f36ff25953c501a1a4c57e60d298728a9f916622c9a03edf3383039` |
| 41 | `def` | [descFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/descfactorial.md) | 342 | `declaration-track:92c5f3185f3b966f1a86865f47eeca00701930dd7ead784bfac21bfd81f82fbf` |
| 42 | `theorem` | [descFactorial_zero](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/descfactorial-zero.md) | 348 | `result-track:aef1488d9e031c6d48482fe277b4c0a94855f0010a25adcfd8615e853d6c786a` |
| 43 | `theorem` | [descFactorial_succ](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/descfactorial-succ.md) | 353 | `result-track:44bed64caccf3a2d1da0ed9eee2659fc5863c30ef2d097bff64a7ebe78294a6a` |
| 44 | `theorem` | [zero_descFactorial_succ](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/zero-descfactorial-succ.md) | 357 | `result-track:d922672b099ff3e8a1efe3cdda01a6967b6ea64ac1da1bb0aa38a0ffb72bdd67` |
| 45 | `theorem` | [descFactorial_one](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/descfactorial-one.md) | 365 | `result-track:fb120e68355d11db25e38908083daa16503442ecbfdc030417730db481464ff3` |
| 46 | `theorem` | [succ_descFactorial_succ](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/succ-descfactorial-succ.md) | 379 | `result-track:96a84c6d9add04046e198b71cd93982df923d03b24ae5cf8fa1ee0890fb5101f` |
| 47 | `theorem` | [succ_descFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/succ-descfactorial.md) | 387 | `result-track:39f29414301aef5e3cc01729f2152a3bdd7db3d86f05137b8fdee8c6b7d88097` |
| 48 | `theorem` | [descFactorial_self](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/descfactorial-self.md) | 394 | `result-track:dc4b93248179267fcaa1e47d801246383848a088a5753b87ccad89a041349edf` |
| 49 | `theorem` | [descFactorial_eq_zero_iff_lt](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/descfactorial-eq-zero-iff-lt.md) | 400 | `result-track:0c22d448e730955295f67da24611930a2557c80c859291af81a0aecd84c991ad` |
| 50 | `theorem` | [add_descFactorial_eq_ascFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/add-descfactorial-eq-ascfactorial.md) | 411 | `result-track:fef35f742fc9af87983b54a01e62a44a6df537afa518887cde1ec6962d9c8ead` |
| 51 | `theorem` | [factorial_mul_descFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/factorial-mul-descfactorial.md) | 421 | `result-track:3363d7c181190cd3d736632d58284173ef80b478e41077df33e0965dcf7e5649` |
| 52 | `theorem` | [descFactorial_eq_div](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/descfactorial-eq-div.md) | 432 | `result-track:79027ab451bfbbf460b19d6b4cb0f5761411c6b5f5a7dbfc9514a50f71f23b4a` |
| 53 | `theorem` | [pow_sub_le_descFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/pow-sub-le-descfactorial.md) | 438 | `result-track:cb326148c446ac55de185981d340c3a5c01edbae012aebd7590e382a585f158c` |
| 54 | `theorem` | [pow_sub_lt_descFactorial'](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/pow-sub-lt-descfactorial-source-edition-2.md) | 447 | `result-track:e8232b274118433e74a99d72a0363d8bd8d0f32584ec3d5dc088c5547fcb80e7` |
| 55 | `theorem` | [pow_sub_lt_descFactorial](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/pow-sub-lt-descfactorial.md) | 463 | `result-track:219d6afbec5e604659fb79a8ce0d6d1f299aedaa5792daa5f107172fc4db93d8` |
| 56 | `theorem` | [descFactorial_le_pow](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/descfactorial-le-pow.md) | 472 | `result-track:10c4b0251c5f48d341bcd84fb95c9599a7cc875e16bcc2d02ab038da177d22e6` |
| 57 | `theorem` | [descFactorial_lt_pow](../../../../../NumberTheory/ElementaryNumberTheory/FactorialBasicSourceEdition1.lean/declarations/descfactorial-lt-pow.md) | 479 | `result-track:bf2d516592fddcdee93497f79a9bddd17ac9d38dac053e99d01be149cc734eb7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=880411146f1ebfbad03aefba147654d38dbb2de8a277409a64555fd7742576ad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant5912ca928f4bcf9a152c9f2fb64082d87f042c8a0fd34346383f09cfa0f4bdb5.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Basic/Variant5912ca928f4bcf9a152c9f2fb64082d87f042c8a0fd34346383f09cfa0f4bdb5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
