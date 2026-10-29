# Verification target: Sheaves Functors Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c624cf9dac6de77d59965215b658eb86c0262677",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variantbe34c9d144a1c9d5f9d5865e73cd5fb019ae36bd92563c6eeb97e16a32dff4da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SheavesFunctorsPublic.lean/index.md) · [Full source](../../../../GeneralTopology/SheavesFunctorsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c624cf9dac6de77d59965215b658eb86c0262677`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variantbe34c9d144a1c9d5f9d5865e73cd5fb019ae36bd92563c6eeb97e16a32dff4da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variantbe34c9d144a1c9d5f9d5865e73cd5fb019ae36bd92563c6eeb97e16a32dff4da.lean.json)

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
| 1 | `theorem` | [pushforward_sheaf_of_sheaf](../../../../GeneralTopology/SheavesFunctorsPublic.lean/declarations/pushforward-sheaf-of-sheaf.md) | 53 | `result-track:76209f4f99eee85f75a8ceb1f564828dcfdbe37ddf88fac3d189cfaab6ac73c8` |
| 2 | `def` | [pushforward](../../../../GeneralTopology/SheavesFunctorsPublic.lean/declarations/pushforward.md) | 60 | `declaration-track:5a9504339be0008d018bc6f9022e5db429fad46af503ad7d4636df16904c37a6` |
| 3 | `lemma` | [pushforward_forget](../../../../GeneralTopology/SheavesFunctorsPublic.lean/declarations/pushforward-forget.md) | 63 | `result-track:23be673cf7e295de18a2cc1f203d419691a645c5e88c9b18ddfbba2b8cfe2acd` |
| 4 | `def` | [pushforwardForgetIso](../../../../GeneralTopology/SheavesFunctorsPublic.lean/declarations/pushforwardforgetiso.md) | 69 | `declaration-track:3830370bc54a303bf0b83cfad05818adc35b126e6ba11d6e9ebc51da0cdb10dc` |
| 5 | `lemma` | [pushforward_obj_val](../../../../GeneralTopology/SheavesFunctorsPublic.lean/declarations/pushforward-obj-val.md) | 74 | `result-track:9fe7206491de1e7c264533770589b8bc95911d9eebbad5386e708878a255e353` |
| 6 | `lemma` | [pushforward_map](../../../../GeneralTopology/SheavesFunctorsPublic.lean/declarations/pushforward-map.md) | 77 | `result-track:a40fdd3879e1244cccfd84358cdec3fd2b1699040328d43dd70417a83908a316` |
| 7 | `def` | [pullback](../../../../GeneralTopology/SheavesFunctorsPublic.lean/declarations/pullback.md) | 89 | `declaration-track:a40d185b34632f5bc977b55886ef6bb901d908307cb4145ab8583a23731840df` |
| 8 | `def` | [pullbackIso](../../../../GeneralTopology/SheavesFunctorsPublic.lean/declarations/pullbackiso.md) | 96 | `declaration-track:c81aa519c5e62dcf2b36408ceaccf851fc8e0bc735f298b08a2fd3834aea20f0` |
| 9 | `def` | [pullbackPushforwardAdjunction](../../../../GeneralTopology/SheavesFunctorsPublic.lean/declarations/pullbackpushforwardadjunction.md) | 101 | `declaration-track:e3f9e64be6e7b278734a106768b9b526634d13f764f0f2d247095a6acffbe868` |
| 10 | `instance` | [(anonymous)](../../../../GeneralTopology/SheavesFunctorsPublic.lean/declarations/instance.md) | 105 | `declaration-track:2709d41e22a55c42c784fb36a8ac05f6d3e5b074b07f42f7e259439dbbd035f7` |
| 11 | `instance` | [(anonymous)](../../../../GeneralTopology/SheavesFunctorsPublic.lean/declarations/instance-source-edition-2.md) | 106 | `declaration-track:b91d61291ab92fd537540efb95f8987b08f36b4a9e613eee707e6fc1b09dbed6` |
| 12 | `def` | [sheafPullback](../../../../GeneralTopology/SheavesFunctorsPublic.lean/declarations/sheafpullback.md) | 123 | `declaration-track:953270cb84a15e43f280a22a84b4bc0195270f9a1946ca9d23fed27ec7dd8b12` |
| 13 | `def` | [sheafPullbackIso](../../../../GeneralTopology/SheavesFunctorsPublic.lean/declarations/sheafpullbackiso.md) | 140 | `declaration-track:d34cbec4c1c4dc9ccade902fe45d6b40d93a0127e3b81fc14f493a66c9d067f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c469153c1e495b7cf5816a7e7b001ff99e101fe1d2a47608e0cc75a5d7fc9c4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variantbe34c9d144a1c9d5f9d5865e73cd5fb019ae36bd92563c6eeb97e16a32dff4da.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variantbe34c9d144a1c9d5f9d5865e73cd5fb019ae36bd92563c6eeb97e16a32dff4da.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
