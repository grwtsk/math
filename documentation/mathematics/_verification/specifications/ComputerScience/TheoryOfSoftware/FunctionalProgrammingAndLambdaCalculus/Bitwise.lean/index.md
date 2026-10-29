# Verification target: Bitwise

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a9fb8263bce655ea8fad97c5570443aa2a583c0",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantc718b26d31b9e2472a7cba91b4abbe92a80570fa983d6e327179d19529ccaad2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a9fb8263bce655ea8fad97c5570443aa2a583c0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantc718b26d31b9e2472a7cba91b4abbe92a80570fa983d6e327179d19529ccaad2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantc718b26d31b9e2472a7cba91b4abbe92a80570fa983d6e327179d19529ccaad2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.Bool` — import line 13; external provider; requires a separately pinned dependency.
- `Std.Data.Nat.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Std.Tactic.RCases` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [one_div_two](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/one-div-two.md) | 20 | `result-track:d4463b65fe33efc96488cf8c774a5ceb44b8f61c298d108d5ee35dd871f09e0a` |
| 2 | `theorem` | [two_pow_succ_sub_one_div](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/two-pow-succ-sub-one-div.md) | 22 | `result-track:21ec8182ebf4c15a6b454e6f32faeee92ffdb5889a871ecc1ba87e1e684c376d` |
| 3 | `theorem` | [two_mul_sub_one](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/two-mul-sub-one.md) | 30 | `result-track:139deefc17d3e034aed8d8c83a8fd5e01fc7dc40e16328f368f6fe814e427bf7` |
| 4 | `def` | [div2Induction](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/div2induction.md) | 40 | `declaration-track:666306bcb03316bbff9f3a72ada684c794394879ad323ef259eced4dc511db64` |
| 5 | `theorem` | [zero_and](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/zero-and.md) | 52 | `result-track:112d5406a99635eca90207536cbe68c9192c4461bd78f6b3507e79ebb00f6098` |
| 6 | `theorem` | [and_zero](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/and-zero.md) | 54 | `result-track:c4fb5928cb5ddc630b88a9d9f544187395b47449231f8246ce88da6c7fc05be6` |
| 7 | `theorem` | [and_one_is_mod](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/and-one-is-mod.md) | 59 | `result-track:1381ff79478b104c07993cd2c2d8993bb420d16bd0f00f6c53a5fecd69addaee` |
| 8 | `theorem` | [zero_testBit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/zero-testbit.md) | 72 | `result-track:05a076be8c6b0d89655f904601d6bb3097b389511e7ede875303a674d0ba15c4` |
| 9 | `theorem` | [testBit_zero_is_mod2](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/testbit-zero-is-mod2.md) | 75 | `result-track:eac56db977aab45ab75191808fa28c6de9d9ba8623e588cc3dbc6352b267ff80` |
| 10 | `theorem` | [testBit_succ_div2](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/testbit-succ-div2.md) | 78 | `result-track:230b01b878a99387417374409b2e998db44cd061b69e30624d4d4009544e9d44` |
| 11 | `theorem` | [testBit_to_div_mod](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/testbit-to-div-mod.md) | 82 | `result-track:a259bb62970442666fe7106f571159b340548d3f8905abf3ac4a30bbdaa6d488` |
| 12 | `theorem` | [ne_zero_implies_bit_true](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/ne-zero-implies-bit-true.md) | 91 | `result-track:a9bbdcbe6a20ed9bb9b60294e08e3672c8eb64a1e44e104a53b0e8aca3b21aa7` |
| 13 | `theorem` | [ne_implies_bit_diff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/ne-implies-bit-diff.md) | 106 | `result-track:1b64c97d05cab3ccccb014f058ad5e5c0526d438f9b1e73cd469da5b4fae2dcc` |
| 14 | `theorem` | [eq_of_testBit_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/eq-of-testbit-eq.md) | 137 | `result-track:5349cced97fcd0400af72d21f1d7fbd74890e2735485c2f44ff47df349226403` |
| 15 | `theorem` | [ge_two_pow_implies_high_bit_true](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/ge-two-pow-implies-high-bit-true.md) | 145 | `result-track:08c10d8c84f7ed1ae35b8c71b20bab3db8c9c7d5b66e5c0d062c0673e1145847` |
| 16 | `theorem` | [testBit_implies_ge](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/testbit-implies-ge.md) | 167 | `result-track:5c498a40075d76c561cfa30a4a36dbb2c4e527f7f6bb6cc6e6953d1da5a47443` |
| 17 | `theorem` | [testBit_lt_two](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/testbit-lt-two.md) | 173 | `result-track:927e6d6a290fe87a1f3b7b56d9b1aaef19217c53b5d040b323183bbca50f7a58` |
| 18 | `theorem` | [lt_pow_two_of_testBit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/lt-pow-two-of-testbit.md) | 180 | `result-track:cef30df8fe42d17495d8ec83c077397cd0cf4f37f1cf862a2cd0bfec925ed5a3` |
| 19 | `theorem` | [succ_mod_two](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/succ-mod-two.md) | 189 | `result-track:ba248d9dbe2c42cf897ca3c2e044788a2b7825c25e0188aa405a9c9e5e6af53d` |
| 20 | `theorem` | [testBit_succ_zero](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/testbit-succ-zero.md) | 198 | `result-track:88ececbe274a7a08dbd0781ed605d2e7094be8c80a2be4288ab3bab92cfaadf3` |
| 21 | `theorem` | [testBit_two_pow_add_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/testbit-two-pow-add-eq.md) | 203 | `result-track:e353d5e29b40c58bc57513fbd938ab72e560806ba34e2d5ede644872d1f14035` |
| 22 | `theorem` | [testBit_mul_two_pow_add_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/testbit-mul-two-pow-add-eq.md) | 208 | `result-track:bc25a83813bf42666c79a0b7d678aaa8e77ae33f41b31ff34a7fdd915c17d996` |
| 23 | `theorem` | [testBit_two_pow_add_gt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/testbit-two-pow-add-gt.md) | 220 | `result-track:c03a7e559ba4e502cadc5984f7044e42cdfb2bf8e7a2dcac6c3532b8f6f2c264` |
| 24 | `theorem` | [testBit_mod_two_pow](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/testbit-mod-two-pow.md) | 234 | `result-track:8de829f66eb2fd88ce8e01e351337f87305d7cd5329764263f3d94d3d2a6c807` |
| 25 | `theorem` | [testBit_one_zero](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/testbit-one-zero.md) | 260 | `result-track:2b807352d8ce73a4abc0b93ab1339877b6cfba2303bd7aaae211a8ebe24fb833` |
| 26 | `theorem` | [testBit_two_pow_sub_one](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/testbit-two-pow-sub-one.md) | 262 | `result-track:909a0d044289e4151ce1bbf2ae7471fac92fa79d13011370da107a9684d7ce2b` |
| 27 | `theorem` | [testBit_bool_to_nat](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/testbit-bool-to-nat.md) | 279 | `result-track:5b51683e825aaf760aaeb223672c85a146c7d29ad8881862d50fe07813915138` |
| 28 | `theorem` | [testBit_bitwise](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/testbit-bitwise.md) | 288 | `result-track:b058c76a0d2cad43107dcff654e5af882cbbbba4c829bdaa9d805a0172a58a6e` |
| 29 | `theorem` | [eq_0_of_lt_one](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/eq-0-of-lt-one.md) | 317 | `result-track:f7b2fdeffe22d1dfe291a77f8069ec67640a9edeaf2121106cf91b393b1bb366` |
| 30 | `theorem` | [eq_0_of_lt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/eq-0-of-lt.md) | 325 | `result-track:5cdcdba4beecb64f47efa446bcfe3a824ea68ad29a75e3ef4de6dbb284183250` |
| 31 | `theorem` | [zero_lt_pow](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/zero-lt-pow.md) | 328 | `result-track:846645816d746e3da301163c2c6366c735f6f9f592acdd7362c9efe20c41f6d2` |
| 32 | `theorem` | [div_two_le_of_lt_two](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/div-two-le-of-lt-two.md) | 335 | `result-track:1204ce62588168bfb1c51c74b6235a72175f73f15be8a2b4d63fb9b619986e9a` |
| 33 | `theorem` | [bitwise_lt_two_pow](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/bitwise-lt-two-pow.md) | 340 | `result-track:4b933a489a7901b8d2c33965eb17cadcf7025232f36a56a2c85ddf027662a74d` |
| 34 | `theorem` | [testBit_and](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/testbit-and.md) | 368 | `result-track:79517904d773ca8d9ee69dee06d0698b47b6e2a615621016600536ae65b44bc2` |
| 35 | `theorem` | [and_lt_two_pow](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/and-lt-two-pow.md) | 371 | `result-track:5da3c0583054c4a8f77e2ba579f8b167ba28cc59df70a7020e64a76f48585ea1` |
| 36 | `theorem` | [and_pow_two_is_mod](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/and-pow-two-is-mod.md) | 380 | `result-track:3874695f8b521d09cc36be61572f586d18d3c4ae9aa2e202911aa3562fd92b83` |
| 37 | `theorem` | [and_pow_two_identity](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/and-pow-two-identity.md) | 386 | `result-track:bba08c983184f416bea4edfbf32e359b33fd166b44030bd99ea8b57448cb683e` |
| 38 | `theorem` | [or_zero](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/or-zero.md) | 392 | `result-track:9cf7885a5cfd35818df97ecca6446c6e4fa18b9679dc09527b14744e9ce37ed3` |
| 39 | `theorem` | [zero_or](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/zero-or.md) | 397 | `result-track:4f237696fa5306ff6167e74696bda89619bba116397e66a5037bfb9924cd11ce` |
| 40 | `theorem` | [testBit_or](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/testbit-or.md) | 402 | `result-track:9985e43d2242305fa3f4df2e4d4fc07ed9b0647194e5a8ebf1a1150e37c8d044` |
| 41 | `theorem` | [or_lt_two_pow](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/or-lt-two-pow.md) | 405 | `result-track:99a93fb09740cd2005fa301e6c3e47c58b9c18bd3277140149c60dc235ab1440` |
| 42 | `theorem` | [testBit_xor](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/testbit-xor.md) | 410 | `result-track:d63543d5bd7980e03f1833aebc0e54ade3f2012354d151a24f9815e45d549a98` |
| 43 | `theorem` | [xor_lt_two_pow](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/xor-lt-two-pow.md) | 413 | `result-track:c9aa96e8e02532df8753abb73b93bea41ae9b9debb67feb70760190150abf6f6` |
| 44 | `theorem` | [testBit_mul_pow_two_add](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/testbit-mul-pow-two-add.md) | 418 | `result-track:cd9561681ee39177752fd7e7320fa1345fc617c2074ceda80d405f2d83f37b86` |
| 45 | `theorem` | [testBit_mul_pow_two](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/testbit-mul-pow-two.md) | 450 | `result-track:cd7f710ae10821b808aad17659b0ab81fce8b620cf6430b8124f94d2b5e9c6a3` |
| 46 | `theorem` | [mul_add_lt_is_or](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/mul-add-lt-is-or.md) | 458 | `result-track:9294b6ada0003a0586a8ae7f4b718924aa433099e8e6c8b793780d5893d97c80` |
| 47 | `theorem` | [testBit_shiftLeft](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/testbit-shiftleft.md) | 474 | `result-track:00793e409fab011c6e56c5c61bc30d852d9665950c1969e230d8c55949e0d309` |
| 48 | `theorem` | [testBit_shiftRight](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Bitwise.lean/declarations/testbit-shiftright.md) | 478 | `result-track:b89718fdefb9ad8d6ad49403381453894f385f5c0aeef6080649fc6bb350e180` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8bd1bee09b09d7f7d92e28eafd5c1141ecda676ec5b2db2a17e7215d44f59597 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantc718b26d31b9e2472a7cba91b4abbe92a80570fa983d6e327179d19529ccaad2.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantc718b26d31b9e2472a7cba91b4abbe92a80570fa983d6e327179d19529ccaad2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
