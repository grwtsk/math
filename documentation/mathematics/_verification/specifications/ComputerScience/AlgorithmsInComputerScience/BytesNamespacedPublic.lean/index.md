# Verification target: Bytes Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fb8e81dbd50513ca27c2c6d88b2985ee4848d3a",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bytes/Variant1c3e9f1222f820484be0c97ce2b0f1fdce778fb8352561f7399f99eef6b7330c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesNamespacedPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fb8e81dbd50513ca27c2c6d88b2985ee4848d3a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bytes/Variant1c3e9f1222f820484be0c97ce2b0f1fdce778fb8352561f7399f99eef6b7330c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bytes/Variant1c3e9f1222f820484be0c97ce2b0f1fdce778fb8352561f7399f99eef6b7330c.lean.json)

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
| 1 | `abbrev` | [CanonicalBytes](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesNamespacedPublic.lean/declarations/canonicalbytes.md) | 25 | `declaration-track:d2a3c5f115f58be428a1e138614c92ed4f83ae4204dfc3b5108545f347363167` |
| 2 | `def` | [encodeU8](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesNamespacedPublic.lean/declarations/encodeu8.md) | 27 | `declaration-track:f0aeeb9131487dcd69f97ba5e1c2a9c030dcb6379c094034d82e553ca0e03a3c` |
| 3 | `def` | [encodeNatLE](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesNamespacedPublic.lean/declarations/encodenatle.md) | 30 | `declaration-track:9fbf1bb8f832720f981a171ea2165ad0b7d7153b05bac9a74f98cd0e5b443465` |
| 4 | `def` | [encodeU16LE](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesNamespacedPublic.lean/declarations/encodeu16le.md) | 34 | `declaration-track:8d51a5acf8f2fe7e2da0637600e70c746f83296c0c3eddb06c25e9c646a9f3dd` |
| 5 | `def` | [encodeU32LE](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesNamespacedPublic.lean/declarations/encodeu32le.md) | 37 | `declaration-track:601b103e9493261bca86e7e227e64829665c8ee0756fde8d74943e775577e1ea` |
| 6 | `def` | [encodeU64LE](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesNamespacedPublic.lean/declarations/encodeu64le.md) | 40 | `declaration-track:570fe57df495b046c00e1661a1e9f3f15dd9d25d70762a7d3a96eed06e0d7eba` |
| 7 | `def` | [encodeSignedLE](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesNamespacedPublic.lean/declarations/encodesignedle.md) | 43 | `declaration-track:80ac18b57f76042f23ccf52e3ea9aa38a9fd1bbe916ff29da56c176d1c3e36be` |
| 8 | `def` | [encodeI32LE](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesNamespacedPublic.lean/declarations/encodei32le.md) | 46 | `declaration-track:f14310c05fb8bd19e8214d4a6bb73bbe8afe2edfcd26cdff5f32bf5f8c9b57a0` |
| 9 | `def` | [encodeI64LE](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesNamespacedPublic.lean/declarations/encodei64le.md) | 49 | `declaration-track:af607a19755375afab8340c92cc6a22eff0e902c912939ad8e06ea26856ef1ff` |
| 10 | `def` | [encodeUtf8](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesNamespacedPublic.lean/declarations/encodeutf8.md) | 52 | `declaration-track:3b326ddce6bfffa447574fd2309110810ccf8bab4518b846e1f69fd3ac3fbd6e` |
| 11 | `def` | [encodeLengthPrefixedUtf8](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesNamespacedPublic.lean/declarations/encodelengthprefixedutf8.md) | 55 | `declaration-track:21fd99909bc081db4f0b8c7ffda08ad9a6e554559e11e673d33397009908abd0` |
| 12 | `def` | [lowerHexNibble](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesNamespacedPublic.lean/declarations/lowerhexnibble.md) | 58 | `declaration-track:36603246a50f3f2bd31185a748d61a49ab89aa9b144134f6688ae1859f1c0c7b` |
| 13 | `def` | [decodeLowerHexPairs](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesNamespacedPublic.lean/declarations/decodelowerhexpairs.md) | 68 | `declaration-track:d147e5815b1b24b3741b3eabc8664225dcbb16cee83ec921afbccbc5b10bf9fb` |
| 14 | `def` | [encodeHash256](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesNamespacedPublic.lean/declarations/encodehash256.md) | 74 | `declaration-track:4f80ee69226a70b83287b96d6ab8d7728a7c602cf17248cf746e25d7ba4139c8` |
| 15 | `theorem` | [canonicalBytes_deterministic](../../../../../ComputerScience/AlgorithmsInComputerScience/BytesNamespacedPublic.lean/declarations/canonicalbytes-deterministic.md) | 78 | `result-track:1e0775e369dc800a2818886889f4d1f24c8d17d860323bae633b64c09385f196` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=35323ceb3e0c5eb99fffcbd511b92b75cf1431a2c14a58a8566289073072bbaf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bytes/Variant1c3e9f1222f820484be0c97ce2b0f1fdce778fb8352561f7399f99eef6b7330c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bytes/Variant1c3e9f1222f820484be0c97ce2b0f1fdce778fb8352561f7399f99eef6b7330c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
