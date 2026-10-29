# Verification target: Source Prime Cumulative Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35721b27bd3356dd87185f2a74e8d7632d535b5b",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7f9a0a3436ea7b2fbace0e849255355674747b5fb18054185337d4c8861a1293.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeCumulativeEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeCumulativeEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35721b27bd3356dd87185f2a74e8d7632d535b5b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7f9a0a3436ea7b2fbace0e849255355674747b5fb18054185337d4c8861a1293.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7f9a0a3436ea7b2fbace0e849255355674747b5fb18054185337d4c8861a1293.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourcePrimeDisclosureActual` — import line 1; external provider; requires a separately pinned dependency.
- `SourceDivisorCounterterms` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Max` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Module` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedDivisors](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeCumulativeEdition2.lean/declarations/weighteddivisors.md) | 29 | `declaration-track:707e592734afdc26c9d4ddb9d32724f03a86d9aa970311f0e97b4951c87428f9` |
| 2 | `theorem` | [weightedDivisors_insert](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeCumulativeEdition2.lean/declarations/weighteddivisors-insert.md) | 32 | `result-track:f5c9b054e5e403979d21f45c62acf0693b469b80a7d8b81fb3df687e76234381` |
| 3 | `theorem` | [weightedDivisors_coverage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeCumulativeEdition2.lean/declarations/weighteddivisors-coverage.md) | 53 | `result-track:49b314bc87efe9884ae267fcde8b35a7f07e1f86689e24aa0a1a9898e3f29ef7` |
| 4 | `theorem` | [weightedDivisors_mixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeCumulativeEdition2.lean/declarations/weighteddivisors-mixed.md) | 82 | `result-track:8945ea145372e2a39e698590f137adfe31365349f7680524ba4f654a0c10802b` |
| 5 | `theorem` | [weightedDivisors_largest_prime_ledger](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeCumulativeEdition2.lean/declarations/weighteddivisors-largest-prime-ledger.md) | 103 | `result-track:37fc9b8991ea82d36573f0114a2b979b9be1245c258054030ed36115e90bab76` |
| 6 | `def` | [alignedSource](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeCumulativeEdition2.lean/declarations/alignedsource.md) | 145 | `declaration-track:f601e283ed71b4588e58563f76aab70a35ff3548a9e951c7541c8e202ebcaf6a` |
| 7 | `theorem` | [alignedSource_eq_actual_remainders](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeCumulativeEdition2.lean/declarations/alignedsource-eq-actual-remainders.md) | 149 | `result-track:435b2b95416cb3cdaf4e58b13d4e57b28a2de8ca5b10fd52374004443a6e00c5` |
| 8 | `theorem` | [alignedSource_fresh_prime](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeCumulativeEdition2.lean/declarations/alignedsource-fresh-prime.md) | 156 | `result-track:89e097060c077347056727a26b803cb0b8e9af27c89c61c3940873ab0659f755` |
| 9 | `theorem` | [alignedSource_mixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeCumulativeEdition2.lean/declarations/alignedsource-mixed.md) | 164 | `result-track:d492a3b844746575958c411cfef8e01ab66a6c2959aae78b4d21f1aaeb775f61` |
| 10 | `theorem` | [alignedSource_cumulative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeCumulativeEdition2.lean/declarations/alignedsource-cumulative.md) | 176 | `result-track:61b8fc0f60f829b23eefcee6f72f0600da1ff6c267b80cdc5eb6037602438ac3` |
| 11 | `theorem` | [alignedSource_coverage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeCumulativeEdition2.lean/declarations/alignedsource-coverage.md) | 187 | `result-track:64a22355d1701990be22288fe139b085e31aa47b26b41a583b589c4763c5a170` |
| 12 | `def` | [physicalDisclosedCovariance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeCumulativeEdition2.lean/declarations/physicaldisclosedcovariance.md) | 197 | `declaration-track:802dcadd63ba2b6df8439f7e7badbd97f25e5d645bde0cec002df26c61dee410` |
| 13 | `theorem` | [physicalDisclosedCovariance_eq_actual_divisors](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeCumulativeEdition2.lean/declarations/physicaldisclosedcovariance-eq-actual-divisors.md) | 203 | `result-track:729ca675bb021b7a1aa524f1754be7ef48db8dda82c970f2e28f9660fb611369` |
| 14 | `def` | [deferredMain](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeCumulativeEdition2.lean/declarations/deferredmain.md) | 225 | `declaration-track:4c7f5e81d7e827f78e87ac153fba8c3130897d1b4166ad3a346a44d4b0fa0b30` |
| 15 | `theorem` | [actual_fixed_main_reconstruction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeCumulativeEdition2.lean/declarations/actual-fixed-main-reconstruction.md) | 229 | `result-track:3431dc639143ded5c940385eba43ddbad7072b699e82b1a470f6fa20c2ef8195` |
| 16 | `theorem` | [deferredMain_coverage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeCumulativeEdition2.lean/declarations/deferredmain-coverage.md) | 237 | `result-track:a0df8e8221ecdff276426476cc4f49fb8565571d5b8af891663c231ae1aeabd0` |
| 17 | `theorem` | [actual_cumulative_small_prime_identity](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeCumulativeEdition2.lean/declarations/actual-cumulative-small-prime-identity.md) | 248 | `result-track:c6ec273b0f22d0802e03a0aca5f1a5982124ad15c49f976155323ae56439b7a9` |
| 18 | `theorem` | [all_real_prime_cumulative_identity](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeCumulativeEdition2.lean/declarations/all-real-prime-cumulative-identity.md) | 259 | `result-track:83a25aaed092e12dc0a4c3fd27684ccb86a89c0536aa8ca711f7723e67756b97` |
| 19 | `theorem` | [weightedDivisors_reciprocal_insert](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeCumulativeEdition2.lean/declarations/weighteddivisors-reciprocal-insert.md) | 271 | `result-track:b4dbb99cb42e38ca89c88f81f0d6f2e24513ec024e6a946aa21db99914b1e6c7` |
| 20 | `theorem` | [actual_small_prime_mean_increases](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeCumulativeEdition2.lean/declarations/actual-small-prime-mean-increases.md) | 289 | `result-track:9be06c6792fb30908a69d9c1c581e53f28a951d63e27f0036a63b0699221fd4a` |
| 21 | `def` | [maskedMoebius](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeCumulativeEdition2.lean/declarations/maskedmoebius.md) | 321 | `declaration-track:b99503758dad813310e7f651c60d54c147748d437d1c7ab1a2dfafd3a984dc37` |
| 22 | `def` | [restrictedMertens](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeCumulativeEdition2.lean/declarations/restrictedmertens.md) | 324 | `declaration-track:0865530b09144a534d82d41ab91a934348b2adca21e12af9e99434182ba16075` |
| 23 | `theorem` | [weightedDivisors_summation_by_parts](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeCumulativeEdition2.lean/declarations/weighteddivisors-summation-by-parts.md) | 328 | `result-track:257e08b481c0745b7471dad1bafddeb5f9061ff2144700a198541d16affb252c` |
| 24 | `theorem` | [actual_prime_block_summation_by_parts](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePrimeCumulativeEdition2.lean/declarations/actual-prime-block-summation-by-parts.md) | 353 | `result-track:1fb4b3b29e52aa8383200d1c104a892f16abb1c4bc908a15990a486da2d21c66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cfaac52bedb63c0aa303c90e2faad232babe6fe8f1ee3e3cbea17e38a13d789b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7f9a0a3436ea7b2fbace0e849255355674747b5fb18054185337d4c8861a1293.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant7f9a0a3436ea7b2fbace0e849255355674747b5fb18054185337d4c8861a1293.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
