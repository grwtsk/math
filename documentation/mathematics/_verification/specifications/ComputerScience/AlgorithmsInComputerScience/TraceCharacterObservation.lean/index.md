# Verification target: Trace Character Observation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23c4123185ead18ad65fbd5f2f72eb68bc588687",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant018252e4505bf2dafbe644f77fb76b79d49a5755989f0452b0bc4ddb4bf984ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceCharacterObservation.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceCharacterObservation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23c4123185ead18ad65fbd5f2f72eb68bc588687`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant018252e4505bf2dafbe644f77fb76b79d49a5755989f0452b0bc4ddb4bf984ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant018252e4505bf2dafbe644f77fb76b79d49a5755989f0452b0bc4ddb4bf984ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Runtime.Manifest` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CharacterObservation](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceCharacterObservation.lean/declarations/characterobservation.md) | 15 | `declaration-track:2e959836224f568c6901f011e26678bd722a2c7392af14662e43c2ee75167b43` |
| 2 | `structure` | [RuntimeTrace](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceCharacterObservation.lean/declarations/runtimetrace.md) | 21 | `declaration-track:7575dfd44bdf1eea795d5fe82077e5f1d15e4d010444e94b2842eb7071a87f8a` |
| 3 | `def` | [parseCharacterObservation](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceCharacterObservation.lean/declarations/parsecharacterobservation.md) | 39 | `declaration-track:d740549ace82cfc716d1d8146d8b0e4ca38348a724490e085dde752444fc3d0f` |
| 4 | `def` | [parseOptionalDigest](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceCharacterObservation.lean/declarations/parseoptionaldigest.md) | 55 | `declaration-track:4c733e3c72aea23877c88064c535b02c3808876fa58c5106b6e425058930d03e` |
| 5 | `def` | [Dyadic.lt](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceCharacterObservation.lean/declarations/dyadic-lt.md) | 62 | `declaration-track:8bd05bd093e1183f12fa5780e8fec32b8d45f803878326667fc548d4603930cd` |
| 6 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceCharacterObservation.lean/declarations/instance.md) | 66 | `declaration-track:c64d16684e51c580f5925087fee5c70af35823a1f909a2d76cfe5e85b704c79d` |
| 7 | `def` | [parseTracePayload](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceCharacterObservation.lean/declarations/parsetracepayload.md) | 70 | `declaration-track:e10cec3b957d7da80ce21b6bd010fc3cb7ae13c6cb924340820eefd05af074bc` |
| 8 | `def` | [decodeTrace](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceCharacterObservation.lean/declarations/decodetrace.md) | 122 | `declaration-track:3f64df91feae62af1827c5ca58642181cbc55d59431ad4e578aed19722f23fd0` |
| 9 | `structure` | [RuntimeSubmission](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceCharacterObservation.lean/declarations/runtimesubmission.md) | 127 | `declaration-track:5eee26bf523d28657d028a5142fc6fec69ec8de14ff3b06fdb802b3207f56bc5` |
| 10 | `def` | [encodeCharacterObservation](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceCharacterObservation.lean/declarations/encodecharacterobservation.md) | 137 | `declaration-track:434127ec1133933dbe91fe16b62ce077ef349e10a72cd95f26b61b93b1f3d126` |
| 11 | `def` | [encodeOptionalDigest](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceCharacterObservation.lean/declarations/encodeoptionaldigest.md) | 149 | `declaration-track:52a6c8a5e1a63d55944432f167e2d53662a2142fc0f0429ef4fb01214d4a28f6` |
| 12 | `def` | [encodeTracePayload](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceCharacterObservation.lean/declarations/encodetracepayload.md) | 153 | `declaration-track:273a4c54f2767149a2086ab1d7c57e4128d36a752b06917e9bcca719fcd1b76d` |
| 13 | `def` | [encodeTrace](../../../../../ComputerScience/AlgorithmsInComputerScience/TraceCharacterObservation.lean/declarations/encodetrace.md) | 175 | `declaration-track:412ddfc92853259d21e0ed5b2d49e409f744badef4eabd2863d366bf0eee1100` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb0617f3e369b9f0d4eb60487749b09609d9bfe2572d181a14f6ec4fff027c83 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant018252e4505bf2dafbe644f77fb76b79d49a5755989f0452b0bc4ddb4bf984ff.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant018252e4505bf2dafbe644f77fb76b79d49a5755989f0452b0bc4ddb4bf984ff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
