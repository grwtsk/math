# Verification target: Order Big Operators Expect Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f396a65996aaa209fcaf3b6bd67a156695628622",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variant152c2d1431773001dd7ac2944b0df631bb534a1397ba5403af1c7a9da30748c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpectNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpectNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f396a65996aaa209fcaf3b6bd67a156695628622`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variant152c2d1431773001dd7ac2944b0df631bb534a1397ba5403af1c7a9da30748c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Expect/Variant152c2d1431773001dd7ac2944b0df631bb534a1397ba5403af1c7a9da30748c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Expect` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Rat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Ring.Finset` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module.Rat` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [expect_eq_zero_iff_of_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpectNamespaced.lean/declarations/expect-eq-zero-iff-of-nonneg-source-edition-2.md) | 36 | `result-track:85ff8162ab338e2378bb59cd2d85945f2cbe12548756e703d90b95c1aee38213` |
| 2 | `lemma` | [expect_eq_zero_iff_of_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpectNamespaced.lean/declarations/expect-eq-zero-iff-of-nonpos-source-edition-2.md) | 40 | `result-track:f0df0cedf643fceb9313d8594d8a59d5473aa867f6d1dc051c5640245f625b0e` |
| 3 | `lemma` | [expect_le_expect](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpectNamespaced.lean/declarations/expect-le-expect.md) | 47 | `result-track:46b1cd1701fb349d64baf192996b170c4b46943af1c7a33869612ed4051d94b7` |
| 4 | `lemma` | [Order Big Operators Expect Namespaced](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpectNamespaced.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-expecteqzeroiffofnonneg.md) | 53 | `result-track:c303b17c26c294dc5ba7b6817e8fbbc53c64a5773b9825fc67430ef8a6a2db9d` |
| 5 | `lemma` | [expect_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpectNamespaced.lean/declarations/expect-le.md) | 56 | `result-track:6cc1d13d47bd43893adfdcd35f23693d49c9d5f4a3894be6973dfc9c6922f438` |
| 6 | `lemma` | [le_expect](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpectNamespaced.lean/declarations/le-expect.md) | 60 | `result-track:d1dc55ec231e1106ba95ec40d783b84f73b840b0ea3240805b785a988dbf15fd` |
| 7 | `lemma` | [expect_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpectNamespaced.lean/declarations/expect-nonneg.md) | 64 | `result-track:9f06f9db1a2c14857b624a93a52f57ddc6b9068e64a988f3a52767678f6161a8` |
| 8 | `lemma` | [le_expect_nonempty_of_subadditive_on_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpectNamespaced.lean/declarations/le-expect-nonempty-of-subadditive-on-pred.md) | 78 | `result-track:a346870c827101a5d913a1df6e95576bae99483a46ba5ab368160f39d2a95fb0` |
| 9 | `lemma` | [le_expect_nonempty_of_subadditive](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpectNamespaced.lean/declarations/le-expect-nonempty-of-subadditive.md) | 88 | `result-track:96e406fe9df7db8a54124bcaa25f07d25e1929ab4ea50c82ce2b3ddab4072fe3` |
| 10 | `lemma` | [le_expect_of_subadditive_on_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpectNamespaced.lean/declarations/le-expect-of-subadditive-on-pred.md) | 97 | `result-track:ae82cdf4baf1c61ae59f1b3a2a0578ce676e9fd52710d005024f2669c99bd258` |
| 11 | `lemma` | [le_expect_of_subadditive](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpectNamespaced.lean/declarations/le-expect-of-subadditive.md) | 108 | `result-track:3aaaf8c88b92b25f411e4ce9037022e2f574ba329497e3b236d44d3488d18a1b` |
| 12 | `lemma` | [expect_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpectNamespaced.lean/declarations/expect-pos.md) | 122 | `result-track:79b861b28d2e19166b342a60d0d3ebb33fdb8157f47b6fe65cbcc516a9ae76b2` |
| 13 | `lemma` | [exists_lt_of_lt_expect](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpectNamespaced.lean/declarations/exists-lt-of-lt-expect.md) | 133 | `result-track:e366e7ad3a242bf84bfee82829fa8081d22a39f02de3d379cac4ac65f27f27a1` |
| 14 | `lemma` | [exists_lt_of_expect_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpectNamespaced.lean/declarations/exists-lt-of-expect-lt.md) | 136 | `result-track:7c1ef93612379e5012c02539277d6c6832e7b73fcd99ce3561b641e683214743` |
| 15 | `lemma` | [abs_expect_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpectNamespaced.lean/declarations/abs-expect-le.md) | 144 | `result-track:a23cb999d9d167d409cddb3ca1711c394d0a5870c25385a5ad26b167d1508ef3` |
| 16 | `lemma` | [expect_mul_sq_le_sq_mul_sq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpectNamespaced.lean/declarations/expect-mul-sq-le-sq-mul-sq.md) | 154 | `result-track:27a032ce94588ad7d90ea1e58b7ae11d950aa9f98a15dd5f3fa6cfe2a918dcbb` |
| 17 | `lemma` | [expect_eq_zero_iff_of_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpectNamespaced.lean/declarations/expect-eq-zero-iff-of-nonneg.md) | 171 | `result-track:57f4c0661865441e7560375bb38a6257caa14a3e7a2e823aedb66003bc170622` |
| 18 | `lemma` | [expect_eq_zero_iff_of_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpectNamespaced.lean/declarations/expect-eq-zero-iff-of-nonpos.md) | 174 | `result-track:b4d3e1518e9fe374bd674ad729d6024deabaf9802235b09d377959a17bfbb696` |
| 19 | `def` | [evalFinsetExpect](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpectNamespaced.lean/declarations/evalfinsetexpect.md) | 189 | `declaration-track:5d629eaf54648cab51acbbec9bd084ea3eba2e0f61423585fadc08bea2f288f2` |
| 20 | `example` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpectNamespaced.lean/declarations/example-source-edition-3.md) | 218 | `declaration-track:b1f2e69235555e6d7d7eeaff53df24951205d21d08b1fad7cdd01a22582de221` |
| 21 | `example` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpectNamespaced.lean/declarations/example.md) | 219 | `declaration-track:64016b6d31bd64cfe4d205fa415cca973f37287cfa4826c13b6d3820b571cc8d` |
| 22 | `example` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpectNamespaced.lean/declarations/example-source-edition-4.md) | 220 | `declaration-track:ca5ad618a16060e11d4c53d74fd028d135fb6b2720ce27ae63115fb24e97e3dd` |
| 23 | `example` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpectNamespaced.lean/declarations/example-source-edition-5.md) | 221 | `declaration-track:cd569750d41e74a01b0e99164758a08559e4798cc50270b9c23a8a927ffacd93` |
| 24 | `example` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpectNamespaced.lean/declarations/example-source-edition-2.md) | 222 | `declaration-track:7432fdfe584e3a123d304aedc9ecfa317be277e23c6472ca4735f863195bad4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d59895e31c780a6f53a7e3ea1389ff8a6bb3f1f483a5cf2c3b22c58a252b5ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variant152c2d1431773001dd7ac2944b0df631bb534a1397ba5403af1c7a9da30748c2.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Expect/Variant152c2d1431773001dd7ac2944b0df631bb534a1397ba5403af1c7a9da30748c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
