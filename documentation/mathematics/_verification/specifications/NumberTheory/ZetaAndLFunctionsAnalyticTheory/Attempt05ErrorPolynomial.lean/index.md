# Verification target: Attempt05 Error Polynomial

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d766cf1c8a3a0fa6d2ac7543fff6125fadcb11f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant0f617e7421807ea17cf26afe86794aed83d26b846b58d415b7b45c6e68765cb4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt05ErrorPolynomial.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt05ErrorPolynomial.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d766cf1c8a3a0fa6d2ac7543fff6125fadcb11f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant0f617e7421807ea17cf26afe86794aed83d26b846b58d415b7b45c6e68765cb4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant0f617e7421807ea17cf26afe86794aed83d26b846b58d415b7b45c6e68765cb4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ComplexBoundaryAsymptotic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [errorPolynomial](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt05ErrorPolynomial.lean/declarations/errorpolynomial.md) | 16 | `declaration-track:b0eec5068750f961baf41ca878dc346560ef9c6574cff2000e4d5fb3f2a8416d` |
| 2 | `def` | [normalizationRatio](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt05ErrorPolynomial.lean/declarations/normalizationratio.md) | 20 | `declaration-track:3e6571bfb8fff0fe1584dabb13ffbe4b098164e4c6c24e4c41c123ad2b7b31ec` |
| 3 | `def` | [positiveEndpoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt05ErrorPolynomial.lean/declarations/positiveendpoint.md) | 23 | `declaration-track:a53d6ee7a9c994176f2e3c1c542ac502a20c33dd4f0059c082cd46fb90be03c6` |
| 4 | `def` | [reflectedEndpoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt05ErrorPolynomial.lean/declarations/reflectedendpoint.md) | 27 | `declaration-track:03b9b3b6d18d77df850104e82094eed7ed2918ed901a9ea52d39bb9e965525de` |
| 5 | `theorem` | [errorPolynomial_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt05ErrorPolynomial.lean/declarations/errorpolynomial-nonneg.md) | 31 | `result-track:1093380ecf46f05ae4e9f95ffedf87e20d15958a04fa1e9856a6b67db467e03d` |
| 6 | `theorem` | [normalization_bounds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt05ErrorPolynomial.lean/declarations/normalization-bounds.md) | 34 | `result-track:2cb1e17483218cce2ad5fe74eea8b15e8d0be6963207336144280c066904b5ac` |
| 7 | `theorem` | [normalizationRatio_bounds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt05ErrorPolynomial.lean/declarations/normalizationratio-bounds.md) | 58 | `result-track:1604fc52a9734996853a8c53ad35754c4e4c4d4d7641247e1a8206fe041c3b48` |
| 8 | `theorem` | [normalizationRatio_deficit](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt05ErrorPolynomial.lean/declarations/normalizationratio-deficit.md) | 68 | `result-track:f0a55e4e0c60993a1b9958bb03b59ca12ec8c89f618199c6d7e9b5c538565527` |
| 9 | `theorem` | [source_ratio_exact](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt05ErrorPolynomial.lean/declarations/source-ratio-exact.md) | 99 | `result-track:3d3f0f4837aee3ec0efab76eb5df433a8bd5025f0f5d87395fea061fb793732f` |
| 10 | `theorem` | [inverse_power_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt05ErrorPolynomial.lean/declarations/inverse-power-bound.md) | 117 | `result-track:6173f9e99de0e36c24da7e4f544439aec44c066259cabc979aef1527a8444706` |
| 11 | `theorem` | [positiveEndpoint_error](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt05ErrorPolynomial.lean/declarations/positiveendpoint-error.md) | 133 | `result-track:911a967542299dbc86bb7c0d13fc4b91bef546e92936788b1b7d763bf7e31a38` |
| 12 | `theorem` | [reflectedEndpoint_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt05ErrorPolynomial.lean/declarations/reflectedendpoint-bound.md) | 165 | `result-track:97cccdc5f9fcf4801c244ebb1eb2801408dc2eeecfe27c9f76059abb94ebe425` |
| 13 | `theorem` | [negative_endpoint_rate](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Attempt05ErrorPolynomial.lean/declarations/negative-endpoint-rate.md) | 204 | `result-track:446557e5b71314c6e25fd1b3f07f92d6290fc275a501ddcd620ca388a02c5661` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a14fa5d76793eb9a0939cb74882b720dae173a4b77fea3aadfa4a8bc3cbd5ba2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant0f617e7421807ea17cf26afe86794aed83d26b846b58d415b7b45c6e68765cb4.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant0f617e7421807ea17cf26afe86794aed83d26b846b58d415b7b45c6e68765cb4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
