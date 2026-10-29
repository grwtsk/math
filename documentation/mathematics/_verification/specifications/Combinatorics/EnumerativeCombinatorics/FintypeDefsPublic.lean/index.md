# Verification target: Fintype Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee6ad77ee3befe5863cc58c91f784b0aa0564e07",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variante69e8e7a3605d293a7ef6c4a7aaefde3191da4f33b43b7be09963eec2e44965c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee6ad77ee3befe5863cc58c91f784b0aa0564e07`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variante69e8e7a3605d293a7ef6c4a7aaefde3191da4f33b43b7be09963eec2e44965c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Defs/Variante69e8e7a3605d293a7ef6c4a7aaefde3191da4f33b43b7be09963eec2e44965c.lean.json)

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
| 1 | `class` | [Fintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/fintype.md) | 57 | `declaration-track:02fe19196e01478d8241281a70eafe9f1dca3e1cea72acd3c819d723b454db54` |
| 2 | `theorem` | [nodup_map_iff_injOn](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/nodup-map-iff-injon.md) | 67 | `result-track:835793bbc720864aacd932a493641726f23050ed59625b70ec0c95af535625d2` |
| 3 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/instance-source-edition-4.md) | 77 | `declaration-track:e5a1aab463b5ea58c02384d16884ce2ebaa2d30b3b6db47793d986878f6b5093` |
| 4 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/instance-source-edition-3.md) | 81 | `declaration-track:aec01d2cd14626c85dc68f4da8ac9d2e2879120868f6ae85841123edb28fba77` |
| 5 | `def` | [univ](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/univ.md) | 92 | `declaration-track:15e016c49b0a39651a5b0dd23b5c30d8bf535ade82fa39b532b1eee5ee041493` |
| 6 | `theorem` | [mem_univ](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/mem-univ.md) | 96 | `result-track:663c636854e570b212f92bfe53f5b6b425ac1bd35e97626df8a32bbe07d07be8` |
| 7 | `theorem` | [mem_univ_val](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/mem-univ-val.md) | 99 | `result-track:c3c8405de33b9a467ece353ca2a07dbd41bfcc03bfce05ef6a2039c61c2cb40e` |
| 8 | `theorem` | [eq_univ_iff_forall](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/eq-univ-iff-forall.md) | 101 | `result-track:268469626f14c4ba8f63af7e22cb3297b61285abc17db3bde59305894f050372` |
| 9 | `theorem` | [eq_univ_of_forall](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/eq-univ-of-forall.md) | 103 | `result-track:1f96c7d10562a268c3a09703f629cf1de3cdfed77d811a794a3a7f98cb1707aa` |
| 10 | `theorem` | [coe_univ](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/coe-univ.md) | 107 | `result-track:3a37ecb59b7d71568fb3d8671239ab35bc9a3a2295abf4c0ec559e82cc7c2587` |
| 11 | `theorem` | [coe_eq_univ](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/coe-eq-univ.md) | 110 | `result-track:24c51e6dccee67f51d23fcefe7bd0f4f27d08510a792bbf5f2b37f94b25de1ca` |
| 12 | `theorem` | [subset_univ](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/subset-univ.md) | 113 | `result-track:a3d70383f0446c147accc534dbb7ccf0152cb4ab39e3fad451b31e743047eb77` |
| 13 | `theorem` | [mem_filter_univ](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/mem-filter-univ.md) | 115 | `result-track:c05e688ad03848150ed36b7e0c6d35f7e47820a6363bf9775a16492ab0b114f6` |
| 14 | `def` | [elabFinsetBuilderSetOf](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/elabfinsetbuildersetof.md) | 143 | `declaration-track:1523dca29e6190b56e981e25e8fb974a40e3ff74e53b757ce6143c966cb005da` |
| 15 | `def` | [delabFinsetFilter](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/delabfinsetfilter.md) | 172 | `declaration-track:99ca5a6871d247fd07b18227e13abb18b3d9662152d12bf6a38a9c5b90ad0892` |
| 16 | `instance` | [decidablePiFintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/decidablepifintype.md) | 204 | `declaration-track:9c7b5efad0a8cd5780c9f65fbe3552930d036d3aa096535706833abe2c1fc245` |
| 17 | `instance` | [decidableForallFintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/decidableforallfintype.md) | 209 | `declaration-track:4f52a270279896eb828177245fd99179aa0570fc35aff63c1b025dbe0204da54` |
| 18 | `instance` | [decidableExistsFintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/decidableexistsfintype.md) | 213 | `declaration-track:cf6eaeef2c4c4baf4d1878b1779824cb7f289d93f52bc4460f6e0bbf9f76e1b8` |
| 19 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/instance.md) | 217 | `declaration-track:2d23323edd4dc1808b495aa232c19b73e6027896fd0ecf2b3563b00ea8a8659d` |
| 20 | `instance` | [decidableMemRangeFintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/decidablememrangefintype.md) | 221 | `declaration-track:1bf9625ebdeeb98e6cd914f6733e03489409a243b33de75045a2e7d033cc9b41` |
| 21 | `instance` | [decidableSubsingleton](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/decidablesubsingleton.md) | 224 | `declaration-track:2585970439ff2220c643283d47a08219f911961d40a23a6e810133ba9761a555` |
| 22 | `instance` | [decidableEqEquivFintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/decidableeqequivfintype.md) | 229 | `declaration-track:06f6b74fc52d7c4e90d696fcd6e6428b4a37d3c2a0e4c61b80ea0bdc376a6023` |
| 23 | `instance` | [decidableEqEmbeddingFintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/decidableeqembeddingfintype.md) | 232 | `declaration-track:750dfd484b16ea5d6ecd59ee7ee326c5714bd5c99d09b7c20dad69b2761a82e8` |
| 24 | `theorem` | [nodup_map_univ_iff_injective](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/nodup-map-univ-iff-injective.md) | 237 | `result-track:7c86eb811aa15936a26d66f2affe2390a8b10933d943b585bb9f57d527547f8f` |
| 25 | `instance` | [decidableInjectiveFintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/decidableinjectivefintype.md) | 241 | `declaration-track:653b13190e74ea72fa60391c4029b80afb5d7070838b72850eceef469433e82c` |
| 26 | `instance` | [decidableSurjectiveFintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/decidablesurjectivefintype.md) | 246 | `declaration-track:90647346ef02db43f698081652c3ef2bf9aade473acf03ff9eaf6839b0e037f9` |
| 27 | `instance` | [decidableBijectiveFintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/decidablebijectivefintype.md) | 250 | `declaration-track:73347d5b4937b923d1efb6419a5c92f8160b6f1fb6a722bd5f18219d53dd3b71` |
| 28 | `instance` | [decidableRightInverseFintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/decidablerightinversefintype.md) | 254 | `declaration-track:f8bfff4ed63d25310ec71606902bcf5d5cd3689ef726938e5d4871bd7858519c` |
| 29 | `instance` | [decidableLeftInverseFintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/decidableleftinversefintype.md) | 258 | `declaration-track:8d52a43753ad833473573c98d7399f2483849821271669b3793eaf5de9834adb` |
| 30 | `instance` | [subsingleton](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/subsingleton.md) | 262 | `declaration-track:2c03ce474e5bcc26d4b52d85051f62836128da03d775798c5b2d5e466d0bd5ac` |
| 31 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/instance-source-edition-2.md) | 265 | `declaration-track:7a4608704ae047915de068a7e9908ea6c639b078ac92d89913b9d42f9ed72568` |
| 32 | `def` | [subtype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/subtype.md) | 270 | `declaration-track:4632b5f2a5cb54760b1972c67e9f88f9a5887e03c06f1cae575601e3225b661d` |
| 33 | `def` | [ofFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/offinset.md) | 277 | `declaration-track:e772b67f25b72077568d1c8862f0a4408e6faa6d9ac18f2a085ac849697dadb0` |
| 34 | `instance` | [Bool.fintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/bool-fintype.md) | 282 | `declaration-track:3ec45762e9871f82a79aa07dd001dd04abb661a883b173cb96686c46eedba498` |
| 35 | `instance` | [Ordering.fintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/ordering-fintype.md) | 285 | `declaration-track:53bb5633a792480123d61396fc00e283362f3b1b8e9c6f48af4d1a578274d9f5` |
| 36 | `instance` | [OrderDual.fintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/orderdual-fintype.md) | 288 | `declaration-track:059e80c65a446b07954078ae95f5b1906059413a3fe58245a68cf333795e0bcd` |
| 37 | `instance` | [OrderDual.finite](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/orderdual-finite.md) | 291 | `declaration-track:06d5693efde3d9a323daed338c37bf2707ed927fb172f5f81c05b1118631e20d` |
| 38 | `instance` | [Lex.fintype](../../../../../Combinatorics/EnumerativeCombinatorics/FintypeDefsPublic.lean/declarations/lex-fintype.md) | 294 | `declaration-track:765eb9299a1b0b76de64a3e8f68ef4cc945df5c81bf8acf9c3e1b0a4e2a6294c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d816593eb514c7164b96e0a2a8ab9a126f227e4966cccbb54bb09e6aa1f6adb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variante69e8e7a3605d293a7ef6c4a7aaefde3191da4f33b43b7be09963eec2e44965c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Defs/Variante69e8e7a3605d293a7ef6c4a7aaefde3191da4f33b43b7be09963eec2e44965c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
