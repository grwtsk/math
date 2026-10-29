# Verification target: Algebra Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa265d59afac4798ddf0d8870b49ff4fd0c996d3",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Algebra/Variant51f3d5a6d4f8fef4af4cdd50b74a70d430bfb4a14511d7f0885638bcc1847ce2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/AlgebraNamespacedEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/AlgebraNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa265d59afac4798ddf0d8870b49ff4fd0c996d3`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Algebra/Variant51f3d5a6d4f8fef4af4cdd50b74a70d430bfb4a14511d7f0885638bcc1847ce2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Algebra/Variant51f3d5a6d4f8fef4af4cdd50b74a70d430bfb4a14511d7f0885638bcc1847ce2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ZeroSide.Assembly` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [actualQ](../../../../MeasureAndIntegration/AlgebraNamespacedEdition1.lean/declarations/actualq.md) | 38 | `declaration-track:646af56e0e5824c822d983a9dc7d810c305541fe446188b9da36461637e99018` |
| 2 | `def` | [weightedSource](../../../../MeasureAndIntegration/AlgebraNamespacedEdition1.lean/declarations/weightedsource.md) | 42 | `declaration-track:97d4d4a10835566a34d825ee48c4c774ff108896eccf29ba608145f47b5880bc` |
| 3 | `def` | [J](../../../../MeasureAndIntegration/AlgebraNamespacedEdition1.lean/declarations/j.md) | 49 | `declaration-track:37210b827ef89129ba13ab785a3a07f7daa3a40134945730afb56d318b9d62e5` |
| 4 | `def` | [JIntegral](../../../../MeasureAndIntegration/AlgebraNamespacedEdition1.lean/declarations/jintegral.md) | 57 | `declaration-track:e6c109233d49951734e146b73a57199099e2cde03c0da79bd92858e6492addfb` |
| 5 | `def` | [JIntegralObligation](../../../../MeasureAndIntegration/AlgebraNamespacedEdition1.lean/declarations/jintegralobligation.md) | 61 | `declaration-track:822124b97d18f622f46f0d22d3dac05716cf0752caa7e2a254d59709b6e11955` |
| 6 | `def` | [JRegularPartObligation](../../../../MeasureAndIntegration/AlgebraNamespacedEdition1.lean/declarations/jregularpartobligation.md) | 70 | `declaration-track:f1a36bf7cc803dcfba6f741be94f16101290eebd73abef13ff7b95e14542e35b` |
| 7 | `theorem` | [transformPolynomial_sq](../../../../MeasureAndIntegration/AlgebraNamespacedEdition1.lean/declarations/transformpolynomial-sq.md) | 78 | `result-track:6f044abcd3f082d09d9ab38c73171412a26ec790c9880d13ecb318c8b88c1840` |
| 8 | `theorem` | [transformPolynomial_mul_neg](../../../../MeasureAndIntegration/AlgebraNamespacedEdition1.lean/declarations/transformpolynomial-mul-neg.md) | 88 | `result-track:d1f916dfb98106a212a68b4dc667c30d1e397baf072184f9e290974abca423cb` |
| 9 | `theorem` | [mode_square_expansion](../../../../MeasureAndIntegration/AlgebraNamespacedEdition1.lean/declarations/mode-square-expansion.md) | 95 | `result-track:327e233f7a194e6e8a6dd4a2ffdfcbbcafe36a6979019c7f400c3c9db0277c31` |
| 10 | `def` | [modeCoefficient](../../../../MeasureAndIntegration/AlgebraNamespacedEdition1.lean/declarations/modecoefficient.md) | 104 | `declaration-track:5ebd13bed2e65c04d914c5eb150a0c9fde5c1701f3a0478b379a0c55a470d3df` |
| 11 | `theorem` | [modeCoefficient_neg](../../../../MeasureAndIntegration/AlgebraNamespacedEdition1.lean/declarations/modecoefficient-neg.md) | 108 | `result-track:fd83a0a877055629630232367d06a5d17e9e9bf23358881c70dd87625f555dca` |
| 12 | `def` | [principalCoefficient](../../../../MeasureAndIntegration/AlgebraNamespacedEdition1.lean/declarations/principalcoefficient.md) | 116 | `declaration-track:66626e6e3d50695db55373c40e6f4f823f04f53d80a6d4afa1dd10216d53ae2c` |
| 13 | `theorem` | [principalCoefficient_eq](../../../../MeasureAndIntegration/AlgebraNamespacedEdition1.lean/declarations/principalcoefficient-eq.md) | 121 | `result-track:a96fd3fb3aceb279f1640745b1adffbc5f6500cde107a1d7849d6a2c8a2f2be5` |
| 14 | `theorem` | [pole_factor_ne_zero](../../../../MeasureAndIntegration/AlgebraNamespacedEdition1.lean/declarations/pole-factor-ne-zero.md) | 131 | `result-track:42014802b3b6507c7a36d3597e9ba225b4d7af051e04252b39c8129843138c23` |
| 15 | `theorem` | [principalCoefficient_ne_zero](../../../../MeasureAndIntegration/AlgebraNamespacedEdition1.lean/declarations/principalcoefficient-ne-zero.md) | 146 | `result-track:8ef9fdf4213ec4162ac6eaf459f946cca2aa8df42d905dc08e6c8c3e12327242` |
| 16 | `def` | [KernelCheckpoint](../../../../MeasureAndIntegration/AlgebraNamespacedEdition1.lean/declarations/kernelcheckpoint.md) | 166 | `declaration-track:740c4584b959d4f54a0a86ba1f63cee78d11a721bf05443e252a59d74b99f23f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b53acd22804f6dad9226f074148272256d58fe7eeabe743d5eaa3beb8da41af6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Algebra/Variant51f3d5a6d4f8fef4af4cdd50b74a70d430bfb4a14511d7f0885638bcc1847ce2.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Algebra/Variant51f3d5a6d4f8fef4af4cdd50b74a70d430bfb4a14511d7f0885638bcc1847ce2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
