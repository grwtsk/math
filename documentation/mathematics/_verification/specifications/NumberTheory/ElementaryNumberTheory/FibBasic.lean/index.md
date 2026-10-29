# Verification target: Fib Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58c5880b4f13596d769acf791e76ea78ead1d16c",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58c5880b4f13596d769acf791e76ea78ead1d16c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.NatAntidiagonal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.GCD.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.BinaryRec` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Iterate` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Zify` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fib](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/fib.md) | 63 | `declaration-track:4646e909f78c31cb8dedabadd24097742b69373a0072e687fe5740e58ae0048f` |
| 2 | `theorem` | [fib_zero](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/fib-zero.md) | 67 | `result-track:edd79bb566367dd5d0265e08f7226221faa26d350d436414f501f8a3c199d309` |
| 3 | `theorem` | [fib_one](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/fib-one.md) | 71 | `result-track:cdc58d439679894d98f6943ab34cc1ab13e8094f7f97d483597cd77cd0d5d880` |
| 4 | `theorem` | [fib_two](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/fib-two.md) | 75 | `result-track:34e66a70e686c1d9ce9b5228532985e80b211967a77949e08a558fc43c6462de` |
| 5 | `theorem` | [fib_add_two](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/fib-add-two.md) | 79 | `result-track:daae93156900214b65e81c2b1d6b41d975c3836ce82d31d65cd4524514b677bd` |
| 6 | `lemma` | [fib_add_one](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/fib-add-one.md) | 82 | `result-track:7d2e8f71f392d67a27650b1e1aa100b27fd43e65a2743cc424953e51d69ac5c5` |
| 7 | `theorem` | [fib_le_fib_succ](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/fib-le-fib-succ.md) | 85 | `result-track:f7aa48d184c7f348c6921c8d0cd6f119f23b388e258c2f4f6190b3173a0f34ce` |
| 8 | `theorem` | [fib_mono](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/fib-mono.md) | 88 | `result-track:4837c3e0f874214a69ef9b5a13ec07546ed4d2925b4ec2bc1c77f1d27ccd856f` |
| 9 | `lemma` | [fib_eq_zero](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/fib-eq-zero.md) | 91 | `result-track:7be5c64850b145ed095e20a2407b2589c25c6e04d9a6b5d21528ea26a13f8109` |
| 10 | `lemma` | [fib_pos](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/fib-pos.md) | 96 | `result-track:6c695885759d9824c38f660048d490edfabedc0b51f05090d28199cb8d137e07` |
| 11 | `theorem` | [fib_add_two_sub_fib_add_one](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/fib-add-two-sub-fib-add-one.md) | 98 | `result-track:d530b2fbbac79a7e817a870f801212d750a56fd2ffa46801572cf719f8a72f02` |
| 12 | `theorem` | [fib_lt_fib_succ](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/fib-lt-fib-succ.md) | 101 | `result-track:9c549148bea7c36552368e15290d53f6db738d33a467a4e93f53904c880866a9` |
| 13 | `theorem` | [fib_add_two_strictMono](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/fib-add-two-strictmono.md) | 107 | `result-track:d4207b842131c249f336335f7acb63127d5daf70f6b0d6fd2d4a708f665657c7` |
| 14 | `lemma` | [fib_strictMonoOn](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/fib-strictmonoon.md) | 112 | `result-track:9f0fedd21bc12fe674115935fe95737a0c0bf6af376edd62992995ec1d06b71f` |
| 15 | `lemma` | [fib_lt_fib](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/fib-lt-fib.md) | 115 | `result-track:2d88092078f3f6486d1a3d8e4fae44d9c226a0044af8cc86bab0fb453481eea3` |
| 16 | `theorem` | [le_fib_self](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/le-fib-self.md) | 120 | `result-track:492bcdaa26afa7719da0cac588a37dd5b80e8dffb13ed2def0df51bd3647be99` |
| 17 | `lemma` | [le_fib_add_one](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/le-fib-add-one.md) | 130 | `result-track:e67327e7c016f526dd2a31736cba3c069ae0472d075ed3cc1f063fb91ab45dd4` |
| 18 | `theorem` | [fib_coprime_fib_succ](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/fib-coprime-fib-succ.md) | 140 | `result-track:429c01a1ab489423c3e2408643c8b7d9a3d24f34e7aeba6be5d33e85affabd8e` |
| 19 | `theorem` | [fib_add](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/fib-add.md) | 146 | `result-track:7dc9f6d518a6431a76ba66b908845b2b6bf8b8fde7fd66c602a0078cbc97f4f1` |
| 20 | `theorem` | [fib_two_mul](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/fib-two-mul.md) | 154 | `result-track:f5cb1ee326cdf53694ff52677b4f2ba2eb144d49b28e48ea8741ac5ed7fa9262` |
| 21 | `theorem` | [fib_two_mul_add_one](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/fib-two-mul-add-one.md) | 161 | `result-track:6ce32633299d8bed536bb4c7842f058adecb67dda57a16d38ca7bca0258d4e51` |
| 22 | `theorem` | [fib_two_mul_add_two](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/fib-two-mul-add-two.md) | 165 | `result-track:5c317d3d7141dac654c3c37cbf31428c1fcfeebc5c79103f277337e0556aa062` |
| 23 | `def` | [fastFibAux](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/fastfibaux.md) | 175 | `declaration-track:b62369e437307bee124eb58bd2c5d38a229311a17a084965c6b40a5e1d79bf70` |
| 24 | `def` | [fastFib](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/fastfib.md) | 182 | `declaration-track:5735c7ea0dbe3f8af8c1cf9fb0fb96663340f695d93b95b53886716fed587631` |
| 25 | `theorem` | [fast_fib_aux_bit_ff](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/fast-fib-aux-bit-ff.md) | 185 | `result-track:184f585120d7e3c3d4d54475a9d9b96492ba15794baf3330eb59d3880c63ba79` |
| 26 | `theorem` | [fast_fib_aux_bit_tt](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/fast-fib-aux-bit-tt.md) | 193 | `result-track:2a7e9da0a9b32bac00688a2522911d883c3ba976ff3216a1524d46cec7ed7606` |
| 27 | `theorem` | [fast_fib_aux_eq](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/fast-fib-aux-eq.md) | 201 | `result-track:0c923759945aa3f2fb3c283c03f1241fd24b57233531e574fedfd23eca571ff3` |
| 28 | `theorem` | [fast_fib_eq](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/fast-fib-eq.md) | 209 | `result-track:a93c2b8b8bb1464a9c96bf0b87b464bebd488e15886bfaf60b339c930f9d1940` |
| 29 | `theorem` | [gcd_fib_add_self](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/gcd-fib-add-self.md) | 211 | `result-track:a8bc08c01de9763040145c2cae5eb7c1309e91062c3d301ab77a1886136d8a51` |
| 30 | `theorem` | [gcd_fib_add_mul_self](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/gcd-fib-add-mul-self.md) | 225 | `result-track:3872a53db572a83461bd54459f34737224331934059b55b0a52cc5f13029431f` |
| 31 | `theorem` | [fib_gcd](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/fib-gcd.md) | 232 | `result-track:077707d9cf27db4f323b7085d51e684ea04012d448ffa26056e85d2cb3301c45` |
| 32 | `theorem` | [fib_dvd](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/fib-dvd.md) | 240 | `result-track:1ff6c9c004c10b14ba1ac4dfb9e3268692aa6621573870f3827cc9d77f49926d` |
| 33 | `theorem` | [fib_succ_eq_sum_choose](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/fib-succ-eq-sum-choose.md) | 243 | `result-track:41c0224600594d9ce3995aa0b0c6580d6cedd7f34fe0751353a509d81c7ba795` |
| 34 | `theorem` | [fib_succ_eq_succ_sum](../../../../../NumberTheory/ElementaryNumberTheory/FibBasic.lean/declarations/fib-succ-eq-succ-sum.md) | 249 | `result-track:c7e0ea0ddfdbfcc00439660429333599ac54edc1eac5d69f88c7c509e7958b54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3252b1226afc33abbd22989aacc0ebdb59bc32418499432269bfc631733eab3f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Basic/Variant50720946c5339afc6b50705103afc187d1b2bd8cde641556da152acdc16c4315.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
