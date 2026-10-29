# Verification target: Odd Upper Row Dyadic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a97ddf6856ef369fb7bcca605c63cbb3dc4c47a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OddUpperRowDyadic/Variantc5c5f9c62cafbb44a5144a965ef27bccd9d63ea8942e31b6e4382197fbb2a18e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/OddUpperRowDyadicNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/OddUpperRowDyadicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a97ddf6856ef369fb7bcca605c63cbb3dc4c47a`.

Source path: `GRWTSK/Topology/GeneralTopology/OddUpperRowDyadic/Variantc5c5f9c62cafbb44a5144a965ef27bccd9d63ea8942e31b6e4382197fbb2a18e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OddUpperRowDyadic/Variantc5c5f9c62cafbb44a5144a965ef27bccd9d63ea8942e31b6e4382197fbb2a18e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.UpperRowInversion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Log` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [oddColumnRow](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/OddUpperRowDyadicNamespaced.lean/declarations/oddcolumnrow.md) | 20 | `declaration-track:79abca3df2338160bb20ab2f5f7fcf38fb8ec55b2d468005f3d697e578532276` |
| 2 | `theorem` | [oddColumnRow_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/OddUpperRowDyadicNamespaced.lean/declarations/oddcolumnrow-zero.md) | 25 | `result-track:106146e35ba9196eccae8ecf7718fbe8a38582403602cca190c2995d6426edfe` |
| 3 | `theorem` | [oddColumnRow_half_padding](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/OddUpperRowDyadicNamespaced.lean/declarations/oddcolumnrow-half-padding.md) | 38 | `result-track:10c1ad76ba6615ebf97ad55701cee410c2535566467724e0a40ee65bdfb0791a` |
| 4 | `theorem` | [oddColumnRow_two_difference](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/OddUpperRowDyadicNamespaced.lean/declarations/oddcolumnrow-two-difference.md) | 65 | `result-track:019fcc420ed16f0e9c7ee89380a931c2429cf32641f588f8d984db946773f3bd` |
| 5 | `theorem` | [dyadic_upper_row](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/OddUpperRowDyadicNamespaced.lean/declarations/dyadic-upper-row.md) | 75 | `result-track:036088263c613cf8f41189d7920f3ecefc11a239e7aa71f42aa99c160fb1c5dc` |
| 6 | `theorem` | [oddColumnRow_telescope](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/OddUpperRowDyadicNamespaced.lean/declarations/oddcolumnrow-telescope.md) | 81 | `result-track:395f349c22d5fa1938f0ade88e819347b7505bfd5cd9adb041e6b78a508320a1` |
| 7 | `theorem` | [oddColumnRow_dyadic_tail_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/OddUpperRowDyadicNamespaced.lean/declarations/oddcolumnrow-dyadic-tail-zero.md) | 96 | `result-track:10ad3566e30857e0c483bf78063f85a336e583569ca72640e88f4f0306dc16e3` |
| 8 | `theorem` | [oddColumnRow_eq_dyadic](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/OddUpperRowDyadicNamespaced.lean/declarations/oddcolumnrow-eq-dyadic.md) | 112 | `result-track:87d0262eb09e068685640cd6d96f3c0cf2e2f261dc61413b904ca2cc3d1ab76f` |
| 9 | `theorem` | [dyadicCutoff_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/OddUpperRowDyadicNamespaced.lean/declarations/dyadiccutoff-le.md) | 121 | `result-track:6c95b057e2fb1ae7f7d501c5c0521118990e0cd4e6460c3dbe7cf2d9db59a33d` |
| 10 | `theorem` | [positive_odd_sum_split](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/OddUpperRowDyadicNamespaced.lean/declarations/positive-odd-sum-split.md) | 133 | `result-track:83839f77b1f27df70523a67c621cc17afef2b6d24b103fd0e362d8709e09d5c3` |
| 11 | `theorem` | [odd_upper_interval_theta_eq_sampling](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/OddUpperRowDyadicNamespaced.lean/declarations/odd-upper-interval-theta-eq-sampling.md) | 143 | `result-track:1ce01266acc8b923071642a25613df9ffffc8f88c656ce21f8c40e68b87a20a4` |
| 12 | `theorem` | [clipped_odd_upper_row_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/OddUpperRowDyadicNamespaced.lean/declarations/clipped-odd-upper-row-eq.md) | 157 | `result-track:0bdeacb835d067380a3a5551144b4040142d95d39469393a6253d375d1d73916` |
| 13 | `theorem` | [full_odd_upper_row_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/OddUpperRowDyadicNamespaced.lean/declarations/full-odd-upper-row-eq.md) | 178 | `result-track:5f044b1565c26080ac598f83c91d152f5b52a05663cf64f74fb77e1efd8632bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12cfb2f04520f096e5851580896700ce4010aecd062ac5c52580052ad31aaebc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/OddUpperRowDyadic/Variantc5c5f9c62cafbb44a5144a965ef27bccd9d63ea8942e31b6e4382197fbb2a18e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/OddUpperRowDyadic/Variantc5c5f9c62cafbb44a5144a965ef27bccd9d63ea8942e31b6e4382197fbb2a18e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
