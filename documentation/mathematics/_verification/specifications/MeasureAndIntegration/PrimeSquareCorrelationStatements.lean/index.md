# Verification target: Prime Square Correlation Statements

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b56d42cb84ff1f4bc2d2ee82edb2a26cfc42b90e",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeSquareCorrelationStatements/Variant48e9940155a6c9959a90c6828432fdda3646b64801dc8952a9d93173c9ed6da5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PrimeSquareCorrelationStatements.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PrimeSquareCorrelationStatements.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b56d42cb84ff1f4bc2d2ee82edb2a26cfc42b90e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PrimeSquareCorrelationStatements/Variant48e9940155a6c9959a90c6828432fdda3646b64801dc8952a9d93173c9ed6da5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PrimeSquareCorrelationStatements/Variant48e9940155a6c9959a90c6828432fdda3646b64801dc8952a9d93173c9ed6da5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSecondDerivative` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourceCorrelation_derivative_zero](../../../../MeasureAndIntegration/PrimeSquareCorrelationStatements.lean/declarations/sourcecorrelation-derivative-zero.md) | 15 | `result-track:479c00090035df7b55a486fe65ac62292280b8be39a9151ed8445faa13e0d1fb` |
| 2 | `theorem` | [sourceCorrelation_derivative_linear_bound](../../../../MeasureAndIntegration/PrimeSquareCorrelationStatements.lean/declarations/sourcecorrelation-derivative-linear-bound.md) | 30 | `result-track:fbb20df7aaca03b39e65e26094b20c2a7c70a6e64400dde92fb2051b6b9c94ae` |
| 3 | `theorem` | [sourceCorrelation_double_hasDerivAt](../../../../MeasureAndIntegration/PrimeSquareCorrelationStatements.lean/declarations/sourcecorrelation-double-hasderivat.md) | 43 | `result-track:137c1278daca07dbcee15dc026a1a8d44f417995627f18f6ad0f5d8e1485f8d5` |
| 4 | `theorem` | [sourceCorrelation_double_derivative_abs_le](../../../../MeasureAndIntegration/PrimeSquareCorrelationStatements.lean/declarations/sourcecorrelation-double-derivative-abs-le.md) | 51 | `result-track:4ad40fa5e7a2237744642d4c07cc904b65c0706da5376c866798bcc9983e4a1a` |
| 5 | `def` | [bumpPrimitive](../../../../MeasureAndIntegration/PrimeSquareCorrelationStatements.lean/declarations/bumpprimitive.md) | 63 | `declaration-track:9eee451b312753a2fc5a368623f1ecd599daeee8ca5222cef43e82ce5f5f8465` |
| 6 | `theorem` | [bumpPrimitive_hasDerivAt](../../../../MeasureAndIntegration/PrimeSquareCorrelationStatements.lean/declarations/bumpprimitive-hasderivat.md) | 67 | `result-track:3085c3f40eb725661f0506552b88d7b412b86274cb073707825eb49de796e6e9` |
| 7 | `theorem` | [bumpInterior_integral](../../../../MeasureAndIntegration/PrimeSquareCorrelationStatements.lean/declarations/bumpinterior-integral.md) | 79 | `result-track:215c9bafaffd2ff189616db598628b75e281a781cb103575c93c77232d5b830f` |
| 8 | `theorem` | [explicitSecondDerivative_integral_zero](../../../../MeasureAndIntegration/PrimeSquareCorrelationStatements.lean/declarations/explicitsecondderivative-integral-zero.md) | 88 | `result-track:466f41fde4b2674b9f7da36e0e3506be76325415fdcabd0a6f7291fff0024d80` |
| 9 | `theorem` | [scaledBump_integral](../../../../MeasureAndIntegration/PrimeSquareCorrelationStatements.lean/declarations/scaledbump-integral.md) | 97 | `result-track:460f0532bd5626d596f06c72981d2c405b5f405e1b1326aef487ad1f02bc3972` |
| 10 | `theorem` | [dilationTest_integral](../../../../MeasureAndIntegration/PrimeSquareCorrelationStatements.lean/declarations/dilationtest-integral.md) | 102 | `result-track:9b616bc6a72257f7e7b4680a99026bebe50bfa22f1b7cb6425b852c108b9eecf` |
| 11 | `theorem` | [normalizedTest_integral](../../../../MeasureAndIntegration/PrimeSquareCorrelationStatements.lean/declarations/normalizedtest-integral.md) | 111 | `result-track:79860d4ff8595970cf16cae36eb22a839aa24b99fbfc78af98a0beb1173e16b5` |
| 12 | `theorem` | [sourceCorrelation_integral](../../../../MeasureAndIntegration/PrimeSquareCorrelationStatements.lean/declarations/sourcecorrelation-integral.md) | 118 | `result-track:c6c4f1ea87cd41a92904fd8f748b251e45068a45a1aff454a67fa7f5a59b6478` |
| 13 | `theorem` | [sourceCorrelation_full_eq_four_half](../../../../MeasureAndIntegration/PrimeSquareCorrelationStatements.lean/declarations/sourcecorrelation-full-eq-four-half.md) | 140 | `result-track:0a8c3a693ceecc651afea1cf918cee8927f07a503a196be5653fe672c0e5bd4d` |
| 14 | `theorem` | [sourceCorrelation_double_integral](../../../../MeasureAndIntegration/PrimeSquareCorrelationStatements.lean/declarations/sourcecorrelation-double-integral.md) | 176 | `result-track:6e942a0d803d95c17a1bae65cdc3976755e1d817c52b18e668e3d498e3ee8093` |
| 15 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PrimeSquareCorrelationStatements.lean/declarations/example.md) | 204 | `declaration-track:0ff3b88680a2d8dcef8e07e1ffb11781dfb9f9b5779dd01185c5157cb43be511` |
| 16 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PrimeSquareCorrelationStatements.lean/declarations/example-source-edition-10.md) | 208 | `declaration-track:adc9cdcdd09d50f73e22c872b0f94d1ab8aaa16fce96428c6bf42a69ce441541` |
| 17 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PrimeSquareCorrelationStatements.lean/declarations/example-source-edition-2.md) | 213 | `declaration-track:1be6227b8a3e940e524856343ca549aa8069d80ba3035b91594fe4dc7f2c5ff2` |
| 18 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PrimeSquareCorrelationStatements.lean/declarations/example-source-edition-12.md) | 218 | `declaration-track:d1abe5552ca9d4022a8178f9e3b2097fbb4742e6ebaf97b6d67576ad9378cdc4` |
| 19 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PrimeSquareCorrelationStatements.lean/declarations/example-source-edition-13.md) | 223 | `declaration-track:d9de023f95a3aea90e5fd541571a1317413fabc1421d586476ae4d7107b1f998` |
| 20 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PrimeSquareCorrelationStatements.lean/declarations/example-source-edition-8.md) | 227 | `declaration-track:902f078a30f61d013ac0f9ef64a2ecd0693a31c0b02f0d7efbcc1b67f5ddef29` |
| 21 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PrimeSquareCorrelationStatements.lean/declarations/example-source-edition-6.md) | 231 | `declaration-track:6d4a3ea9b6b18f3e7e29ce978ecc049f4e968b821fee12e881e24c2f39cc602e` |
| 22 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PrimeSquareCorrelationStatements.lean/declarations/example-source-edition-4.md) | 235 | `declaration-track:4d794cb3c456e5b89fe044d0c6bb90737b3732c308b2dab5c351c6861cde500c` |
| 23 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PrimeSquareCorrelationStatements.lean/declarations/example-source-edition-7.md) | 239 | `declaration-track:728491c9fff230ae98b87ac5bea3cbee5280623ce982f10d7d03d8604eb8e681` |
| 24 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PrimeSquareCorrelationStatements.lean/declarations/example-source-edition-11.md) | 243 | `declaration-track:af8468255e08b2bd802f3f0f63a90c013365c64b1880f884b31603a5f47ff200` |
| 25 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PrimeSquareCorrelationStatements.lean/declarations/example-source-edition-5.md) | 248 | `declaration-track:4e31adcb1681080f33fe7f79d40b86e994a339670881f7d09f54450f15e63552` |
| 26 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PrimeSquareCorrelationStatements.lean/declarations/example-source-edition-3.md) | 253 | `declaration-track:2e5f1714374cb18ca5ded980363114aae604cd04bd4be7baab13bdcb62787a11` |
| 27 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PrimeSquareCorrelationStatements.lean/declarations/example-source-edition-9.md) | 258 | `declaration-track:9d4e9f2819b7045935bcac6fc150cb7cc4ac752b6a6bcbec39b0a6189d0b1393` |
| 28 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PrimeSquareCorrelationStatements.lean/declarations/example-source-edition-14.md) | 263 | `declaration-track:e9c492ce64c538415eebfb701b2eda885612346d22d82a4d62c77efa0c08ef06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc70d5f556c2012bc36467da487d19de5fbb04867d111b2eae02109d17dd8322 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/PrimeSquareCorrelationStatements/Variant48e9940155a6c9959a90c6828432fdda3646b64801dc8952a9d93173c9ed6da5.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/PrimeSquareCorrelationStatements/Variant48e9940155a6c9959a90c6828432fdda3646b64801dc8952a9d93173c9ed6da5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
