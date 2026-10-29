# Verification target: Fib Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b30fb01e9f4bbf87c15ea08a1cd4e049d1647510",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant9ed486738472240c84ade1d4ac6e1ec8b94d80c262adc2391fec46a9f6c4566f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b30fb01e9f4bbf87c15ea08a1cd4e049d1647510`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant9ed486738472240c84ade1d4ac6e1ec8b94d80c262adc2391fec46a9f6c4566f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Basic/Variant9ed486738472240c84ade1d4ac6e1ec8b94d80c262adc2391fec46a9f6c4566f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.NatAntidiagonal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.GCD.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.BinaryRec` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Iterate` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Zify` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fib](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/fib.md) | 71 | `declaration-track:9ade14da24d17b0728daec99d50e52e49966425f891aecd3c60cdd8827268be1` |
| 2 | `theorem` | [fib_zero](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/fib-zero.md) | 75 | `result-track:967dd597d2fcbb5695dd8adca855a872c7b547d415717085822a39d79ec1886f` |
| 3 | `theorem` | [fib_one](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/fib-one.md) | 79 | `result-track:c8aa0737d5e8d3fef8e7593c68f7f0a11229ff0ef4a72165fffd8a573021790c` |
| 4 | `theorem` | [fib_two](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/fib-two.md) | 83 | `result-track:798c915a84bd680b164eb008ecc5fffc4ab33c9ff0cd49b87c242979bafec347` |
| 5 | `theorem` | [fib_add_two](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/fib-add-two.md) | 87 | `result-track:4c6149e32d707e3d0c42703c58f959a3546b3d47d37e3693d0e022740fca4d70` |
| 6 | `lemma` | [fib_add_one](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/fib-add-one.md) | 90 | `result-track:f5ad44640c9e0042832dcba8bdf0485bdeb6e65990f28bd897ed7d59d7f33d46` |
| 7 | `theorem` | [fib_le_fib_succ](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/fib-le-fib-succ.md) | 93 | `result-track:99ea63bfee257fc1091e59c7961850fbbc004a8bb0a4b49aadbb444e7501a0bb` |
| 8 | `theorem` | [fib_mono](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/fib-mono.md) | 96 | `result-track:21532dc647349495c58d2dffed8e3f3c7fcae28c2d1186af97155315854eb82c` |
| 9 | `lemma` | [fib_eq_zero](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/fib-eq-zero.md) | 99 | `result-track:0da34c2df789515d38696d6284150b7431dd64102ce3c831d992aedfca35fa47` |
| 10 | `lemma` | [fib_pos](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/fib-pos.md) | 104 | `result-track:c3369ef3db3f71e60b28c4e94b83b58ceee9c77f0ad9ae5d57ea3b9db6e041d6` |
| 11 | `theorem` | [fib_add_two_sub_fib_add_one](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/fib-add-two-sub-fib-add-one.md) | 106 | `result-track:b4116b7365a3346085e21ac85d4fe21ddfb243780c85e9a87dd632d924f08073` |
| 12 | `theorem` | [fib_lt_fib_succ](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/fib-lt-fib-succ.md) | 109 | `result-track:6643a1b246f61ce1ef6d59ffc38f9e1555192e8c46698fe7f338719c119a8bd4` |
| 13 | `theorem` | [fib_add_two_strictMono](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/fib-add-two-strictmono.md) | 115 | `result-track:e2a731e52841d24391a32037c8c9ea55cc58da2cd0e1e94e0b68abf05fab4193` |
| 14 | `lemma` | [fib_strictMonoOn](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/fib-strictmonoon.md) | 120 | `result-track:df1513c110e5179794d8a695e661ac7a9d9f7d6f971b477171fcd24d8dce479b` |
| 15 | `lemma` | [fib_lt_fib](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/fib-lt-fib.md) | 123 | `result-track:1df4ee147f23551c2734b13f23f944aae2cf4f5b43b665368bb104906b099dc7` |
| 16 | `theorem` | [le_fib_self](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/le-fib-self.md) | 128 | `result-track:e20a9c2bab19d0b9d2653e8fe6db051c569cf9b7c79db22e0da80373e6fec65b` |
| 17 | `lemma` | [le_fib_add_one](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/le-fib-add-one.md) | 138 | `result-track:8ffc8ebe237c49579231c35a6dd03dd776321ddfd3c57f5fd9c7d26dd477aa16` |
| 18 | `theorem` | [fib_coprime_fib_succ](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/fib-coprime-fib-succ.md) | 148 | `result-track:42eff79f07282f9c59ec174f866f4c9db561df1e4adacd87556019ded0d5217c` |
| 19 | `theorem` | [fib_add](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/fib-add.md) | 154 | `result-track:2c77fa3f078ae6f7868ea5eb81a840278ce53f68f8bd7b2faf3eef295c5209d1` |
| 20 | `theorem` | [fib_two_mul](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/fib-two-mul.md) | 162 | `result-track:b961f1054375a95c8eb12db366398e87a771d5e42c6f0b6e6d2a1288b7106b28` |
| 21 | `theorem` | [fib_two_mul_add_one](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/fib-two-mul-add-one.md) | 169 | `result-track:3612ca36f47f60b229d73aa0a55b691a1092f94bb3f1854d494ee6a4818e169a` |
| 22 | `theorem` | [fib_two_mul_add_two](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/fib-two-mul-add-two.md) | 173 | `result-track:1864465ab16a399f9fc5386e3eba2b380a69bb127b0f68fca49c3debe23c5eae` |
| 23 | `def` | [fastFibAux](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/fastfibaux.md) | 183 | `declaration-track:1d3e3c50efd347f6fdede1ac37ba72aaf964ccb78ceca93328427aa10e05c036` |
| 24 | `def` | [fastFib](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/fastfib.md) | 190 | `declaration-track:aadf5f55a180d791f0a1aa4acbb1a623f165a4eef8ef78d23fef74b7eba005d7` |
| 25 | `theorem` | [fast_fib_aux_bit_ff](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/fast-fib-aux-bit-ff.md) | 193 | `result-track:843eee9e3f0f3b9895eae97cf38291c427fe0379a71a97b40074cb3a0abc9bfc` |
| 26 | `theorem` | [fast_fib_aux_bit_tt](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/fast-fib-aux-bit-tt.md) | 201 | `result-track:fe1e5d053129f24633a70aedb7890012af5570c7b2f48a55dfd3e228e9cf9080` |
| 27 | `theorem` | [fast_fib_aux_eq](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/fast-fib-aux-eq.md) | 209 | `result-track:753cec07a63082c61933cb41dd6f58c412d8a7bb57aa6d22a5cf117db143fcda` |
| 28 | `theorem` | [fast_fib_eq](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/fast-fib-eq.md) | 217 | `result-track:aa603ac96e56715518ccdc1284b5cc402e81b6e6c67492075d167fbdcfd69444` |
| 29 | `theorem` | [gcd_fib_add_self](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/gcd-fib-add-self.md) | 219 | `result-track:91dbf467ddd9be4bea013aefc6b9c94472dbcf32bae403c82195b0224647cd73` |
| 30 | `theorem` | [gcd_fib_add_mul_self](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/gcd-fib-add-mul-self.md) | 233 | `result-track:dace1602ed96779f3ab801c22727ca2a476100d21d7c57a449c48678fc459702` |
| 31 | `theorem` | [fib_gcd](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/fib-gcd.md) | 240 | `result-track:fcb8cd0c3bd006bdb55f215e4bce106c35350bf8610f121952b22f54ec14fa31` |
| 32 | `theorem` | [fib_dvd](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/fib-dvd.md) | 248 | `result-track:d7ec97b403dba5587a365c3e1cfc60c474309ae66d09e0abdb456f5d61d889d7` |
| 33 | `theorem` | [fib_succ_eq_sum_choose](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/fib-succ-eq-sum-choose.md) | 251 | `result-track:8a0a5ab9b12e7bf801b9b3757255c32ce15dbcc7d2c41deed33bb1ef158db5bc` |
| 34 | `theorem` | [fib_succ_eq_succ_sum](../../../../../NumberTheory/ElementaryNumberTheory/FibBasicNamespaced.lean/declarations/fib-succ-eq-succ-sum.md) | 257 | `result-track:6e7ca04a57afbc48eab70c0f6ba4ab6af45d05081712838e36ea3ede49e2b9d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ccf3a0c2e12a6da9e142a522f6a6bd1cdd4cdbd5140f976883e7a2c4c88d004b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant9ed486738472240c84ade1d4ac6e1ec8b94d80c262adc2391fec46a9f6c4566f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Basic/Variant9ed486738472240c84ade1d4ac6e1ec8b94d80c262adc2391fec46a9f6c4566f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
