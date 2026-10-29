# Verification target: Cotangent Base Change Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef7141cca8ab670c9236c404eb305c090ac478a6",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/BaseChange/Variantb0d5f4d1c0f230c9a4d726dcb8776af92b187837dcee64a09c8ed4f8824e3e5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/CotangentBaseChangeNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/CotangentBaseChangeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef7141cca8ab670c9236c404eb305c090ac478a6`.

Source path: `GRWTSK/Algebra/BaseChange/Variantb0d5f4d1c0f230c9a4d726dcb8776af92b187837dcee64a09c8ed4f8824e3e5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/BaseChange/Variantb0d5f4d1c0f230c9a4d726dcb8776af92b187837dcee64a09c8ed4f8824e3e5b.lean.json)

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
| 1 | `def` | [tensorCotangentSpace](../../../../CommutativeAlgebra/CotangentBaseChangeNamespacedPublic.lean/declarations/tensorcotangentspace.md) | 56 | `declaration-track:55f35b29c63602f0bfdabf3bdf26412693dcf2cf7de44778bf479c7cc9000aa4` |
| 2 | `lemma` | [tensorCotangentSpace_tmul_tmul](../../../../CommutativeAlgebra/CotangentBaseChangeNamespacedPublic.lean/declarations/tensorcotangentspace-tmul-tmul.md) | 80 | `result-track:6dcd47a3f517ee129d686c4b91561eaa448588bca0e8ce98fb312a17e84eaba0` |
| 3 | `lemma` | [tensorCotangentSpace_tmul](../../../../CommutativeAlgebra/CotangentBaseChangeNamespacedPublic.lean/declarations/tensorcotangentspace-tmul.md) | 103 | `result-track:f58bc822c0c0064592b500b3f2f7670f8a89e41ec08e72bbf606be127c3ba9a9` |
| 4 | `def` | [tensorCotangentOfFlat](../../../../CommutativeAlgebra/CotangentBaseChangeNamespacedPublic.lean/declarations/tensorcotangentofflat.md) | 115 | `declaration-track:cdc131d0fba4c836fa2d30ea8adde45850da24c013c69a4bc08dda710b9727bb` |
| 5 | `lemma` | [tensorCotangentOfFlat_tmul](../../../../CommutativeAlgebra/CotangentBaseChangeNamespacedPublic.lean/declarations/tensorcotangentofflat-tmul.md) | 125 | `result-track:a38fbfb6f244d731fc9fc1e9e6ed5ae3dfb544a897cc8adeef26ef628ff4e474` |
| 6 | `def` | [tensorToH1Cotangent](../../../../CommutativeAlgebra/CotangentBaseChangeNamespacedPublic.lean/declarations/tensortoh1cotangent.md) | 137 | `declaration-track:5529e558971de06f78b1a59f69fcb2cdfdc7e7c874efd089a365367300201902` |
| 7 | `lemma` | [tensorToH1Cotangent_tmul](../../../../CommutativeAlgebra/CotangentBaseChangeNamespacedPublic.lean/declarations/tensortoh1cotangent-tmul.md) | 144 | `result-track:92faec67a9209678e0b7cbb6cc59eba63eb899e56d28d595abd8cc56732b0948` |
| 8 | `lemma` | [tensorToH1Cotangent_bijective_of_flat](../../../../CommutativeAlgebra/CotangentBaseChangeNamespacedPublic.lean/declarations/tensortoh1cotangent-bijective-of-flat.md) | 151 | `result-track:7f9b2c93686a103d8990b8400506ab5a0b4868790122dc5b23e6c8dbe1dc823e` |
| 9 | `def` | [tensorH1CotangentOfFlat](../../../../CommutativeAlgebra/CotangentBaseChangeNamespacedPublic.lean/declarations/tensorh1cotangentofflat.md) | 194 | `declaration-track:2343d6ee2d2cfb477e12d865928a6d6195104e55cbc4c133bdb97b53dc21d04f` |
| 10 | `lemma` | [tensorH1CotangentOfFlat_tmul](../../../../CommutativeAlgebra/CotangentBaseChangeNamespacedPublic.lean/declarations/tensorh1cotangentofflat-tmul.md) | 200 | `result-track:12fbaae241d07778aa8c4ad5b42b97e1faa26c30e4a4098bb67b5f89817111f0` |
| 11 | `def` | [tensorH1CotangentOfFlat](../../../../CommutativeAlgebra/CotangentBaseChangeNamespacedPublic.lean/declarations/tensorh1cotangentofflat-source-edition-2.md) | 207 | `declaration-track:aee8af66a41fc19fd3c8df7a9c1988cf8462228af8c97f1dd8918de5481032ae` |
| 12 | `lemma` | [tensorH1CotangentOfFlat_tmul](../../../../CommutativeAlgebra/CotangentBaseChangeNamespacedPublic.lean/declarations/tensorh1cotangentofflat-tmul-source-edition-2.md) | 216 | `result-track:e8c1fd44035b0e6a7bf01c5119b66240ed931d4e25ce3b5bf4d9b2f58c47f71f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5eb0bc51b6633ab7c8c613bdce8cfd7ac91182da18b6d432701219598360af5c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/BaseChange/Variantb0d5f4d1c0f230c9a4d726dcb8776af92b187837dcee64a09c8ed4f8824e3e5b.lean","GRWTSK/_verification/specifications/Algebra/BaseChange/Variantb0d5f4d1c0f230c9a4d726dcb8776af92b187837dcee64a09c8ed4f8824e3e5b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
