# Verification target: GRWTSK.Analysis.FunctionalAnalysis.AnalyticPDEBridge.Variant906bd7eb417f8423fff735bd1a79a068ea273c36c2298fe9132ffda24df5bfaa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fdb0b1e7d0a7d37a899fefdb0e307cc4ab0f1b8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant906bd7eb417f8423fff735bd1a79a068ea273c36c2298fe9132ffda24df5bfaa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant906bd7eb417f8423fff735bd1a79a068ea273c36c2298fe9132ffda24df5bfaa.lean/index.md) · [Full source](../../../../../../Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant906bd7eb417f8423fff735bd1a79a068ea273c36c2298fe9132ffda24df5bfaa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fdb0b1e7d0a7d37a899fefdb0e307cc4ab0f1b8`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant906bd7eb417f8423fff735bd1a79a068ea273c36c2298fe9132ffda24df5bfaa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant906bd7eb417f8423fff735bd1a79a068ea273c36c2298fe9132ffda24df5bfaa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Flow.AnalyticPDE` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Homology.OrientedFlatness` — import line 7; external provider; requires a separately pinned dependency.
- `Surface.Spectral.FiniteHilbertConvergence` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AnalyticPDETheoremGates](../../../../../../Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant906bd7eb417f8423fff735bd1a79a068ea273c36c2298fe9132ffda24df5bfaa.lean/declarations/analyticpdetheoremgates--85a9a13e3935cb80d79bca43.md) | 41 | `declaration-track:85a9a13e3935cb80d79bca43502e0846c235fb8764ffbf46a13e37045efc7363` |
| 2 | `def` | [AnalyticPDETheoremGates.certifiedForMajorProof](../../../../../../Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant906bd7eb417f8423fff735bd1a79a068ea273c36c2298fe9132ffda24df5bfaa.lean/declarations/analyticpdetheoremgates-certifiedformajorproof--de05dcc7c506a20e3bb046e9.md) | 56 | `declaration-track:de05dcc7c506a20e3bb046e9fc4def0bcfb9781ebeef61d9c89da17561e89b9b` |
| 3 | `theorem` | [AnalyticPDETheoremGates.certifiedForMajorProof_of_fields](../../../../../../Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant906bd7eb417f8423fff735bd1a79a068ea273c36c2298fe9132ffda24df5bfaa.lean/declarations/analyticpdetheoremgates-certifiedformajorproof-of-fields--c67774a096ea2a1b98537b1d.md) | 63 | `result-track:c67774a096ea2a1b98537b1de244adb176f9ee04e8d7b29904c45299c2c3a800` |
| 4 | `structure` | [AnalyticPDESpectralTheoremInput](../../../../../../Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant906bd7eb417f8423fff735bd1a79a068ea273c36c2298fe9132ffda24df5bfaa.lean/declarations/analyticpdespectraltheoreminput--3466dd43b0be576a1bf9f354.md) | 79 | `declaration-track:3466dd43b0be576a1bf9f354cfc0646e653a54812a9a7810763e27e02e9029c2` |
| 5 | `def` | [AnalyticPDESpectralTheoremInput.certifiedForMajorProof](../../../../../../Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant906bd7eb417f8423fff735bd1a79a068ea273c36c2298fe9132ffda24df5bfaa.lean/declarations/analyticpdespectraltheoreminput-certifiedformajorproof--c7451c77c22da316ba4b406d.md) | 119 | `declaration-track:c7451c77c22da316ba4b406d91a4772c2cc6a1f95ec60b21ffdba13cf4e6ff53` |
| 6 | `theorem` | [AnalyticPDESpectralTheoremInput.certifiedForMajorProof_of_fields](../../../../../../Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant906bd7eb417f8423fff735bd1a79a068ea273c36c2298fe9132ffda24df5bfaa.lean/declarations/analyticpdespectraltheoreminput-certifiedformajorproof-of-fields--22ff4a43aa50b32a40d2e604.md) | 132 | `result-track:22ff4a43aa50b32a40d2e604f3b7bd2f7fe789884477472b23098dcd7e701cf2` |
| 7 | `theorem` | [AnalyticPDESpectralTheoremInput.certifiedForMajorProof_has_theoremGates](../../../../../../Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant906bd7eb417f8423fff735bd1a79a068ea273c36c2298fe9132ffda24df5bfaa.lean/declarations/analyticpdespectraltheoreminput-certifiedformajorproof-has-theoremgates--c1ea4e839a3361aae2a95eae.md) | 152 | `result-track:c1ea4e839a3361aae2a95eaed7fd1e2887b14734fe99791cdac1072b851de071` |
| 8 | `theorem` | [AnalyticPDESpectralTheoremInput.certifiedForMajorProof_has_finiteConvergence](../../../../../../Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant906bd7eb417f8423fff735bd1a79a068ea273c36c2298fe9132ffda24df5bfaa.lean/declarations/analyticpdespectraltheoreminput-certifiedformajorproof-has-finiteconverg--257fb91c97fe69d0a52b7ca2.md) | 164 | `result-track:257fb91c97fe69d0a52b7ca25b27178b5483a99d5a13723a9f14c79fee087bbf` |
| 9 | `theorem` | [AnalyticPDESpectralTheoremInput.certifiedForMajorProof_keeps_noFiniteDataAlone](../../../../../../Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant906bd7eb417f8423fff735bd1a79a068ea273c36c2298fe9132ffda24df5bfaa.lean/declarations/analyticpdespectraltheoreminput-certifiedformajorproof-keeps-nofinitedat--ce44e0645bfade5756a80a9c.md) | 179 | `result-track:ce44e0645bfade5756a80a9c2e973b2a572df49f141fe04175c78fbe320db612` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3d73a469c1981b31ce6313760bab7005e166a04a96b19e830cf500014d10ab9b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant906bd7eb417f8423fff735bd1a79a068ea273c36c2298fe9132ffda24df5bfaa.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant906bd7eb417f8423fff735bd1a79a068ea273c36c2298fe9132ffda24df5bfaa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
