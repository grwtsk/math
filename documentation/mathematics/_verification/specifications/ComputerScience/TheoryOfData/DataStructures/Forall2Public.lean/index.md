# Verification target: Forall2 Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3fccc785320e59b557b3674e666890c89de9c78",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant0ad37ceba98d6b96e28bee2ee107dc8dadc61657f4bcb78ca6faf367f7b464bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3fccc785320e59b557b3674e666890c89de9c78`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant0ad37ceba98d6b96e28bee2ee107dc8dadc61657f4bcb78ca6faf367f7b464bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant0ad37ceba98d6b96e28bee2ee107dc8dadc61657f4bcb78ca6faf367f7b464bd.lean.json)

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
| 1 | `theorem` | [Forall₂.imp](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/forall-imp.md) | 35 | `result-track:23fa209206649c68851f6b46c5cc6109963561368eafc4ccb7237a45ddef7b5f` |
| 2 | `theorem` | [Forall₂.mp](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/forall-mp.md) | 38 | `result-track:1d07b390c234f8770688f6dfd84e71e4e61ec7cc00724a4295cae32bb34c592f` |
| 3 | `theorem` | [Forall₂.flip](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/forall-flip.md) | 44 | `result-track:c7486c33aba8442b2ae048123c5684d5a4ebacbb4ecd0ae7173f420095b77517` |
| 4 | `theorem` | [forall₂_same](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/forall-same.md) | 49 | `result-track:2649a8f69b3e743d28f54b6a5efcf95c03fc8fc4382b0bde87dc3ad2e010e12a` |
| 5 | `theorem` | [forall₂_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/forall-refl.md) | 53 | `result-track:269316bf359ab5208b573f88135f36d556c78f5b7c63a605da1ec37cd1888fcb` |
| 6 | `theorem` | [forall₂_eq_eq_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/forall-eq-eq-eq.md) | 57 | `result-track:a63444ce2248dc07d3d16f9e2937f171ec7f2d13da07ecc0bcd2b406e06d59a2` |
| 7 | `theorem` | [forall₂_nil_left_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/forall-nil-left-iff.md) | 68 | `result-track:9ae668807da7bb3595ff7dab21495fcb8f3ecfc032a215f09948eb50d8686620` |
| 8 | `theorem` | [forall₂_nil_right_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/forall-nil-right-iff.md) | 72 | `result-track:879370e91f4f594997d58818eb2acff73474d9b14ae082061781883939920d41` |
| 9 | `theorem` | [forall₂_cons_left_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/forall-cons-left-iff.md) | 75 | `result-track:8bf2ee1b8df6e8a15dd4bc2c7d8eef6fdc35aadccd5cc244fef720da9451f345` |
| 10 | `theorem` | [forall₂_cons_right_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/forall-cons-right-iff.md) | 85 | `result-track:db2a793155436c83ea5d849cdfe9e73479198a8a5490393de45c290a238df86f` |
| 11 | `theorem` | [forall₂_and_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/forall-and-left.md) | 95 | `result-track:60f6b64e94fc5cc95e1946e571bf1a317c76266c3f2762e65270681722badbb7` |
| 12 | `theorem` | [forall₂_map_left_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/forall-map-left-iff.md) | 105 | `result-track:96964c979b6162224c861e6a27a74f75664cca2812ba8867c4e83ead1c8094fd` |
| 13 | `theorem` | [forall₂_map_right_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/forall-map-right-iff.md) | 111 | `result-track:43509e9053f368f7506b6e030a8c8e1b5925fcacec963541dcda0b2b0c11ae57` |
| 14 | `theorem` | [left_unique_forall₂'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/left-unique-forall.md) | 116 | `result-track:3d14663413f6133865a2f906bcd28f5846684239651121d883f363ba1bdcc5d9` |
| 15 | `theorem` | [_root_.Relator.LeftUnique.forall₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/root-relator-leftunique-forall.md) | 121 | `result-track:84ff782487a83464c0545f17a11bbc3eb4413b1c1ec2f492eb17f918da75bbc4` |
| 16 | `theorem` | [right_unique_forall₂'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/right-unique-forall.md) | 124 | `result-track:b97c186dab7ed2742945fbdfbf41a28a03c8a213c483214607137dca0343c3f2` |
| 17 | `theorem` | [_root_.Relator.RightUnique.forall₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/root-relator-rightunique-forall.md) | 130 | `result-track:16a2881d9d7c1c128131562ee17e04b6fa7686844f083e7e9f720dc11e9e2509` |
| 18 | `theorem` | [_root_.Relator.BiUnique.forall₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/root-relator-biunique-forall.md) | 133 | `result-track:019c6ea6a5516d5abd8f92fe9a0eeb70d85aad5d8bf7d4045faf271c5a236fdf` |
| 19 | `theorem` | [Forall₂.length_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/forall-length-eq.md) | 136 | `result-track:b337755899dc9160826afe80709fb55d2c632d95aca806725fd3905ac5ef9c33` |
| 20 | `theorem` | [Forall₂.get](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/forall-get.md) | 140 | `result-track:9310858e603ff32206f95d0a9b22f42709a28e07b5a24a38df3ca8a6c0aa9396` |
| 21 | `theorem` | [forall₂_of_length_eq_of_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/forall-of-length-eq-of-get.md) | 146 | `result-track:18d8dbbfb1f5f832b9d207ba92d870f47d0e1df8da7b92f0f3e85bdad9686b1d` |
| 22 | `theorem` | [forall₂_iff_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/forall-iff-get.md) | 155 | `result-track:37b36c3c870b19522ac72ed149c89bd161347604e0e5d4afcb60e08e7d097c97` |
| 23 | `theorem` | [forall₂_zip](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/forall-zip.md) | 159 | `result-track:85cc0064ccbbebf0b7d3508d09ba63a87c3d6aba4a0d417007529c42dd98606a` |
| 24 | `theorem` | [forall₂_iff_zip](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/forall-iff-zip.md) | 166 | `result-track:cd4d24002cc779c20b1dd9a6c23e459685d157052ea3a856c8a02871cd8875bc` |
| 25 | `theorem` | [forall₂_take](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/forall-take.md) | 183 | `result-track:9cd11b9f151067c34e48266775b3e34149e6bf5ea7c5be10a2e3ffc365594fd2` |
| 26 | `theorem` | [forall₂_drop](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/forall-drop.md) | 188 | `result-track:b8c89002b0d04c92f7bddb8a1b4e077e57434bb892ea6d95ca834f460df53da1` |
| 27 | `theorem` | [forall₂_take_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/forall-take-append.md) | 193 | `result-track:c25b3eb640391ffeff02297c6ce885b4bdfe6c24c314530a350dea70f1db9397` |
| 28 | `theorem` | [forall₂_drop_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/forall-drop-append.md) | 199 | `result-track:734df8e7b256a1d0d7808d8104f78bd48ec45d813e092ef7fad29d431fc8d05b` |
| 29 | `theorem` | [rel_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/rel-mem.md) | 205 | `result-track:a558248dda86f0ae2229ef75c7098fdd1fbdfa53d5adc5b5572c585613490b55` |
| 30 | `theorem` | [rel_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/rel-map.md) | 211 | `result-track:19cbd5ddef36d664fc80143b9a7a820fb7f7362860b2063268023eafa9df6405` |
| 31 | `theorem` | [rel_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/rel-append.md) | 215 | `result-track:f42389ed93bd51d1039efac6d72e2eafc15dbcd88034f672db962d508243c5ac` |
| 32 | `theorem` | [rel_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/rel-reverse.md) | 219 | `result-track:e454080efc1f066c936c1b5e3d3c86911321ca32eb725966488f7fd0edfef8e8` |
| 33 | `theorem` | [forall₂_reverse_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/forall-reverse-iff.md) | 226 | `result-track:edec45036efe5bdaa7c13d680910acffeca3136bd6fd49e19c92854fd07e82b6` |
| 34 | `theorem` | [rel_flatten](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/rel-flatten.md) | 233 | `result-track:5552b908564a58a4d6195d9dcd9d22dc38d96146c6ab93fb81c4b9a12ffc0da7` |
| 35 | `theorem` | [rel_flatMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/rel-flatmap.md) | 237 | `result-track:9a9f50874b658ef02b3611c66f91fc1f9d48160e454a566af90e9cb1bc3b2933` |
| 36 | `theorem` | [rel_foldl](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/rel-foldl.md) | 241 | `result-track:893cfd04e533904f5bf092ba18fc6dd9c02eebb3cf6fe8917f4c986a795ce35a` |
| 37 | `theorem` | [rel_foldr](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/rel-foldr.md) | 245 | `result-track:d18e3ecefa98493a985faf3470f8c67e7b802da152782216e1c57052b1b918f6` |
| 38 | `theorem` | [rel_filter](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/rel-filter.md) | 249 | `result-track:0a15c340b542c22498d828cef495d66c980cdd29b9d80878d908f690c386d7f4` |
| 39 | `theorem` | [rel_filterMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/rel-filtermap.md) | 262 | `result-track:1592503744a575b36d56eebd78cd4c2f83f3d498b51edf9a7e583caa77cb24ca` |
| 40 | `inductive` | [SublistForall₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/sublistforall.md) | 273 | `declaration-track:71c537aecabc9827529f57da354b95fb796495c733aec614a6ffe463b48b9e67` |
| 41 | `theorem` | [sublistForall₂_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/sublistforall-iff.md) | 278 | `result-track:57c683e92bd8c3c259ba682b9e46e8bfa0b98381906f49df5afb7840e4074176` |
| 42 | `instance` | [SublistForall₂.is_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/sublistforall-is-refl.md) | 302 | `declaration-track:09537b3c558262aa74d40853819b3f5e9d31fe28b00c74ee1ef6cf8c41948124` |
| 43 | `instance` | [SublistForall₂.is_trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/sublistforall-is-trans.md) | 305 | `declaration-track:268ec1bf3df5aabf3a2b4d452c29e74ff98e3b7501f69d60854538e1ea5f8095` |
| 44 | `theorem` | [Sublist.sublistForall₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/sublist-sublistforall.md) | 324 | `result-track:d05397799115a29050d0a213f7493556cc32db41f274b5c44690e742f96be6ad` |
| 45 | `theorem` | [tail_sublistForall₂_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/tail-sublistforall-self.md) | 328 | `result-track:001b26d34d766a8d7073c5d2bfe8fc6d0c076adb90c544c33056ac2154784471` |
| 46 | `theorem` | [sublistForall₂_map_left_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/sublistforall-map-left-iff.md) | 332 | `result-track:80362419e7feea99ef5c1297a7d4ee6282d9bed6c67aaee6335dbaad81b59107` |
| 47 | `theorem` | [sublistForall₂_map_right_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2Public.lean/declarations/sublistforall-map-right-iff.md) | 337 | `result-track:e250796066b57508b90975879b5e961b26c3d001f04e4a17b180c1a867f942bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=759ad95556b94344c0c8eedb85d261f6e37f0f11af5e234bb33353a5c5f2fbfc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant0ad37ceba98d6b96e28bee2ee107dc8dadc61657f4bcb78ca6faf367f7b464bd.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant0ad37ceba98d6b96e28bee2ee107dc8dadc61657f4bcb78ca6faf367f7b464bd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
