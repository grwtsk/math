# Verification target: Higher Power Tsum Audit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4bbbbd43672f6b85490124b574d6b1c195a8323",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantca3ad69738c0ca0c4fad0cec6f20e63861fec59fb8115f1e80614f2abdf78970.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4bbbbd43672f6b85490124b574d6b1c195a8323`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantca3ad69738c0ca0c4fad0cec6f20e63861fec59fb8115f1e80614f2abdf78970.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantca3ad69738c0ca0c4fad0cec6f20e63861fec59fb8115f1e80614f2abdf78970.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ProperPrimePowers` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSector` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Int` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsHigherPrimePower](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/ishigherprimepower.md) | 25 | `declaration-track:a17804b1a78cefe29a9a4f6eb10339993a323a368e9e10d13a6ff970ceedd237` |
| 2 | `def` | [higherPrimePowerIndices](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/higherprimepowerindices.md) | 28 | `declaration-track:360da4caefa9e704a685a2ba59ea4ded9e6695ba84fcdeca5501b201b6e04489` |
| 3 | `def` | [higherPrimePowerContribution](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/higherprimepowercontribution.md) | 33 | `declaration-track:7cf1b06ae6d9626036cecb3a1749c78319e417fd7e758c111bed0fea077e4e49` |
| 4 | `theorem` | [prime_power_representation_unique](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/prime-power-representation-unique.md) | 39 | `result-track:3bc51f5afb0ff8a272cfb690ecad0e52f5016d2c1c5fdff340b4d3dd0de0a4df` |
| 5 | `theorem` | [primeSquare_not_higher](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/primesquare-not-higher.md) | 45 | `result-track:b0332e20127898f51bc3e8eef6123c54d88f1ead891fb336e6648218fd909e93` |
| 6 | `theorem` | [primeSquare_not_prime](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/primesquare-not-prime.md) | 53 | `result-track:506ba8f4deacfe89b9a0dfe6ecb4ed2d796bb7f8a3991271def4cc6ff37112e8` |
| 7 | `theorem` | [higher_not_prime](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/higher-not-prime.md) | 58 | `result-track:8e80e52333d9ac1037192954c2798de0a7bb9de13538dc95141b81322c983f9b` |
| 8 | `theorem` | [nonprime_primePower_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/nonprime-primepower-iff.md) | 63 | `result-track:5170de8af7d3fcd493872a872cbbbb7a859a46c261ae7aac776c5d49a21a57a8` |
| 9 | `theorem` | [nonprime_weight_zero_of_outside](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/nonprime-weight-zero-of-outside.md) | 83 | `result-track:e4d63a3aa445d050469891838984b3dd2cc2df38ed576b4c231ca4ac03a125d5` |
| 10 | `theorem` | [primeSquare_higher_indices_disjoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/primesquare-higher-indices-disjoint.md) | 91 | `result-track:da99ad3e23202310d04aa58d07c405162d90d48d5b4282c3831610d438006399` |
| 11 | `theorem` | [properPrimePowerContribution_eq_square_add_higher](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/properprimepowercontribution-eq-square-add-higher.md) | 99 | `result-track:6a7c9828643a90e3d60e7655eab99911a9fb71fb6601a0db2c603291ae1fc032` |
| 12 | `theorem` | [primePowerContribution_eq_prime_square_higher](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/primepowercontribution-eq-prime-square-higher.md) | 120 | `result-track:4e1cbae4030ea05d6cf478afa9fb1aa590637e91891ef26c3849815fce66f136` |
| 13 | `theorem` | [eight_higher_not_square](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/eight-higher-not-square.md) | 128 | `result-track:38a5d387903fb9abf8fa104943340cc0cec037f143df697e7a668acda163d20e` |
| 14 | `theorem` | [eight_mem_higherPrimePowerIndices_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/eight-mem-higherprimepowerindices-iff.md) | 133 | `result-track:9802cc97fd3d148a83a1c1f50479fbf6e83bf653554f737c73ab03aa6c93d2f5` |
| 15 | `theorem` | [sqrt_nat_power](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/sqrt-nat-power.md) | 152 | `result-track:8d8b0d56e5c320fad66e76accdd11415a10e6ba4f9848043185fd071376168aa` |
| 16 | `theorem` | [higher_prime_power_weight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/higher-prime-power-weight.md) | 159 | `result-track:9b2fc4daba1a91aa89d718763eb14bf8b6e89d07cb870914255a36d31b0d5bbe` |
| 17 | `theorem` | [higher_prime_power_summand](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/higher-prime-power-summand.md) | 166 | `result-track:6f3cc6db1213f59c84f60208e2c2189d2de9a4fc872a7f7d7f05c2b1ca6ad137` |
| 18 | `abbrev` | [HigherPowerIndex](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/higherpowerindex.md) | 186 | `declaration-track:05f6674058159c8b4876dc41425f0035f8ea5b2b7277af2fc040955bf75b4e73` |
| 19 | `def` | [powerIndex](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/powerindex.md) | 189 | `declaration-track:6d6c4bd5e0ef56b6490f99bb190032f880e222c94eb3622bb8f734b9ca238dea` |
| 20 | `theorem` | [powerIndex_injective](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/powerindex-injective.md) | 192 | `result-track:5c3039e074f71e135dd274323ce48258697c1f34db0b498c1730e3a50cac7ba8` |
| 21 | `def` | [higherPairIndices](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/higherpairindices.md) | 202 | `declaration-track:8654e4fbffe31c48b8b0f8a440e6230e957e63382dea6005a1d96022a7683344` |
| 22 | `def` | [higherSourceTerm](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/highersourceterm.md) | 206 | `declaration-track:112453ff41912b1c463016e71c0241306b6407d5549510328320c1b3ac6fb44a` |
| 23 | `theorem` | [powerIndex_isHigher](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/powerindex-ishigher.md) | 211 | `result-track:0618903eb4bdf0ec3bd30c552469ccf049da759dbf2a337e02386970cfb12a80` |
| 24 | `theorem` | [powerIndex_two_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/powerindex-two-le.md) | 215 | `result-track:64c4118db5665a21b0802a436df89856490c0088d4c883058d1d906f54fc54cd` |
| 25 | `theorem` | [mem_higherPairIndices_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/mem-higherpairindices-iff.md) | 219 | `result-track:88a29172624370c9e6fd557690667846be9451d1f14eee804ef8e143466efcba` |
| 26 | `theorem` | [higherPairIndices_image](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/higherpairindices-image.md) | 226 | `result-track:2ec7df3d8bded22bd285737dc382eb990e3a4728bad5abed2d8a4edf73e7be8f` |
| 27 | `theorem` | [higherPrimePowerContribution_eq_finite_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/higherprimepowercontribution-eq-finite-sum.md) | 241 | `result-track:9c4aeb176291f20828540aded247dadf0b2c7ba0fa59374f7d0ca294cca42ea4` |
| 28 | `theorem` | [higherSourceTerm_zero_outside](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/highersourceterm-zero-outside.md) | 251 | `result-track:2e126ab394a477e0136ebd053772b505d82b5a27f4ae677f525693c04fd8a005` |
| 29 | `theorem` | [higherSourceTerm_finite_support](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/highersourceterm-finite-support.md) | 266 | `result-track:e0a92de84cdc203b12f8185cb7a739b278143af3072c51591973d3442d9bb763` |
| 30 | `theorem` | [higherSourceTerm_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/highersourceterm-summable.md) | 272 | `result-track:66e1d54136f2f21ee2342086e21d9c9643794afcaa4baffc594ac19271786344` |
| 31 | `theorem` | [higherSourceTerm_norm_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/highersourceterm-norm-summable.md) | 277 | `result-track:55197671ea08cf3a2da9b311d648891bec3645bad682ee12b8d8f75b04d24cd9` |
| 32 | `theorem` | [higherPrimePowerContribution_eq_tsum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumAuditNamespaced.lean/declarations/higherprimepowercontribution-eq-tsum.md) | 284 | `result-track:78dd29d914e0fd44801309b039bb8039a78fcb38bf438193df39fbb3ba8528c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8e5de39b942682b0d53344a79c05a5c1b55028b78ba0e23e912388c07ba86997 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantca3ad69738c0ca0c4fad0cec6f20e63861fec59fb8115f1e80614f2abdf78970.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/HigherPowerTsumAudit/Variantca3ad69738c0ca0c4fad0cec6f20e63861fec59fb8115f1e80614f2abdf78970.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
