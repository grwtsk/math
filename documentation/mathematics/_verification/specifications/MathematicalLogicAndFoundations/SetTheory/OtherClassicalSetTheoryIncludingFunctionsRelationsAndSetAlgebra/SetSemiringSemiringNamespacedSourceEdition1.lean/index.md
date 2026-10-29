# Verification target: Set Semiring Semiring Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9eb33901d338dcae67d66361f40e0fcd15e1f1e",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Semiring/Variantcbe08aa3c84f5f3e5b07de822478f496bb4725d722ba45150c785f4fcd4413e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9eb33901d338dcae67d66361f40e0fcd15e1f1e`.

Source path: `GRWTSK/Algebra/GroupTheory/Semiring/Variantcbe08aa3c84f5f3e5b07de822478f496bb4725d722ba45150c785f4fcd4413e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Semiring/Variantcbe08aa3c84f5f3e5b07de822478f496bb4725d722ba45150c785f4fcd4413e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Kleene` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Canonical` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.BooleanAlgebra` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SetSemiring](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/setsemiring.md) | 39 | `declaration-track:cb07eab8580d5fb485f170eba46989890a9b1157a1c832e6e46f63c4fe006742` |
| 2 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/instance-source-edition-15.md) | 42 | `declaration-track:d94dfc6250843dedbb90392fab4f4c525b52f4539e3a43ab61957396985665ac` |
| 3 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/instance-source-edition-11.md) | 45 | `declaration-track:7b5f58533413aeb77bb8bcc055fc93746398aa7724ef86ead043ef55ae4dbef9` |
| 4 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/instance-source-edition-17.md) | 48 | `declaration-track:eb5aae817edb4aebebf2cdd9f5f2930a4bf4f249512467ab753dae621dcd4e3c` |
| 5 | `def` | [Set.up](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/set-up.md) | 52 | `declaration-track:f90a192994c860de0ecadf4d3d385e816616fafb15298c5b0117be7af657790a` |
| 6 | `def` | [down](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/down.md) | 58 | `declaration-track:90a0ddec3f6f3085b6fdd3400dc3c04a851bfbaea3d90183c22c248cd271b466` |
| 7 | `theorem` | [down_up](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/down-up.md) | 65 | `result-track:1787fd87295f106daa82e44d76a8006cfe4ce85df1095de3f501070d70acb286` |
| 8 | `theorem` | [up_down](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/up-down.md) | 69 | `result-track:0d377b2b4c7535daa7ac4d0cc7ae9f8a8c53cc786292857c111e4a7885283105` |
| 9 | `theorem` | [up_le_up](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/up-le-up.md) | 73 | `result-track:0f17ace6bb4d349cdd0fabcd2f0b5a34119eecdde3309ed8fa903decd494e0cf` |
| 10 | `theorem` | [up_lt_up](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/up-lt-up.md) | 76 | `result-track:88b32d202c84d9490795b2ed784724e11c76176939e7daa231dca2dd3be691f2` |
| 11 | `theorem` | [down_subset_down](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/down-subset-down.md) | 80 | `result-track:c7300444dbb07408a1137b5337d69e7604e12d801483a67ecfebed18f70174ee` |
| 12 | `theorem` | [down_ssubset_down](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/down-ssubset-down.md) | 84 | `result-track:be50a5b0bcaa7a2bfefb4eb63bea282ea73cae6e79c9e26755544aa1e740e26d` |
| 13 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/instance-source-edition-8.md) | 87 | `declaration-track:4da2444efadcd9d9c36a9d655fa7ae340ba1db2d97e2f617c18909ff04934ced` |
| 14 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/instance-source-edition-9.md) | 89 | `declaration-track:55cc88e7a41adbed7f05ad3a2076d4616c28804fc10d6f642c752041612815d6` |
| 15 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/instance-source-edition-3.md) | 91 | `declaration-track:12c167e5b8f7647f1b8e28ae7897a8b4795cdbc12be6432ee3e77b1af17f78ca` |
| 16 | `theorem` | [zero_def](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/zero-def.md) | 98 | `result-track:42b9dea24528b2b91ebac04719a186fa13c700d3e6f3185498ce09ac2d1edf6d` |
| 17 | `theorem` | [down_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/down-zero.md) | 102 | `result-track:69b1ed05f99b3aaf7e55282f4b1aa0704f4d48100706300d168d01d2997fedd9` |
| 18 | `theorem` | [Set Semiring Semiring Namespaced Source Edition1](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/up-empty.md) | 106 | `result-track:505f794dd457274bb06663bd0cbc213498b421ad604fc1086ed094c7e830ca4d` |
| 19 | `theorem` | [add_def](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/add-def.md) | 109 | `result-track:b24a7cd82a8a8ef5f9ef3a9293d74f1293ac50862f662e6b392ee4aa3056d7f5` |
| 20 | `theorem` | [down_add](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/down-add.md) | 113 | `result-track:4884e404eff1667a3d08d27c35813a88ec05b1489409a93595f35038ac271c6d` |
| 21 | `theorem` | [Set Semiring Semiring Namespaced Source Edition1](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/up-union.md) | 117 | `result-track:ddec3405afbf5135915b68bd3618e31df0801068eef0ca5100ba7d863181d7d5` |
| 22 | `instance` | [addLeftMono](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/addleftmono.md) | 122 | `declaration-track:9fb0eef7629a3bf0cdfdd340947000c1a46294449efa59d541fc50b27c2f4ead` |
| 23 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/instance-source-edition-12.md) | 129 | `declaration-track:7ddddfe857243416dc5f4d22b4256cfac5b4cf2831ed8a0b30ce1d3668fcfe10` |
| 24 | `theorem` | [mul_def](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/mul-def.md) | 137 | `result-track:21a5c37222c8fd0e6e43e014d643466efa51e7eaca7a430baa20d215fa4f122c` |
| 25 | `theorem` | [down_mul](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/down-mul.md) | 141 | `result-track:1f9d0d0cfb4ec9ff54cf119972c4f10f5426d66287e37353ed79f6b54b0f3b9a` |
| 26 | `theorem` | [Set Semiring Semiring Namespaced Source Edition1](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/up-mul.md) | 145 | `result-track:f5de957279c480fb5bd677f93fa404b592ffe5174d6c5deb7762671697742a50` |
| 27 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/instance.md) | 148 | `declaration-track:0a78c951dbb5186f5b12a0e78240c9b5fd5b5fad01ab78a254ec286315a4374f` |
| 28 | `instance` | [mulLeftMono](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/mulleftmono.md) | 154 | `declaration-track:db15f96eeb38255d3ffd69d29fab8f7f8135e14ccd40aac19ec4e7d8fa837fb1` |
| 29 | `instance` | [mulRightMono](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/mulrightmono.md) | 157 | `declaration-track:91d62160c18da2d7f0c8f0f0c8f3c78cc9f6eebe1c4222e08a98f3ec8636eae7` |
| 30 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/instance-source-edition-10.md) | 167 | `declaration-track:679c4ea20d5219a827eea4ff84dcc28b98eb35a902a4d5227bb848cdad78488e` |
| 31 | `theorem` | [one_def](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/one-def.md) | 169 | `result-track:b8cb43287335b70b5f2f75d12cab6eae9d4dc89f419a2bafb36386a96497256d` |
| 32 | `theorem` | [down_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/down-one.md) | 173 | `result-track:a6b0b2944f71f04a2e673161309ad95a79ca443dfcb209d7873e66ffa083ab39` |
| 33 | `theorem` | [Set Semiring Semiring Namespaced Source Edition1](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/up-one.md) | 177 | `result-track:15b456a4ec83b229c19073ee4b20b3d339eba40ab3a666c9a888367dd08bcfba` |
| 34 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/instance-source-edition-2.md) | 182 | `declaration-track:0e8b3b3e6e060eed1af7d7dfd9a900410e996d8a310ef60bb06cffd58443f00a` |
| 35 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/instance-source-edition-4.md) | 186 | `declaration-track:1610a1e3d87834a1b6ef18086fd2cd13340d5fe31849740d71f0f351733e35bc` |
| 36 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/instance-source-edition-13.md) | 189 | `declaration-track:c5cced42d537f999ee64df16aac9c70030430c41ce317653e18971abf17ec6a3` |
| 37 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/instance-source-edition-6.md) | 194 | `declaration-track:275924b97095ec1e9e6d23541349d1c7412d8b89cd26499ecfac2edc4bfdcf82` |
| 38 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/instance-source-edition-14.md) | 197 | `declaration-track:c634704570a177f3db6f1be9a89890715c1a7b1f2936689d544c7b89bcd7df6b` |
| 39 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/instance-source-edition-7.md) | 201 | `declaration-track:31ff6083eb13e60cfffbba2f90958accd7cea5381e3fa0c9221d129f916b5fbb` |
| 40 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/instance-source-edition-5.md) | 204 | `declaration-track:243176021d14a13ca00977b49e2eabbbb25d2033373ba63e6194c398723cfd62` |
| 41 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/instance-source-edition-16.md) | 208 | `declaration-track:e40673be0a76fa2bb6c05bbaa0a2acfe74b24afa61ca20217529209a8472c324` |
| 42 | `def` | [imageHom](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/imagehom.md) | 213 | `declaration-track:391f0bb66a65f1955bb752a21edc6fd31733f2c2110341a1492a05187ad5e17d` |
| 43 | `lemma` | [imageHom_def](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/imagehom-def.md) | 222 | `result-track:94569a5c42a6df8c366373fc6620f2e4a41acc0d524c76159d77a8b00979a95d` |
| 44 | `lemma` | [down_imageHom](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/down-imagehom.md) | 227 | `result-track:549a0d4b81e0c322ddc0796533d7f27e9e5b6b6b9c30267822409565fbc4b293` |
| 45 | `lemma` | [Set Semiring Semiring Namespaced Source Edition1](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringNamespacedSourceEdition1.lean/declarations/up-image.md) | 232 | `result-track:d99099700be12494127786a5a1e879a7333799284940df942aa43a8f5ecc3afe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dbb2af21bb4fe740b21413b8c7880c4fdff89b0c8c960c2296555ebc8dea1f99 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Semiring/Variantcbe08aa3c84f5f3e5b07de822478f496bb4725d722ba45150c785f4fcd4413e5.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Semiring/Variantcbe08aa3c84f5f3e5b07de822478f496bb4725d722ba45150c785f4fcd4413e5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
