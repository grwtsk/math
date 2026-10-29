# Verification target: Ratio Insertion Cutoffs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e745262b43ccc7257b4bed65c95c5bc264e50fce",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffs/Variantc678669135959e5d4e4bcc49a9d7ca2bfc6f302d0872c1b6dc303a664140c864.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RatioInsertionCutoffsNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RatioInsertionCutoffsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e745262b43ccc7257b4bed65c95c5bc264e50fce`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffs/Variantc678669135959e5d4e4bcc49a9d7ca2bfc6f302d0872c1b6dc303a664140c864.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffs/Variantc678669135959e5d4e4bcc49a9d7ca2bfc6f302d0872c1b6dc303a664140c864.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FiniteDensityInsertion` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [max_two_left_bounds](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RatioInsertionCutoffsNamespaced.lean/declarations/max-two-left-bounds.md) | 19 | `result-track:ead74bdbda8c098d85d91ec58923a07716894c2bd0b26365630ce0a6dd2f187a` |
| 2 | `theorem` | [commonScale_two_left_bounds](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RatioInsertionCutoffsNamespaced.lean/declarations/commonscale-two-left-bounds.md) | 22 | `result-track:dee33983b16660ef51ca872a9f74c35ba964b324fcfb5535c40049496150f6a7` |
| 3 | `theorem` | [commonScale_two_right_bounds](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RatioInsertionCutoffsNamespaced.lean/declarations/commonscale-two-right-bounds.md) | 31 | `result-track:1e881d1ae9eedcccf414603d9aafef4f0929a79da60247410aed5cf5b5a7b5b5` |
| 4 | `theorem` | [commonScale_two_left_eq_full](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RatioInsertionCutoffsNamespaced.lean/declarations/commonscale-two-left-eq-full.md) | 36 | `result-track:755b165734f27f88bb8036d31b58d447d9f48eda9f2a32c6091e176d5828e33f` |
| 5 | `theorem` | [commonScale_two_left_eq_half](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RatioInsertionCutoffsNamespaced.lean/declarations/commonscale-two-left-eq-half.md) | 40 | `result-track:70bdede1c8f113670af2b6fd4328fa0cc458f17bdbb067580c8b6399beab3288` |
| 6 | `theorem` | [commonScale_two_left_intermediate](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RatioInsertionCutoffsNamespaced.lean/declarations/commonscale-two-left-intermediate.md) | 45 | `result-track:f5f028e6e023e8eec9d2435f6c5569a22626ac6ea66a44e0040fb9ca7faed98c` |
| 7 | `theorem` | [commonScale_two_left_cases](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RatioInsertionCutoffsNamespaced.lean/declarations/commonscale-two-left-cases.md) | 50 | `result-track:69acd574eb12dac0ed7b2b7ff8f5f53cbdd725a76859daa225514d2c5e2d7439` |
| 8 | `theorem` | [commonScale_two_left_empty](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RatioInsertionCutoffsNamespaced.lean/declarations/commonscale-two-left-empty.md) | 58 | `result-track:992c7aa956f380b6a6cfc5400f83f1eb2f4bd16dc4c8a579bd80e3aa71885fae` |
| 9 | `theorem` | [sqrt_commonScale_two_left_bounds](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RatioInsertionCutoffsNamespaced.lean/declarations/sqrt-commonscale-two-left-bounds.md) | 63 | `result-track:3c5fbab325c5084b9d02fc93b97d538c6f87e55d8918be6e154abfac47f28cfa` |
| 10 | `theorem` | [commonScale_eight_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RatioInsertionCutoffsNamespaced.lean/declarations/commonscale-eight-iff.md) | 69 | `result-track:ed8236a411e2205c83277c1b67b35649a0c55e2b894fc9283e60c293da3324a9` |
| 11 | `theorem` | [sqrt_commonScale_two_left_admissible](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RatioInsertionCutoffsNamespaced.lean/declarations/sqrt-commonscale-two-left-admissible.md) | 73 | `result-track:4085da09938cc6e5aa49fdb5e9f6b1f3992129ae134078aded49f79111bb317b` |
| 12 | `theorem` | [signed_two_density_left_cutoffs_error_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RatioInsertionCutoffsNamespaced.lean/declarations/signed-two-density-left-cutoffs-error-le.md) | 83 | `result-track:03457efae41e2e795f97b7f3913d06326e0e3c53810756842b390e8021234502` |
| 13 | `theorem` | [sqrt_commonScale_two_right_admissible](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RatioInsertionCutoffsNamespaced.lean/declarations/sqrt-commonscale-two-right-admissible.md) | 96 | `result-track:5a247da2b5e2925ea3244c410dd7d75a40dff2c0774cbf9636fd94706356a815` |
| 14 | `theorem` | [signed_two_density_right_cutoffs_error_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RatioInsertionCutoffsNamespaced.lean/declarations/signed-two-density-right-cutoffs-error-le.md) | 103 | `result-track:ae421051267a490912feb0836c3ef1981c34c833f8b9dcd7ff891f2846a0c804` |
| 15 | `theorem` | [signed_two_density_both_cutoffs_error_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RatioInsertionCutoffsNamespaced.lean/declarations/signed-two-density-both-cutoffs-error-le.md) | 116 | `result-track:7f5b2dbca0491071f1fcb1729a49e3bdcfc089e033fdffcda87ea33c518475fe` |
| 16 | `theorem` | [actual_two_density_coefficient_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RatioInsertionCutoffsNamespaced.lean/declarations/actual-two-density-coefficient-eq.md) | 156 | `result-track:5566b86d452fd726e9daaa3f2a39aa07b6beda0871e683a14fe8c19d30de4d82` |
| 17 | `theorem` | [actual_two_density_cutoff_error_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RatioInsertionCutoffsNamespaced.lean/declarations/actual-two-density-cutoff-error-le.md) | 179 | `result-track:9efc0226e0c78cb63db09e1455f111e6658b52cb6b8bf76c1d613271095dbd27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2b89e9059fdfa2c2390fd34cb13a8dda0d3d5973633d9c598e986b61f475a4c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffs/Variantc678669135959e5d4e4bcc49a9d7ca2bfc6f302d0872c1b6dc303a664140c864.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/RatioInsertionCutoffs/Variantc678669135959e5d4e4bcc49a9d7ca2bfc6f302d0872c1b6dc303a664140c864.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
