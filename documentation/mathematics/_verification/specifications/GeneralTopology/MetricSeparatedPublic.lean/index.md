# Verification target: Metric Separated Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77f85cb54578ce8c7a275ceed2867159bc91e9f6",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantce65851aa5457b09b95fe6ede31ee615cc5cdfe4ce488b2a35a5cee1732466a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/MetricSeparatedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/MetricSeparatedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77f85cb54578ce8c7a275ceed2867159bc91e9f6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantce65851aa5457b09b95fe6ede31ee615cc5cdfe4ce488b2a35a5cee1732466a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantce65851aa5457b09b95fe6ede31ee615cc5cdfe4ce488b2a35a5cee1732466a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSeparated](../../../../GeneralTopology/MetricSeparatedPublic.lean/declarations/isseparated.md) | 44 | `declaration-track:9bdf20724f018c1008b29afb5f40d2a76ab09fb8e8c05ce894ccb0a130677a2f` |
| 2 | `lemma` | [isSeparated_iff_setRelIsSeparated](../../../../GeneralTopology/MetricSeparatedPublic.lean/declarations/isseparated-iff-setrelisseparated.md) | 46 | `result-track:1566d25a84cbeda43b56eb7b7525e8647e149da6ca9de6f6fbefd644d4e85841` |
| 3 | `lemma` | [IsSeparated.empty](../../../../GeneralTopology/MetricSeparatedPublic.lean/declarations/isseparated-empty.md) | 51 | `result-track:b6809a047971cbfcb15736da43cabec555c0f9b4da8b91264459f123e883cddd` |
| 4 | `lemma` | [IsSeparated.singleton](../../../../GeneralTopology/MetricSeparatedPublic.lean/declarations/isseparated-singleton.md) | 52 | `result-track:b10d3552a824e60a17823ebf7ca911eb9ab582277ae608bbb3bca419d31926eb` |
| 5 | `lemma` | [IsSeparated.of_subsingleton](../../../../GeneralTopology/MetricSeparatedPublic.lean/declarations/isseparated-of-subsingleton.md) | 54 | `result-track:fdaedc72620e3f3625e1739a52812cd55099b18d0642d92090f6c523b92e8b47` |
| 6 | `lemma` | [IsSeparated.anti](../../../../GeneralTopology/MetricSeparatedPublic.lean/declarations/isseparated-anti.md) | 58 | `result-track:e9f68c2dd8aab366cf72092dd25a5de451cd0d5621cecfe3cc12fb546fbcd5cd` |
| 7 | `lemma` | [IsSeparated.subset](../../../../GeneralTopology/MetricSeparatedPublic.lean/declarations/isseparated-subset.md) | 61 | `result-track:28264a094b2d665255a94c7b95e46a0238b4e9ba4cd03e761ceb3ecd944a4b47` |
| 8 | `lemma` | [isSeparated_insert](../../../../GeneralTopology/MetricSeparatedPublic.lean/declarations/isseparated-insert.md) | 63 | `result-track:1675dc444057b3a72afef8eced30d5a71bb0da4e83e05d2cb9c70a9fbe99a99b` |
| 9 | `lemma` | [isSeparated_insert_of_notMem](../../../../GeneralTopology/MetricSeparatedPublic.lean/declarations/isseparated-insert-of-notmem.md) | 68 | `result-track:9854c39c963dad48001e10a8e7ca5cca11b664e16f137c2ed10f2a22c658b38a` |
| 10 | `lemma` | [IsSeparated.insert](../../../../GeneralTopology/MetricSeparatedPublic.lean/declarations/isseparated-insert-source-edition-2.md) | 73 | `result-track:aab4053bb9312929ad5b3fff562c368cd4674d550dd09b1b71f5ec6876d95ddd` |
| 11 | `lemma` | [isSeparated_zero](../../../../GeneralTopology/MetricSeparatedPublic.lean/declarations/isseparated-zero.md) | 77 | `result-track:9dcf32172c4243162f0b984744c8134dd19c96761dd1e86574b9ce2d598a027a` |
| 12 | `lemma` | [IsSeparated.image_antilipschitz](../../../../GeneralTopology/MetricSeparatedPublic.lean/declarations/isseparated-image-antilipschitz.md) | 80 | `result-track:6888603a07e9ba5e7e3069f25579f43c0d8216fd10587b781d6b30ec36c6a9f6` |
| 13 | `def` | [AreSeparated](../../../../GeneralTopology/MetricSeparatedPublic.lean/declarations/areseparated.md) | 100 | `declaration-track:1a5ba5448dd13e3dd42b02829980893a4b22b9252bbb6acbe4e293686847deb6` |
| 14 | `theorem` | [symm](../../../../GeneralTopology/MetricSeparatedPublic.lean/declarations/symm.md) | 105 | `result-track:a14752cdacc276810c9add2260d63e93d76f00c191bde791f8381eb867763837` |
| 15 | `theorem` | [comm](../../../../GeneralTopology/MetricSeparatedPublic.lean/declarations/comm.md) | 109 | `result-track:f8953ad13f64c8b0ae193f88124d37c3101ac15c964f0ae8daed5776dd0905da` |
| 16 | `theorem` | [empty_left](../../../../GeneralTopology/MetricSeparatedPublic.lean/declarations/empty-left.md) | 112 | `result-track:e79acd845419d4103f259e67460ff923af5757460ed46a34f01ef21518f79301` |
| 17 | `theorem` | [empty_right](../../../../GeneralTopology/MetricSeparatedPublic.lean/declarations/empty-right.md) | 116 | `result-track:8b73e980fb1610e5fcd9fca40c55ed0693650b54de3adae6554cf5e14a0d14f1` |
| 18 | `theorem` | [disjoint](../../../../GeneralTopology/MetricSeparatedPublic.lean/declarations/disjoint.md) | 119 | `result-track:751ebf752fbbc6d69f93a3dc0f73f9394837a21a0d028577280b96b2aaa16ded` |
| 19 | `theorem` | [subset_compl_right](../../../../GeneralTopology/MetricSeparatedPublic.lean/declarations/subset-compl-right.md) | 123 | `result-track:2f5466f23dbc2f763ebe5e329328e9876182d39c1f720345b0e6ef34487587f6` |
| 20 | `theorem` | [mono](../../../../GeneralTopology/MetricSeparatedPublic.lean/declarations/mono.md) | 127 | `result-track:b99757109b17bf8fe8fefb6c7bbc440ca692bef044e4d36ea729fc5378c4d2b2` |
| 21 | `theorem` | [mono_left](../../../../GeneralTopology/MetricSeparatedPublic.lean/declarations/mono-left.md) | 131 | `result-track:cbeb185151b94f15631020006feb2d18589752cce2667838388646ea7684b672` |
| 22 | `theorem` | [mono_right](../../../../GeneralTopology/MetricSeparatedPublic.lean/declarations/mono-right.md) | 134 | `result-track:221c272e3667a47084225d3e8c68dcf56191db4ba771b85837a5a9cce91b2a59` |
| 23 | `theorem` | [union_left](../../../../GeneralTopology/MetricSeparatedPublic.lean/declarations/union-left.md) | 137 | `result-track:7459d944e8cd519179c1287313d24d344ef6b5f898a8f4533c8e21af3d55b2c9` |
| 24 | `theorem` | [union_left_iff](../../../../GeneralTopology/MetricSeparatedPublic.lean/declarations/union-left-iff.md) | 147 | `result-track:b59a06c54d01e778a710ba8f36a88285dc53c8f917df285917248984c60d2a17` |
| 25 | `theorem` | [union_right](../../../../GeneralTopology/MetricSeparatedPublic.lean/declarations/union-right.md) | 152 | `result-track:16126d922cdf5fe2cb532ffe066d9eefa58891d86664aec7e0dda312fbc079e4` |
| 26 | `theorem` | [union_right_iff](../../../../GeneralTopology/MetricSeparatedPublic.lean/declarations/union-right-iff.md) | 157 | `result-track:d5cddd82baaaec4cc65c68487f29135c22cb83a96312b545eed8ae5519a4c20f` |
| 27 | `theorem` | [finite_iUnion_left_iff](../../../../GeneralTopology/MetricSeparatedPublic.lean/declarations/finite-iunion-left-iff.md) | 161 | `result-track:4052832aedf760acd28db4b263b42531c4a044c98e818839ee5bdf246c59ea81` |
| 28 | `theorem` | [finite_iUnion_right_iff](../../../../GeneralTopology/MetricSeparatedPublic.lean/declarations/finite-iunion-right-iff.md) | 169 | `result-track:85272faf5723fbc09701647b523369afa9a16c5057c023910ce207223e4af599` |
| 29 | `theorem` | [finset_iUnion_left_iff](../../../../GeneralTopology/MetricSeparatedPublic.lean/declarations/finset-iunion-left-iff.md) | 174 | `result-track:d4dd4cfaef193a208d4ac39075b68d7c479f1387e141bd12e16bb9ef0959b13a` |
| 30 | `theorem` | [finset_iUnion_right_iff](../../../../GeneralTopology/MetricSeparatedPublic.lean/declarations/finset-iunion-right-iff.md) | 181 | `result-track:a82724d55159adcb4f29282725787ca40ba76db9f2e22b2d585ed90565b7d1bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5133b4d2314f37f227d74bdedcd588c252f105bbf01b6f4ae0b93d6f14a055f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantce65851aa5457b09b95fe6ede31ee615cc5cdfe4ce488b2a35a5cee1732466a7.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/MetricSeparated/Variantce65851aa5457b09b95fe6ede31ee615cc5cdfe4ce488b2a35a5cee1732466a7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
