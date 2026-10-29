# Verification target: Source Prime Square Tail Work Edition7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ad2bf2441a9796f69570f6f82d759bf2c6a21f8",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variantc70e0a594e4f1acab75c2baa9d840b241dea9eed27edc61a70448c1c2d6b498f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition7.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ad2bf2441a9796f69570f6f82d759bf2c6a21f8`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variantc70e0a594e4f1acab75c2baa9d840b241dea9eed27edc61a70448c1c2d6b498f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variantc70e0a594e4f1acab75c2baa9d840b241dea9eed27edc61a70448c1c2d6b498f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairedPrimeAverages` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceHigherPrimePowerCoefficients` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squarePrefixCoefficient](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition7.lean/declarations/squareprefixcoefficient.md) | 27 | `declaration-track:7de028baa24a6660763dbdfb58960214c2ebf06d7381bde022bdffcbe9168e06` |
| 2 | `theorem` | [squarePrefixCoefficient_eq_slice](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition7.lean/declarations/squareprefixcoefficient-eq-slice.md) | 30 | `result-track:7552ad605040c7f807f82bba6d982f114d588d05302dd063526896d5c7ea273a` |
| 3 | `theorem` | [squarePrefixCoefficient_summable](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition7.lean/declarations/squareprefixcoefficient-summable.md) | 43 | `result-track:6d1a986883a70a6f2fead3f4e540e0604268b137f4d652ae705f29c6de21da37` |
| 4 | `theorem` | [squarePrefixCoefficient_pos](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition7.lean/declarations/squareprefixcoefficient-pos.md) | 51 | `result-track:b1725f695663dadc929d0018e3bae65dd5719f628f8f6533209c1300664c9f0c` |
| 5 | `def` | [squarePrefixBaseline](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition7.lean/declarations/squareprefixbaseline.md) | 57 | `declaration-track:060f9cc4b9e712b300c10081880a24ab6972e0093d86ec10248d68b8e4dab318` |
| 6 | `def` | [squarePrefix](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition7.lean/declarations/squareprefix.md) | 60 | `declaration-track:6620569cddb75852eaea84c8228ba16401196a4c96afbab89e41d9642b48985a` |
| 7 | `def` | [squareTail](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition7.lean/declarations/squaretail.md) | 64 | `declaration-track:450a8a7bf6f372beb545b27977ad5d6c599b87d5d8a7467a36e03f2eb42e1e31` |
| 8 | `def` | [squareTailWork](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition7.lean/declarations/squaretailwork.md) | 67 | `declaration-track:50f7cce0f379b2ebc56c2de2fcbc0edee26de9adeb85ac29a79e0a6c97031865` |
| 9 | `def` | [squareTailNegativeMean](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition7.lean/declarations/squaretailnegativemean.md) | 71 | `declaration-track:985988386730448da4cc001b00c132f71b61012f69f00011327a1984cb5ba945` |
| 10 | `def` | [squareTailPairedWork](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition7.lean/declarations/squaretailpairedwork.md) | 75 | `declaration-track:a0cb63ef8e8d01e4cc00f5730c295d059948119b84820c734d000544be39f4b5` |
| 11 | `theorem` | [squarePrefixBaseline_nonneg](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition7.lean/declarations/squareprefixbaseline-nonneg.md) | 79 | `result-track:1ee2b0fd1924daf9b0afcdf2b86a859f1e1d6c5138f8ee184f25b1dffa861dcf` |
| 12 | `theorem` | [squarePrefixBaseline_pos](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition7.lean/declarations/squareprefixbaseline-pos.md) | 82 | `result-track:1039f545b6f5ea5d5135206860c4e7261ee849e78e8e4007760cd310a781b049` |
| 13 | `theorem` | [squarePrefix_eq_steps](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition7.lean/declarations/squareprefix-eq-steps.md) | 88 | `result-track:01d5f80b7f71b4157343393a113d80f1a19a22e97143b3119bd827468d5e6605` |
| 14 | `theorem` | [squarePrefix_mul_deriv_intervalIntegrable](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition7.lean/declarations/squareprefix-mul-deriv-intervalintegrable.md) | 102 | `result-track:8b22181ea794d5f14a03f9c83ac2124b91d42299efe4b3430afbb6d18f583068` |
| 15 | `theorem` | [squareTail_mul_deriv_intervalIntegrable](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition7.lean/declarations/squaretail-mul-deriv-intervalintegrable.md) | 125 | `result-track:fdc1606a424c5d798e393afd3edb1ac820f063eeb91bebe993af871eaf4f9327` |
| 16 | `theorem` | [squarePrefix_source_work](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition7.lean/declarations/squareprefix-source-work.md) | 134 | `result-track:8f8c5302fc056fdac61e717083c4f9e98da93acca0f19c52f08986334ce51b50` |
| 17 | `theorem` | [squareTailWork_eq](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition7.lean/declarations/squaretailwork-eq.md) | 167 | `result-track:f7f34d6bbfb41912a165f17e4785cf0cf8a4c8ec775986a13bb933fbba51835b` |
| 18 | `theorem` | [squareTail_intervalIntegrable](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition7.lean/declarations/squaretail-intervalintegrable.md) | 183 | `result-track:7fc7fc84d904dbdd628b25b46ec9ff20b48496401fbe4e3ecf0635c3a38f41d1` |
| 19 | `theorem` | [squareTailPairedWork_eq_work_add_mean](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition7.lean/declarations/squaretailpairedwork-eq-work-add-mean.md) | 190 | `result-track:8e693ad7f5d5be72d07dbed7b9d47be8b60bfeba0d56ba860b7fa314a0b1074a` |
| 20 | `def` | [squareRemovedPairedWork](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition7.lean/declarations/squareremovedpairedwork.md) | 213 | `declaration-track:fad695323e354ffcf2e8d177b2a3aa7913d3e58bf7123e083285a17213e72e5f` |
| 21 | `def` | [squareRemovedRemainder](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition7.lean/declarations/squareremovedremainder.md) | 219 | `declaration-track:463d3f4695e7a81f9b97f840b6923cc4bbe39221a1a0bdb55d00d9c3c848b3a0` |
| 22 | `theorem` | [squareRemovedPairedWork_eq](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition7.lean/declarations/squareremovedpairedwork-eq.md) | 224 | `result-track:16c86c4466947eb4e4e903b4d77a06643cf76c597e95844e51d93b2460a430f5` |
| 23 | `theorem` | [mertensResidual_eq_squareRemoved](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition7.lean/declarations/mertensresidual-eq-squareremoved.md) | 241 | `result-track:2b5c0fa996453d11a377cd6fcf0af59c63eb5f1252da8775f5a2441759da805d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f84fe6dc0dbbf21624da25e48b3cc7c34c4cf38d89068a5e1e82f1c61a4bcffe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variantc70e0a594e4f1acab75c2baa9d840b241dea9eed27edc61a70448c1c2d6b498f.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variantc70e0a594e4f1acab75c2baa9d840b241dea9eed27edc61a70448c1c2d6b498f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
