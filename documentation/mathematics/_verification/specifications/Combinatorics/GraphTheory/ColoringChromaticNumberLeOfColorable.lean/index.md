# Verification target: Coloring Chromatic Number Le Of Colorable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6f2658fbf5c0423c1172a42472e1a77af1cf658",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variantec0961d12ff574540aba5402d2aad45924990a31a6d083fa5c7da2054e764de1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6f2658fbf5c0423c1172a42472e1a77af1cf658`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variantec0961d12ff574540aba5402d2aad45924990a31a6d083fa5c7da2054e764de1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variantec0961d12ff574540aba5402d2aad45924990a31a6d083fa5c7da2054e764de1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Clique` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Partition` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Antichain` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Coloring](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/coloring.md) | 66 | `declaration-track:26334da37528137ba2f4f003b16b80cb67b6b56d118be1aff394b33c8642fbb0` |
| 2 | `theorem` | [Coloring.valid](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/coloring-valid.md) | 71 | `result-track:7843f649d545ca25bdb9f13bb6e68e2baa8931f217b5b17df40f8d7360ef42ad` |
| 3 | `def` | [Coloring.mk](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/coloring-mk.md) | 82 | `declaration-track:079e168de088f0b78ceaff1ce11dcc21432774b3d389e25aa0f8219a2cb50f99` |
| 4 | `def` | [Coloring.colorClass](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/coloring-colorclass.md) | 89 | `declaration-track:de0604c5d4ca25388e60a959ed8bb59ca4f983b97aa735abeff19f42a90f28c4` |
| 5 | `def` | [Coloring.colorClasses](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/coloring-colorclasses.md) | 93 | `declaration-track:8edf9680cfde631cd79173ad912b8eaf817aa769835af56aace6ade188f71399` |
| 6 | `theorem` | [Coloring.mem_colorClass](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/coloring-mem-colorclass.md) | 96 | `result-track:a6752cb5233342cc82d360c71f2aa66273d5ddab57f89ef63c1bdd540ff34a7c` |
| 7 | `theorem` | [Coloring.colorClasses_isPartition](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/coloring-colorclasses-ispartition.md) | 99 | `result-track:79b50b698628a0a5ea021c0fd87a918e06fcef3d00850b6733867e89e9e331e8` |
| 8 | `theorem` | [Coloring.mem_colorClasses](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/coloring-mem-colorclasses.md) | 103 | `result-track:712d69fb112700ec458ea4b30064772fb1d1d3090603f6df4487dc93b0401136` |
| 9 | `theorem` | [Coloring.colorClasses_finite](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/coloring-colorclasses-finite.md) | 107 | `result-track:c6369d263e78ff0388cf0ebddfcf1aecf1a2c64458a0f85a336d76dd33990283` |
| 10 | `theorem` | [Coloring.card_colorClasses_le](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/coloring-card-colorclasses-le.md) | 111 | `result-track:ef0e333fadf85a51b1343fb969e020ec557ed67a42f1897777e265729e4b2c72` |
| 11 | `theorem` | [Coloring.not_adj_of_mem_colorClass](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/coloring-not-adj-of-mem-colorclass.md) | 119 | `result-track:c2c088c6332dedca140902fd265e9abda586a715a3e1dd46419048844011e2ed` |
| 12 | `theorem` | [Coloring.color_classes_independent](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/coloring-color-classes-independent.md) | 123 | `result-track:8b83e6a19b5ba30f05f9b4ecff7276f9c4b6df41aca8c56bbf8a6ec43155bcad` |
| 13 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/instance.md) | 128 | `declaration-track:9a72c9ce6e4cf96b4059d16789e44819fb026e2b60ef54afee5fd154909cffe2` |
| 14 | `def` | [Colorable](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/colorable.md) | 136 | `declaration-track:11b5d94609d6551eaf4b5d07342c4853e9cee0e5ca92926064d572b609eb82eb` |
| 15 | `def` | [coloringOfIsEmpty](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/coloringofisempty.md) | 140 | `declaration-track:53923256b3b6dc30d315487c5dcd39b072ea35dc04486322b3f527882eb3104f` |
| 16 | `theorem` | [colorable_of_isEmpty](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/colorable-of-isempty.md) | 144 | `result-track:aa2cfa4d8c44f23f1cf08707add7925319aaa735f4971ef8167c137e0985f97f` |
| 17 | `theorem` | [isEmpty_of_colorable_zero](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/isempty-of-colorable-zero.md) | 148 | `result-track:45637d8e59b8c7bf8ce090419833645fc7b2ef9c5c5bb9024718b9a0d6a0709c` |
| 18 | `def` | [selfColoring](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/selfcoloring.md) | 156 | `declaration-track:778fe3d10d10d627d4d67c472d3c4d6e766069c259d973a81eaa01acc624a7ea` |
| 19 | `def` | [chromaticNumber](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/chromaticnumber.md) | 161 | `declaration-track:8380347b5f2efb41e3fd29360da3c5a8d9b58d94c643cc12668124803bf495cd` |
| 20 | `def` | [recolorOfEmbedding](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/recolorofembedding.md) | 166 | `declaration-track:ddad7c66f91398aa2f1f89562e7dff5d2faa862b733aef29f812424aa6b001df` |
| 21 | `def` | [recolorOfEquiv](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/recolorofequiv.md) | 179 | `declaration-track:bdcb37f905eabc091fcba5be42e5af4adec4628f8892f9f8616c232691b20123` |
| 22 | `def` | [recolorOfCardLE](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/recolorofcardle.md) | 192 | `declaration-track:829ef19f534254c2733730cd56c8e02eeab0caf1b3c466a10b361103850f54fe` |
| 23 | `theorem` | [Colorable.mono](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/colorable-mono.md) | 199 | `result-track:efa7b18002aef657912cb6f8aca628e8c99e5dbc5eb5c99ac927329958cab245` |
| 24 | `theorem` | [Coloring.to_colorable](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/coloring-to-colorable.md) | 203 | `result-track:3f646f0413d43b84a27cda1dbed02a155dff9366b005009f9904ad676ddb37ef` |
| 25 | `theorem` | [colorable_of_fintype](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/colorable-of-fintype.md) | 207 | `result-track:0bab3ea5c46128a7a4a06c0497777ab0282fe06ee1e4c6078a0edc9f01f1ebb2` |
| 26 | `def` | [Colorable.toColoring](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/colorable-tocoloring.md) | 212 | `declaration-track:e2b3141d90967db01ba28ecfec00f987601f6cb77f8e1c0addcdc0be3400bbf5` |
| 27 | `theorem` | [Colorable.of_embedding](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/colorable-of-embedding.md) | 218 | `result-track:a21ef0d85965fdf8ca026092bc04defbcb6cf15496759683ddefe943fcd65caf` |
| 28 | `theorem` | [colorable_iff_exists_bdd_nat_coloring](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/colorable-iff-exists-bdd-nat-coloring.md) | 223 | `result-track:667f6bd4536403cc4cdf627f5d4b6dd6dd775a4ce9f133a72ea38d91f87beeec` |
| 29 | `theorem` | [colorable_set_nonempty_of_colorable](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/colorable-set-nonempty-of-colorable.md) | 241 | `result-track:08897c4d890479d2e5ae8184208d014c4c853a00f866ca72a70ea1c91fa7fd95` |
| 30 | `theorem` | [chromaticNumber_bddBelow](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/chromaticnumber-bddbelow.md) | 246 | `result-track:c3a62e58a286c19b10cdcd5125beec58eee2a42339e803fc91b08f8fbca03e4a` |
| 31 | `theorem` | [chromaticNumber_le_of_colorable](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/chromaticnumber-le-of-colorable.md) | 250 | `result-track:ef64d390ed81999c33e4194e17b92306aa594ae96930ea4e17a65c45f8c93960` |
| 32 | `theorem` | [chromaticNumber_le_card](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/chromaticnumber-le-card.md) | 257 | `result-track:b88171dbe134c92fdca7117b61af00fd79a57afa8b21eb3feb6b9bb0106c5936` |
| 33 | `theorem` | [colorable_chromaticNumber](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/colorable-chromaticnumber.md) | 262 | `result-track:f16d2f6f0dffb06bac7bd7c6162a69bfc2338fc523a0a5882fb924bdcb430af5` |
| 34 | `theorem` | [colorable_chromaticNumber_of_fintype](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/colorable-chromaticnumber-of-fintype.md) | 270 | `result-track:f0abc6cba96d7b95f59fb9aef576241c381e1e7e234810c3bcde262bbb25a614` |
| 35 | `theorem` | [chromaticNumber_le_one_of_subsingleton](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/chromaticnumber-le-one-of-subsingleton.md) | 276 | `result-track:1f824bf36fd4a470ef897131b67319c48dfb109a0b2bd069776166d59a4e6838` |
| 36 | `theorem` | [chromaticNumber_eq_zero_of_isempty](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/chromaticnumber-eq-zero-of-isempty.md) | 287 | `result-track:131b341d48ea90f47f2cb052a8e3733c779ee1114cc8518f333fd8ed28ef337d` |
| 37 | `theorem` | [isEmpty_of_chromaticNumber_eq_zero](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/isempty-of-chromaticnumber-eq-zero.md) | 294 | `result-track:c48a79978e868440323b538551171955a8321f4f5d6369b72b6318a7b7e3b64a` |
| 38 | `theorem` | [chromaticNumber_pos](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/chromaticnumber-pos.md) | 301 | `result-track:5bb75f10357b2bb9ed4e81194ad0d096b247b4e35dd525e2f8a7000d7395785f` |
| 39 | `theorem` | [colorable_of_chromaticNumber_pos](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/colorable-of-chromaticnumber-pos.md) | 311 | `result-track:514b4725a33ca7706701abceac021542bcbed0489638d210b655a362381e1dae` |
| 40 | `theorem` | [Colorable.mono_left](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/colorable-mono-left.md) | 317 | `result-track:16b22c60229592af0cc2cd301530a73d8c6fe4e60820037b9e37a1cb096401bf` |
| 41 | `theorem` | [Colorable.chromaticNumber_le_of_forall_imp](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/colorable-chromaticnumber-le-of-forall-imp.md) | 322 | `result-track:d71e566da343dc283530598b5cc75709007c57bfbd6c2aa0f8a1df999c78a7b6` |
| 42 | `theorem` | [Colorable.chromaticNumber_mono](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/colorable-chromaticnumber-mono.md) | 330 | `result-track:26018c37e3e90dc2362f2c73dad1ff59cee508fdcb0440534131f23402fdf0ae` |
| 43 | `theorem` | [Colorable.chromaticNumber_mono_of_embedding](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/colorable-chromaticnumber-mono-of-embedding.md) | 335 | `result-track:c093c05b8519ffc4b027679f3a0f8fb1eb6f8747d40febc157ad1f5ee8f1be37` |
| 44 | `theorem` | [chromaticNumber_eq_card_of_forall_surj](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/chromaticnumber-eq-card-of-forall-surj.md) | 340 | `result-track:0de935ccae09ff6689e4c619ce3448698686fa86d827326f5c663a226b388d16` |
| 45 | `theorem` | [chromaticNumber_bot](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/chromaticnumber-bot.md) | 357 | `result-track:3c56f864020704d9e391f8d3ee608950a90dfad8a94ef52838d0692c59d7f119` |
| 46 | `theorem` | [chromaticNumber_top](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/chromaticnumber-top.md) | 366 | `result-track:7e4bbe850aa87f72cc34b4ee9099cbedde60fb557d277639083a6987811b5b89` |
| 47 | `theorem` | [chromaticNumber_top_eq_zero_of_infinite](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/chromaticnumber-top-eq-zero-of-infinite.md) | 376 | `result-track:21ef18a852912577369fa2eaf08710489f58f4509c594ad90aabeca4bc828295` |
| 48 | `def` | [CompleteBipartiteGraph.bicoloring](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/completebipartitegraph-bicoloring.md) | 392 | `declaration-track:da9ac518f2515f8a3c500227442856ad7c099dc1a4d863311c8706cfa2819015` |
| 49 | `theorem` | [CompleteBipartiteGraph.chromaticNumber](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/completebipartitegraph-chromaticnumber.md) | 399 | `result-track:ee65de5837157ed9ca7422b53fabb934a57532488b1ebeffd921793d834630b6` |
| 50 | `theorem` | [IsClique.card_le_of_coloring](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/isclique-card-le-of-coloring.md) | 421 | `result-track:d964ab49fe1ed596465105010335227684e9bc42e5c08aace53c843a788e9930` |
| 51 | `theorem` | [IsClique.card_le_of_colorable](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/isclique-card-le-of-colorable.md) | 430 | `result-track:3a2459afea196aee2d6d5fdfd4eac39f74b6cfac04d3de1003a9db71734f320e` |
| 52 | `theorem` | [IsClique.card_le_chromaticNumber](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/isclique-card-le-chromaticnumber.md) | 438 | `result-track:f4167daa6005b6f16278fbf1aae5747733b048a535d1cb6726852c78c528538b` |
| 53 | `theorem` | [Colorable.cliqueFree](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/colorable-cliquefree.md) | 444 | `result-track:29361cd949a62d4bee5021fe7dac0e5ee09194052ff25cb651fa3e54710fba11` |
| 54 | `theorem` | [cliqueFree_of_chromaticNumber_lt](../../../../../Combinatorics/GraphTheory/ColoringChromaticNumberLeOfColorable.lean/declarations/cliquefree-of-chromaticnumber-lt.md) | 454 | `result-track:2b6d6f5ed7edb02a418dc7d818119c336e8814484f07b5d52dafe7163d14483c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a897e054a42a74f61556bfdddc1c3c089b195cd1d0be3f1c6b194ad31d76d3d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variantec0961d12ff574540aba5402d2aad45924990a31a6d083fa5c7da2054e764de1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variantec0961d12ff574540aba5402d2aad45924990a31a6d083fa5c7da2054e764de1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
