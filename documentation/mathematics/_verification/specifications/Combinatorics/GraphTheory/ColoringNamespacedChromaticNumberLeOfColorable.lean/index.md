# Verification target: Coloring Namespaced Chromatic Number Le Of Colorable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc12d6ff80a09a327acf067707a4803edc9c87a9",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variant29bf8707bd78bda22ab97b4d9a1ef5c169a2094c1c2f476079ead923854efb8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc12d6ff80a09a327acf067707a4803edc9c87a9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variant29bf8707bd78bda22ab97b4d9a1ef5c169a2094c1c2f476079ead923854efb8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variant29bf8707bd78bda22ab97b4d9a1ef5c169a2094c1c2f476079ead923854efb8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Clique` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Partition` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Antichain` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Coloring](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/coloring.md) | 74 | `declaration-track:9fff2d64603396f11309d6ea5ef616aade9d747fb123ebdd40bcf9ea21008e31` |
| 2 | `theorem` | [Coloring.valid](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/coloring-valid.md) | 79 | `result-track:155f43f15903d1aa8dcdd4344a5bc60a94cf978dedbf73ed0215a9b634a5f6d6` |
| 3 | `def` | [Coloring.mk](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/coloring-mk.md) | 90 | `declaration-track:33e65bcffc50a8db7698750abe159d7f3c1559141f4e9a6f5db26144842ada69` |
| 4 | `def` | [Coloring.colorClass](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/coloring-colorclass.md) | 97 | `declaration-track:8837a7ba37a24d48a453f7d0274e92610886392a3a1101a38cd4e0d825c5fc99` |
| 5 | `def` | [Coloring.colorClasses](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/coloring-colorclasses.md) | 101 | `declaration-track:9cd92d0bb56aea152f232550b7e8877157c8ff3e8b6dd085aa28d6cf8973f49b` |
| 6 | `theorem` | [Coloring.mem_colorClass](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/coloring-mem-colorclass.md) | 104 | `result-track:425b1515000a6835dfa438a57bd3dfd4a3904f400460b31fd8f84c46e2feb3bf` |
| 7 | `theorem` | [Coloring.colorClasses_isPartition](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/coloring-colorclasses-ispartition.md) | 107 | `result-track:ddf4d3ce4a2f4c7d5e1a4ee81c147fef303eba847e7bd3c33f686fca3c9bc1e3` |
| 8 | `theorem` | [Coloring.mem_colorClasses](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/coloring-mem-colorclasses.md) | 111 | `result-track:110cbd6ad8ea69690afded33b284f217b753106df5dd16b575337d083ba9b5c2` |
| 9 | `theorem` | [Coloring.colorClasses_finite](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/coloring-colorclasses-finite.md) | 115 | `result-track:3a3ca8326073b0d269980d90f3fc206f8055ed72498859b56650b95e71b9ed79` |
| 10 | `theorem` | [Coloring.card_colorClasses_le](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/coloring-card-colorclasses-le.md) | 119 | `result-track:ae5f619d3f62d79f6780da267aae0059cb507cf5f68e11abf1f51e86334ec7fe` |
| 11 | `theorem` | [Coloring.not_adj_of_mem_colorClass](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/coloring-not-adj-of-mem-colorclass.md) | 127 | `result-track:8307601b573ffd942c7ba3b5aa0b9c1ee193d1df87f0b92ab3a8e66e875e7e23` |
| 12 | `theorem` | [Coloring.color_classes_independent](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/coloring-color-classes-independent.md) | 131 | `result-track:fdd69172b56b21de5e82a889a7cc1f3adfe7d0a89d46451387881c721901f3ed` |
| 13 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/instance.md) | 136 | `declaration-track:d428330d6cb3a6e3c984aea3a6de244f6dba081aabadc52d073820146632e514` |
| 14 | `def` | [Colorable](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/colorable.md) | 144 | `declaration-track:87f8f705d46b529b53566a318516ae3eae56f38f62d935f1addeacd0845a6605` |
| 15 | `def` | [coloringOfIsEmpty](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/coloringofisempty.md) | 148 | `declaration-track:6ad92604dadf826defb84655acaa74967355af31673b77820c36019d854d6e6d` |
| 16 | `theorem` | [colorable_of_isEmpty](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/colorable-of-isempty.md) | 152 | `result-track:14649ecef6733f05aec758c20db0fdeb3eec2da754d10669a88944742179377c` |
| 17 | `theorem` | [isEmpty_of_colorable_zero](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/isempty-of-colorable-zero.md) | 156 | `result-track:24d23964fff92868068e5d7376d7b86e7ecb670c9b4e9f123153a15a8d5698ba` |
| 18 | `def` | [selfColoring](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/selfcoloring.md) | 164 | `declaration-track:2d0aa2043412021cd69e5ee60f14979c57ab4d05d7857b605e21c9f93bd376d7` |
| 19 | `def` | [chromaticNumber](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/chromaticnumber.md) | 169 | `declaration-track:556a4c4c2450d2fa7470f76872515bcfad5a67af1637f21a38fc410002abce3c` |
| 20 | `def` | [recolorOfEmbedding](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/recolorofembedding.md) | 174 | `declaration-track:e9e135d4e0bb27d3312526852166c7b27058e1b5f111b560397fea2851e02954` |
| 21 | `def` | [recolorOfEquiv](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/recolorofequiv.md) | 187 | `declaration-track:89c67c6fe1e9e9908cbb5a6d4ac702b7d6c4f0e7520a38379fca91241ec85f1a` |
| 22 | `def` | [recolorOfCardLE](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/recolorofcardle.md) | 200 | `declaration-track:58171b8147ca3414e56cbc3a0a92ea4eec02ead0787a2a5199dfa1aa6db77fb0` |
| 23 | `theorem` | [Colorable.mono](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/colorable-mono.md) | 207 | `result-track:b76a25aa4a88ceb36469aee92fb2fd1597b58f54abc56fc0fa61c3bcb41db965` |
| 24 | `theorem` | [Coloring.to_colorable](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/coloring-to-colorable.md) | 211 | `result-track:e13f93de904e4fb9da50d4448bba0dca9bb9e469816863c13975493e58d348f1` |
| 25 | `theorem` | [colorable_of_fintype](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/colorable-of-fintype.md) | 215 | `result-track:0b378d2748699e46c286557e114651c98ce46c0e09a0a567750fbdcdfb907db7` |
| 26 | `def` | [Colorable.toColoring](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/colorable-tocoloring.md) | 220 | `declaration-track:3e70a95d3b9028c74189706d29520b18d708ca97e54e456d789dc332380fa0d8` |
| 27 | `theorem` | [Colorable.of_embedding](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/colorable-of-embedding.md) | 226 | `result-track:368b692d1e124ad2ec7b7c7523e1026a13810ba17c538a419b4f856723e5708e` |
| 28 | `theorem` | [colorable_iff_exists_bdd_nat_coloring](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/colorable-iff-exists-bdd-nat-coloring.md) | 231 | `result-track:af417408e05f47901b27e520cbd9b78c21b2ea0d208651ab62e310c3de12c293` |
| 29 | `theorem` | [colorable_set_nonempty_of_colorable](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/colorable-set-nonempty-of-colorable.md) | 249 | `result-track:bba90d5f877ead79a9a5837fbae63546ba0ec8e8147c8685373b792830553e8a` |
| 30 | `theorem` | [chromaticNumber_bddBelow](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/chromaticnumber-bddbelow.md) | 254 | `result-track:e65e5f408c4dbc04b2cce1423c64ec610748f40643ab9c75d8bdfd60e0808233` |
| 31 | `theorem` | [chromaticNumber_le_of_colorable](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/chromaticnumber-le-of-colorable.md) | 258 | `result-track:3898f5a9b281e7b29d01f11f29ce6932c7ce74a143f085a52e3608aa1b488cc2` |
| 32 | `theorem` | [chromaticNumber_le_card](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/chromaticnumber-le-card.md) | 265 | `result-track:2c40f0b67eefa168f98b42f2aa814bf0befcdbc1d997e731de91105910104429` |
| 33 | `theorem` | [colorable_chromaticNumber](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/colorable-chromaticnumber.md) | 270 | `result-track:b2a7b82e9022fdabd064949825e0828abc79e6e773564c3f7e4d3b19fb87a5ca` |
| 34 | `theorem` | [colorable_chromaticNumber_of_fintype](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/colorable-chromaticnumber-of-fintype.md) | 278 | `result-track:cc83cdfdb180b76d6b456e61f09764ba636a40aa0fe1e031274beac43c813387` |
| 35 | `theorem` | [chromaticNumber_le_one_of_subsingleton](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/chromaticnumber-le-one-of-subsingleton.md) | 284 | `result-track:e3fc463f01c6575ad77e76685482452c312179ee9eaa92d65bb4324a9161da95` |
| 36 | `theorem` | [chromaticNumber_eq_zero_of_isempty](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/chromaticnumber-eq-zero-of-isempty.md) | 295 | `result-track:2f59241f7ece87039878030a99fad5a15a2cc5d473bcb772e65b408637f79847` |
| 37 | `theorem` | [isEmpty_of_chromaticNumber_eq_zero](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/isempty-of-chromaticnumber-eq-zero.md) | 302 | `result-track:ed2a26846a26fdfb3fbf0e9d46c7dea2546defdfe3920f00bc5b22d39898dcd7` |
| 38 | `theorem` | [chromaticNumber_pos](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/chromaticnumber-pos.md) | 309 | `result-track:201a9ca2cd40648893174e9cba9aa041bacd34a8cd9e2000fdfc7ec01963424b` |
| 39 | `theorem` | [colorable_of_chromaticNumber_pos](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/colorable-of-chromaticnumber-pos.md) | 319 | `result-track:eec4565f9d6ab89be690f35b9ee0fea40e7b5195e9af277beafd5560f635450b` |
| 40 | `theorem` | [Colorable.mono_left](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/colorable-mono-left.md) | 325 | `result-track:59b77beea13b94f161f611dcef1bc5449c7565d39fbae43133f6bc9268b75984` |
| 41 | `theorem` | [Colorable.chromaticNumber_le_of_forall_imp](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/colorable-chromaticnumber-le-of-forall-imp.md) | 330 | `result-track:06d310b4cb6bc7d4a9aa88db68791bca020078d597518c83f501c4ee6fcfaa66` |
| 42 | `theorem` | [Colorable.chromaticNumber_mono](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/colorable-chromaticnumber-mono.md) | 338 | `result-track:714193c2a1c6b45f14627839a85928694eb52d83773f1a6a5dc7ae5e5bea666d` |
| 43 | `theorem` | [Colorable.chromaticNumber_mono_of_embedding](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/colorable-chromaticnumber-mono-of-embedding.md) | 343 | `result-track:3283bda17631c1cc461b5a450342302344c83310240c43bef510f7d132e67746` |
| 44 | `theorem` | [chromaticNumber_eq_card_of_forall_surj](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/chromaticnumber-eq-card-of-forall-surj.md) | 348 | `result-track:520e1a7fbdff8061d6c4ba2a63a28d3a6582f6f0d3da2b56fd5e7cd3c7bdda51` |
| 45 | `theorem` | [chromaticNumber_bot](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/chromaticnumber-bot.md) | 365 | `result-track:b8eaf4052f8219d682ce7435f18cf4e0e9e46250df6880554e48d511e2cc0648` |
| 46 | `theorem` | [chromaticNumber_top](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/chromaticnumber-top.md) | 374 | `result-track:b931d70afaa6820123b5bbe00a23ddb006292210091ca5b0136efae90c26c27c` |
| 47 | `theorem` | [chromaticNumber_top_eq_zero_of_infinite](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/chromaticnumber-top-eq-zero-of-infinite.md) | 384 | `result-track:45a450959734ae1cf5259313703ca8fb4f1dc742e776b6672b4942189d39b3d2` |
| 48 | `def` | [CompleteBipartiteGraph.bicoloring](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/completebipartitegraph-bicoloring.md) | 400 | `declaration-track:b9fbe80b3451ee8f1f7ee8806fa9fd7980d13c9b918931c56de3c241bc5ce3bb` |
| 49 | `theorem` | [CompleteBipartiteGraph.chromaticNumber](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/completebipartitegraph-chromaticnumber.md) | 407 | `result-track:8f9bd43552fc58e97a36e63e007dd5fcf04404947398b88b37c3db673443f2dc` |
| 50 | `theorem` | [IsClique.card_le_of_coloring](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/isclique-card-le-of-coloring.md) | 429 | `result-track:8ba5f3216a2352320c3d08a7ccfb5d4608f9cf43e8d7ff56f7a3eb569f2ee062` |
| 51 | `theorem` | [IsClique.card_le_of_colorable](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/isclique-card-le-of-colorable.md) | 438 | `result-track:441e3a04f46f405c0fa3232adf667af353a5548980e2e9c55a4aff2ab9880a90` |
| 52 | `theorem` | [IsClique.card_le_chromaticNumber](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/isclique-card-le-chromaticnumber.md) | 446 | `result-track:809e8fe5662b2c793568c5293f7b78d6c84fa142f68e55f35526e9732ccdc6b7` |
| 53 | `theorem` | [Colorable.cliqueFree](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/colorable-cliquefree.md) | 452 | `result-track:72580460541b6c2b99307719b69ee4e7aadb6d07dfe34bc3b2f485d94d9451b6` |
| 54 | `theorem` | [cliqueFree_of_chromaticNumber_lt](../../../../../Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/declarations/cliquefree-of-chromaticnumber-lt.md) | 462 | `result-track:804f5f6dfcd553e1503dc7aab8dc9c0ad43daa2230d22cbc3b2f4f1a69e006eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=23f6e84417b690e96736b31b88e5ca1dd8ccae1a97e79151b386fd386471b7e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variant29bf8707bd78bda22ab97b4d9a1ef5c169a2094c1c2f476079ead923854efb8b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variant29bf8707bd78bda22ab97b4d9a1ef5c169a2094c1c2f476079ead923854efb8b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
