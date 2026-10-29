# Verification target: Whole Indexed Assembly Data And Conditional Proofs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7937a00e55b050b8a9d8835220b63c1e94217a22",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SuppliedIndexedAssemblyData/Variantc862677e4cee79f0/WholeIndexedAssemblyDataAndConditionalProofs.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/WholeIndexedAssemblyDataAndConditionalProofs.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/WholeIndexedAssemblyDataAndConditionalProofs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7937a00e55b050b8a9d8835220b63c1e94217a22`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SuppliedIndexedAssemblyData/Variantc862677e4cee79f0/WholeIndexedAssemblyDataAndConditionalProofs.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SuppliedIndexedAssemblyData/Variantc862677e4cee79f0/WholeIndexedAssemblyDataAndConditionalProofs.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Comparison.Core` — import line 19; external provider; requires a separately pinned dependency.
- `DAF.Comparison.LogicalStatus` — import line 20; external provider; requires a separately pinned dependency.
- `DAF.Comparison.Properties` — import line 21; external provider; requires a separately pinned dependency.
- `DAF.Comparison.Scope` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Defs` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Datum](../../../../GroupTheoryAndGeneralizations/WholeIndexedAssemblyDataAndConditionalProofs.lean/declarations/datum.md) | 51 | `declaration-track:25f20da3f7c586c0a442efc06bda8a6051565d168ab5a4df91fe84cf6adfe7f4` |
| 2 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/WholeIndexedAssemblyDataAndConditionalProofs.lean/declarations/instance.md) | 62 | `declaration-track:ea5463e96445c5de2d22eb2d637d770cbb35faf3b5ca1bad41485a9a37b0126d` |
| 3 | `def` | [comparison](../../../../GroupTheoryAndGeneralizations/WholeIndexedAssemblyDataAndConditionalProofs.lean/declarations/comparison.md) | 66 | `declaration-track:de727476b1434a9db7913242266982b09c6295cd5fb5d1b586e5d16a5533cd48` |
| 4 | `theorem` | [comparison_apply](../../../../GroupTheoryAndGeneralizations/WholeIndexedAssemblyDataAndConditionalProofs.lean/declarations/comparison-apply.md) | 75 | `result-track:10f340c4bf6c72373860d1ba04f5ec0c524a33e91df0dd9d7b9fd3186a4a9950` |
| 5 | `def` | [IsomorphismClaim](../../../../GroupTheoryAndGeneralizations/WholeIndexedAssemblyDataAndConditionalProofs.lean/declarations/isomorphismclaim.md) | 83 | `declaration-track:424e27ada1b7128bf494ac824195a6c9b3f7a1c16ddba54ed4fa5b87fd340c31` |
| 6 | `def` | [isomorphismClaim](../../../../GroupTheoryAndGeneralizations/WholeIndexedAssemblyDataAndConditionalProofs.lean/declarations/isomorphismclaim-source-edition-2.md) | 89 | `declaration-track:f98a12f97539a6fc06118ba786adbb048b7017d054a3d48fb49db88bd65de647` |
| 7 | `structure` | [FarrellJonesHypothesis](../../../../GroupTheoryAndGeneralizations/WholeIndexedAssemblyDataAndConditionalProofs.lean/declarations/farrelljoneshypothesis.md) | 102 | `declaration-track:4e56d3c9a92611594b781bb39116f01fe285f1ede9ef7bfb28caf0ee42e5bd92` |
| 8 | `theorem` | [bijective](../../../../GroupTheoryAndGeneralizations/WholeIndexedAssemblyDataAndConditionalProofs.lean/declarations/bijective.md) | 109 | `result-track:33f31fc05cda729bbf3bd0c5de858dabee282b8fcc620b6dd53b1fbac0ae13c1` |
| 9 | `theorem` | [certificate](../../../../GroupTheoryAndGeneralizations/WholeIndexedAssemblyDataAndConditionalProofs.lean/declarations/certificate.md) | 117 | `result-track:aa6156e2cc0c04dbc22a3a4a3b8e952a21c86e0eb30fcb44af89ba4cf803092e` |
| 10 | `def` | [conditionalIsomorphismCertificate](../../../../GroupTheoryAndGeneralizations/WholeIndexedAssemblyDataAndConditionalProofs.lean/declarations/conditionalisomorphismcertificate.md) | 132 | `declaration-track:7df5649390de54132b4be4c476194f43e7d51c6eda97546e92207e842fe0d03a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a64b401db0e5878b4150908b72de43a4cd44199b5cc47a0346ba6e274c3b4bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SuppliedIndexedAssemblyData/Variantc862677e4cee79f0/WholeIndexedAssemblyDataAndConditionalProofs.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/SuppliedIndexedAssemblyData/Variantc862677e4cee79f0/WholeIndexedAssemblyDataAndConditionalProofs.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
