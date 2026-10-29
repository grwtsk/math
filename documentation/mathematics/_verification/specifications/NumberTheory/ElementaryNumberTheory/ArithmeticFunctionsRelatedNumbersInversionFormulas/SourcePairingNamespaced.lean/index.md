# Verification target: Source Pairing Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5182ac087f0d9ba49f57ca21141ef5a94f8f9027",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairing/Variantb0ff229146eab1a4df106889773e951e22a6edab2cd55f2ee2550446776e7915.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5182ac087f0d9ba49f57ca21141ef5a94f8f9027`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairing/Variantb0ff229146eab1a4df106889773e951e22a6edab2cd55f2ee2550446776e7915.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairing/Variantb0ff229146eab1a4df106889773e951e22a6edab2cd55f2ee2550446776e7915.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.MathematicalTooling.Reflection.Interval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Digamma` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LocallyIntegrable` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourceBump](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/sourcebump.md) | 44 | `declaration-track:901cd40d4aa60b9753d9801905545d72383a337590dc2af853ec9e34afe70710` |
| 2 | `def` | [scaledBump](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/scaledbump.md) | 48 | `declaration-track:a782fab9c6d693d16173734e8b0928cadef1d56c6d12d5b1fa6e117738123a3f` |
| 3 | `def` | [sourceNormalization](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/sourcenormalization.md) | 51 | `declaration-track:f8b952c61db81966357172e3bb47bce5d042fe57ede7b34cff998315fe070996` |
| 4 | `theorem` | [source_normalization_pos](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/source-normalization-pos.md) | 55 | `result-track:aa981857c131b9a88802df30a67cd92cc64e150093839681aafc5205a08be532` |
| 5 | `def` | [IsWeakSecondDerivative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/isweaksecondderivative.md) | 65 | `declaration-track:fc623af5be2daad88ec8af67f1030b8b83fc027efddc1b9a5d8e6eb5af17f8d6` |
| 6 | `def` | [dilationTest](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/dilationtest.md) | 73 | `declaration-track:72e74b35b75ad8d8792b938de9d9f3c9c7e07477ac7126fdde2d3421320df122` |
| 7 | `def` | [normalizedTest](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/normalizedtest.md) | 78 | `declaration-track:f69496bd8eb8027c45686d4c3ea3900a76b7a26fb63cc9b59b1a23952052b06a` |
| 8 | `def` | [sourceCorrelation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/sourcecorrelation.md) | 82 | `declaration-track:b747c9776d622022c8cb44c4de42460ae963df65d57ec65a5462492875763cc3` |
| 9 | `def` | [chebyshevPrimePower](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/chebyshevprimepower.md) | 87 | `declaration-track:2eb6a93e71720bb2625b5c753f38487378aa4588bcc9d2b812a78df825482759` |
| 10 | `def` | [chebyshevError](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/chebysheverror.md) | 91 | `declaration-track:ebba5c545e87244f477c33c3e7640a9a48175cc6fd2a9e3f921ea42a70407a12` |
| 11 | `def` | [lowerEndpoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/lowerendpoint.md) | 94 | `declaration-track:ca000d561941a1405e69efd31085364b70316508c5610ff6b19ac40fdbe8c4a5` |
| 12 | `theorem` | [source_interval_order](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/source-interval-order.md) | 96 | `result-track:a2c5fbbf4478e80ac26422ad3d19d5c679fa840ae691bb8bbedf1d288685a43d` |
| 13 | `theorem` | [chebyshev_error_at_two](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/chebyshev-error-at-two.md) | 103 | `result-track:a125ded4e5cfe8e06a4259fd000816397c4639227f6d78bb7e280a3c96b4e1bd` |
| 14 | `def` | [sourceWeight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/sourceweight.md) | 109 | `declaration-track:65077c2840b714db8ba6109de6800d350479bec20176d2ca7247f682f34a4857` |
| 15 | `def` | [errorProfile](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/errorprofile.md) | 114 | `declaration-track:38ba0a71d0124f0db9af350e27d32c9bfab01a95f37b99d71649bf490714d796` |
| 16 | `def` | [signedPairing](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/signedpairing.md) | 117 | `declaration-track:00f32cb1de420121e6664c82b517d7c1cc9dc09324b280fb197a565d56ecf0ff` |
| 17 | `def` | [sourceFourier](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/sourcefourier.md) | 121 | `declaration-track:a821e11d099ef7cd2e7646198a94f23c8abf82aabe9dcb313d21f309ec018776` |
| 18 | `def` | [archimedeanMultiplier](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/archimedeanmultiplier.md) | 125 | `declaration-track:8247b7d6a5affa825d1a928ff217dfe26d65147782e3512009ab66b0e49afad5` |
| 19 | `def` | [archimedeanIntegrand](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/archimedeanintegrand.md) | 129 | `declaration-track:9f402eeabd7bce80e86d450086c0cf3604f31e74f25de335a7e1e4db10e9fda9` |
| 20 | `def` | [archimedeanValue](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/archimedeanvalue.md) | 133 | `declaration-track:172a997b6365e3f273cff77abfed4e086be568ee0cb9e95f76c73b2338072775` |
| 21 | `def` | [primeTwoBoundary](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/primetwoboundary.md) | 137 | `declaration-track:09cbb587fbc88b84a01a82ac1529b532d7e317f2fccdaa69d4096b3beb03bed6` |
| 22 | `theorem` | [prime_two_boundary_eq_zero_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/prime-two-boundary-eq-zero-iff.md) | 143 | `result-track:45a79f6370530fff95d3a753c2b6205d375e9bed4d96582e9b2417423d79b598` |
| 23 | `def` | [analyticCorrection](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/analyticcorrection.md) | 149 | `declaration-track:83a4a343df6eac05cb12dd1045db2290105d60f0ed3b261d73b2c9df20deeb0d` |
| 24 | `def` | [primePowerContribution](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/primepowercontribution.md) | 156 | `declaration-track:cf2efac0219b9499c9e9e098eaa44f6f3078570900c9765f98532e55035b4875` |
| 25 | `def` | [sourceQuadraticValue](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/sourcequadraticvalue.md) | 161 | `declaration-track:751f0a5a785bbdf76c4104d0e25c28e1961d5ddbd124837b0749996ea40250a8` |
| 26 | `structure` | [DilationRealization](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/dilationrealization.md) | 168 | `declaration-track:1a40b2b706ba2897f24dcf93c5db6ca8659c6765fd288378656636e9e561fa2a` |
| 27 | `def` | [SourceRealizationExists](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/sourcerealizationexists.md) | 200 | `declaration-track:1944318c1a38c0882f83b7ccd1cf397befea4ecdfbc185618544764c987b857d` |
| 28 | `def` | [SourceRealizationUnique](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/sourcerealizationunique.md) | 204 | `declaration-track:1334ef75a6f1c53c47c1bf717bcd1f2daec2cee65a4332ad4c85a1ef9cab68d4` |
| 29 | `def` | [UniformSignedLowerBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/uniformsignedlowerbound.md) | 209 | `declaration-track:a72a41fffc17900c692f306dcec6ca96791598f60fed941e2276f15875b42f67` |
| 30 | `def` | [UniformSignedTailLowerBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/uniformsignedtaillowerbound.md) | 214 | `declaration-track:a40ba314a081d5dd220077481497599ddeec05a8b546bdcf888ec7b576ca65e0` |
| 31 | `theorem` | [uniform_lower_bound_implies_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/uniform-lower-bound-implies-tail.md) | 218 | `result-track:88f6c12ae265bc47e86a3a9288fdc13b2512dc04442140de56382eb120fb1857` |
| 32 | `def` | [ArithmeticRepresentation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/arithmeticrepresentation.md) | 225 | `declaration-track:1ce671af1fa1fe68c9f549d3b3f2f165bd85ef326b069dcbdcb1c988cfab6948` |
| 33 | `def` | [sourceReflection](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/sourcereflection.md) | 230 | `declaration-track:bf8b14d45b6c81a209fc841b2f82728b16c9599998d2c108bde438d21dfcdd66` |
| 34 | `theorem` | [source_reflection_involutive](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/source-reflection-involutive.md) | 232 | `result-track:9e8afd62db1355c56899e6ae7457e1bd5ff2c4fbf4f8873b35b80a5d1c7eb108` |
| 35 | `theorem` | [source_reflection_preserves_interval](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/source-reflection-preserves-interval.md) | 235 | `result-track:6f0908a37f2c3d1239a325e7a0659be79a5970dc6fdd12be0d861f16a0e157f3` |
| 36 | `theorem` | [signed_pairing_polarization](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/signed-pairing-polarization.md) | 242 | `result-track:b417028878be611a3fb421393566e9ba3aae825444e41cca8d3ed23e6fcbac41` |
| 37 | `theorem` | [signed_pairing_reflection_decomposition](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourcePairingNamespaced.lean/declarations/signed-pairing-reflection-decomposition.md) | 259 | `result-track:c730c24166cb96c5d402bb708e13e3a060888536de56196979c4ec2a93d7e5ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f8798ffcffefd3a9aad2a1fa0aa1fd068ec900eab895eb3af7422639f2a27ab0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairing/Variantb0ff229146eab1a4df106889773e951e22a6edab2cd55f2ee2550446776e7915.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairing/Variantb0ff229146eab1a4df106889773e951e22a6edab2cd55f2ee2550446776e7915.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
