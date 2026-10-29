# Verification target: Five Mode Source Audit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ee95e6e658b40a51ad18c5529c0c435cb4f9fad",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/FiveModeSourceAudit/Variant41dbbee368adb9b365a365519ea2778e930ac29022095dd34af81d384429f7f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FiveModeSourceAuditNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FiveModeSourceAuditNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ee95e6e658b40a51ad18c5529c0c435cb4f9fad`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/FiveModeSourceAudit/Variant41dbbee368adb9b365a365519ea2778e930ac29022095dd34af81d384429f7f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/FiveModeSourceAudit/Variant41dbbee368adb9b365a365519ea2778e930ac29022095dd34af81d384429f7f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [legendre](../../../../MeasureAndIntegration/FiveModeSourceAuditNamespaced.lean/declarations/legendre.md) | 28 | `declaration-track:3d3e275af371085abad0145c1d953180fd28549ff063b6816dea005609c9f049` |
| 2 | `def` | [mode](../../../../MeasureAndIntegration/FiveModeSourceAuditNamespaced.lean/declarations/mode.md) | 36 | `declaration-track:efabb9ec573006bdd7d594a94fd485ee233e03b57da4eb88c61721cc65b3c1f2` |
| 3 | `def` | [bumpCoefficient](../../../../MeasureAndIntegration/FiveModeSourceAuditNamespaced.lean/declarations/bumpcoefficient.md) | 38 | `declaration-track:ec105b6273ab0a143dec7d8e312bc3af08d4698c4d57b1eaf09eb41f901f9b49` |
| 4 | `def` | [secondCoefficient](../../../../MeasureAndIntegration/FiveModeSourceAuditNamespaced.lean/declarations/secondcoefficient.md) | 39 | `declaration-track:91538828a640bf486bf0eb6731671f9c4931bf0971639967851f4c0adc56d2b1` |
| 5 | `def` | [modeWeight](../../../../MeasureAndIntegration/FiveModeSourceAuditNamespaced.lean/declarations/modeweight.md) | 40 | `declaration-track:c0dd06b05bbb756aac9fbc6c51fa130b4ab9bd54fc3ebd0e72dd45f1e29a11c5` |
| 6 | `def` | [sourceCoefficient](../../../../MeasureAndIntegration/FiveModeSourceAuditNamespaced.lean/declarations/sourcecoefficient.md) | 41 | `declaration-track:e3636189020c8feea74f9e199eee3597bd750b918e28005742f7f939b33ab0ab` |
| 7 | `theorem` | [mode_zero](../../../../MeasureAndIntegration/FiveModeSourceAuditNamespaced.lean/declarations/mode-zero.md) | 44 | `result-track:c71a62064422e22a75a7dcc1cf4d339845a4394b843897dc63a07cf8562942d3` |
| 8 | `theorem` | [mode_two](../../../../MeasureAndIntegration/FiveModeSourceAuditNamespaced.lean/declarations/mode-two.md) | 45 | `result-track:1ec82ec74acf4d25f85607006ae54dc0d7665e95a6f5105b21132b89f3050180` |
| 9 | `theorem` | [mode_four](../../../../MeasureAndIntegration/FiveModeSourceAuditNamespaced.lean/declarations/mode-four.md) | 47 | `result-track:7642e2fadaaeada6d6d8e7411882e861ebe407601d41a9712046eb1dc2985c12` |
| 10 | `theorem` | [mode_six](../../../../MeasureAndIntegration/FiveModeSourceAuditNamespaced.lean/declarations/mode-six.md) | 49 | `result-track:91c465b20221187f428bb2570d5501a83309ffb4eafa3770f558956e2d3cefd9` |
| 11 | `theorem` | [mode_eight](../../../../MeasureAndIntegration/FiveModeSourceAuditNamespaced.lean/declarations/mode-eight.md) | 51 | `result-track:dd7a4eab0da3fd5340ea2b4c0923b47a1cd7595ea09cc4e1f26f6181b4f7073b` |
| 12 | `theorem` | [mode_even](../../../../MeasureAndIntegration/FiveModeSourceAuditNamespaced.lean/declarations/mode-even.md) | 55 | `result-track:e232b56caf8353566122b90abe7aad0bb683d437e48a727653d5f9dfd9586d42` |
| 13 | `theorem` | [bump_expansion](../../../../MeasureAndIntegration/FiveModeSourceAuditNamespaced.lean/declarations/bump-expansion.md) | 58 | `result-track:414de1fbc2bdedcd069169acde67b9d03e790043b40c470fa783d236d1b73a49` |
| 14 | `theorem` | [second_expansion](../../../../MeasureAndIntegration/FiveModeSourceAuditNamespaced.lean/declarations/second-expansion.md) | 63 | `result-track:4d1f6da6480c8daabbff1904a0b4f09cb6011db962ef20f76d1e87a99a72589b` |
| 15 | `theorem` | [source_polynomial_expansion](../../../../MeasureAndIntegration/FiveModeSourceAuditNamespaced.lean/declarations/source-polynomial-expansion.md) | 68 | `result-track:868a99029d012d4ce55d66128f13328c3de9edc797d6e6dd797d52f5d3fc0a8e` |
| 16 | `theorem` | [exact_weighted_normalization](../../../../MeasureAndIntegration/FiveModeSourceAuditNamespaced.lean/declarations/exact-weighted-normalization.md) | 75 | `result-track:71408743f92f9c51cf6eb050a24899dd4cbc64df432bfb55ddea07d3a6b52525` |
| 17 | `def` | [alpha](../../../../MeasureAndIntegration/FiveModeSourceAuditNamespaced.lean/declarations/alpha.md) | 83 | `declaration-track:84f9492340b84be5435806e0a7c6f4e31758ae3c46e796ade062caa7b5c2d9dd` |
| 18 | `def` | [normalizedMode](../../../../MeasureAndIntegration/FiveModeSourceAuditNamespaced.lean/declarations/normalizedmode.md) | 87 | `declaration-track:e7e0495e5a8e988ef3c7c88b5e872ea72eaad88e49cb12401e5917051fe4fdbb` |
| 19 | `theorem` | [modeWeight_pos](../../../../MeasureAndIntegration/FiveModeSourceAuditNamespaced.lean/declarations/modeweight-pos.md) | 91 | `result-track:9171e307b3c7d3fe4c08cef524a13dca0f53de5e9c9a8c2de7dba0adb5df4a90` |
| 20 | `theorem` | [alpha_square](../../../../MeasureAndIntegration/FiveModeSourceAuditNamespaced.lean/declarations/alpha-square.md) | 94 | `result-track:b6bc0ac0c77ae9e7ac6edefb027c3bc71a6d83e845be17b4743a0bfe2e985249` |
| 21 | `theorem` | [alpha_normalization](../../../../MeasureAndIntegration/FiveModeSourceAuditNamespaced.lean/declarations/alpha-normalization.md) | 103 | `result-track:cd3bbcbb44f9eea0335ef02897e302e531e26d161277bb74b6a6fadd81539cdf` |
| 22 | `theorem` | [sqrt_mode_product](../../../../MeasureAndIntegration/FiveModeSourceAuditNamespaced.lean/declarations/sqrt-mode-product.md) | 109 | `result-track:563acfe180cbde2fc113b0a2bd177b31d28697f1f40f68c9c8ddb0df75d630af` |
| 23 | `theorem` | [actual_source_reconstruction](../../../../MeasureAndIntegration/FiveModeSourceAuditNamespaced.lean/declarations/actual-source-reconstruction.md) | 120 | `result-track:8c551d34a9d0b3db18f46bc00a392ee8610098228fd700c758f991c06c329182` |
| 24 | `theorem` | [actual_source_norm](../../../../MeasureAndIntegration/FiveModeSourceAuditNamespaced.lean/declarations/actual-source-norm.md) | 143 | `result-track:4c5972960842666c618cce7c6a3f20b4728a3c828e9e838f49438a59e9de4c89` |
| 25 | `theorem` | [reconstructed_support](../../../../MeasureAndIntegration/FiveModeSourceAuditNamespaced.lean/declarations/reconstructed-support.md) | 148 | `result-track:f0347494da25c8efe5acb3162c1112f3ab74aa0dc397875c93345f551a2f3e6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=531a77609fc5d9cfb4d5160fe88cda16cbb96b8733e863c303356f64330229be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/FiveModeSourceAudit/Variant41dbbee368adb9b365a365519ea2778e930ac29022095dd34af81d384429f7f1.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/FiveModeSourceAudit/Variant41dbbee368adb9b365a365519ea2778e930ac29022095dd34af81d384429f7f1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
