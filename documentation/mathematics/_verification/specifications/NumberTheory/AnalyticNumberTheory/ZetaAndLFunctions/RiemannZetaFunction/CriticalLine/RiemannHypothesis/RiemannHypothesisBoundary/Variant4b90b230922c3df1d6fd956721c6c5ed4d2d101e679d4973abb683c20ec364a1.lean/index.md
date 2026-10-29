# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RiemannHypothesisBoundary.Variant4b90b230922c3df1d6fd956721c6c5ed4d2d101e679d4973abb683c20ec364a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db1530d1280fcfd4d799f864baccd38eb4f0e86a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RiemannHypothesisBoundary/Variant4b90b230922c3df1d6fd956721c6c5ed4d2d101e679d4973abb683c20ec364a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RiemannHypothesisBoundary/Variant4b90b230922c3df1d6fd956721c6c5ed4d2d101e679d4973abb683c20ec364a1.lean/index.md) · [Full source](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RiemannHypothesisBoundary/Variant4b90b230922c3df1d6fd956721c6c5ed4d2d101e679d4973abb683c20ec364a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db1530d1280fcfd4d799f864baccd38eb4f0e86a`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RiemannHypothesisBoundary/Variant4b90b230922c3df1d6fd956721c6c5ed4d2d101e679d4973abb683c20ec364a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RiemannHypothesisBoundary/Variant4b90b230922c3df1d6fd956721c6c5ed4d2d101e679d4973abb683c20ec364a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Research.ModularityBridge` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Research.SpectralArithmeticBridge` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.Research.HeatEnergyBounds` — import line 8; external provider; requires a separately pinned dependency.
- `Folder.Research.DeBruijnNewmanBridge` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GRHResearchContract](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RiemannHypothesisBoundary/Variant4b90b230922c3df1d6fd956721c6c5ed4d2d101e679d4973abb683c20ec364a1.lean/declarations/grhresearchcontract--141478c326e51e14799aa777.md) | 30 | `declaration-track:141478c326e51e14799aa777bddd2c3345031724faea5b32bb34f3e7dd707936` |
| 2 | `def` | [AllLFunctionZerosOnCriticalLine](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RiemannHypothesisBoundary/Variant4b90b230922c3df1d6fd956721c6c5ed4d2d101e679d4973abb683c20ec364a1.lean/declarations/alllfunctionzerosoncriticalline--8ec815bc5eb6f3dbf2c46fb4.md) | 42 | `declaration-track:8ec815bc5eb6f3dbf2c46fb4a47ca82e80a82e8a928437304711f22a59cbea88` |
| 3 | `theorem` | [conditional_grh_via_spectral_heat_contract](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RiemannHypothesisBoundary/Variant4b90b230922c3df1d6fd956721c6c5ed4d2d101e679d4973abb683c20ec364a1.lean/declarations/conditional-grh-via-spectral-heat-contract--14a0a7125796f34d732a00ec.md) | 48 | `result-track:14a0a7125796f34d732a00ec290170a9d0ad14e6e9e2dd2bd78b441905d8162e` |
| 4 | `theorem` | [grh_contract_has_analytic_continuation](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RiemannHypothesisBoundary/Variant4b90b230922c3df1d6fd956721c6c5ed4d2d101e679d4973abb683c20ec364a1.lean/declarations/grh-contract-has-analytic-continuation--d7eb54b710815b35318478de.md) | 60 | `result-track:d7eb54b710815b35318478def71d3e23df73aa458db613efeaab8b1d39a7cc7b` |
| 5 | `theorem` | [grh_contract_has_functional_equation](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RiemannHypothesisBoundary/Variant4b90b230922c3df1d6fd956721c6c5ed4d2d101e679d4973abb683c20ec364a1.lean/declarations/grh-contract-has-functional-equation--99742a08558734f712ebd02c.md) | 65 | `result-track:99742a08558734f712ebd02c27f2046a3894760120946a16c34e543274da1703` |
| 6 | `structure` | [GRHUnresolvedIssues](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RiemannHypothesisBoundary/Variant4b90b230922c3df1d6fd956721c6c5ed4d2d101e679d4973abb683c20ec364a1.lean/declarations/grhunresolvedissues--c2618b5b11f78a02a72067fe.md) | 70 | `declaration-track:c2618b5b11f78a02a72067fe2f081c015321c7904281e7d859f0255b7f443039` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f78afb57d8f0dd1de5afb327a072a1f31c800439e53d6b086a365a1df7457874 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RiemannHypothesisBoundary/Variant4b90b230922c3df1d6fd956721c6c5ed4d2d101e679d4973abb683c20ec364a1.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RiemannHypothesisBoundary/Variant4b90b230922c3df1d6fd956721c6c5ed4d2d101e679d4973abb683c20ec364a1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
