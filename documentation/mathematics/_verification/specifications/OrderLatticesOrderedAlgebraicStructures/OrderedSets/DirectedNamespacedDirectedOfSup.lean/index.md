# Verification target: Directed Namespaced Directed Of Sup

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75259c0e4ad08d3288c4ce50458b6a981f786931",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Directed/Variant073417d2feefa440200826eca690fb70a69f5046809b3ad4ca248e391ce8a75b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75259c0e4ad08d3288c4ce50458b6a981f786931`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Directed/Variant073417d2feefa440200826eca690fb70a69f5046809b3ad4ca248e391ce8a75b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Directed/Variant073417d2feefa440200826eca690fb70a69f5046809b3ad4ca248e391ce8a75b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Image` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Max` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Bounds.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Directed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/directed.md) | 52 | `declaration-track:3db2b30fba47183339e3f95b6ab920ef5d772512755470d6117451e36aee7dee` |
| 2 | `def` | [DirectedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/directedon.md) | 58 | `declaration-track:261035f7d1c522cb0ccb55433c1831c60529b6ef5a3b7c8aebf7c8b1edbe384c` |
| 3 | `theorem` | [directedOn_iff_directed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/directedon-iff-directed.md) | 64 | `result-track:4ed9774277019c0f0849756694dcabbbbf3afb31fca55d79e1bd75e53093e72f` |
| 4 | `theorem` | [directedOn_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/directedon-range.md) | 71 | `result-track:9790d08480e39aa1cf082373218430379216c5a72444e5f6e23d8f931679edb3` |
| 5 | `theorem` | [directedOn_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/directedon-image.md) | 82 | `result-track:3770927f0d28d8f86609d0c3681fd816ed8f4b7c0ef40c71390cd599dcff659a` |
| 6 | `theorem` | [DirectedOn.mono'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/directedon-mono-source-edition-2.md) | 88 | `result-track:c638039cc4743393deffdfb251a400ce6c7eaa463cb3c8fbed6f94a143b468f9` |
| 7 | `theorem` | [DirectedOn.mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/directedon-mono.md) | 94 | `result-track:768e888f75e2dc0cbee10709c1864cc6630598a1924a579c56d3051787546f8f` |
| 8 | `theorem` | [directed_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/directed-comp.md) | 99 | `result-track:d2f67a763c93c57c373690f1db1b27d963b72c6980d031881d07ad4d4a784ef3` |
| 9 | `theorem` | [Directed.mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/directed-mono.md) | 103 | `result-track:68d7de63f0d34d454c81202a6d518e7e980d8daf9cc15001f1027a3d9332c146` |
| 10 | `theorem` | [Directed.mono_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/directed-mono-comp.md) | 110 | `result-track:620d039d398869171207775146d48cfe5b4a7de8c7aaf48cdcc1f7071713186f` |
| 11 | `theorem` | [directed_of_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/directed-of-sup.md) | 116 | `result-track:be09956ad12ad966852704826ac7dd2e0f68cff70191df19d5ecbaffac2a3841` |
| 12 | `theorem` | [Monotone.directed_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/monotone-directed-le.md) | 121 | `result-track:9572bee53a25841779078bd8002b66e491c661fce37f3e03388343ecd488f8da` |
| 13 | `theorem` | [Antitone.directed_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/antitone-directed-ge.md) | 126 | `result-track:c16f7d3bb8e45df1f53f3d1ddefe3fa5b96a7495677d2af42c7a7c2b7bbbb08b` |
| 14 | `theorem` | [directedOn_of_sup_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/directedon-of-sup-mem.md) | 132 | `result-track:3b12991924f386e4723765ae769e741b55ff18a32c933c190f9e7fb066e78557` |
| 15 | `theorem` | [Directed.extend_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/directed-extend-bot.md) | 137 | `result-track:c90779146e3279ac58949a63fb89fed1249902e49c179a41eed6bde58d5cc205` |
| 16 | `theorem` | [directed_of_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/directed-of-inf.md) | 153 | `result-track:07981c69eabd5f070d09424efc60c2a8aee085f945a93ece36a9f5e4f31e94b4` |
| 17 | `theorem` | [Monotone.directed_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/monotone-directed-ge.md) | 158 | `result-track:19ccd942b1da4e98fff6851d6060a61972d051471867abeca76eea04f2052b2b` |
| 18 | `theorem` | [Antitone.directed_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/antitone-directed-le.md) | 163 | `result-track:b2d29e0f6caea144f0a6a222dfc4f15c90ceb10ad710ab15601bcc587215c90e` |
| 19 | `theorem` | [directedOn_of_inf_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/directedon-of-inf-mem.md) | 169 | `result-track:ff2ec6001a377479746e601d190e0e9cbac9d3c8f7ac4b63ae36563089b7c9ab` |
| 20 | `theorem` | [IsTotal.directed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/istotal-directed.md) | 174 | `result-track:97b0605131eff2aa01bd9a546fd1ef703bb86d3f40f7facb1966f50e672528b5` |
| 21 | `class` | [IsDirected](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/isdirected.md) | 180 | `declaration-track:4522a9aa49914435946cf9bf75db45f029947c30f7dbd2f34bb8f951817caf60` |
| 22 | `theorem` | [directed_of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/directed-of.md) | 186 | `result-track:5855bb3acbb970edcd3e4f6ff6346881c99e8d575762db13484877c2a1b081be` |
| 23 | `theorem` | [directed_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/directed-id.md) | 190 | `result-track:0ef939a97f2806bfb1c1844ced8a7d72400523d5aa371aef4633ebed7297903e` |
| 24 | `theorem` | [directed_id_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/directed-id-iff.md) | 193 | `result-track:5b98bf5b627db74d51111e7bf80abcd9c85167e8d38c75e812e81e9e19977c38` |
| 25 | `theorem` | [directedOn_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/directedon-univ.md) | 197 | `result-track:d62be01c76c6a356741d96bd6d2c9d4bc3464fbe3dec54a979f92417790efd26` |
| 26 | `theorem` | [directedOn_univ_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/directedon-univ-iff.md) | 202 | `result-track:a1cd256320c9da8dc7dfc090884be7e8b93213b0f865aea985a54d7f0ccd0042` |
| 27 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/instance-source-edition-3.md) | 211 | `declaration-track:b71853a9f57215fc283e23dcee98f23f538b8f7f98549a4c6089a81dab9da6f2` |
| 28 | `theorem` | [isDirected_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/isdirected-mono.md) | 215 | `result-track:3b3048574006984f553bf653c8cce97c737d233911986ed9c3145a677e31b310` |
| 29 | `theorem` | [exists_ge_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/exists-ge-ge.md) | 221 | `result-track:7e70c274364b8f67cc1569d292f52c33dd3c4f479fc5f838c174269b0380c1db` |
| 30 | `theorem` | [exists_le_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/exists-le-le.md) | 225 | `result-track:eaa7dfffeb2962ee98678c1019774c12713de6351839d79d70080ee45f0959e7` |
| 31 | `instance` | [OrderDual.isDirected_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/orderdual-isdirected-ge.md) | 229 | `declaration-track:26231925edf1cb75c8c59c6e07eb9b547260d60f1a299763a8f3443cdefc6f43` |
| 32 | `instance` | [OrderDual.isDirected_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/orderdual-isdirected-le.md) | 233 | `declaration-track:714284bb34c90178848d07f1af35bf20d9ec28b91f7ef3b5f10399593712745c` |
| 33 | `theorem` | [DirectedOn.insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/directedon-insert.md) | 239 | `result-track:198081228c066785a0676f90eb5b506c7928273e6db5eaf4d56d0bc3cd4aa80b` |
| 34 | `theorem` | [directedOn_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/directedon-singleton.md) | 251 | `result-track:767fa206a9d663a4480e44562ef483c8e8ed30e8712458520124f355d9e9e5aa` |
| 35 | `theorem` | [directedOn_pair](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/directedon-pair.md) | 255 | `result-track:135fdde9ad1fb432157f8d6052c6808d416c1c14570273e448a29d647ce89d2c` |
| 36 | `theorem` | [directedOn_pair'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/directedon-pair-source-edition-2.md) | 259 | `result-track:7b6f0af84323e3255daaf8d24d2a1dc6bae83f07b510afec90a3e3299654b831` |
| 37 | `theorem` | [IsMin.isBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/ismin-isbot.md) | 271 | `result-track:d64e5be2b76ed77bf31626288be987543774f228198ab5ef7a605d598fa15897` |
| 38 | `theorem` | [IsMax.isTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/ismax-istop.md) | 276 | `result-track:5335c6bc00fe9460333ca50f65202a191aa900e08162b3a6f5221de698772495` |
| 39 | `lemma` | [DirectedOn.is_bot_of_is_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/directedon-is-bot-of-is-min.md) | 280 | `result-track:56a4b0667f9bc360ce875d1430e461f4ad9c2fcb6dccb18e52253e1d35d09f06` |
| 40 | `lemma` | [DirectedOn.is_top_of_is_max](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/directedon-is-top-of-is-max.md) | 286 | `result-track:f0fc164cb87a3c337ead7fb3694090a31055c3e5f39c4f4ab2f81626140cbfed` |
| 41 | `theorem` | [isTop_or_exists_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/istop-or-exists-gt.md) | 291 | `result-track:d90dac3eeb33fdcf65ea7849d5b3959aa6180cee7d4761d2810cbee78525380b` |
| 42 | `theorem` | [isBot_or_exists_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/isbot-or-exists-lt.md) | 295 | `result-track:6855c11ae0e6897ab303bf2f7efcee20a3e5b8ab586ba6dbc463bf4899b2ff08` |
| 43 | `theorem` | [isBot_iff_isMin](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/isbot-iff-ismin.md) | 299 | `result-track:794dc84796772c8ed31fa51a54eade795ea81c4912ae75a4b5aeb56b5e8e109a` |
| 44 | `theorem` | [isTop_iff_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/istop-iff-ismax.md) | 303 | `result-track:88af85bc79d082a4325dc53b6c87bb7ddc68519659ee20aaa880bf474c5b3e8f` |
| 45 | `theorem` | [exists_lt_of_directed_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/exists-lt-of-directed-ge.md) | 309 | `result-track:3a0f0fd7356056e846dea57ea2d51630c49773215c61ec69bb03273e0b7cec96` |
| 46 | `theorem` | [exists_lt_of_directed_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/exists-lt-of-directed-le.md) | 315 | `result-track:2d1c4f966a1c76a3138df06f8bcf2c889c54c424aa3c2e56e043b2bcbef41db4` |
| 47 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/instance-source-edition-4.md) | 323 | `declaration-track:eaf68a81406a2fa483243dafa917846a5e785cd8921e080037e140485d842a81` |
| 48 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/instance.md) | 329 | `declaration-track:8bd0dc42ffa915623143adfcb6f9e1f7f3d7825bac1826451ce63a0e4e803044` |
| 49 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/instance-source-edition-5.md) | 335 | `declaration-track:f449029e53f8209e0914c52c26fa0e33c6fecd64a3d646b069d4620b06ab083b` |
| 50 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/instance-source-edition-2.md) | 340 | `declaration-track:b678305ae447a38fc914700ad467091215e71cd48f2533084633b3e04101b71e` |
| 51 | `def` | [ScottContinuous](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/scottcontinuous.md) | 360 | `declaration-track:7fc22f087d4753ce7decb1fcbede98753f92c7ef9c5134c890a9ad25b03bfb9e` |
| 52 | `theorem` | [ScottContinuous.monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/DirectedNamespacedDirectedOfSup.lean/declarations/scottcontinuous-monotone.md) | 364 | `result-track:c6f762fdf4fb6040cee497d071574fc8aa9a2ed05a17296b0778cfc9429b3fa8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65aaede7c265e28079d1adec0247952cc353d60bbcd5832ebc7325fc0744c04d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Directed/Variant073417d2feefa440200826eca690fb70a69f5046809b3ad4ca248e391ce8a75b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Directed/Variant073417d2feefa440200826eca690fb70a69f5046809b3ad4ca248e391ce8a75b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
