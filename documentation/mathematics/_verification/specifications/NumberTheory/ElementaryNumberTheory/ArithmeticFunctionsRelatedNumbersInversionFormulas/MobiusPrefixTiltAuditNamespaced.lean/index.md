# Verification target: Mobius Prefix Tilt Audit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "670ab0773c338a57347e5a10607467bf40ecf0f8",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAuditNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAuditNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `670ab0773c338a57347e5a10607467bf40ecf0f8`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.AbelSummation` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FiniteMobiusController` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletNumerator](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAuditNamespaced.lean/declarations/dirichletnumerator.md) | 23 | `declaration-track:5e8c743a26d14f14f28c4dd0741200827458f919b6b37fb437167c31e90f7b14` |
| 2 | `def` | [correctedNumerator](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAuditNamespaced.lean/declarations/correctednumerator.md) | 28 | `declaration-track:6dc59b3f7f776ca526549f671b7688e971c607735edc2623baec4d2ebb6d831d` |
| 3 | `def` | [logNormalization](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAuditNamespaced.lean/declarations/lognormalization.md) | 33 | `declaration-track:77d681150179924a8f8baca1e823776ff1797c720f7a99dad7fbd41cb6c04e9a` |
| 4 | `theorem` | [exponential_at_half](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAuditNamespaced.lean/declarations/exponential-at-half.md) | 38 | `result-track:db92669712df01d9b283e3cb33c1edbbeaa7b95b9981e4a3132ef29f750465cb` |
| 5 | `theorem` | [dirichletNumerator_half](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAuditNamespaced.lean/declarations/dirichletnumerator-half.md) | 48 | `result-track:d4012b05d04766b6157a2de4f6900ae913b4a4531051609af7917fd012e69841` |
| 6 | `theorem` | [correctedNumerator_half](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAuditNamespaced.lean/declarations/correctednumerator-half.md) | 59 | `result-track:1f327df2d7cd3e615e55165bf39364df222184e48e378bc83ceb1d748036e36d` |
| 7 | `theorem` | [correctedNumerator_differentiable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAuditNamespaced.lean/declarations/correctednumerator-differentiable.md) | 64 | `result-track:4d801fc58dec1ecdffe147a51b4c71ec4f173450287fd42942ff2102ce8ca898` |
| 8 | `def` | [reciprocalCoefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAuditNamespaced.lean/declarations/reciprocalcoefficient.md) | 78 | `declaration-track:e5383352d9982ed4a1f71d2774d829728d406d1a8a3948990b1b4b974e8645ca` |
| 9 | `theorem` | [reciprocalCoefficient_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAuditNamespaced.lean/declarations/reciprocalcoefficient-zero.md) | 81 | `result-track:01cda2e60e9268b5a6682b95e18518f0ef9a0b51bd4e8e7944156ecf2569082d` |
| 10 | `theorem` | [reciprocal_prefix_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAuditNamespaced.lean/declarations/reciprocal-prefix-eq.md) | 84 | `result-track:af7e3d33d2354b7d5c51759aa2ccd9a298ce0aee5d4869105e4dba4dc869240d` |
| 11 | `def` | [powerWeight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAuditNamespaced.lean/declarations/powerweight.md) | 101 | `declaration-track:6617123c33a099b6db6a1cb41e2cb4d505fed763886ef1d17eb330ff521cc6e7` |
| 12 | `theorem` | [powerWeight_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAuditNamespaced.lean/declarations/powerweight-hasderivat.md) | 104 | `result-track:a13cfa35549dad1ef2d2b49e175f7d120e364b9dc6dbaeab0e1eab2f10761f86` |
| 13 | `theorem` | [powerWeight_deriv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAuditNamespaced.lean/declarations/powerweight-deriv.md) | 113 | `result-track:8f76f51302731aa85773104fcdb25feb830f0574b083e858748bf47644c9c0ce` |
| 14 | `theorem` | [weight_deriv_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAuditNamespaced.lean/declarations/weight-deriv-integrable.md) | 117 | `result-track:73a047549430a9a582ade9d1cc4826cf34d843f576c85828084b1bd069a107d0` |
| 15 | `theorem` | [reciprocal_prefix_power_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAuditNamespaced.lean/declarations/reciprocal-prefix-power-integrable.md) | 135 | `result-track:1b537f3acdc99123e84b6864a71eea0779f421055b9b1477b38fbd8b9aa935e1` |
| 16 | `theorem` | [weighted_coefficient_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAuditNamespaced.lean/declarations/weighted-coefficient-eq.md) | 156 | `result-track:02cef321fb6a997ec2de8495dcaefe14bf0d4d34711ddfe6b9922aabff21fa81` |
| 17 | `theorem` | [correctedNumerator_eq_prefix_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAuditNamespaced.lean/declarations/correctednumerator-eq-prefix-integral.md) | 178 | `result-track:7e52105e83bfd1489c687506079c46a2712bee2af811d89fe2d02e6463f6886a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=910bd499d3d2ded5d856caf74fead169ac7183c5c0c88abfdb3ccbaf53fdc2e3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant357b931221af5bc80533c4ec1a91571bd04a11e31aa570a0578a1ef4e27c3903.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
