# Verification target: Riemann Hypothesis Boundary GRHResearch Contract

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d9296241c186cf3291e2e55608f3cfce8cad7ff",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RiemannHypothesisBoundary/Variant301bd4fc30f5b276dd94d39c7b9008f482aa129a565a04ae86ba137027d8e5cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RiemannHypothesisBoundaryGRHResearchContract.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RiemannHypothesisBoundaryGRHResearchContract.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d9296241c186cf3291e2e55608f3cfce8cad7ff`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RiemannHypothesisBoundary/Variant301bd4fc30f5b276dd94d39c7b9008f482aa129a565a04ae86ba137027d8e5cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RiemannHypothesisBoundary/Variant301bd4fc30f5b276dd94d39c7b9008f482aa129a565a04ae86ba137027d8e5cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Research.ModularityBridge` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Research.SpectralArithmeticBridge` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.Research.HeatEnergyBounds` — import line 3; external provider; requires a separately pinned dependency.
- `Folder.Research.DeBruijnNewmanBridge` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GRHResearchContract](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RiemannHypothesisBoundaryGRHResearchContract.lean/declarations/grhresearchcontract.md) | 22 | `declaration-track:7737b6e4f8d9372cd8f53094077844401124cff63c38fb92a7bd7d29e2e62de6` |
| 2 | `def` | [AllLFunctionZerosOnCriticalLine](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RiemannHypothesisBoundaryGRHResearchContract.lean/declarations/alllfunctionzerosoncriticalline.md) | 34 | `declaration-track:cb6b5245d1bca31eac7d64c14f6c77606a84c0806c4f884f7408708af9a9dfab` |
| 3 | `theorem` | [conditional_grh_via_spectral_heat_contract](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RiemannHypothesisBoundaryGRHResearchContract.lean/declarations/conditional-grh-via-spectral-heat-contract.md) | 40 | `result-track:866d9d2645cf487dc6e7aa4119d1ebedefb12fddbb56c364397235f0180efc2e` |
| 4 | `theorem` | [grh_contract_has_analytic_continuation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RiemannHypothesisBoundaryGRHResearchContract.lean/declarations/grh-contract-has-analytic-continuation.md) | 52 | `result-track:eb56b438bbe3aece11fe2b5c712ca4ae111fe568e6c74720760935148f1aa524` |
| 5 | `theorem` | [grh_contract_has_functional_equation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RiemannHypothesisBoundaryGRHResearchContract.lean/declarations/grh-contract-has-functional-equation.md) | 57 | `result-track:233ea26ec52d53a8246405091ea939566b2ddf81016f2c2094d2e8cabac1d990` |
| 6 | `structure` | [GRHUnresolvedIssues](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RiemannHypothesisBoundaryGRHResearchContract.lean/declarations/grhunresolvedissues.md) | 62 | `declaration-track:4919ee636b0cf82706f0198b65b96c1e37dcf79bcc7fe078c75adc5cb85d955e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=09a4e1266927842e155f2d7dbf308ada0e92dea6a9b40d418d2040b96f879beb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RiemannHypothesisBoundary/Variant301bd4fc30f5b276dd94d39c7b9008f482aa129a565a04ae86ba137027d8e5cc.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RiemannHypothesisBoundary/Variant301bd4fc30f5b276dd94d39c7b9008f482aa129a565a04ae86ba137027d8e5cc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
