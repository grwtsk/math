# Verification target: Signed Weighted Mangoldt Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab79fc8f41264567f32b4d0cfd52227cabf3fe74",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variant5489af606674e955bda7099442dd39019b567ae31ec2731ab8a0d4ffccad7a52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedWeightedMangoldtNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedWeightedMangoldtNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab79fc8f41264567f32b4d0cfd52227cabf3fe74`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variant5489af606674e955bda7099442dd39019b567ae31ec2731ab8a0d4ffccad7a52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variant5489af606674e955bda7099442dd39019b567ae31ec2731ab8a0d4ffccad7a52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Chebyshev` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Misc` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Stirling` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedMangoldt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedWeightedMangoldtNamespaced.lean/declarations/weightedmangoldt.md) | 35 | `declaration-track:3156bfe65b1540cc5689762e9daccf82df5650e64558078d99eca2461e99a4c5` |
| 2 | `theorem` | [log_factorial_eq_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedWeightedMangoldtNamespaced.lean/declarations/log-factorial-eq-sum.md) | 38 | `result-track:446ffc9c89a71baa627f684a398c482673883abfd75074e81d09bdd1ff6b88e2` |
| 3 | `theorem` | [factorial_identity](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedWeightedMangoldtNamespaced.lean/declarations/factorial-identity.md) | 48 | `result-track:8025f8d6db28e133f53f97f90c8fccb07b2bd5b0994acd7d0396de0ffb690fe3` |
| 4 | `theorem` | [natural_division_error_le_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedWeightedMangoldtNamespaced.lean/declarations/natural-division-error-le-one.md) | 55 | `result-track:d400fb3762efa5f2a4017ed2f21849a08c3dc9401570cbdd9f7ea502ad495fa4` |
| 5 | `theorem` | [factorial_le_scaled_weighted](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedWeightedMangoldtNamespaced.lean/declarations/factorial-le-scaled-weighted.md) | 66 | `result-track:73351a673f4a7ab8ba10473578e88879a49fcc802e2c3688d02f30a678c1b465` |
| 6 | `theorem` | [scaled_weighted_le_factorial_add_psi](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedWeightedMangoldtNamespaced.lean/declarations/scaled-weighted-le-factorial-add-psi.md) | 78 | `result-track:f69edab47e68a76ee8a5612c3bba05ade6da108c1ddc750c2a3cc490ec4eb830` |
| 7 | `theorem` | [log_factorial_lower](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedWeightedMangoldtNamespaced.lean/declarations/log-factorial-lower.md) | 96 | `result-track:baff0c9f04f6e3dcc8baccfd7f50b222015d4922e27d310b3033ef8c07f59f9a` |
| 8 | `theorem` | [log_factorial_upper](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedWeightedMangoldtNamespaced.lean/declarations/log-factorial-upper.md) | 103 | `result-track:6eb91297bd420443ab7f7019c79578954d6cc626024c2766d8938ce1e0c3748f` |
| 9 | `theorem` | [weightedMangoldt_sub_log_bounds](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedWeightedMangoldtNamespaced.lean/declarations/weightedmangoldt-sub-log-bounds.md) | 110 | `result-track:1d348a29440e271d333172e8096252e7eae5008f664b2ede0021f73d3bb3685f` |
| 10 | `theorem` | [weightedMangoldt_mertens](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedWeightedMangoldtNamespaced.lean/declarations/weightedmangoldt-mertens.md) | 120 | `result-track:1dfb8d5986bc8003716eef2058c2853d33efd43edd5f07eea29eb1b7d089f2d2` |
| 11 | `def` | [primeCoefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedWeightedMangoldtNamespaced.lean/declarations/primecoefficient.md) | 126 | `declaration-track:2a8541180c80cc427e79719fe478c112aeaaf293f1fa06835a003faa0601bc68` |
| 12 | `def` | [properPowerCoefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedWeightedMangoldtNamespaced.lean/declarations/properpowercoefficient.md) | 128 | `declaration-track:c7a77de130a2694779784145c5e39073d1de46c3ebd31bd233b9f51d51ebc58d` |
| 13 | `def` | [weightedPrime](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedWeightedMangoldtNamespaced.lean/declarations/weightedprime.md) | 130 | `declaration-track:4cbb556fabd290522adb2279e3644411654c892841b71e6669bd09d47ab4f24b` |
| 14 | `theorem` | [properPowerCoefficient_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedWeightedMangoldtNamespaced.lean/declarations/properpowercoefficient-nonneg.md) | 132 | `result-track:6910f09d25ff0eb4e2ec2c18e6cedafd1e0b8884db038bcf774cb24df5fbf531` |
| 15 | `theorem` | [properPower_prefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedWeightedMangoldtNamespaced.lean/declarations/properpower-prefix.md) | 137 | `result-track:f9c361fef35870ac1bf9f0b873ede736b2498994280a119c37829fbbe02972b1` |
| 16 | `theorem` | [weighted_difference](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedWeightedMangoldtNamespaced.lean/declarations/weighted-difference.md) | 146 | `result-track:99dd1a994761c563e36082a446d67b35d7d911636def697bebaf6858678cdc9c` |
| 17 | `theorem` | [weighted_difference_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedWeightedMangoldtNamespaced.lean/declarations/weighted-difference-nonneg.md) | 152 | `result-track:9475a14925d9823c55687845cd557205b6384fbbd5d0d450874279f555ba3b65` |
| 18 | `theorem` | [weighted_difference_abel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedWeightedMangoldtNamespaced.lean/declarations/weighted-difference-abel.md) | 157 | `result-track:140f479ed62df3e3dba7261c638b965f188278e5e989a0b1077917aea059f616` |
| 19 | `theorem` | [properPower_integrand_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedWeightedMangoldtNamespaced.lean/declarations/properpower-integrand-integrable.md) | 196 | `result-track:93c6a713ee952492137ad96344a1fb34fb3105412bc5ca02efd3f438d0708925` |
| 20 | `theorem` | [sqrt_div_square](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedWeightedMangoldtNamespaced.lean/declarations/sqrt-div-square.md) | 209 | `result-track:aa2d699ea4c2d01b7b4478ea817f24528364bc1e9a1c7de5ba5cacb125ecfe91` |
| 21 | `theorem` | [weighted_difference_bound_of_sqrt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedWeightedMangoldtNamespaced.lean/declarations/weighted-difference-bound-of-sqrt.md) | 214 | `result-track:7ba634dff846cb542f0143a48426ae199b35a2b781bf985442b4807ed2323c0f` |
| 22 | `theorem` | [weighted_difference_uniformly_bounded](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedWeightedMangoldtNamespaced.lean/declarations/weighted-difference-uniformly-bounded.md) | 257 | `result-track:2d309d667afedd6ffeff25d0b7b024f731d438f964a4264cbe0ce2b74acd1eea` |
| 23 | `theorem` | [weightedPrime_mertens](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedWeightedMangoldtNamespaced.lean/declarations/weightedprime-mertens.md) | 267 | `result-track:7afa4e0d3484db830e9ce116e759d5881d262511d029f2ed5b0219c48ea6a41c` |
| 24 | `theorem` | [weightedPrime_eq_filtered](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedWeightedMangoldtNamespaced.lean/declarations/weightedprime-eq-filtered.md) | 277 | `result-track:a114d6501419e768c87b14746307d49378ca18540352246ded049ba2168b2054` |
| 25 | `theorem` | [log_floor_error](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedWeightedMangoldtNamespaced.lean/declarations/log-floor-error.md) | 285 | `result-track:1b190d9b193aa2da74ab30a4a86a734100dda633db67de50e689968e604de98b` |
| 26 | `theorem` | [weightedPrime_mertens_real](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedWeightedMangoldtNamespaced.lean/declarations/weightedprime-mertens-real.md) | 302 | `result-track:73e499f430b80280703a13f729988b61101549162be5dde9de3be32afc18c100` |
| 27 | `theorem` | [weightedPrime_mertens_log_cutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedWeightedMangoldtNamespaced.lean/declarations/weightedprime-mertens-log-cutoff.md) | 322 | `result-track:191f4ee0874233746d31c6bf5bc0fbd1c86a5132353a9cfc5b044adfd0a4aaac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e1185d03bda1c2c5810ae6631560866e3358ce9a420c92df6c6cbc9bf29d8b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variant5489af606674e955bda7099442dd39019b567ae31ec2731ab8a0d4ffccad7a52.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variant5489af606674e955bda7099442dd39019b567ae31ec2731ab8a0d4ffccad7a52.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
