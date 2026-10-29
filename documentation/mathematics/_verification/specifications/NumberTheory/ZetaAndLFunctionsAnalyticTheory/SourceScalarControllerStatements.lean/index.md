# Verification target: Source Scalar Controller Statements

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08ff95e60b1af057aa928c3f50e970e831c6dfe8",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScalarControllerStatements/Variant6df732d7cecc088716346c4b6125aaae929b4b55a52939a6b0c8864001ff5e2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceScalarControllerStatements.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceScalarControllerStatements.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08ff95e60b1af057aa928c3f50e970e831c6dfe8`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScalarControllerStatements/Variant6df732d7cecc088716346c4b6125aaae929b4b55a52939a6b0c8864001ff5e2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScalarControllerStatements/Variant6df732d7cecc088716346c4b6125aaae929b4b55a52939a6b0c8864001ff5e2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourceControllerEnergy` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SourceLaplaceOne` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdjointExponential` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kappa](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceScalarControllerStatements.lean/declarations/kappa.md) | 13 | `declaration-track:b055f7c14f9b6b53e2860f51f2678fcdfd953f54255c0b238ce34b0b722b7a33` |
| 2 | `theorem` | [kappa_pos](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceScalarControllerStatements.lean/declarations/kappa-pos.md) | 15 | `result-track:3a295d216de2896af9f7522059eca9f013005f0b26e0254ed7792f3d4e0ea6f2` |
| 3 | `theorem` | [reference_source_inner_re](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceScalarControllerStatements.lean/declarations/reference-source-inner-re.md) | 17 | `result-track:a4c4242fcc38f228a1b50e02cef3f93f9294d442fb2b5b0faa0ec87d04fa46ec` |
| 4 | `theorem` | [source_reference_norm_sq_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceScalarControllerStatements.lean/declarations/source-reference-norm-sq-le.md) | 30 | `result-track:b3dbcae00a49cfdc850b93744c64efa5f87e5c55f880627352e951080636c761` |
| 5 | `theorem` | [scaled_reference_full_energy](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceScalarControllerStatements.lean/declarations/scaled-reference-full-energy.md) | 38 | `result-track:110e21f1459dc1b267f9a47f774a4717363493d302844a6ad5ab01b82883c21c` |
| 6 | `def` | [scalarController](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceScalarControllerStatements.lean/declarations/scalarcontroller.md) | 55 | `declaration-track:7e4f0cf4a127709909857e0b1d473a2c9d5362f220bd71ce1f27b5292c993e4f` |
| 7 | `theorem` | [scalarController_full_energy_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceScalarControllerStatements.lean/declarations/scalarcontroller-full-energy-le.md) | 58 | `result-track:dc7774716fbf8c6f42b0ad4c522f5e191f390b10a5a18ecd4b68686f85e0d149` |
| 8 | `theorem` | [sourceMass_le_scalar_improvement](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceScalarControllerStatements.lean/declarations/sourcemass-le-scalar-improvement.md) | 73 | `result-track:c7f349e667f84bdf1dad4a40ef499e6153e5a15916bffc92eb3c87d4b29bb67a` |
| 9 | `theorem` | [sourceMass_lt_reference_norm_sq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceScalarControllerStatements.lean/declarations/sourcemass-lt-reference-norm-sq.md) | 78 | `result-track:10a61a8260dbc93b92fc643bf31cb25c9500e263ebf1481c18c2ab184f1b41f1` |
| 10 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceScalarControllerStatements.lean/declarations/example-source-edition-7.md) | 92 | `declaration-track:e35011dcfdbea53564b4d00d716f06db63159ff2d7e7b75887bbf2d45b1204d8` |
| 11 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceScalarControllerStatements.lean/declarations/example-source-edition-6.md) | 95 | `declaration-track:d51ebf1c78e02ec77815f15b43495d556d769cdd9f109847d784c013fe57755c` |
| 12 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceScalarControllerStatements.lean/declarations/example-source-edition-2.md) | 99 | `declaration-track:66d8ed87f604927ef475837894707e5c459599ae246e1b47e54a426ac3025e81` |
| 13 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceScalarControllerStatements.lean/declarations/example-source-edition-3.md) | 105 | `declaration-track:94e8e59beb8cd587e6d411463771b522d38922847bdf4c0c90710d7e81bbd540` |
| 14 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceScalarControllerStatements.lean/declarations/example-source-edition-4.md) | 111 | `declaration-track:c23791ad65df74bbe7679cfe8efbecae133694e5ff5b42644173481746329e95` |
| 15 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceScalarControllerStatements.lean/declarations/example-source-edition-8.md) | 115 | `declaration-track:ebc23814bf04edf3071ebd98e8b221c87369f62f7a2af01dbbb86997fc73b34c` |
| 16 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceScalarControllerStatements.lean/declarations/example-source-edition-5.md) | 118 | `declaration-track:c930921c1f7cc41759b9c72a777e18f2b1281bce4a0288a20a6db37393265918` |
| 17 | `example` | [(anonymous)](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceScalarControllerStatements.lean/declarations/example.md) | 120 | `declaration-track:12d0dad3770eb9841981385cb8080f67700f273dfc603dc72de4f43f4df87351` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44e324cfa682c44bba8ac38d60b2cb668818acb120cd0c15da3061b207d6c79f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScalarControllerStatements/Variant6df732d7cecc088716346c4b6125aaae929b4b55a52939a6b0c8864001ff5e2a.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScalarControllerStatements/Variant6df732d7cecc088716346c4b6125aaae929b4b55a52939a6b0c8864001ff5e2a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
