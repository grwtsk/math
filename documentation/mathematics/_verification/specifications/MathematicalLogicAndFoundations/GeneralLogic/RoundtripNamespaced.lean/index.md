# Verification target: Roundtrip Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e759fb71d79eaa18525675a80e1923b757bf8fbc",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Roundtrip/Variant809601415c313c75211f6b126946c3eb0e0f7720a39698bdab45642eb64e12e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RoundtripNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RoundtripNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e759fb71d79eaa18525675a80e1923b757bf8fbc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Roundtrip/Variant809601415c313c75211f6b126946c3eb0e0f7720a39698bdab45642eb64e12e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Roundtrip/Variant809601415c313c75211f6b126946c3eb0e0f7720a39698bdab45642eb64e12e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 10; external provider; requires a separately pinned dependency.
- `Kernel.Core` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [roundtripDag](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RoundtripNamespaced.lean/declarations/roundtripdag.md) | 20 | `declaration-track:e8e74260e12b52df49d208b78236a6640c0894fc1b73c81bc519277f681e9ebb` |
| 2 | `def` | [encodeDag](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RoundtripNamespaced.lean/declarations/encodedag.md) | 35 | `declaration-track:ab11d7cf5341989982b48cb3ccb9427d481d732e24f680c4cb7cc9c5ba835c6d` |
| 3 | `def` | [decodeDag](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RoundtripNamespaced.lean/declarations/decodedag.md) | 41 | `declaration-track:5bac2bb92287be04e00d44b7805344618c4ca637b37689b87be7fa73e2c09ead` |
| 4 | `def` | [testRoundTrip](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RoundtripNamespaced.lean/declarations/testroundtrip.md) | 47 | `declaration-track:42c3132f3845df10f4e34f81a1fc70a3829db0fca04983499a9a35e456c52b1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=af7fdff13478e843b40996200c12c77ce2b2d959bcc8693bb2277b6cbcc4aec1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Roundtrip/Variant809601415c313c75211f6b126946c3eb0e0f7720a39698bdab45642eb64e12e2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Roundtrip/Variant809601415c313c75211f6b126946c3eb0e0f7720a39698bdab45642eb64e12e2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
