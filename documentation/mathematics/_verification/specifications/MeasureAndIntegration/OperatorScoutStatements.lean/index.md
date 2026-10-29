# Verification target: Operator Scout Statements

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94b42a65b04be08c7f50cd282d6cd864932e49fa",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/OperatorScoutStatements/Variantf126bb06eee6f92ace70f081c12dbd628c605c58858663cec82ac5c72824dc64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/OperatorScoutStatements.lean/index.md) · [Full source](../../../../MeasureAndIntegration/OperatorScoutStatements.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94b42a65b04be08c7f50cd282d6cd864932e49fa`.

Source path: `GRWTSK/Analysis/MeasureTheory/OperatorScoutStatements/Variantf126bb06eee6f92ace70f081c12dbd628c605c58858663cec82ac5c72824dc64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/OperatorScoutStatements/Variantf126bb06eee6f92ace70f081c12dbd628c605c58858663cec82ac5c72824dc64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdmission` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FullH](../../../../MeasureAndIntegration/OperatorScoutStatements.lean/declarations/fullh.md) | 12 | `declaration-track:4218b605bb74a974510f27bd255c8bc1b98ebec5b37501b0359a6dd712a788cf` |
| 2 | `def` | [fullShift](../../../../MeasureAndIntegration/OperatorScoutStatements.lean/declarations/fullshift.md) | 14 | `declaration-track:1eaa03eaf8791cffd948322c8399b4d789d73f2ef15caf423979134e7d95c2d7` |
| 3 | `theorem` | [fullShift_ae](../../../../MeasureAndIntegration/OperatorScoutStatements.lean/declarations/fullshift-ae.md) | 17 | `result-track:9705acc26a2e5ba5ddb896092f41fbe11c874ac4cedeb3a6e06c8254f079badf` |
| 4 | `theorem` | [fullShift_continuous](../../../../MeasureAndIntegration/OperatorScoutStatements.lean/declarations/fullshift-continuous.md) | 21 | `result-track:0160dbae8eff41de1614bce141aff9f4ca9fa668d9a695b057a7e0b2412ab4ac` |
| 5 | `theorem` | [halfLine_zeroExtension_memLp](../../../../MeasureAndIntegration/OperatorScoutStatements.lean/declarations/halfline-zeroextension-memlp.md) | 29 | `result-track:c5c1a8d7491a8ee7df105e927df306e2458d56c472281834e44be51513be576e` |
| 6 | `theorem` | [weighted_shift_integrable](../../../../MeasureAndIntegration/OperatorScoutStatements.lean/declarations/weighted-shift-integrable.md) | 34 | `result-track:bf00605d8e1760f00e5b3deb39da45021f917fcf9cb358d8a4834e4131584423` |
| 7 | `def` | [bochnerVector](../../../../MeasureAndIntegration/OperatorScoutStatements.lean/declarations/bochnervector.md) | 44 | `declaration-track:7ab56e60c85e47502398fecf6310c5169a9ad828eb1f32d058019f3779ad95ec` |
| 8 | `theorem` | [bochnerVector_norm_le](../../../../MeasureAndIntegration/OperatorScoutStatements.lean/declarations/bochnervector-norm-le.md) | 46 | `result-track:872b54a4426dad2dcedf4c2c9a8eb6cee89af2f8b622103d5dcb679f21e2bbcd` |
| 9 | `example` | [(anonymous)](../../../../MeasureAndIntegration/OperatorScoutStatements.lean/declarations/example-source-edition-2.md) | 60 | `declaration-track:5e9dc0dd3cae0db0821bda609f49b9571e97a790f2bb24aacd7dd596cbe5788c` |
| 10 | `example` | [(anonymous)](../../../../MeasureAndIntegration/OperatorScoutStatements.lean/declarations/example-source-edition-6.md) | 61 | `declaration-track:b882a2ff201c45aa19bfc41b71abdbd8c615401f95f29f5ca35f7e5c6cbb1cbd` |
| 11 | `example` | [(anonymous)](../../../../MeasureAndIntegration/OperatorScoutStatements.lean/declarations/example-source-edition-8.md) | 63 | `declaration-track:dd80dc0a661b47163b0f32f0c5a11ea6a1811314f47410c81993b19df2d9bf38` |
| 12 | `example` | [(anonymous)](../../../../MeasureAndIntegration/OperatorScoutStatements.lean/declarations/example-source-edition-5.md) | 65 | `declaration-track:97a2666e1e5bdce8d9f2754049a8061e0e10ca7633c99c357ebd3204df26e8d8` |
| 13 | `example` | [(anonymous)](../../../../MeasureAndIntegration/OperatorScoutStatements.lean/declarations/example-source-edition-3.md) | 66 | `declaration-track:67f63e741c782abab74635a74d47780d2654af04ad73008647eff76cc033ba02` |
| 14 | `example` | [(anonymous)](../../../../MeasureAndIntegration/OperatorScoutStatements.lean/declarations/example-source-edition-4.md) | 68 | `declaration-track:8fd7b50fe9bfb8c1fab8b4435190264489af38d9cf17e924cd6cf6697bf268c0` |
| 15 | `example` | [(anonymous)](../../../../MeasureAndIntegration/OperatorScoutStatements.lean/declarations/example.md) | 70 | `declaration-track:2304910a0b9462b60daacdd9d92d2bddd322231d64c7f99f6980ba449481dda9` |
| 16 | `example` | [(anonymous)](../../../../MeasureAndIntegration/OperatorScoutStatements.lean/declarations/example-source-edition-7.md) | 71 | `declaration-track:ceb0883aff243b51cc351902610a261d7af5fca0f9b050ac08278557ab7fe1e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f39266e4bbd3f17603fc45dea16244c00f9209a60cb3bb43c3c25872294bd794 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/OperatorScoutStatements/Variantf126bb06eee6f92ace70f081c12dbd628c605c58858663cec82ac5c72824dc64.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/OperatorScoutStatements/Variantf126bb06eee6f92ace70f081c12dbd628c605c58858663cec82ac5c72824dc64.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
