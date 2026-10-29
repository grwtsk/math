# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithoutCDot.Variant80ab1d0da009fc64eb94462e7e1c4a107f3013af7bc7ff820cae7f6f55bae265

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f45b751f5cc44a9572bdff629164b92bee2ac94",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithoutCDot/Variant80ab1d0da009fc64eb94462e7e1c4a107f3013af7bc7ff820cae7f6f55bae265.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithoutCDot/Variant80ab1d0da009fc64eb94462e7e1c4a107f3013af7bc7ff820cae7f6f55bae265.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithoutCDot/Variant80ab1d0da009fc64eb94462e7e1c4a107f3013af7bc7ff820cae7f6f55bae265.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f45b751f5cc44a9572bdff629164b92bee2ac94`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithoutCDot/Variant80ab1d0da009fc64eb94462e7e1c4a107f3013af7bc7ff820cae7f6f55bae265.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithoutCDot/Variant80ab1d0da009fc64eb94462e7e1c4a107f3013af7bc7ff820cae7f6f55bae265.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.SyntheticMVars` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Init` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [withoutCDotContents](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithoutCDot/Variant80ab1d0da009fc64eb94462e7e1c4a107f3013af7bc7ff820cae7f6f55bae265.lean/declarations/withoutcdotcontents--7071363d98d06506e5b2f811.md) | 17 | `declaration-track:7071363d98d06506e5b2f811288ed4b6edb5bf02e332ce62e15ef2da2fdb56f9` |
| 2 | `def` | [withoutCDot](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithoutCDot/Variant80ab1d0da009fc64eb94462e7e1c4a107f3013af7bc7ff820cae7f6f55bae265.lean/declarations/withoutcdot--c49c6e9eb7d9ded801986ee0.md) | 26 | `declaration-track:c49c6e9eb7d9ded801986ee0105dd15ce0a68725b9f6a84898478425ed8456b3` |
| 3 | `def` | [withoutCDotImpl](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithoutCDot/Variant80ab1d0da009fc64eb94462e7e1c4a107f3013af7bc7ff820cae7f6f55bae265.lean/declarations/withoutcdotimpl--a464ed5e95357e7b96db3bee.md) | 31 | `declaration-track:a464ed5e95357e7b96db3beeab721622654ac37a8e49025e6eb5e6034df84374` |
| 4 | `macro_rules` | [(anonymous)](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithoutCDot/Variant80ab1d0da009fc64eb94462e7e1c4a107f3013af7bc7ff820cae7f6f55bae265.lean/declarations/macro-rules--92387f3fcf5c8c286683d8f5.md) | 35 | `declaration-track:92387f3fcf5c8c286683d8f5b45ed9fb7ab70125e205dfb872ce9e79016784a8` |
| 5 | `def` | [elabWithoutCDot](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithoutCDot/Variant80ab1d0da009fc64eb94462e7e1c4a107f3013af7bc7ff820cae7f6f55bae265.lean/declarations/elabwithoutcdot--ab4a700474b4cbffae69bd30.md) | 41 | `declaration-track:ab4a700474b4cbffae69bd304ae3e2f8216cec024a74b8f4cd87c17db185eb02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8344eff3b4a0f4efbaf3aefab46990425e6904c79b28a5a9f87da62913b998fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithoutCDot/Variant80ab1d0da009fc64eb94462e7e1c4a107f3013af7bc7ff820cae7f6f55bae265.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithoutCDot/Variant80ab1d0da009fc64eb94462e7e1c4a107f3013af7bc7ff820cae7f6f55bae265.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
