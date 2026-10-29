# Verification target: Localization Integral Namespaced Coeff Integer Normalization Of Coeff Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbf5dd8b32e11a86356b34fd6b2a29add25ac3a3",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Integral/Variantc31a718d02aaa79d3f058a54a376bc36a55155ebe2ebdf858822cf24f6008382.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/LocalizationIntegralNamespacedCoeffIntegerNormalizationOfCoeffZero.lean/index.md) · [Full source](../../../../CommutativeAlgebra/LocalizationIntegralNamespacedCoeffIntegerNormalizationOfCoeffZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbf5dd8b32e11a86356b34fd6b2a29add25ac3a3`.

Source path: `GRWTSK/Algebra/Integral/Variantc31a718d02aaa79d3f058a54a376bc36a55155ebe2ebdf858822cf24f6008382.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Integral/Variantc31a718d02aaa79d3f058a54a376bc36a55155ebe2ebdf858822cf24f6008382.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.NonZeroDivisors` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Lifts` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.MonoidLocalization.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic.Integral` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.Algebra.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integer` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coeffIntegerNormalization](../../../../CommutativeAlgebra/LocalizationIntegralNamespacedCoeffIntegerNormalizationOfCoeffZero.lean/declarations/coeffintegernormalization.md) | 51 | `declaration-track:4f394f3260a278b325a9605533565e526c041e1b07b1eb609a17b01cb188c41b` |
| 2 | `theorem` | [coeffIntegerNormalization_of_coeff_zero](../../../../CommutativeAlgebra/LocalizationIntegralNamespacedCoeffIntegerNormalizationOfCoeffZero.lean/declarations/coeffintegernormalization-of-coeff-zero.md) | 58 | `result-track:ed7b4155cbce27904cb6a4f7b7cf35657907aac91e291cf9964cf71b7252fc27` |
| 3 | `theorem` | [coeffIntegerNormalization_mem_support](../../../../CommutativeAlgebra/LocalizationIntegralNamespacedCoeffIntegerNormalizationOfCoeffZero.lean/declarations/coeffintegernormalization-mem-support.md) | 66 | `result-track:e17b901c63f5bdc064725897a2cf21a013e4423830dcef5b4ce213738e20e9a4` |
| 4 | `def` | [integerNormalization](../../../../CommutativeAlgebra/LocalizationIntegralNamespacedCoeffIntegerNormalizationOfCoeffZero.lean/declarations/integernormalization.md) | 73 | `declaration-track:04f985d0e2aee1a13692f09c9e18c95496cc724500ab0307365efbd784d753d3` |
| 5 | `theorem` | [integerNormalization_coeff](../../../../CommutativeAlgebra/LocalizationIntegralNamespacedCoeffIntegerNormalizationOfCoeffZero.lean/declarations/integernormalization-coeff.md) | 77 | `result-track:59693cb4c5316612f85c7e4bbbb36499b1d8981ef335fb6f13ab3b5536344497` |
| 6 | `theorem` | [integerNormalization_spec](../../../../CommutativeAlgebra/LocalizationIntegralNamespacedCoeffIntegerNormalizationOfCoeffZero.lean/declarations/integernormalization-spec.md) | 82 | `result-track:d048d74d0c2fc7b53a6094daa52659408f4f16d2d2a2edde9f3113e31c4e54ba` |
| 7 | `theorem` | [integerNormalization_map_to_map](../../../../CommutativeAlgebra/LocalizationIntegralNamespacedCoeffIntegerNormalizationOfCoeffZero.lean/declarations/integernormalization-map-to-map.md) | 96 | `result-track:8fd8096c3d2ded3eaa9c27e0da263c39a6099b7f717d6549e47791a5307c437e` |
| 8 | `theorem` | [integerNormalization_eval₂_eq_zero](../../../../CommutativeAlgebra/LocalizationIntegralNamespacedCoeffIntegerNormalizationOfCoeffZero.lean/declarations/integernormalization-eval-eq-zero.md) | 106 | `result-track:c8d50f647ca542d1b272a5ad042ed0d26333821a0f2f05b89abcac3cb3641a2d` |
| 9 | `theorem` | [integerNormalization_aeval_eq_zero](../../../../CommutativeAlgebra/LocalizationIntegralNamespacedCoeffIntegerNormalizationOfCoeffZero.lean/declarations/integernormalization-aeval-eq-zero.md) | 112 | `result-track:22ebb617da2d967660683955ba79906cdfb4f01fc066b1b5cf7dd5806c3da10c` |
| 10 | `theorem` | [integerNormalization_eq_zero_iff](../../../../CommutativeAlgebra/LocalizationIntegralNamespacedCoeffIntegerNormalizationOfCoeffZero.lean/declarations/integernormalization-eq-zero-iff.md) | 128 | `result-track:25690b957f4c633bd8a839e9b94f250552d5d1d2ab296533a0bccd89e840667e` |
| 11 | `theorem` | [isAlgebraic_iff](../../../../CommutativeAlgebra/LocalizationIntegralNamespacedCoeffIntegerNormalizationOfCoeffZero.lean/declarations/isalgebraic-iff.md) | 147 | `result-track:41a3895df4c4e92f869c8860ec29c479d06b48d7116daa5bd03933ecbcbd617a` |
| 12 | `theorem` | [comap_isAlgebraic_iff](../../../../CommutativeAlgebra/LocalizationIntegralNamespacedCoeffIntegerNormalizationOfCoeffZero.lean/declarations/comap-isalgebraic-iff.md) | 163 | `result-track:9a78cb507e5381a065a229acae25056f4d6124183815d48036319f8390f0a223` |
| 13 | `theorem` | [RingHom.isIntegralElem_localization_at_leadingCoeff](../../../../CommutativeAlgebra/LocalizationIntegralNamespacedCoeffIntegerNormalizationOfCoeffZero.lean/declarations/ringhom-isintegralelem-localization-at-leadingcoeff.md) | 181 | `result-track:a09616580a419f0f444ba33bbfb064a850227c49458893f84cde66f78c0de3e6` |
| 14 | `theorem` | [is_integral_localization_at_leadingCoeff](../../../../CommutativeAlgebra/LocalizationIntegralNamespacedCoeffIntegerNormalizationOfCoeffZero.lean/declarations/is-integral-localization-at-leadingcoeff.md) | 202 | `result-track:86ca0e80e9233b7b47b150e68e8ec7db86b7f1e0a8e812ae064c66f7a1b32a3a` |
| 15 | `theorem` | [isIntegral_localization](../../../../CommutativeAlgebra/LocalizationIntegralNamespacedCoeffIntegerNormalizationOfCoeffZero.lean/declarations/isintegral-localization.md) | 217 | `result-track:554891e9e4abf87da0e8e660b1c10e1dcda4f6c37312a03fcb87515fd1ac1f64` |
| 16 | `theorem` | [isIntegral_localization'](../../../../CommutativeAlgebra/LocalizationIntegralNamespacedCoeffIntegerNormalizationOfCoeffZero.lean/declarations/isintegral-localization-source-edition-2.md) | 235 | `result-track:ff5b9c1a51c64189b8a617ad439913097ffaee524e3285840a430c6da3bcd6f9` |
| 17 | `theorem` | [IsLocalization.scaleRoots_commonDenom_mem_lifts](../../../../CommutativeAlgebra/LocalizationIntegralNamespacedCoeffIntegerNormalizationOfCoeffZero.lean/declarations/islocalization-scaleroots-commondenom-mem-lifts.md) | 249 | `result-track:d91ba11bfbbc78785dd7d3ceb5bf926781e2c602967ab89215ca66b57bad8ab1` |
| 18 | `theorem` | [IsIntegral.exists_multiple_integral_of_isLocalization](../../../../CommutativeAlgebra/LocalizationIntegralNamespacedCoeffIntegerNormalizationOfCoeffZero.lean/declarations/isintegral-exists-multiple-integral-of-islocalization.md) | 271 | `result-track:2f2d64aeefa8c261b4a22d9a808007c4b9e620e2751b86225f433d28ebc4fcb6` |
| 19 | `theorem` | [isFractionRing_of_algebraic](../../../../CommutativeAlgebra/LocalizationIntegralNamespacedCoeffIntegerNormalizationOfCoeffZero.lean/declarations/isfractionring-of-algebraic.md) | 304 | `result-track:27d9eb4547bb581c5433ee974c1bd1aba8c2d360aba958ff8e6ef2cf8db4cfc9` |
| 20 | `theorem` | [isFractionRing_of_finite_extension](../../../../CommutativeAlgebra/LocalizationIntegralNamespacedCoeffIntegerNormalizationOfCoeffZero.lean/declarations/isfractionring-of-finite-extension-source-edition-2.md) | 322 | `result-track:659605b09e103967a3beb6aec8b0b6d30f307d3cc9474209b9785c3e86664a17` |
| 21 | `theorem` | [isFractionRing_of_algebraic](../../../../CommutativeAlgebra/LocalizationIntegralNamespacedCoeffIntegerNormalizationOfCoeffZero.lean/declarations/isfractionring-of-algebraic-source-edition-2.md) | 341 | `result-track:7dfda9f59bb7545ccc1e5ba9de48558fcf663311ab5124574790ec1e55c60d7d` |
| 22 | `theorem` | [isFractionRing_of_finite_extension](../../../../CommutativeAlgebra/LocalizationIntegralNamespacedCoeffIntegerNormalizationOfCoeffZero.lean/declarations/isfractionring-of-finite-extension.md) | 349 | `result-track:1de15fd79d2ce230cdc86d21366100e5e2d0fc35a92cb844f9c68fcb63b0a59c` |
| 23 | `theorem` | [isAlgebraic_iff'](../../../../CommutativeAlgebra/LocalizationIntegralNamespacedCoeffIntegerNormalizationOfCoeffZero.lean/declarations/isalgebraic-iff-source-edition-2.md) | 360 | `result-track:f7c58f993e4649c56f8a64ff4a2ddacb45b82d0f3c53c1f5c9bf0fcb92a287c2` |
| 24 | `theorem` | [ideal_span_singleton_map_subset](../../../../CommutativeAlgebra/LocalizationIntegralNamespacedCoeffIntegerNormalizationOfCoeffZero.lean/declarations/ideal-span-singleton-map-subset.md) | 409 | `result-track:17c881954c71ddf0458724b353c798eb81a3a4711d4d878bdceb11683ef623f7` |
| 25 | `lemma` | [isAlgebraic_of_isFractionRing](../../../../CommutativeAlgebra/LocalizationIntegralNamespacedCoeffIntegerNormalizationOfCoeffZero.lean/declarations/isalgebraic-of-isfractionring.md) | 446 | `result-track:2f3bec8092fec8154812988038c48f4af98ebec18c2caddb6db10db26c65b575` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8cc33d272411c8831388638ffaf3345c2ebc517cb19c6d4499eda5ec29438eb0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Integral/Variantc31a718d02aaa79d3f058a54a376bc36a55155ebe2ebdf858822cf24f6008382.lean","GRWTSK/_verification/specifications/Algebra/Integral/Variantc31a718d02aaa79d3f058a54a376bc36a55155ebe2ebdf858822cf24f6008382.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
