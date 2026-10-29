# Verification target: Pi Algebra

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5674e139bea84ded337fc5e7129b7f7943c5e7ed",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Algebra/Variant6f7fa4071677a70be73d77d4b7e20ea68ef6646f70ca71e6a9face17a2b23bc4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5674e139bea84ded337fc5e7129b7f7943c5e7ed`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Algebra/Variant6f7fa4071677a70be73d77d4b7e20ea68ef6646f70ca71e6a9face17a2b23bc4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Algebra/Variant6f7fa4071677a70be73d77d4b7e20ea68ef6646f70ca71e6a9face17a2b23bc4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Prod.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Unique` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sum.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instOne](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/instone.md) | 40 | `declaration-track:a54cf44cf9fc8f5e5aedea22d229f69b5826b2f559f453656ef31f8308f9e7a5` |
| 2 | `theorem` | [one_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/one-apply.md) | 46 | `result-track:0fb9c96d2a47a3fdb57f44384cdee61cdb545f079252c3d76c351664ed208960` |
| 3 | `theorem` | [one_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/one-def.md) | 52 | `result-track:deb4ca4336104df6e50986959867c2bf28a0e9a44d18778af47c9230d1524f2f` |
| 4 | `theorem` | [const_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/const-one.md) | 58 | `result-track:8525fe5ef4f96d2d3837b30d35bac64ee29d0b7e693d77f955d9401cb25ccaae` |
| 5 | `theorem` | [one_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/one-comp.md) | 64 | `result-track:479f9e99ca33204d90bc3bdd986fed7cce3f692764de42ffc825fa609021988e` |
| 6 | `theorem` | [comp_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/comp-one.md) | 70 | `result-track:56c8a451dc4223202dca385f512350f3ba83456c34021d80587b33cd86e13e73` |
| 7 | `instance` | [instMul](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/instmul.md) | 76 | `declaration-track:6a371f071d6dca5d53808effbaf039cbb892becc7545588160569c236c447669` |
| 8 | `theorem` | [mul_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/mul-apply.md) | 82 | `result-track:71241860f5dc638b96726699dbf8b737e02b6a601ce0e5d4c38cff675587d117` |
| 9 | `theorem` | [mul_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/mul-def.md) | 88 | `result-track:2ab72a06ce266d3ecf8eb24bc3eb718669bcd774bd5f7671937eb45414a4c8a6` |
| 10 | `theorem` | [const_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/const-mul.md) | 94 | `result-track:5ed111d97bd34846eda0da70777dd283c9beb76b8bcbd9db3c5a22d1a6009ac1` |
| 11 | `theorem` | [mul_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/mul-comp.md) | 100 | `result-track:b9a7625683af649b3bda9ebf01c3c7c7bed6ecd3e5ca83f5745baf686c1f23b5` |
| 12 | `instance` | [instSMul](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/instsmul.md) | 106 | `declaration-track:656a590d8ffd27d679f8099ac72477ed87c16f9137e45a2610c5bdc5b980c225` |
| 13 | `instance` | [instPow](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/instpow.md) | 112 | `declaration-track:c5dd7c37bad8eec59000d2cade7586f9e47357a321ef54251ee6969f6b40e4b9` |
| 14 | `theorem` | [pow_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/pow-apply.md) | 116 | `result-track:ee868cb28a66c8b8910be22de5cd739cce0030c7f20238f11cd323ae69ff3f33` |
| 15 | `theorem` | [pow_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/pow-def.md) | 123 | `result-track:3379bdb3a07cd3c34424614e2447342b97199d6762088b24539ff29b390a2a25` |
| 16 | `theorem` | [const_pow](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/const-pow.md) | 130 | `result-track:48b0d158e097c73ff7c31326caf061b13ec0e7bdbe167ca29c519ac538673088` |
| 17 | `theorem` | [pow_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/pow-comp.md) | 137 | `result-track:55d475d5a40efe612e2a4dc30b182255ce3bde66a11a7c3b34c6abf41e7454db` |
| 18 | `theorem` | [bit0_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/bit0-apply.md) | 152 | `result-track:aa5b898ba54819648cfe2668e025acd63897b4ca29f6257f551c26114f3e5ae4` |
| 19 | `theorem` | [bit1_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/bit1-apply.md) | 157 | `result-track:78040df8db7192293b13b313e04dc728560ee6dbd183926ef97b07464bbf6fad` |
| 20 | `instance` | [instInv](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/instinv.md) | 164 | `declaration-track:2dd48414a56ecba7d77abc109644bd84a4546b61450c3a15d627e92488b7a8ef` |
| 21 | `theorem` | [inv_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/inv-apply.md) | 170 | `result-track:96d06cdf6275f87bd4abf834ea8c8287f2f73c25454a92d0422084f582d95878` |
| 22 | `theorem` | [inv_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/inv-def.md) | 176 | `result-track:af0264f5c3e21d430c1db6e6ce82883ad8300c28452ea7016b0f506da5b04841` |
| 23 | `theorem` | [const_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/const-inv.md) | 182 | `result-track:5a98730d603011943365446b2385bcf8e7fa878198578086fcb1c24b37965b2d` |
| 24 | `theorem` | [inv_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/inv-comp.md) | 188 | `result-track:a398c0c352bbfa2c83cff983cf5d91e098030226579efff60876e11146fea7f4` |
| 25 | `instance` | [instDiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/instdiv.md) | 194 | `declaration-track:1933ec9fdff9aad28214cf9d43ee7196b0a53444b24a4dd2ad41d7cc555a32de` |
| 26 | `theorem` | [div_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/div-apply.md) | 200 | `result-track:e2f6bead08c9c22a1386bd96339809241e11cd62f7640674297cf649b6d46bce` |
| 27 | `theorem` | [div_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/div-def.md) | 206 | `result-track:6ea4a2c53e475f44314026a547c1c299c3e5937b1cea1039f336794d36eabf55` |
| 28 | `theorem` | [div_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/div-comp.md) | 212 | `result-track:cee595c820391c9c6da53b62751bf1b8893a19ba707cd2ced12361acbaa4dbf0` |
| 29 | `theorem` | [const_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/const-div.md) | 218 | `result-track:b90e3ced43240bcd2f835cb95f2110777b9ad0ddc2b4f94f61bcb4fc208366f8` |
| 30 | `def` | [mulSingle](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/mulsingle.md) | 231 | `declaration-track:6886b9f72d542fff453e3dca3a3996db0fc08a2a6f82f0fc437ad2744100e524` |
| 31 | `theorem` | [mulSingle_eq_same](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/mulsingle-eq-same.md) | 237 | `result-track:4030360c81759ed917325ef62992195dabfaadacebb8a28a993e867b683e6973` |
| 32 | `theorem` | [mulSingle_eq_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/mulsingle-eq-of-ne-source-edition-2.md) | 243 | `result-track:e2e94acc3de3a70f05cab09555479d297595490747f9c3fec748e43fb4f9ad54` |
| 33 | `theorem` | [mulSingle_eq_of_ne'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/mulsingle-eq-of-ne.md) | 251 | `result-track:393a9283425a0096ff5f585ad1ee39816ef8f983e21dd27fdbdcefb61361ee17` |
| 34 | `theorem` | [mulSingle_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/mulsingle-one.md) | 257 | `result-track:d3177892dd66b2a4c09044d456749549fb88947ebe9b833c3d3cf90aa773235a` |
| 35 | `theorem` | [mulSingle_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/mulsingle-apply.md) | 268 | `result-track:02a5c3bd4f8b9b0f95ed34add2ee513b69b47e03e7c5bf50681c3e9af87a79b5` |
| 36 | `theorem` | [mulSingle_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/mulsingle-comm.md) | 277 | `result-track:5a382586c79b075b63caa8ab8430915cf25c1fe09cda5be95e920153611f272c` |
| 37 | `theorem` | [apply_mulSingle](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/apply-mulsingle.md) | 284 | `result-track:9243c89cab8c4f318457ee6f09056521be759f5cdedf6bbf9df9bd06e6b08ba3` |
| 38 | `theorem` | [apply_mulSingle₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/apply-mulsingle-source-edition-2.md) | 291 | `result-track:c03c1600c034ab326da50f83b75c861963f13a13b9e1e25a99cefd5abd280817` |
| 39 | `theorem` | [mulSingle_op](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/mulsingle-op.md) | 302 | `result-track:06fc5ddde55a38bd3ef3d193df31ee4dacf097386e61eff81da1162b4195f64c` |
| 40 | `theorem` | [mulSingle_op₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/mulsingle-op-source-edition-2.md) | 310 | `result-track:df7c106eac5b5d106ce1989416f5b6bebd2d65c89935c3dbfef8a2f57166c20a` |
| 41 | `theorem` | [mulSingle_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/mulsingle-injective.md) | 320 | `result-track:adf0e7da20bbc519fc1e6537001fc7b47f571e4aa90e99c7fda3bbe3ad6d4818` |
| 42 | `theorem` | [mulSingle_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/mulsingle-inj.md) | 326 | `result-track:81e74bb08bc41438a88b909020d44c7a84c6eb48ab7943efee867190e9d5eca1` |
| 43 | `def` | [prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/prod.md) | 335 | `declaration-track:606eab665cc57e1a82f1cc82f0a129c7df7d680160ee01f1f10628504b438fba` |
| 44 | `theorem` | [prod_fst_snd](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/prod-fst-snd.md) | 341 | `result-track:b4ceb3aac22b0bf57b8f7e80a57808dc7bccc4cd05b069de93473a18993658a2` |
| 45 | `theorem` | [prod_snd_fst](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/prod-snd-fst.md) | 347 | `result-track:364041918df1c8dd2b6b3a8410c011c28b9034b670c9128e3c33dfe538cd8ff6` |
| 46 | `theorem` | [extend_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/extend-one.md) | 358 | `result-track:120c633655f8f1e12ab1bc24eaf52c1a86b53444130c8af002a021a75f8a2dda` |
| 47 | `theorem` | [extend_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/extend-mul.md) | 364 | `result-track:e0f074a82ccb9bdeb7f21c74ce2e15059ad4fa78c172d61c32582937659a7dff` |
| 48 | `theorem` | [extend_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/extend-inv.md) | 378 | `result-track:df7e68883851277f4afbbbfb325c9a0e19d0be36fb35e8061b3cdb890d709139` |
| 49 | `theorem` | [extend_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/extend-div.md) | 392 | `result-track:d9c337541737739d2964b6ce5646df9ab8811c8f4c32620fcc6d0389aaf43d3b` |
| 50 | `theorem` | [surjective_pi_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/surjective-pi-map.md) | 407 | `result-track:3d81f5516138ed051f575d597283429c9a6e55242f00925d8102932635d9affb` |
| 51 | `theorem` | [injective_pi_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/injective-pi-map.md) | 412 | `result-track:1b11c1cf74c896161185710b593d111570cc86089b4c5349908a0b6db05ef536` |
| 52 | `theorem` | [bijective_pi_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/bijective-pi-map.md) | 417 | `result-track:dd958657a48217ba7c1d0fea6bb3640e54b17c7768dc73f12fcbd9585620eb8e` |
| 53 | `def` | [uniqueOfSurjectiveOne](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/uniqueofsurjectiveone.md) | 426 | `declaration-track:88998f51b77e24cc6269e6be74bc50bbfd44209f681df26f9a5339f658751714` |
| 54 | `theorem` | [Subsingleton.pi_mulSingle_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/subsingleton-pi-mulsingle-eq.md) | 433 | `result-track:3b6a559d13a86434209ee134f4ea8f2578046361718c8ca1394b6fe5feb224f7` |
| 55 | `theorem` | [elim_one_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/elim-one-one.md) | 444 | `result-track:e5406c181f253a525afe49c040e056f0ab4688cf7f4c3271eda3af447eadbc3b` |
| 56 | `theorem` | [elim_mulSingle_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/elim-mulsingle-one.md) | 450 | `result-track:9977b4a2cebc9fd9279726b9284fe6c97dbf2355ea208c73b5df052e9c9774d9` |
| 57 | `theorem` | [elim_one_mulSingle](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/elim-one-mulsingle.md) | 455 | `result-track:8f5aa98f67f8987b10c31140b17de0212b71f7bd1a13a8e6ac519760755b675c` |
| 58 | `theorem` | [elim_inv_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/elim-inv-inv.md) | 464 | `result-track:dcb40c3a66977fc119838bae8336f20d169d26982b7fb14089c16641141b89d7` |
| 59 | `theorem` | [elim_mul_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/elim-mul-mul.md) | 470 | `result-track:3f5cb8b58e19ed88b41532906475f3341bcfb6c168bfcbb48bc26be0d7409e96` |
| 60 | `theorem` | [elim_div_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/declarations/elim-div-div.md) | 477 | `result-track:8684db183007d50af3d5dc995613d1d192727c6f86036e810bc6ab7f3c7d97bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c1b1a9e54d3c95d33e937cfe609f7ec22573a94c2d2a88985e933512f7c9b00 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Algebra/Variant6f7fa4071677a70be73d77d4b7e20ea68ef6646f70ca71e6a9face17a2b23bc4.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Algebra/Variant6f7fa4071677a70be73d77d4b7e20ea68ef6646f70ca71e6a9face17a2b23bc4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
