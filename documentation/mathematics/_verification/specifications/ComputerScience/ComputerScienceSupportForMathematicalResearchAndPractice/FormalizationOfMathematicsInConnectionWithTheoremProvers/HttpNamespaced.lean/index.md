# Verification target: Http Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0283248a6db0ef0127dc02db8023b3a2322b73a",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Http/Variante652464400464224d9343d3836c5ce72ba618c2a067eb513167c3621269599b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HttpNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HttpNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0283248a6db0ef0127dc02db8023b3a2322b73a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Http/Variante652464400464224d9343d3836c5ce72ba618c2a067eb513167c3621269599b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Http/Variante652464400464224d9343d3836c5ce72ba618c2a067eb513167c3621269599b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [MediaType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HttpNamespaced.lean/declarations/mediatype.md) | 12 | `declaration-track:7b9ae382de902ec14c1b0ab1e03718def4c340e6e70bbed14c96ef4881dd5862` |
| 2 | `inductive` | [Accept](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HttpNamespaced.lean/declarations/accept.md) | 19 | `declaration-track:51550250bbf799f6b0c32e50bce3877a17e46d77c40706b66d70ea0a80585f50` |
| 3 | `def` | [relayJsonContentTypeAllowed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HttpNamespaced.lean/declarations/relayjsoncontenttypeallowed.md) | 27 | `declaration-track:173a55d054f3852983dec747f053720846952663e19c17cc060002e48ffd5af2` |
| 4 | `def` | [jsonAcceptAllowed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HttpNamespaced.lean/declarations/jsonacceptallowed.md) | 32 | `declaration-track:8af362450becdc55c922fc89d6af2063b0e47e7fcc0b66ca5c55e68ce3001627` |
| 5 | `def` | [sseAcceptAllowed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HttpNamespaced.lean/declarations/sseacceptallowed.md) | 38 | `declaration-track:eb04612c01b655754fc67bf494dc7eedd8b2e6e3e5ceeeee618d0ff301897455` |
| 6 | `theorem` | [json_content_type_allowed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HttpNamespaced.lean/declarations/json-content-type-allowed.md) | 44 | `result-track:92dece9351d1bcf0a07b64358cdae12b98c32301307016ed29f3a223cb67bec5` |
| 7 | `theorem` | [json_utf8_content_type_allowed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HttpNamespaced.lean/declarations/json-utf8-content-type-allowed.md) | 48 | `result-track:9fdee6b64a555ee39a976cc30a65529724b9a00699476e91f674019ac30d2332` |
| 8 | `theorem` | [text_plain_not_relay_json](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HttpNamespaced.lean/declarations/text-plain-not-relay-json.md) | 52 | `result-track:434b374bac4afe74f371ce8d2f92677d3b818cd5a0b2ecb9774490f617352db5` |
| 9 | `theorem` | [other_not_relay_json](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HttpNamespaced.lean/declarations/other-not-relay-json.md) | 56 | `result-track:8958d55c7f964f5cc00718bdfcdf3f938b26970e96bc297b2af858c2aff22ab0` |
| 10 | `theorem` | [missing_json_accept_allowed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HttpNamespaced.lean/declarations/missing-json-accept-allowed.md) | 60 | `result-track:37b0ccc52570716fc1e7214332d3bc9c5e664aa98a5cc725ac11cc2031eefbb9` |
| 11 | `theorem` | [application_json_accept_allowed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HttpNamespaced.lean/declarations/application-json-accept-allowed.md) | 64 | `result-track:4227341bc24b85f7bd3bdb011b0424570e2b7a1c8f5027f0bb5d809cf87cd0f4` |
| 12 | `theorem` | [wildcard_json_accept_allowed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HttpNamespaced.lean/declarations/wildcard-json-accept-allowed.md) | 68 | `result-track:a065d1a9448e36c1b8bb6b6b2f77f8c7bc9420a293c2a702e8c8da42f316a3e5` |
| 13 | `theorem` | [incompatible_json_accept_refused](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HttpNamespaced.lean/declarations/incompatible-json-accept-refused.md) | 72 | `result-track:7de70773259694b5aa7fcbc7fb7c1328384ecbc65f199743c3e9833e085cc323` |
| 14 | `theorem` | [text_event_stream_not_json_accept](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HttpNamespaced.lean/declarations/text-event-stream-not-json-accept.md) | 76 | `result-track:34f04c8db7c8293be77398808cccaa7d64ce40bcb07a191556891e84e21d4178` |
| 15 | `theorem` | [missing_sse_accept_allowed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HttpNamespaced.lean/declarations/missing-sse-accept-allowed.md) | 80 | `result-track:539c68330088240308f5afbf0346fc48333fb6e48acd473a48f3f60a645a0dae` |
| 16 | `theorem` | [wildcard_sse_accept_allowed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HttpNamespaced.lean/declarations/wildcard-sse-accept-allowed.md) | 84 | `result-track:acdd83e3810ba6807cf42f1368638316c06752643e57bd6168b04d1f87baa82d` |
| 17 | `theorem` | [application_json_not_sse_accept](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HttpNamespaced.lean/declarations/application-json-not-sse-accept.md) | 88 | `result-track:7c6f2086efdcd5380ba97f09ebc013e9fc457b82d93d124bc415c4c1c5e1dedb` |
| 18 | `theorem` | [incompatible_sse_accept_refused](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HttpNamespaced.lean/declarations/incompatible-sse-accept-refused.md) | 92 | `result-track:9395bbe042791360e540f139803706c0ecd496c77848efc86319cad6f237430b` |
| 19 | `theorem` | [text_event_stream_sse_accept_allowed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HttpNamespaced.lean/declarations/text-event-stream-sse-accept-allowed.md) | 96 | `result-track:c9f849e2a293a75448aa654c4fa82db0052291715c28e616bf8bbe7b01b3203c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a8438d53275317a5e9962ffc6f2c10a5348a31e3da5d8037ab521d66bfa51a88 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Http/Variante652464400464224d9343d3836c5ce72ba618c2a067eb513167c3621269599b8.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Http/Variante652464400464224d9343d3836c5ce72ba618c2a067eb513167c3621269599b8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
