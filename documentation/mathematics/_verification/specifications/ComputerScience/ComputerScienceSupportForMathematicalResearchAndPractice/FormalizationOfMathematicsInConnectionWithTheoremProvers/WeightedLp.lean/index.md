# Verification target: Weighted Lp

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edfe179d16b56534dc9557256c409a0011df38fb",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeightedLp/Variant2cfbc0c36b8a1976f67f639201de1e7f8089e5b6db2bef40c6df0b92c62241e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WeightedLp.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WeightedLp.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edfe179d16b56534dc9557256c409a0011df38fb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeightedLp/Variant2cfbc0c36b8a1976f67f639201de1e7f8089e5b6db2bef40c6df0b92c62241e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeightedLp/Variant2cfbc0c36b8a1976f67f639201de1e7f8089e5b6db2bef40c6df0b92c62241e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Analysis.Decoupling.ExtensionOperator` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Weight](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WeightedLp.lean/declarations/weight.md) | 9 | `declaration-track:aa378145db51639d4ff18af071b2076eb3b04aa2f4689581406103defe4237d7` |
| 2 | `def` | [weightedLpNorm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WeightedLp.lean/declarations/weightedlpnorm.md) | 18 | `declaration-track:4d3a1d10a2406bc72e7b9164e2e62e79174ac9d64336e9bfe223332951e381ae` |
| 3 | `structure` | [WeightedNormSurface](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WeightedLp.lean/declarations/weightednormsurface.md) | 24 | `declaration-track:cbef4f9b3232be8a0dc7cc561c282c3108b54aabf5fa4b5bff1ae8f60578facc` |
| 4 | `def` | [weightedLpResidue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WeightedLp.lean/declarations/weightedlpresidue.md) | 30 | `declaration-track:e6c13bcb9c7fe3814e4048e951705db40d3e1fb4c7d50933d2b4746f0e75d3fc` |
| 5 | `def` | [defaultWeightedNormSurface](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WeightedLp.lean/declarations/defaultweightednormsurface.md) | 33 | `declaration-track:191e53f75497988f9954e4c782a6860d391394c168c673f543171f0c34a8acf9` |
| 6 | `theorem` | [weighted_lp_surface_is_open_residue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WeightedLp.lean/declarations/weighted-lp-surface-is-open-residue.md) | 39 | `result-track:ca84f8dad2aa4f27d7307a1ee9a3e2d82b8193ed828c522f1f84c15145bed7aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=86f1b3a5ac65c210b61a7e78810ccfe28ca138e6df937edc61600207d96fabc7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeightedLp/Variant2cfbc0c36b8a1976f67f639201de1e7f8089e5b6db2bef40c6df0b92c62241e1.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeightedLp/Variant2cfbc0c36b8a1976f67f639201de1e7f8089e5b6db2bef40c6df0b92c62241e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
