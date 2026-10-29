# Verification target: Kapitza Source Storage Derivation Components Alternative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2c42de317a3e56db7a15d21a86d07f63a532532",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bccf80cd93cd426909ab4a17fd2189ee13ee5f599fddd9b4b7368d08e8466964SourceKapitzaSto/Varianta9ff1d6e84d8ad274e8195bf00cf5203f770f237d792ca542b2a31ed142420e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2c42de317a3e56db7a15d21a86d07f63a532532`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bccf80cd93cd426909ab4a17fd2189ee13ee5f599fddd9b4b7368d08e8466964SourceKapitzaSto/Varianta9ff1d6e84d8ad274e8195bf00cf5203f770f237d792ca542b2a31ed142420e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Bccf80cd93cd426909ab4a17fd2189ee13ee5f599fddd9b4b7368d08e8466964SourceKapitzaSto/Varianta9ff1d6e84d8ad274e8195bf00cf5203f770f237d792ca542b2a31ed142420e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [storage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/storage.md) | 26 | `declaration-track:b1f2c0a53911b1beb58a8f0f0128534db27d77bd9d1a26cdca0c8f2ddc45ace4` |
| 2 | `def` | [initialStorage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/initialstorage.md) | 29 | `declaration-track:ab782fb889113029f68def9d1f4d4829df2011ef4c455c9c5e2a8f51d330ad45` |
| 3 | `theorem` | [drift_identity](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/drift-identity.md) | 32 | `result-track:9d1b52412fd262b03c747c8fd63a1984969e04cf05590482a6bcfd967853e9f1` |
| 4 | `theorem` | [hasDerivAt_storage](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/hasderivat-storage.md) | 39 | `result-track:f00529eb0de62c7cb0f889195d6d5119bdab09059716c38892433bc13239f573` |
| 5 | `theorem` | [hasDerivAt_weight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/hasderivat-weight.md) | 48 | `result-track:e0368fe81795717e5f0f311d95dfbbe46293c22a8aa2932efc8729a04164046e` |
| 6 | `theorem` | [corrector_cancellation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/corrector-cancellation.md) | 55 | `result-track:34b4cdc97df3097c271bc3cde13dff99c2265753e8a9af586806e5a24becfa09` |
| 7 | `theorem` | [hasDerivAt_corrector](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/hasderivat-corrector.md) | 61 | `result-track:fca36b1389faa3dc4d165506de1ab9c6b50d2a7a1b06e019923c2c1ed2ab1f67` |
| 8 | `theorem` | [jump_continuous_corrector](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/jump-continuous-corrector.md) | 71 | `result-track:b4bd753dd420ad62a82256bfe4499a67ffc7f0251bb587e0c5e3e2f9c84ece5e` |
| 9 | `theorem` | [jump_jumping_corrector](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/jump-jumping-corrector.md) | 77 | `result-track:5aead46e7cfdb0599b953f48e81cb4b185c4ce522ede12859382ad8c850c9aa0` |
| 10 | `theorem` | [storage_endpoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/storage-endpoint.md) | 84 | `result-track:f0e0b9649f2952780d586d94f19c5ec64fb054368894ce2f5b44764bf2940373` |
| 11 | `theorem` | [storage_complete_square](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/storage-complete-square.md) | 87 | `result-track:53b8bae0a3343e38906a3c5057b97c562ccdd259a8211b8c7ffd1d15051424b8` |
| 12 | `theorem` | [initialStorage_reconstruction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/initialstorage-reconstruction.md) | 93 | `result-track:05b2f9cbe40834be1c39975c26fc963400341f46e27aa3f0d974855076587475` |
| 13 | `theorem` | [initialStorage_abs_sub_four](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/initialstorage-abs-sub-four.md) | 99 | `result-track:d69fd165f3ba5c2666fbef1c8b159f3982f329fbe6fc40cf8f64aeb04a814fff` |
| 14 | `theorem` | [initialStorage_abs_sub_four_linear](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/initialstorage-abs-sub-four-linear.md) | 120 | `result-track:0cb8a81599692ab5a5fc856aeccb0a690f1bfe5b2d01de66c697c773d929f53d` |
| 15 | `theorem` | [initialStorage_epsilon](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/initialstorage-epsilon.md) | 128 | `result-track:63befe0e8f08f5f74e780237ec4f9a588f9e6b80c3234781daa6591477947a7e` |
| 16 | `theorem` | [obstruction_coefficients](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/obstruction-coefficients.md) | 144 | `result-track:21b9ea4325db7cb19dfe72b5d26e34b944c0d96b02d0aef44e9990f8a7553ded` |
| 17 | `theorem` | [obstruction_product](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/obstruction-product.md) | 153 | `result-track:1ee09cbf9b9fa986a4d18320d9b2c9ba72b700bd166f6ec7625b24c0cd012320` |
| 18 | `def` | [quadraticImpulse](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/quadraticimpulse.md) | 162 | `declaration-track:5af9f413c347a1e3e2a969585e6611e1f756314c83e82fb0bf72484c681bd6ff` |
| 19 | `def` | [quadraticMajorant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/quadraticmajorant.md) | 166 | `declaration-track:9fc9ecd5a1b8d3e0c277a8e8a5e3743079b406be03865a0b097cf6b5fa1f95e8` |
| 20 | `def` | [quadraticPrimitive](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/quadraticprimitive.md) | 170 | `declaration-track:9b3ef7126efe8f49fca8968cabc2a43f6e9947ca5ca13eca3e7f21bd8f7776b5` |
| 21 | `def` | [quadraticConstant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/quadraticconstant.md) | 174 | `declaration-track:2a3f44093f89097d352c38ac691d19f1736536a89afc1bb0e1085767cfe6f504` |
| 22 | `theorem` | [quadraticImpulse_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/quadraticimpulse-nonneg.md) | 176 | `result-track:f056a2ece457ace4ab77f39ff45bc09601aba4d441c4771c5213fc8ce3f9e3f0` |
| 23 | `theorem` | [quadraticImpulse_le_log](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/quadraticimpulse-le-log.md) | 181 | `result-track:0d2a2f4f4ed206b8f1e07f8e27a222372992648b814ea47125605e6656a7bc42` |
| 24 | `theorem` | [log_atom_le_quadraticMajorant](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/log-atom-le-quadraticmajorant.md) | 188 | `result-track:8b98d16371c18ddce7125b90c60fcf0b32b6524527451ff0922cbc1f3c75db88` |
| 25 | `theorem` | [quadraticPrimitive_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/quadraticprimitive-hasderivat.md) | 204 | `result-track:fcad700888627462034b2682ce46b7261ae0c70597615b5f34ea6f598972adc8` |
| 26 | `theorem` | [quadraticPrimitive_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/quadraticprimitive-one.md) | 239 | `result-track:2c70652964a4da81e037761cc4dfc8df55026c8518a46eb464ec7b314ba2ed76` |
| 27 | `theorem` | [quadraticPrimitive_nonpos](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/quadraticprimitive-nonpos.md) | 243 | `result-track:691ebffc973320779d5139161e1782fa7f1738b6d583b4dcb54c1b8f48220145` |
| 28 | `theorem` | [quadraticMajorant_continuousOn](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/quadraticmajorant-continuouson.md) | 252 | `result-track:79a44c2344f255c259ddec720d4631f14dc233e94c0ce4b39f51cd53d0c3a75a` |
| 29 | `theorem` | [quadraticMajorant_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/quadraticmajorant-integral.md) | 262 | `result-track:cf2bfe93260ccf2f67483906ba136869d27a526e47582cf7824e73f759084fa1` |
| 30 | `theorem` | [quadraticMajorant_integral_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/quadraticmajorant-integral-le.md) | 275 | `result-track:d8e1c06635676b7fe92df5c3dc767182c77bb1f87e74c7d2636401c20b0590ce` |
| 31 | `theorem` | [quadraticImpulse_sum_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/quadraticimpulse-sum-le.md) | 282 | `result-track:1801331cd213f606b4960d612f2c3d1835d2fbfbae89772aec0c8c01a846c526` |
| 32 | `theorem` | [quadraticImpulse_closed_cutoff_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/KapitzaSourceStorageDerivationComponentsAlternative.lean/declarations/quadraticimpulse-closed-cutoff-le.md) | 324 | `result-track:65f6193ee2fdbbae572d7b6bd8ab4a22df1a67202d8ea9bb9984640d52af77cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1dc9570fb8f4508c79066e31e0e0cacbb37c5c9ef8881771d444931077eba691 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bccf80cd93cd426909ab4a17fd2189ee13ee5f599fddd9b4b7368d08e8466964SourceKapitzaSto/Varianta9ff1d6e84d8ad274e8195bf00cf5203f770f237d792ca542b2a31ed142420e4.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Bccf80cd93cd426909ab4a17fd2189ee13ee5f599fddd9b4b7368d08e8466964SourceKapitzaSto/Varianta9ff1d6e84d8ad274e8195bf00cf5203f770f237d792ca542b2a31ed142420e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
