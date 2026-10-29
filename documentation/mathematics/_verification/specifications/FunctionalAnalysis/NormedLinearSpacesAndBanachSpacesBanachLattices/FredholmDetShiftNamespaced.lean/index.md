# Verification target: Fredholm Det Shift Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bab0c684e7f8c8eea0e1fa338bb9652b20c2fa1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FredholmDetShift/Variantda2a160de4e23cccf4d2ad6b24d8ed790a7a28c2b36cea7a444707c85facc067.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmDetShiftNamespaced.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmDetShiftNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bab0c684e7f8c8eea0e1fa338bb9652b20c2fa1`.

Source path: `GRWTSK/Topology/GeneralTopology/FredholmDetShift/Variantda2a160de4e23cccf4d2ad6b24d8ed790a7a28c2b36cea7a444707c85facc067.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FredholmDetShift/Variantda2a160de4e23cccf4d2ad6b24d8ed790a7a28c2b36cea7a444707c85facc067.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fredholm` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Spectrum` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Endo](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmDetShiftNamespaced.lean/declarations/endo.md) | 30 | `declaration-track:a4f6950695f6429324214090cab17e26673cdc1aa82309bcdf5c92d45a0ec978` |
| 2 | `def` | [shiftOp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmDetShiftNamespaced.lean/declarations/shiftop.md) | 43 | `declaration-track:044fe29e5ca0e581e89db7ca5a8880a031f376d036d80f2863e54975f5d723cf` |
| 3 | `lemma` | [shiftOp_continuous](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmDetShiftNamespaced.lean/declarations/shiftop-continuous.md) | 47 | `result-track:f8d8fb9b244ab6d4d276186bab8c217003195e787384b7894752bb6ebaacfff5` |
| 4 | `def` | [shift](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmDetShiftNamespaced.lean/declarations/shift.md) | 54 | `declaration-track:380e24c8c1c072f35d5f74b0d64ec37aaac99ab882905d704ea27ff5e4d8f75e` |
| 5 | `lemma` | [shift_zero_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmDetShiftNamespaced.lean/declarations/shift-zero-iff.md) | 65 | `result-track:e093ac3ca72420cabd6b80ea2f0768b8b3a1e5865e0fe209e5f58946cef699c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4753bebd41b9eec6294a0fc898b975dc1d23e376c4c398d887ea6814881af8a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/FredholmDetShift/Variantda2a160de4e23cccf4d2ad6b24d8ed790a7a28c2b36cea7a444707c85facc067.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/FredholmDetShift/Variantda2a160de4e23cccf4d2ad6b24d8ed790a7a28c2b36cea7a444707c85facc067.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
