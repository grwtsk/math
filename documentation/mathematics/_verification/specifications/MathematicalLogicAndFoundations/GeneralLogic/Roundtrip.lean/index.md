# Verification target: Roundtrip

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3343ea97c2e7396cdd338074017ef78ea8d4ae5d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Roundtrip/Variantf96ff7eaba6743203fedfb704380546e32afa9aa4a6e7465c48ce4c8be533055.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Roundtrip.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Roundtrip.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3343ea97c2e7396cdd338074017ef78ea8d4ae5d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Roundtrip/Variantf96ff7eaba6743203fedfb704380546e32afa9aa4a6e7465c48ce4c8be533055.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Roundtrip/Variantf96ff7eaba6743203fedfb704380546e32afa9aa4a6e7465c48ce4c8be533055.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 5; external provider; requires a separately pinned dependency.
- `Kernel.Core` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [roundtripDag](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Roundtrip.lean/declarations/roundtripdag.md) | 12 | `declaration-track:8513a9bdea75ba37aa2d8e487f3bd32ebea734e3e685e7c08810dfa414ddda1f` |
| 2 | `def` | [encodeDag](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Roundtrip.lean/declarations/encodedag.md) | 27 | `declaration-track:864e5e987cd2b3008563fe76d325aa2ff61baf80be291e6823b100eb9206978c` |
| 3 | `def` | [decodeDag](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Roundtrip.lean/declarations/decodedag.md) | 33 | `declaration-track:15b37f613636860c462c3b4417abc01b0411575b4787da7da1ce062130a0ce7b` |
| 4 | `def` | [testRoundTrip](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Roundtrip.lean/declarations/testroundtrip.md) | 39 | `declaration-track:7f79cbd3bc17010f9db0b11d2b45cfb31cb053abed53ced0d8181d79d02b0075` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c2ae1c418a4522ae6df0518afb81172141871afb7e4820594e4ea4d5d95d13ae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Roundtrip/Variantf96ff7eaba6743203fedfb704380546e32afa9aa4a6e7465c48ce4c8be533055.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Roundtrip/Variantf96ff7eaba6743203fedfb704380546e32afa9aa4a6e7465c48ce4c8be533055.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
