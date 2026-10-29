# Verification target: Shrink Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e135a047c0db21d76ca217eaa3d80783213f4e42",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Shrink/Variantd211bf73b4aaac85c22322c7e31a5d5bca099832e1184944f98ab70d955acd17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ShrinkPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ShrinkPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e135a047c0db21d76ca217eaa3d80783213f4e42`.

Source path: `GRWTSK/Algebra/GroupTheory/Shrink/Variantd211bf73b4aaac85c22322c7e31a5d5bca099832e1184944f98ab70d955acd17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Shrink/Variantd211bf73b4aaac85c22322c7e31a5d5bca099832e1184944f98ab70d955acd17.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkPublic.lean/declarations/instance-source-edition-12.md) | 22 | `declaration-track:abe5956d67de8c126531ccd22a5f0967ee7c1d982cee69dac61b659e77f1a63d` |
| 2 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkPublic.lean/declarations/instance-source-edition-14.md) | 23 | `declaration-track:ad9de0d62455c37c43d98f1812328444f1adca4bc6ae5bc6f4a2b5023428b5b3` |
| 3 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkPublic.lean/declarations/instance-source-edition-5.md) | 24 | `declaration-track:67e5961b7af05e1a4c4b6063238b17c26f127c287165cfb2b5c617617c6deed6` |
| 4 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkPublic.lean/declarations/instance-source-edition-8.md) | 25 | `declaration-track:8f65469e47a3db5053e0f882f45c9746de40f4c5132763e6e13d191ee8ddf399` |
| 5 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkPublic.lean/declarations/instance.md) | 26 | `declaration-track:25111b7630dc707b2fa81eb846b7a78f7ecc6157699a41edb6bf1accb29eba32` |
| 6 | `lemma` | [equivShrink_symm_one](../../../../GroupTheoryAndGeneralizations/ShrinkPublic.lean/declarations/equivshrink-symm-one.md) | 31 | `result-track:aa9a90db21595f9bb5725f532fe5e1e86413373fff1b9b0becad69f1003ec342` |
| 7 | `lemma` | [equivShrink_symm_mul](../../../../GroupTheoryAndGeneralizations/ShrinkPublic.lean/declarations/equivshrink-symm-mul.md) | 35 | `result-track:42508798658b6803d7c2b4dc14d162b732a96b401ca40af847be7290a66eff1e` |
| 8 | `lemma` | [equivShrink_mul](../../../../GroupTheoryAndGeneralizations/ShrinkPublic.lean/declarations/equivshrink-mul.md) | 40 | `result-track:4712155e786ad895fd3c5b0dd344a6f673dace6983be7b0a847becbd0d39d17f` |
| 9 | `lemma` | [equivShrink_symm_smul](../../../../GroupTheoryAndGeneralizations/ShrinkPublic.lean/declarations/equivshrink-symm-smul.md) | 45 | `result-track:e0abbaa07e6e47b27d65f3f3b2e509e8d78acf001b17f110c840d0bbe612234b` |
| 10 | `lemma` | [equivShrink_smul](../../../../GroupTheoryAndGeneralizations/ShrinkPublic.lean/declarations/equivshrink-smul.md) | 50 | `result-track:a2e700f4774d6e7c8e59e8cbf73087a7bae53b5aee83345344c8fa751d0b95c9` |
| 11 | `lemma` | [equivShrink_symm_div](../../../../GroupTheoryAndGeneralizations/ShrinkPublic.lean/declarations/equivshrink-symm-div.md) | 54 | `result-track:af6029c0d6a33cfd460c62ef71ac6bab2962d4db52ffd40644ba3c9ea8a7dcb0` |
| 12 | `lemma` | [equivShrink_div](../../../../GroupTheoryAndGeneralizations/ShrinkPublic.lean/declarations/equivshrink-div.md) | 59 | `result-track:3c4af9822316dd33a83d6a714255d4eb13be299325efa269044d49bb0f6af73d` |
| 13 | `lemma` | [equivShrink_symm_inv](../../../../GroupTheoryAndGeneralizations/ShrinkPublic.lean/declarations/equivshrink-symm-inv.md) | 64 | `result-track:afc3fdd3f4cee5dc1dd31f110fa37e686ecf3aa18ffe72a4ec48861d5cf4622a` |
| 14 | `lemma` | [equivShrink_inv](../../../../GroupTheoryAndGeneralizations/ShrinkPublic.lean/declarations/equivshrink-inv.md) | 69 | `result-track:b4efff52743f8397ffb39168ab8edd6eca7028dbade1a71093eacae03c78d1d9` |
| 15 | `def` | [mulEquiv](../../../../GroupTheoryAndGeneralizations/ShrinkPublic.lean/declarations/mulequiv.md) | 76 | `declaration-track:589daf4becc475ffa0ebe82044f0f90543632ec3b4cae73a94d14198daf4afd8` |
| 16 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkPublic.lean/declarations/instance-source-edition-4.md) | 79 | `declaration-track:5114a04c4821fd986df73e6d82a88176b822f7f55acef0674d448277947ca91b` |
| 17 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkPublic.lean/declarations/instance-source-edition-10.md) | 82 | `declaration-track:9ab7ec758cdbdf41139b1eea35afd803aa7b65ca7d23d867b4aeee93bbe3b292` |
| 18 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkPublic.lean/declarations/instance-source-edition-7.md) | 85 | `declaration-track:8e255966991dd09619c46bd7c1460790616d74b83acb8435575d3aa4d2c41fdf` |
| 19 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkPublic.lean/declarations/instance-source-edition-13.md) | 89 | `declaration-track:ace6b23146c18b9e42618f46723f88df23752626575298f8d999f953e508b413` |
| 20 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkPublic.lean/declarations/instance-source-edition-15.md) | 93 | `declaration-track:aeb09938f304e90a4759bb9ce88266d1478eed882016db41dd8bddad295ce68d` |
| 21 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkPublic.lean/declarations/instance-source-edition-16.md) | 96 | `declaration-track:de740bbd2c6a413f72018f29fc8f51ffe3d443630abedb76b7dce3fed4613cb9` |
| 22 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkPublic.lean/declarations/instance-source-edition-2.md) | 99 | `declaration-track:35d65cb18d1a6c084e2d2b56549e31a2f30842b0b5a8f1f29041b140fce35cd3` |
| 23 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkPublic.lean/declarations/instance-source-edition-3.md) | 102 | `declaration-track:4b23e2b149b2f09bb1afd08f7759d439c7e0432a6c8d7c72ad6a24ea1b8e0cdd` |
| 24 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkPublic.lean/declarations/instance-source-edition-9.md) | 105 | `declaration-track:93413766c082674476cb085461c80700665ba04721e9f1afc7997cab87d3e3aa` |
| 25 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkPublic.lean/declarations/instance-source-edition-11.md) | 108 | `declaration-track:a9eb28708fdc15c5265a5555ca0fde4185d20219c8617d075e1cae3fbcb92116` |
| 26 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ShrinkPublic.lean/declarations/instance-source-edition-6.md) | 111 | `declaration-track:7b4eeecc63eb950e2fd54e0198cce319940a6269915c6ca33185b1f46b5ecc8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c5aa3ea284fc76910dc32f7dae480f3330df267c6507ce9892dcd4c76646bd16 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Shrink/Variantd211bf73b4aaac85c22322c7e31a5d5bca099832e1184944f98ab70d955acd17.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Shrink/Variantd211bf73b4aaac85c22322c7e31a5d5bca099832e1184944f98ab70d955acd17.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
