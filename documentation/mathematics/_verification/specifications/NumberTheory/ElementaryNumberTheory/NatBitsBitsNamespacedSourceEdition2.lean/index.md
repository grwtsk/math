# Verification target: Nat Bits Bits Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b45d01acc81f8c1e6a27761dedd5e18473728c18",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantb3afa262adf70b143eedfe64891d9b36b510b214a0c52d8bf6f90f9bd3d3b0db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b45d01acc81f8c1e6a27761dedd5e18473728c18`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantb3afa262adf70b143eedfe64891d9b36b510b214a0c52d8bf6f90f9bd3d3b0db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantb3afa262adf70b143eedfe64891d9b36b510b214a0c52d8bf6f90f9bd3d3b0db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.BinaryRec` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Convert` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GeneralizeProofs` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Says` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boddDiv2](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/bodddiv2.md) | 45 | `declaration-track:d3f344e100708638dc0f95129f3dfd2179a3d52c840325f548753f8192fee06c` |
| 2 | `def` | [div2](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/div2.md) | 53 | `declaration-track:e9933a6923961027dc4620344a0bbe9a2e6a1ed4f5df03836a79ae4fbdb62c1d` |
| 3 | `def` | [bodd](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/bodd.md) | 56 | `declaration-track:af238ec2c62c3d891b040241ac293ea66a27040ca59e4a525ab7aeb94a944547` |
| 4 | `lemma` | [bodd_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/bodd-zero.md) | 58 | `result-track:32519a582572a92bbe2bbb7481def77e07fded6246b34c582d3f0aa49c9c7da2` |
| 5 | `lemma` | [bodd_one](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/bodd-one.md) | 60 | `result-track:f6e7c327d11676a40d9831ff801c6e443554a855ed0e14b7f2efaa557a46b917` |
| 6 | `lemma` | [bodd_two](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/bodd-two.md) | 62 | `result-track:765e47ce5039818042c35d9af3ff8ee10cd299143d212e6b8b28e5bf4efd1bfa` |
| 7 | `lemma` | [bodd_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/bodd-succ.md) | 65 | `result-track:2aad153070f3562323c8d0a0eb82d1574766814ad8cdba2a997c6c15e78dd12c` |
| 8 | `lemma` | [bodd_add](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/bodd-add.md) | 71 | `result-track:dac5ec13c2574bc21e8ee77dde86a34f7b29db531774af1e6718d533bddd898e` |
| 9 | `lemma` | [bodd_mul](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/bodd-mul.md) | 77 | `result-track:8148f837573655af57666712f46c442445746b6f475d2227c5f441e84461d7ac` |
| 10 | `lemma` | [mod_two_of_bodd](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/mod-two-of-bodd.md) | 84 | `result-track:9f6305b2c3719e19584dfdbe916cb65521d83b7506b7bbf7252c33285d404526` |
| 11 | `lemma` | [div2_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/div2-zero.md) | 98 | `result-track:164865dba0523fb8702a58cc7eaa60e27358a23ff21da51cdce463f11b82cb63` |
| 12 | `lemma` | [div2_one](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/div2-one.md) | 100 | `result-track:57fc286bb03aeb647a67af05668bad2f01a898d9dc5db0c51e9ebf5e3851db41` |
| 13 | `lemma` | [div2_two](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/div2-two.md) | 102 | `result-track:e441ff663bcbc7f2c05f8ab1d4354797af807c5a54adf7fd60add694b3338929` |
| 14 | `lemma` | [div2_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/div2-succ.md) | 105 | `result-track:f1ba032a797706559e69cb240779e1d9ee6d9c93443a88031db33ea1a79189ba` |
| 15 | `lemma` | [bodd_add_div2](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/bodd-add-div2.md) | 111 | `result-track:0e4a2e1e61deca0a4bb1d57fe8e94a0c2639660c615693a0c04ada312f752d35` |
| 16 | `lemma` | [div2_val](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/div2-val.md) | 120 | `result-track:f09d9cff38bfa40956bf9b2532dd2da3144fce7b1393539f45b4a6e1fbe666b2` |
| 17 | `lemma` | [bit_decomp](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/bit-decomp.md) | 125 | `result-track:c705ae4c213415d42091d1e7ded041d7a6c8d158b3d9c667ddcd9332fab7aedd` |
| 18 | `lemma` | [bit_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/bit-zero.md) | 128 | `result-track:0e69d5490d260a754874b99fd2f8a87baefe7d28795c917c13364f55aa6fd30a` |
| 19 | `def` | [shiftLeft'](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/shiftleft.md) | 134 | `declaration-track:235e9872e60b200939d454e6fa878677937b38557346e3bfdc90af417520a9c5` |
| 20 | `lemma` | [shiftLeft'_false](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/shiftleft-false.md) | 139 | `result-track:5e19d92660cb0c0830cf91db2827d08ef5aceb6481ad7a33a0763841f6829daa` |
| 21 | `lemma` | [shiftLeft_eq'](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/shiftleft-eq.md) | 147 | `result-track:edd3cda5b7b4d96206abcee2783540c5f3cfcc97eab161d8438536d30a854d09` |
| 22 | `lemma` | [shiftRight_eq](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/shiftright-eq.md) | 148 | `result-track:6efce88d977ddd7dc48ca8e84e65919ec9635d7bbbae3fc0879b4291189e6a22` |
| 23 | `lemma` | [binaryRec_decreasing](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/binaryrec-decreasing.md) | 150 | `result-track:8e7d29c1f2d9da536b9b0213e8f06bc94b6520e576b2c2345e86aabe958b9f26` |
| 24 | `def` | [size](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/size.md) | 159 | `declaration-track:94223b5f8f8dea277737f3f155e0da4c41ef86a2fc0a6903a2de1689535db65a` |
| 25 | `def` | [bits](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/bits.md) | 164 | `declaration-track:b9e3a62d99c2e58fa155371544a0eff6094197a9ce0459d9dca3e4d7d4f24ff4` |
| 26 | `def` | [ldiff](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/ldiff.md) | 170 | `declaration-track:61d36c5a5dc789389fc9427d46def9cc2f6337d00d994061862f290137a8ab0a` |
| 27 | `lemma` | [bodd_bit](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/bodd-bit.md) | 175 | `result-track:91aca5aa958c6ccce6c3912955498ae281981ad7cb52f5dcb99a42bd30e0b4d4` |
| 28 | `lemma` | [div2_bit](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/div2-bit.md) | 181 | `result-track:0e52604de5c31d24bde9bdc1a2e32f19879cc18d107ca2e10078b9636745fcdf` |
| 29 | `lemma` | [shiftLeft'_add](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/shiftleft-add.md) | 186 | `result-track:577fa9c3dcc4abcfaa668f784ced600fb7809c296df14e535edf7e6e5b1d2618` |
| 30 | `lemma` | [shiftLeft'_sub](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/shiftleft-sub-source-edition-2.md) | 190 | `result-track:d434bc60e3537b377af0c785b8d09e1d43c10fdd1d9bd1a69ec89fac3d740838` |
| 31 | `lemma` | [shiftLeft_sub](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/shiftleft-sub.md) | 197 | `result-track:c0ddc22888298c49628c2a986c6a5b82d94686fe4023423b2ffa4b98d9e97c51` |
| 32 | `lemma` | [bodd_eq_one_and_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/bodd-eq-one-and-ne-zero.md) | 200 | `result-track:8c55261561e80d08e5af11cc786a359a3461d30ecfbba2f4e8a849d4b9f25e53` |
| 33 | `lemma` | [testBit_bit_succ](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/testbit-bit-succ.md) | 205 | `result-track:24663ce9f907b31176d1524d86608e3ced9e11ce0baf15d4a1906a8cb1f51cc1` |
| 34 | `theorem` | [boddDiv2_eq](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/bodddiv2-eq.md) | 217 | `result-track:197c572cfdbbbf678a67b5970a6b60381c1cc58bad26a1277ea23d2415a16ea6` |
| 35 | `theorem` | [div2_bit0](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/div2-bit0.md) | 220 | `result-track:980931cc7ccfe992057ddf5801386bcadd3a777942e4fc1ef1ec204b40503697` |
| 36 | `theorem` | [div2_bit1](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/div2-bit1.md) | 224 | `result-track:cbe040844e1855648556116b7b4b84c1c05db152ba1de8d9ee7fed5648354569` |
| 37 | `theorem` | [bit_add](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/bit-add.md) | 229 | `result-track:2051e73d884b0c94ad1f51aee203a315cdc81d652dc7214c4af28dd30d3e2412` |
| 38 | `theorem` | [bit_add'](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/bit-add-source-edition-2.md) | 233 | `result-track:b4bfedd473cc34beb59168477ca69f6191716b4a1c66ff4528b1abc91c89f207` |
| 39 | `theorem` | [bit_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/bit-ne-zero.md) | 237 | `result-track:f8775feadc95d8febb3903755acc809a5052bc30d63156184ead513c7195670b` |
| 40 | `theorem` | [bitCasesOn_bit0](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/bitcaseson-bit0.md) | 241 | `result-track:ef4e638098dae60f2de430acf57f1f95cbfd078fa881f8e135c1cacae54544f4` |
| 41 | `theorem` | [bitCasesOn_bit1](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/bitcaseson-bit1.md) | 246 | `result-track:d32b30e84a5ab507fdcc50704f13a442f2448a0007c6c3bb660af50d2ed18d3f` |
| 42 | `theorem` | [bit_cases_on_injective](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/bit-cases-on-injective.md) | 250 | `result-track:7bd0fbce31ef924a18c3ce4de935df9d3d49ce0af62746f229d2fa37ae2c21f1` |
| 43 | `theorem` | [bit_cases_on_inj](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/bit-cases-on-inj.md) | 257 | `result-track:6541260e29f4ade7ec3299c951fff27ee50a0747005c2b7bf75e88182b8306f2` |
| 44 | `lemma` | [bit_le](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/bit-le.md) | 261 | `result-track:7d78c575386eff6870ea1ad8c720305b566c0128f631f2b7c9ec416377cb4bda` |
| 45 | `lemma` | [bit_lt_bit](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/bit-lt-bit.md) | 265 | `result-track:f1b24edce868826ebdff800712945be08dce52244d1607dd4beeb78c99d099f9` |
| 46 | `theorem` | [zero_bits](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/zero-bits.md) | 270 | `result-track:e0dc65bee23b9ed2eb26bdc30926ae3564608571dfa01451f11548569882a5e3` |
| 47 | `theorem` | [bits_append_bit](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/bits-append-bit.md) | 273 | `result-track:8580ee945cf50ec7cb64a4931945d639b4bf6053f1e5755e834197033902325d` |
| 48 | `theorem` | [bit0_bits](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/bit0-bits.md) | 279 | `result-track:6b339f3de7bbf3f66b33c25befeb5c52a29631a9b77a277706efa54f5248a610` |
| 49 | `theorem` | [bit1_bits](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/bit1-bits.md) | 283 | `result-track:9da6a5981e4c5141882dc5ab5a0baafbb97b4b52909615a367fec69bea74e7a6` |
| 50 | `theorem` | [one_bits](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/one-bits.md) | 287 | `result-track:6bea80ac98b5c702aee24ddf4e4c7f230306cdae58927d2eef6026334a8714d3` |
| 51 | `theorem` | [bodd_eq_bits_head](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/bodd-eq-bits-head.md) | 295 | `result-track:6a9352385de0e579debdbd4ad9e1eac6fd363dc87272526e04d50fe01efe2d09` |
| 52 | `theorem` | [div2_bits_eq_tail](../../../../../NumberTheory/ElementaryNumberTheory/NatBitsBitsNamespacedSourceEdition2.lean/declarations/div2-bits-eq-tail.md) | 300 | `result-track:b7220f89be5b24d65bf731c2ba3e83fbd8b3bf48d7cfd12a17babcaaf3ef2d7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=187401a07e2fc0e8cc673ffae60038b5747ac5fbcc320059e74da246f78f50d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantb3afa262adf70b143eedfe64891d9b36b510b214a0c52d8bf6f90f9bd3d3b0db.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bits/Variantb3afa262adf70b143eedfe64891d9b36b510b214a0c52d8bf6f90f9bd3d3b0db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
