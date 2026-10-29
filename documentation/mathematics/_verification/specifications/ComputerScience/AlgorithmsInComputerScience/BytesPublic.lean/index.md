# Verification target: Bytes Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fd9948d17786e1a48eb271f8b981313b7790f47",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bytes/Variant8c010e0850f175bdacb5ff445bb3d399393cfb1d93bef8ea351332dc60e80d55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fd9948d17786e1a48eb271f8b981313b7790f47`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bytes/Variant8c010e0850f175bdacb5ff445bb3d399393cfb1d93bef8ea351332dc60e80d55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bytes/Variant8c010e0850f175bdacb5ff445bb3d399393cfb1d93bef8ea351332dc60e80d55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CanonicalBytes](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesPublic.lean/declarations/canonicalbytes.md) | 17 | `declaration-track:3a69d2c8feb474d843b24e61ba54cdfd086d667857419a1cc5f779d33cb4fbd0` |
| 2 | `def` | [encodeU8](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesPublic.lean/declarations/encodeu8.md) | 19 | `declaration-track:045e887576a96dbb4a4eabdff9badc3153825e207ab130d4231c533f20a6bdf1` |
| 3 | `def` | [encodeNatLE](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesPublic.lean/declarations/encodenatle.md) | 22 | `declaration-track:5a1e2d2a78c7c578ead7e1ef82afaa429db4fafdf5b80dddc4abd00826f1c93c` |
| 4 | `def` | [encodeU16LE](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesPublic.lean/declarations/encodeu16le.md) | 26 | `declaration-track:b735d07ec6076108dc90d2e33de11e9c090380d20494c28e513a919f96ddc151` |
| 5 | `def` | [encodeU32LE](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesPublic.lean/declarations/encodeu32le.md) | 29 | `declaration-track:b1c9ec71521b8d5db62b8d4c8fa4c5d65e5089dbfad36870641fc29721f24258` |
| 6 | `def` | [encodeU64LE](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesPublic.lean/declarations/encodeu64le.md) | 32 | `declaration-track:e958b8e1d0b77d5345792fac89ef8f1ae91b7f881dac9f894d9d9c74e947626b` |
| 7 | `def` | [encodeSignedLE](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesPublic.lean/declarations/encodesignedle.md) | 35 | `declaration-track:0c562989786160a7a35060c0e8cc5677dc9bd4855b72aa8e97783334a3952d68` |
| 8 | `def` | [encodeI32LE](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesPublic.lean/declarations/encodei32le.md) | 38 | `declaration-track:8ad757b02129725cb1232679338420a620ec2badc20d312e508aaf381c72ce43` |
| 9 | `def` | [encodeI64LE](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesPublic.lean/declarations/encodei64le.md) | 41 | `declaration-track:9124ab2748061d8eafdd78b8e56259a0cc2b6088065cb03cafd74e295609e1f8` |
| 10 | `def` | [encodeUtf8](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesPublic.lean/declarations/encodeutf8.md) | 44 | `declaration-track:ea4c249530a5666b1ed22456e3a4b4880217de231da7ce1d738b2cc1b457df99` |
| 11 | `def` | [encodeLengthPrefixedUtf8](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesPublic.lean/declarations/encodelengthprefixedutf8.md) | 47 | `declaration-track:3bc0904e3645628726e47d8ae9349f93be8c4b84a4db71f8f1fda54fd2eb2a9b` |
| 12 | `def` | [lowerHexNibble](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesPublic.lean/declarations/lowerhexnibble.md) | 50 | `declaration-track:43c4a39cae871597ff11ddc887bd9213e23e6069fac8e18747c83fcc7fa06ce8` |
| 13 | `def` | [decodeLowerHexPairs](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesPublic.lean/declarations/decodelowerhexpairs.md) | 60 | `declaration-track:d3cd581c81f680fa810f44bbae1596aa62a30f1c3df2b1b051866a518769cf57` |
| 14 | `def` | [encodeHash256](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesPublic.lean/declarations/encodehash256.md) | 66 | `declaration-track:14aa88755d67673cab7737192e89d3d1faabe8b261d017dc539cca9339123a05` |
| 15 | `theorem` | [canonicalBytes_deterministic](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesPublic.lean/declarations/canonicalbytes-deterministic.md) | 70 | `result-track:88d7cd863a5ac8fc5b604f5f0ebfc11aa43323c62e29d41950e993bd424a208e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a8192a0c4040f396ef5c23105bb7b3425efe25d77fab7929fdcb525c9577047 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bytes/Variant8c010e0850f175bdacb5ff445bb3d399393cfb1d93bef8ea351332dc60e80d55.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bytes/Variant8c010e0850f175bdacb5ff445bb3d399393cfb1d93bef8ea351332dc60e80d55.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
