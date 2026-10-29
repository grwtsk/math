# Verification target: Mobius Prefix Tilt Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8aaf5abc89c94ff5279435a53940e39467d83ea",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant73f3e64ff49f495d9a66bc25fcc50b34e64bc6b5a6cafb591168de2d20efc1c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAudit.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8aaf5abc89c94ff5279435a53940e39467d83ea`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant73f3e64ff49f495d9a66bc25fcc50b34e64bc6b5a6cafb591168de2d20efc1c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant73f3e64ff49f495d9a66bc25fcc50b34e64bc6b5a6cafb591168de2d20efc1c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.AbelSummation` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FiniteMobiusController` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletNumerator](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAudit.lean/declarations/dirichletnumerator.md) | 15 | `declaration-track:9f278a8bafb97e0e81cf3b723ba98f70c1a099b5d93a42124c955fd33db54c9f` |
| 2 | `def` | [correctedNumerator](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAudit.lean/declarations/correctednumerator.md) | 20 | `declaration-track:46ea3fc19fd823d4879278d84af3ba01a16164c965c9759d8fe5ee1441c03e53` |
| 3 | `def` | [logNormalization](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAudit.lean/declarations/lognormalization.md) | 25 | `declaration-track:d05e243ec5dc0682408c076be21cac63a09ff48bc7378c44b8bc4e7c56563f30` |
| 4 | `theorem` | [exponential_at_half](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAudit.lean/declarations/exponential-at-half.md) | 30 | `result-track:2e76fd4621b7c09d0d80ead814193425edb18131582112127ac21bb4fa769027` |
| 5 | `theorem` | [dirichletNumerator_half](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAudit.lean/declarations/dirichletnumerator-half.md) | 40 | `result-track:d46e746ef976f47fb729123bd433d3d4874990432bce244272a6826c02f393db` |
| 6 | `theorem` | [correctedNumerator_half](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAudit.lean/declarations/correctednumerator-half.md) | 51 | `result-track:6564deed7ba6bb88109ad180f45e1c62f8bbe2cf0395429611973a7ed1f09a74` |
| 7 | `theorem` | [correctedNumerator_differentiable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAudit.lean/declarations/correctednumerator-differentiable.md) | 56 | `result-track:369996c483ee89a95c8a912393b0b8b0021c182f03ea413d8346a3533575471a` |
| 8 | `def` | [reciprocalCoefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAudit.lean/declarations/reciprocalcoefficient.md) | 70 | `declaration-track:9f3597b820759750198d8bdaea786d871e26525b0294927445504d7aae9aa69c` |
| 9 | `theorem` | [reciprocalCoefficient_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAudit.lean/declarations/reciprocalcoefficient-zero.md) | 73 | `result-track:81f2d50e877250095971a8b637783d41d8895b5ce8368cfc3bbf904cbae489c7` |
| 10 | `theorem` | [reciprocal_prefix_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAudit.lean/declarations/reciprocal-prefix-eq.md) | 76 | `result-track:72682bac0e74be27c509fd5e6e432725f90948156d52d7fbdacb524794a69b43` |
| 11 | `def` | [powerWeight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAudit.lean/declarations/powerweight.md) | 93 | `declaration-track:7246ed9c281c5675080ea31e5796d4f482d6c9b325b676eb62b13194752ceca6` |
| 12 | `theorem` | [powerWeight_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAudit.lean/declarations/powerweight-hasderivat.md) | 96 | `result-track:f1d32c1ce1e7d405b80607f391f96497dc830a62daf468fcce2fc917a295eb76` |
| 13 | `theorem` | [powerWeight_deriv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAudit.lean/declarations/powerweight-deriv.md) | 105 | `result-track:c29ac73b98a1c80dd0bff7d01aeb640f5d2c66a8284c4ead41e9748c0d04b705` |
| 14 | `theorem` | [weight_deriv_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAudit.lean/declarations/weight-deriv-integrable.md) | 109 | `result-track:a31ed79cf16f25154bba9ccc1f966947bceaa7818df3f758696a9de9a6308f9c` |
| 15 | `theorem` | [reciprocal_prefix_power_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAudit.lean/declarations/reciprocal-prefix-power-integrable.md) | 127 | `result-track:ce1afe734fc0ffe1474ea7624f89d25d987e154d0eeec2fc1b65cbb36c785564` |
| 16 | `theorem` | [weighted_coefficient_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAudit.lean/declarations/weighted-coefficient-eq.md) | 148 | `result-track:90cfde0324dad5c92c085d31128e5d40578f6ca252c44efb45fa339e1769d961` |
| 17 | `theorem` | [correctedNumerator_eq_prefix_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltAudit.lean/declarations/correctednumerator-eq-prefix-integral.md) | 170 | `result-track:d969b331fab34f0e90bd264e9cb85fff21c22e776833a44a105abe1c4b910c7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=92bc7e761c81d81b4f91560d20f6bece8da248d4ea504518834b1083298ed32c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant73f3e64ff49f495d9a66bc25fcc50b34e64bc6b5a6cafb591168de2d20efc1c6.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant73f3e64ff49f495d9a66bc25fcc50b34e64bc6b5a6cafb591168de2d20efc1c6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
