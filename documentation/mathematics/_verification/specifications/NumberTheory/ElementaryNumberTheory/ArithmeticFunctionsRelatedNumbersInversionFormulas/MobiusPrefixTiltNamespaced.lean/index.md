# Verification target: Mobius Prefix Tilt Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2dc015a428109a0cc522b68314d0c81e24d1b3d4",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTilt/Variant983fc34bca46d4096c332855f51a703942c3237b866cafa6afde8854a67579a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2dc015a428109a0cc522b68314d0c81e24d1b3d4`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTilt/Variant983fc34bca46d4096c332855f51a703942c3237b866cafa6afde8854a67579a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTilt/Variant983fc34bca46d4096c332855f51a703942c3237b866cafa6afde8854a67579a6.lean.json)

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
| 1 | `def` | [dirichletNumerator](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltNamespaced.lean/declarations/dirichletnumerator.md) | 23 | `declaration-track:55875a920f0e554f66a42ecc6051844092525f258cc68ad9878b34957a08886f` |
| 2 | `def` | [correctedNumerator](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltNamespaced.lean/declarations/correctednumerator.md) | 28 | `declaration-track:2665a816c086bd0bab755f5fd56ee40742a8f4fa39933f4fcec620c5af90695b` |
| 3 | `def` | [logNormalization](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltNamespaced.lean/declarations/lognormalization.md) | 33 | `declaration-track:e66264ebe3d74c3d186e4486a40f25e4fb7ed9728abbd68fc3bb3b32bc823f18` |
| 4 | `theorem` | [exponential_at_half](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltNamespaced.lean/declarations/exponential-at-half.md) | 38 | `result-track:2e51c17522c73186a8b515d5799e1043b80319fbc33e1adb80e2b0d4fb23e97d` |
| 5 | `theorem` | [dirichletNumerator_half](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltNamespaced.lean/declarations/dirichletnumerator-half.md) | 48 | `result-track:b783432e180522534603943c9ad139c8414190fc0fd8b7bf732e1750cf60db63` |
| 6 | `theorem` | [correctedNumerator_half](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltNamespaced.lean/declarations/correctednumerator-half.md) | 59 | `result-track:883d7dc380a42d68560643fb066661624c35a2d85057240f8c5db2514bd8781c` |
| 7 | `theorem` | [correctedNumerator_differentiable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltNamespaced.lean/declarations/correctednumerator-differentiable.md) | 64 | `result-track:aa5603a40e8b96703251fbdc9fae5c50f5147ad68573dab699935343b692e167` |
| 8 | `def` | [reciprocalCoefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltNamespaced.lean/declarations/reciprocalcoefficient.md) | 78 | `declaration-track:a3e9490b1921f7f1f98f2b3d8943855ff9627ff7c003b94ce1c11fc67fd2adb6` |
| 9 | `theorem` | [reciprocalCoefficient_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltNamespaced.lean/declarations/reciprocalcoefficient-zero.md) | 81 | `result-track:bb8d34a3524a20e44a5d5d38d305de0d81a4f0a247718674ce210b55b285745a` |
| 10 | `theorem` | [reciprocal_prefix_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltNamespaced.lean/declarations/reciprocal-prefix-eq.md) | 84 | `result-track:797ecb013c2ca1c346f7d9b00111e36f598be0f538da6bce4b679fbe0bc8ab76` |
| 11 | `def` | [powerWeight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltNamespaced.lean/declarations/powerweight.md) | 101 | `declaration-track:756354369d91eab4b152c9460c56940944e92134c22bef01879dcae7bb36b768` |
| 12 | `theorem` | [powerWeight_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltNamespaced.lean/declarations/powerweight-hasderivat.md) | 104 | `result-track:35d314bf90c0f6fd4df6d22e04d65ad88e5e73cef089cd7b1f6afb2662646d32` |
| 13 | `theorem` | [powerWeight_deriv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltNamespaced.lean/declarations/powerweight-deriv.md) | 113 | `result-track:5be084d30237f9adae49d13b70920ab5e51a7accab7bdf66cca4982b0fdca75b` |
| 14 | `theorem` | [weight_deriv_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltNamespaced.lean/declarations/weight-deriv-integrable.md) | 117 | `result-track:7918dafe97fc0d59fb048aed11c9910310e4d7da92a65fa68028804625453111` |
| 15 | `theorem` | [reciprocal_prefix_power_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltNamespaced.lean/declarations/reciprocal-prefix-power-integrable.md) | 135 | `result-track:cc07802ffb3f107fe414391ebb2d6618c76e9b33a42c599a1c92f6b244e8a62b` |
| 16 | `theorem` | [weighted_coefficient_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltNamespaced.lean/declarations/weighted-coefficient-eq.md) | 156 | `result-track:b9403854b90206e7a3e1c2c1a2ea453f862d3e6a835d2adc83181e00918149bb` |
| 17 | `theorem` | [correctedNumerator_eq_prefix_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltNamespaced.lean/declarations/correctednumerator-eq-prefix-integral.md) | 178 | `result-track:cb993b3ba8e7b405ff96709260ba9bde2b06e5fc10a38e0ff1c1aa99e377932a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f79c7361d2d0a08d4f198c9ca00335e1edec105e35723e5011f6a592526a303 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTilt/Variant983fc34bca46d4096c332855f51a703942c3237b866cafa6afde8854a67579a6.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTilt/Variant983fc34bca46d4096c332855f51a703942c3237b866cafa6afde8854a67579a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
