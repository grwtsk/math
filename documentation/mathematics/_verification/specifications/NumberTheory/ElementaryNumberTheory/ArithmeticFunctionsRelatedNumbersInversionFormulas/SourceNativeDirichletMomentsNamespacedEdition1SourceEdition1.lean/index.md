# Verification target: Source Native Dirichlet Moments Namespaced Edition1 Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "536cc487aca5a4309e451b3381c8e7d9396efeac",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant1e84d0f30e1d4b7d4e21a9f48000e7d534e91837441431ae4b65a5b0c435a5c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsNamespacedEdition1SourceEdition1.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsNamespacedEdition1SourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `536cc487aca5a4309e451b3381c8e7d9396efeac`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant1e84d0f30e1d4b7d4e21a9f48000e7d534e91837441431ae4b65a5b0c435a5c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant1e84d0f30e1d4b7d4e21a9f48000e7d534e91837441431ae4b65a5b0c435a5c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceNativeDirichlet` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Deriv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletMoment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsNamespacedEdition1SourceEdition1.lean/declarations/dirichletmoment.md) | 23 | `declaration-track:6eb04420d83093465d8867ff0bcdcfd0402c4d4c2c6271a5eecd52f3850c427a` |
| 2 | `theorem` | [dirichletMoment_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsNamespacedEdition1SourceEdition1.lean/declarations/dirichletmoment-nonneg.md) | 27 | `result-track:faefae60732d8eb5f06ecfd8620f1b50b562864c0b16e0291771c4814b37f157` |
| 3 | `theorem` | [mangoldt_abscissa_le_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsNamespacedEdition1SourceEdition1.lean/declarations/mangoldt-abscissa-le-one.md) | 34 | `result-track:2623e9106cbd48266e25aea820487489727ca33b64d41f1b41227d86d9c8efa1` |
| 4 | `theorem` | [iterate_logMul_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsNamespacedEdition1SourceEdition1.lean/declarations/iterate-logmul-eq.md) | 40 | `result-track:36866af333ea4b84b5b74f1c3a41bf61921f006219b8fbd61c83a98eef3844dc` |
| 5 | `theorem` | [dirichletMoment_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsNamespacedEdition1SourceEdition1.lean/declarations/dirichletmoment-summable.md) | 49 | `result-track:20d62862657c762e0a86be337c3026ae44b60acd472b64ad4226124aea25f40d` |
| 6 | `theorem` | [log_moment_series_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsNamespacedEdition1SourceEdition1.lean/declarations/log-moment-series-eq.md) | 71 | `result-track:382511fdfc3661f01744ea7ac38c414878553e7c33658aa3e032e11f34c960ac` |
| 7 | `theorem` | [native_series_hasDerivAt_two](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsNamespacedEdition1SourceEdition1.lean/declarations/native-series-hasderivat-two.md) | 99 | `result-track:acbc6fee552806ceab510d6009d96fd23b7ef0c3a0e3a1c4ec619d96a4842469` |
| 8 | `theorem` | [native_series_second_derivative_two](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsNamespacedEdition1SourceEdition1.lean/declarations/native-series-second-derivative-two.md) | 110 | `result-track:29c0261e172541476b4444e1cdc69da9304b9828758e8c12e624541d1c9990a2` |
| 9 | `theorem` | [combinedMultiplier_eventually_eq_series](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsNamespacedEdition1SourceEdition1.lean/declarations/combinedmultiplier-eventually-eq-series.md) | 119 | `result-track:b982874d4eff8dd90273cdfd87578fb4558c95505d78f3407c575e54889e8c54` |
| 10 | `theorem` | [combinedMultiplier_hasDerivAt_two](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsNamespacedEdition1SourceEdition1.lean/declarations/combinedmultiplier-hasderivat-two.md) | 128 | `result-track:c2c08a68f13c567aa2deb1ee7c160f9c9151cbdcbb49dabad59f0e38266eca78` |
| 11 | `theorem` | [combinedMultiplier_second_derivative_two](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsNamespacedEdition1SourceEdition1.lean/declarations/combinedmultiplier-second-derivative-two.md) | 133 | `result-track:5063f5ca8f4c8abd572e12e861ec1b1624f5e32a117b327e44855959894ede38` |
| 12 | `theorem` | [dirichletMoment_zero_eq_majorant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsNamespacedEdition1SourceEdition1.lean/declarations/dirichletmoment-zero-eq-majorant.md) | 139 | `result-track:6053ebfa3691a9fd198cc4c8ab7f502ce4fc8ec340eb7b04a3a319eb5ec0172c` |
| 13 | `theorem` | [combinedMultiplier_two_eq_majorant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsNamespacedEdition1SourceEdition1.lean/declarations/combinedmultiplier-two-eq-majorant.md) | 146 | `result-track:47dbb537b263e51b13df9d392bd890c5f46070eaa51ac4316e03d8ccb10438ec` |
| 14 | `theorem` | [dirichletMoment_one_pos](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceNativeDirichletMomentsNamespacedEdition1SourceEdition1.lean/declarations/dirichletmoment-one-pos.md) | 155 | `result-track:6544d9918a0aabb70f4f9ec90c51296c868615acc9372333b3aed7e391e6a78d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2ebd5dca96a0ef3c26ea9ddd6dab092afc59295d3e321b793190317e9a9b681c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant1e84d0f30e1d4b7d4e21a9f48000e7d534e91837441431ae4b65a5b0c435a5c7.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant1e84d0f30e1d4b7d4e21a9f48000e7d534e91837441431ae4b65a5b0c435a5c7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
