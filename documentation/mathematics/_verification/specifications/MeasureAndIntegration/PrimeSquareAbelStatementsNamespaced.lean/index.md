# Verification target: Prime Square Abel Statements Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a784c05d3092f4296615592e3c99e847fa5bd5e",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelStatements/Variantcdc15a19bd6cbf998ad63ede378bc442ffea83313931eb0f6b701f782bc3f33e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PrimeSquareAbelStatementsNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PrimeSquareAbelStatementsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a784c05d3092f4296615592e3c99e847fa5bd5e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelStatements/Variantcdc15a19bd6cbf998ad63ede378bc442ffea83313931eb0f6b701f782bc3f33e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelStatements/Variantcdc15a19bd6cbf998ad63ede378bc442ffea83313931eb0f6b701f782bc3f33e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicPrefix` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicRemainder` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [primeHarmonicPrefix_eq_threshold_sum](../../../../MeasureAndIntegration/PrimeSquareAbelStatementsNamespaced.lean/declarations/primeharmonicprefix-eq-threshold-sum.md) | 25 | `result-track:4ab584243b1fcb19f4fa9aa46ed825943e7f1eaebee5f9daa6e716089d4faf23` |
| 2 | `theorem` | [prime_log_mem_interval](../../../../MeasureAndIntegration/PrimeSquareAbelStatementsNamespaced.lean/declarations/prime-log-mem-interval.md) | 48 | `result-track:2fd5968f3e8a5557a6fa9aab03d842d0c557de748a7f4c6a8e8b590335b878e1` |
| 3 | `theorem` | [closed_tail_intervalIntegrable](../../../../MeasureAndIntegration/PrimeSquareAbelStatementsNamespaced.lean/declarations/closed-tail-intervalintegrable.md) | 58 | `result-track:59bf5ec5ee77e0faa30653526bb69f1ff89c78d1c8c1c6d2ca924aaf47c47391` |
| 4 | `theorem` | [integral_closed_tail](../../../../MeasureAndIntegration/PrimeSquareAbelStatementsNamespaced.lean/declarations/integral-closed-tail.md) | 67 | `result-track:35898b219e652c9eb2bfb0c36e12f0a2e116e31afbbbaffc697d201c37470893` |
| 5 | `theorem` | [sourceCorrelation_double_derivative_continuous](../../../../MeasureAndIntegration/PrimeSquareAbelStatementsNamespaced.lean/declarations/sourcecorrelation-double-derivative-continuous.md) | 84 | `result-track:7c843baca2c8a1ff9e7ad9fefa358937e8bf0bde4a39272967350fb0500e4929` |
| 6 | `theorem` | [primeHarmonicPrefix_mul_intervalIntegrable](../../../../MeasureAndIntegration/PrimeSquareAbelStatementsNamespaced.lean/declarations/primeharmonicprefix-mul-intervalintegrable.md) | 94 | `result-track:7d780823555293c9ee1c77a72b21e5bf408a5e1ce7c05e2bec423c44bb5c126d` |
| 7 | `theorem` | [primeHarmonicPrefix_weighted_abel](../../../../MeasureAndIntegration/PrimeSquareAbelStatementsNamespaced.lean/declarations/primeharmonicprefix-weighted-abel.md) | 120 | `result-track:28d4a42b3f778d87938052fa1f18ded71ecdf83b7dfae1e427516191f8d9f0c6` |
| 8 | `theorem` | [primeHarmonicPrefix_centered](../../../../MeasureAndIntegration/PrimeSquareAbelStatementsNamespaced.lean/declarations/primeharmonicprefix-centered.md) | 158 | `result-track:f38544b9b9f2e718d004541ed660f494d09373191606263365a918a8a6b4d1b5` |
| 9 | `theorem` | [thetaRemainder_mul_intervalIntegrable](../../../../MeasureAndIntegration/PrimeSquareAbelStatementsNamespaced.lean/declarations/thetaremainder-mul-intervalintegrable.md) | 163 | `result-track:98c80fe0de2985fc0b0da768795318579feeb1096d6f4d745f267f4b9b4da237` |
| 10 | `theorem` | [primeHarmonicPrefix_centered_abel](../../../../MeasureAndIntegration/PrimeSquareAbelStatementsNamespaced.lean/declarations/primeharmonicprefix-centered-abel.md) | 177 | `result-track:913c85b957f0c52ec0d51730977288c07ef6bf94884f1b4bc19bf034faa4fc69` |
| 11 | `theorem` | [primeSquare_weighted_abel](../../../../MeasureAndIntegration/PrimeSquareAbelStatementsNamespaced.lean/declarations/primesquare-weighted-abel.md) | 218 | `result-track:ab29a6bdb793da35e4169bc6013f6be10ebe599475bf4e556f6d49ad76107bed` |
| 12 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PrimeSquareAbelStatementsNamespaced.lean/declarations/example-source-edition-2.md) | 248 | `declaration-track:1b81ba05ce2c8aceb5a8bc7a42d7072007d2c72e4954b3924bbf840b95f18022` |
| 13 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PrimeSquareAbelStatementsNamespaced.lean/declarations/example-source-edition-8.md) | 254 | `declaration-track:7988ad9839f19cda4c3c68306edbfb1e51540e2a73948dc62cb2d0e2f4d0ec7f` |
| 14 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PrimeSquareAbelStatementsNamespaced.lean/declarations/example-source-edition-4.md) | 259 | `declaration-track:3c23106b76378b4a53ea4af682795fa389ec012f0d393f22928f22c84bc0c679` |
| 15 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PrimeSquareAbelStatementsNamespaced.lean/declarations/example-source-edition-10.md) | 264 | `declaration-track:957ffa863471f830bda49de63557c50a77ffff37c75b07d7d38fbdbfe7e98584` |
| 16 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PrimeSquareAbelStatementsNamespaced.lean/declarations/example-source-edition-6.md) | 268 | `declaration-track:613a7bdd13fa3f6a6c9d0d6447681dcda91c6e19925fe467b2ed94541d382860` |
| 17 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PrimeSquareAbelStatementsNamespaced.lean/declarations/example-source-edition-11.md) | 272 | `declaration-track:f7e0c13853ee156f6b7fc8fa46d09782db430fffc2acec958895ee450d9231a8` |
| 18 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PrimeSquareAbelStatementsNamespaced.lean/declarations/example-source-edition-9.md) | 277 | `declaration-track:9359ba48f1090f3748a9af409413391d50fc2b34261aa3c16568bc1b5f96d606` |
| 19 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PrimeSquareAbelStatementsNamespaced.lean/declarations/example-source-edition-3.md) | 284 | `declaration-track:24db8bff1b6e34b699d34cb14eefaa11b8750dbe22dec6fb0b7ff7316ec9f1a8` |
| 20 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PrimeSquareAbelStatementsNamespaced.lean/declarations/example-source-edition-5.md) | 288 | `declaration-track:3dad55b0b24c99008314d3ec2a5291842329dc605c149a8df6672c11543f6dc4` |
| 21 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PrimeSquareAbelStatementsNamespaced.lean/declarations/example-source-edition-7.md) | 293 | `declaration-track:6e34a024ede42f5fc0314d1d86491160c2e007330894308d29a04c14349a68c3` |
| 22 | `example` | [(anonymous)](../../../../MeasureAndIntegration/PrimeSquareAbelStatementsNamespaced.lean/declarations/example.md) | 302 | `declaration-track:17106dddd3eeab9c6b23eb4add1e29f72d864dd858794264473bd9eb258cfb01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ecc13db06407468c877c2dee6e58381a7bff173e5e0c282373c48666b590e6e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelStatements/Variantcdc15a19bd6cbf998ad63ede378bc442ffea83313931eb0f6b701f782bc3f33e.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelStatements/Variantcdc15a19bd6cbf998ad63ede378bc442ffea83313931eb0f6b701f782bc3f33e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
