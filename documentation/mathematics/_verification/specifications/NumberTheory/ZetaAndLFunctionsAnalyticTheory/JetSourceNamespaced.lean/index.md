# Verification target: Jet Source Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2edd8b5d6899e0d1358dfc256c0e8b611d0f11d1",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant1a13db98c1cd2dc89b073542b298f7d4f046f1433dcdc1e6041947d6e169c495.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/JetSourceNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/JetSourceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2edd8b5d6899e0d1358dfc256c0e8b611d0f11d1`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant1a13db98c1cd2dc89b073542b298f7d4f046f1433dcdc1e6041947d6e169c495.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant1a13db98c1cd2dc89b073542b298f7d4f046f1433dcdc1e6041947d6e169c495.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiHigherDerivatives` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiJetPolynomials` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jetCoefficient](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/JetSourceNamespaced.lean/declarations/jetcoefficient.md) | 17 | `declaration-track:336b6e7792094ccef0971dbb606452d5ad16846866e28ab4fba7a7f7919d89bb` |
| 2 | `theorem` | [jetPolynomial_eq_sum](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/JetSourceNamespaced.lean/declarations/jetpolynomial-eq-sum.md) | 22 | `result-track:4a6f0102f052575823e03d99b7b0f3b5a5750dcbf9d1a9bf43c5ce410ac59ac4` |
| 3 | `def` | [thetaPhiJet](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/JetSourceNamespaced.lean/declarations/thetaphijet.md) | 27 | `declaration-track:2f6fb957b5ca4b4f7074648e7d9878609159ab6f4d7c113ecb848d25bf67f78b` |
| 4 | `theorem` | [thetaPhi_eq_gaussianSums](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/JetSourceNamespaced.lean/declarations/thetaphi-eq-gaussiansums.md) | 30 | `result-track:8d93fe084730c263439c3c31d600c3586b3340cb0812a3932bdddc0989d9020f` |
| 5 | `theorem` | [thetaPhiJet_eq_gaussianSum](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/JetSourceNamespaced.lean/declarations/thetaphijet-eq-gaussiansum.md) | 46 | `result-track:47dd009df3e2ef47b2e176f2ff9af05dba18049729725a0967c019f7c5c6eaf0` |
| 6 | `theorem` | [scaledGaussianTerm_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/JetSourceNamespaced.lean/declarations/scaledgaussianterm-eq.md) | 54 | `result-track:c0a413301509209f68f6cc45923c50467927c7a46b1dd7e62db6d5bef8370f4a` |
| 7 | `theorem` | [thetaPhiJet_eq_polynomial_sum](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/JetSourceNamespaced.lean/declarations/thetaphijet-eq-polynomial-sum.md) | 83 | `result-track:5eb93787882680fb4805db14aa0f34c9608ad94976c23b485f118eae72455082` |
| 8 | `theorem` | [thetaPhiJet_polynomial_summable](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/JetSourceNamespaced.lean/declarations/thetaphijet-polynomial-summable.md) | 115 | `result-track:81a94a74e5fabaca7cdf25cfd799ac3a9e3fb3ac72559473b4821be9cafc7bb5` |
| 9 | `theorem` | [hasDerivAt_thetaPhiJet](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/JetSourceNamespaced.lean/declarations/hasderivat-thetaphijet.md) | 134 | `result-track:5a3084f79f861251d56bbf23a7fcbeaedcd8d808c50f4e8689eb4512a8f4325f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=28af51224437179550ca4eb8cf933d4b0ff94348707369b6533de849ac03fbdd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant1a13db98c1cd2dc89b073542b298f7d4f046f1433dcdc1e6041947d6e169c495.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c796a05ba3b05538339daf9e6c5521e29b3808ddc1e562e83ae783a324f326JetSource/Variant1a13db98c1cd2dc89b073542b298f7d4f046f1433dcdc1e6041947d6e169c495.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
