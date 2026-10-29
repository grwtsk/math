# Verification target: Multiplicity Namespaced Multiplicity Eq Card Pow Dvd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "655a6fa17411b215a1fad083676425307b8d9cdd",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Multiplicity/Variant2cc211dec6235c8c86467d87ef2f25321237ff931509d09d47a4f04afa873cff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityNamespacedMultiplicityEqCardPowDvd.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityNamespacedMultiplicityEqCardPowDvd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `655a6fa17411b215a1fad083676425307b8d9cdd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Multiplicity/Variant2cc211dec6235c8c86467d87ef2f25321237ff931509d09d47a4f04afa873cff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Multiplicity/Variant2cc211dec6235c8c86467d87ef2f25321237ff931509d09d47a4f04afa873cff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GeomSum` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Bitwise` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Log` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Parity` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Multiplicity` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [multiplicity_eq_card_pow_dvd](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityNamespacedMultiplicityEqCardPowDvd.lean/declarations/multiplicity-eq-card-pow-dvd.md) | 67 | `result-track:d22a97b32954bb4d7f085465c283fa42ecfe2afb9db680e3559f2a9de88765fa` |
| 2 | `theorem` | [multiplicity_one](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityNamespacedMultiplicityEqCardPowDvd.lean/declarations/multiplicity-one.md) | 88 | `result-track:63fa1ac3638aca26f0258e2b185ce3523e1588f73479b0de622759631c07e39b` |
| 3 | `theorem` | [multiplicity_mul](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityNamespacedMultiplicityEqCardPowDvd.lean/declarations/multiplicity-mul.md) | 92 | `result-track:1955390ca19e7006a688a13a144ed4c10966b40b425fd48a898ed5dd21f8cd59` |
| 4 | `theorem` | [multiplicity_pow](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityNamespacedMultiplicityEqCardPowDvd.lean/declarations/multiplicity-pow.md) | 97 | `result-track:a889c341e9ba2d1eb77f65ca4ccf4c79e3caf5216e7af87c82238d5e6b71c706` |
| 5 | `theorem` | [multiplicity_self](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityNamespacedMultiplicityEqCardPowDvd.lean/declarations/multiplicity-self.md) | 102 | `result-track:e33f4d006ae37febbaa2336578e6675de1b8969f2ef8cffd866066952f8fe339` |
| 6 | `theorem` | [multiplicity_pow_self](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityNamespacedMultiplicityEqCardPowDvd.lean/declarations/multiplicity-pow-self.md) | 106 | `result-track:fe0524f91943b0c64ca1e3180bb0ac21c666679cbfee35d322bbfdb0683518ca` |
| 7 | `theorem` | [multiplicity_factorial](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityNamespacedMultiplicityEqCardPowDvd.lean/declarations/multiplicity-factorial.md) | 114 | `result-track:cc269cecdcfb613123e5dbd30965d754ada7be5961c083f670f9e1efea02de98` |
| 8 | `theorem` | [multiplicity_factorial_mul_succ](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityNamespacedMultiplicityEqCardPowDvd.lean/declarations/multiplicity-factorial-mul-succ.md) | 134 | `result-track:75f53daeeb2198997bc8f651a26ee5f1e4e2396337216cb317cda042f2304a15` |
| 9 | `theorem` | [multiplicity_factorial_mul](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityNamespacedMultiplicityEqCardPowDvd.lean/declarations/multiplicity-factorial-mul.md) | 160 | `result-track:25de3a88864e479eeec97a6710e88f4f99778465e4dcfae1daf8ce9d16e4404a` |
| 10 | `theorem` | [pow_dvd_factorial_iff](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityNamespacedMultiplicityEqCardPowDvd.lean/declarations/pow-dvd-factorial-iff.md) | 172 | `result-track:72f29bcbfaf39b07cf3d7207168f13abb87addc00f58ca342df0e89d55e1edd2` |
| 11 | `theorem` | [multiplicity_factorial_le_div_pred](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityNamespacedMultiplicityEqCardPowDvd.lean/declarations/multiplicity-factorial-le-div-pred.md) | 177 | `result-track:dcd6441f4cb20a6046e8db34deab30ca7eec5752fd879862f1ee4a76bb9cf978` |
| 12 | `theorem` | [multiplicity_choose_aux](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityNamespacedMultiplicityEqCardPowDvd.lean/declarations/multiplicity-choose-aux.md) | 183 | `result-track:6634eec454953a99023f4f9fdcade0b06db2524843285a694c47355684133bd2` |
| 13 | `theorem` | [multiplicity_choose](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityNamespacedMultiplicityEqCardPowDvd.lean/declarations/multiplicity-choose.md) | 199 | `result-track:96d6b2e97536700b6d4177cae5d7f7f3f8fa86d8ec7e2225242ec40f8bf73efe` |
| 14 | `theorem` | [multiplicity_le_multiplicity_choose_add](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityNamespacedMultiplicityEqCardPowDvd.lean/declarations/multiplicity-le-multiplicity-choose-add.md) | 218 | `result-track:879140ac1669bc06813b8b28d9e42f3a173af28255d9151f63bc3613f74946d9` |
| 15 | `theorem` | [multiplicity_choose_prime_pow_add_multiplicity](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityNamespacedMultiplicityEqCardPowDvd.lean/declarations/multiplicity-choose-prime-pow-add-multiplicity.md) | 231 | `result-track:0d52642947e7a61b0e890a460ea5652e9a43d9edc8438d991a9a5804c4a67bce` |
| 16 | `theorem` | [multiplicity_choose_prime_pow](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityNamespacedMultiplicityEqCardPowDvd.lean/declarations/multiplicity-choose-prime-pow.md) | 251 | `result-track:0476aaa8e788e719156ca791a6a70291948e1798d61723d17a32896f6f2bce41` |
| 17 | `theorem` | [dvd_choose_pow](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityNamespacedMultiplicityEqCardPowDvd.lean/declarations/dvd-choose-pow.md) | 258 | `result-track:5888f1b95393f8e9d49b48ee4cfdd7f1dc81001ed24a8dd3fc23be7bcb430c4a` |
| 18 | `theorem` | [dvd_choose_pow_iff](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityNamespacedMultiplicityEqCardPowDvd.lean/declarations/dvd-choose-pow-iff.md) | 267 | `result-track:004c555c8fdd4cf2c57df969f702381272061c623037bca12d4ffa888ac08139` |
| 19 | `theorem` | [multiplicity_two_factorial_lt](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityNamespacedMultiplicityEqCardPowDvd.lean/declarations/multiplicity-two-factorial-lt.md) | 274 | `result-track:4b3650c539b96cba65fd4ef6632d525739888909694d218382678ddcb1378f50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=da15ff2ffa28fbf30aa6f459981074cdf372e7aa8715ec4420fdcedc889967e3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Multiplicity/Variant2cc211dec6235c8c86467d87ef2f25321237ff931509d09d47a4f04afa873cff.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Multiplicity/Variant2cc211dec6235c8c86467d87ef2f25321237ff931509d09d47a4f04afa873cff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
