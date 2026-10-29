# Verification target: Hilbert Trace Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb07ddc84f4c9781eed943f2fb8cb60b3e598945",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/HilbertTrace/Variant45948f5be5eeba62bd9d09ee4b6580de17143896591bc3822f79c3965e590577.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/HilbertTraceEdition2.lean/index.md) · [Full source](../../../../FunctionalAnalysis/HilbertTraceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb07ddc84f4c9781eed943f2fb8cb60b3e598945`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/HilbertTrace/Variant45948f5be5eeba62bd9d09ee4b6580de17143896591bc3822f79c3965e590577.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/HilbertTrace/Variant45948f5be5eeba62bd9d09ee4b6580de17143896591bc3822f79c3965e590577.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Hilbert.TraceFormula` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Spectral.Readiness` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Spectral.HilbertTraceBridge](../../../../FunctionalAnalysis/HilbertTraceEdition2.lean/declarations/spectral-hilberttracebridge.md) | 53 | `declaration-track:113c3ca0e968dc4def79359edec4627bf2228d3402d9869e955e1c52cae26bb7` |
| 2 | `def` | [Spectral.HilbertTraceBridge.ready](../../../../FunctionalAnalysis/HilbertTraceEdition2.lean/declarations/spectral-hilberttracebridge-ready.md) | 60 | `declaration-track:e548488b6cf65eb5850512469b9cdbd8d382c834f059f1cc2f2c67e0c9002943` |
| 3 | `def` | [Spectral.HilbertTraceBridge.theoremReady](../../../../FunctionalAnalysis/HilbertTraceEdition2.lean/declarations/spectral-hilberttracebridge-theoremready.md) | 69 | `declaration-track:143a5445b10f0df4d0754ba1fca580b74d71bb554bb648778874232a8df2e2e5` |
| 4 | `theorem` | [Spectral.HilbertTraceBridge.theoremReady_implies_ready](../../../../FunctionalAnalysis/HilbertTraceEdition2.lean/declarations/spectral-hilberttracebridge-theoremready-implies-ready.md) | 73 | `result-track:1118dedabad6435d99c6195042e78961ddaf5ab33b60ed86ac9c0ca8ed0b1daa` |
| 5 | `structure` | [Spectral.HilbertTraceBridgeTheoremCertificate](../../../../FunctionalAnalysis/HilbertTraceEdition2.lean/declarations/spectral-hilberttracebridgetheoremcertificate.md) | 86 | `declaration-track:28464f1b020c5bd57f3280af8403887cd974fe1971eb75a9a7ad12e1fb7b39e6` |
| 6 | `def` | [Spectral.HilbertTraceBridgeTheoremCertificate.certifiedForMajorProof](../../../../FunctionalAnalysis/HilbertTraceEdition2.lean/declarations/spectral-hilberttracebridgetheoremcertificate-certifiedformajorproof.md) | 101 | `declaration-track:3b4cbc3432a6097f9c07b198733109ec4735cc0319aa7b966a50b14c328cd5a6` |
| 7 | `theorem` | [Spectral.HilbertTraceBridgeTheoremCertificate.certifiedForMajorProof_of_fields](../../../../FunctionalAnalysis/HilbertTraceEdition2.lean/declarations/spectral-hilberttracebridgetheoremcertificate-certifiedformajorproof-of.md) | 109 | `result-track:ac74ddfde8812e73a86600952eb1d323abd1d721724bfb8e553a3aef60045dfe` |
| 8 | `theorem` | [Spectral.HilbertTraceBridgeTheoremCertificate.hodgeTate_pullback_rejects_externalAssumption](../../../../FunctionalAnalysis/HilbertTraceEdition2.lean/declarations/spectral-hilberttracebridgetheoremcertificate-hodgetate-pullback-rejects-source-edition-2.md) | 118 | `result-track:fd8b5b7230297f2496894eebf87f76ad13ec7bc1075e276b7cc4eb96aea8e6e9` |
| 9 | `theorem` | [Spectral.HilbertTraceBridgeTheoremCertificate.hodgeTate_pullback_rejects_placeholderInput](../../../../FunctionalAnalysis/HilbertTraceEdition2.lean/declarations/spectral-hilberttracebridgetheoremcertificate-hodgetate-pullback-rejects.md) | 137 | `result-track:d191f0bd1dc92e91328e0b86a4b83ee5a6fb658ca5887b629ee21afcd63ec8d3` |
| 10 | `theorem` | [Spectral.HilbertTraceBridgeTheoremCertificate.implies_ready](../../../../FunctionalAnalysis/HilbertTraceEdition2.lean/declarations/spectral-hilberttracebridgetheoremcertificate-implies-ready.md) | 156 | `result-track:8050cdf7da0d24cc8c68ff60bc93efcf194ec92c98767c5d4182eea689881b83` |
| 11 | `theorem` | [Spectral.HilbertTraceBridgeTheoremCertificate.implies_theoremReady](../../../../FunctionalAnalysis/HilbertTraceEdition2.lean/declarations/spectral-hilberttracebridgetheoremcertificate-implies-theoremready.md) | 164 | `result-track:4473e9f8ac227ee4087d306e5dce7b75e479a0f83ac79ba7c054bfe388af68aa` |
| 12 | `def` | [Spectral.standardHilbertTraceBridge](../../../../FunctionalAnalysis/HilbertTraceEdition2.lean/declarations/spectral-standardhilberttracebridge.md) | 176 | `declaration-track:14917ee9fac7109ffa4eaa225215c99d0ff26fc0cca78663c0e8c08ca35e3d39` |
| 13 | `theorem` | [Spectral.standardHilbertTraceBridge_not_ready](../../../../FunctionalAnalysis/HilbertTraceEdition2.lean/declarations/spectral-standardhilberttracebridge-not-ready.md) | 186 | `result-track:37e7938c74b4f3d22a0e582ef257a2214ffc12c0d191fe5d2c0d4b1fd2ea09b3` |
| 14 | `theorem` | [Spectral.standardHilbertTraceBridge_not_theoremReady](../../../../FunctionalAnalysis/HilbertTraceEdition2.lean/declarations/spectral-standardhilberttracebridge-not-theoremready.md) | 193 | `result-track:49e6539fb4cfc6e00bac766a7fbe065caac0ece87e366bc3de52401ae375f04a` |
| 15 | `theorem` | [Spectral.dependencyBridge_not_hilbertTrace_evidence](../../../../FunctionalAnalysis/HilbertTraceEdition2.lean/declarations/spectral-dependencybridge-not-hilberttrace-evidence.md) | 205 | `result-track:853a30b758810d52b77f08e93f26bf5be9b7d72d83c8a908f8f6af08817499da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=06a0df6be0855d41907a9fa0ed5cbe19d016a778fb8cc761a00755de2be6a2d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/HilbertTrace/Variant45948f5be5eeba62bd9d09ee4b6580de17143896591bc3822f79c3965e590577.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/HilbertTrace/Variant45948f5be5eeba62bd9d09ee4b6580de17143896591bc3822f79c3965e590577.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
