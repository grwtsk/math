# Verification target: Zero Knowledge Authority Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c805cd214756ec71ca1b76449a15ece39e35334",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroKnowledgeAuthority/Variant1fe0b241eb902fad55c952d97f15d2e5d6d79a75b9e7671e30b9f67272e7fe15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ZeroKnowledgeAuthorityNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ZeroKnowledgeAuthorityNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c805cd214756ec71ca1b76449a15ece39e35334`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroKnowledgeAuthority/Variant1fe0b241eb902fad55c952d97f15d2e5d6d79a75b9e7671e30b9f67272e7fe15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroKnowledgeAuthority/Variant1fe0b241eb902fad55c952d97f15d2e5d6d79a75b9e7671e30b9f67272e7fe15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Resolution.CryptographicProblem` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PhaseSplit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ZeroKnowledgeAuthorityNamespaced.lean/declarations/phasesplit.md) | 24 | `declaration-track:89cb9a18d96987bb8392af3dacb57322fd395cddc9c47887085dae21334b396d` |
| 2 | `def` | [witnessRevealingPhaseSplit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ZeroKnowledgeAuthorityNamespaced.lean/declarations/witnessrevealingphasesplit.md) | 30 | `declaration-track:f409bfaf3d63c67621b5cdab191a4b022bba2066fa6c2b48f61e8f1c4e0cdce2` |
| 3 | `theorem` | [witnessRevealingPhaseSplit_phase_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ZeroKnowledgeAuthorityNamespaced.lean/declarations/witnessrevealingphasesplit-phase-injective.md) | 35 | `result-track:cabf0f3f1df9f906925459cb27a0f0d733ceb5f1218cbc10f60916749320c3df` |
| 4 | `structure` | [ZeroKnowledgeSimulation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ZeroKnowledgeAuthorityNamespaced.lean/declarations/zeroknowledgesimulation.md) | 41 | `declaration-track:16e226cbf55b6d85a92c64d3b1a60600eff2ea73c4e5d4dc696f3e4cd26d0207` |
| 5 | `structure` | [KnowledgeExtraction](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ZeroKnowledgeAuthorityNamespaced.lean/declarations/knowledgeextraction.md) | 51 | `declaration-track:a24c871df250ddac8fd894019457a971805aed1b81647d91e7adc1fe9eb84e2d` |
| 6 | `structure` | [SuccinctnessCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ZeroKnowledgeAuthorityNamespaced.lean/declarations/succinctnesscertificate.md) | 60 | `declaration-track:ca9c90a4cb3297e9d4f541e58877b1f5563b020207d12d7debe7358fbed0acee` |
| 7 | `structure` | [ZeroKnowledgeProofOfKnowledge](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ZeroKnowledgeAuthorityNamespaced.lean/declarations/zeroknowledgeproofofknowledge.md) | 76 | `declaration-track:b3fcece7250657f6ea8a08075b16a950acf1c27a8c5a8c6f8f18ab7c4e7b4d49` |
| 8 | `structure` | [PhaseSplitSimulationBridge](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ZeroKnowledgeAuthorityNamespaced.lean/declarations/phasesplitsimulationbridge.md) | 90 | `declaration-track:d02e7618f76297051322f731927aee1007897b8536e22ea64a7f28bc27a7cadd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=90b32e3dd6470df2b846f178cbf0634578fe159a8ded2bb539d13b3b934b1b7b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroKnowledgeAuthority/Variant1fe0b241eb902fad55c952d97f15d2e5d6d79a75b9e7671e30b9f67272e7fe15.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroKnowledgeAuthority/Variant1fe0b241eb902fad55c952d97f15d2e5d6d79a75b9e7671e30b9f67272e7fe15.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
