# Verification target: Lists

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "530150334c3df6ab26670a10ad58c0ce897af5ca",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3245d476cbdd42376414b3f75f285c53381dfd52ce911d2a5f930714626e0ae4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `530150334c3df6ab26670a10ad58c0ce897af5ca`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3245d476cbdd42376414b3f75f285c53381dfd52ce911d2a5f930714626e0ae4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3245d476cbdd42376414b3f75f285c53381dfd52ce911d2a5f930714626e0ae4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Sigma.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Nat` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Lists'.](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/lists-source-edition-2.md) | 50 | `declaration-track:68588940a0229c42dfa8c244e1412835d96cd7d46b09758d2f4854a3e58dfc86` |
| 2 | `def` | [Lists](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/lists.md) | 60 | `declaration-track:538ff719914c7b37d925e99f9ded9143c3724f3b796e3e35da78f1f0360f27bb` |
| 3 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/instance-source-edition-4.md) | 65 | `declaration-track:3456f06630df4d7c16ca9c734b9d79fd31057055a28e10facf209814e0446908` |
| 4 | `def` | [cons](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/cons.md) | 70 | `declaration-track:4ecc74fd731071c53c25dd5e8b42397b264634d6a85aab09ed469b2a1c7378ce` |
| 5 | `def` | [toList](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/tolist.md) | 75 | `declaration-track:060b1187b9be9b67f5e38cdd0e01ca0cc7a6239e97afca7ebccc1d74f553a3f9` |
| 6 | `theorem` | [toList_cons](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/tolist-cons.md) | 81 | `result-track:88200415c39ed66858ea177b33381bf70f64356a8c6a69aae79d7b740d6ddd19` |
| 7 | `def` | [ofList](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/oflist.md) | 85 | `declaration-track:0d2801cfaf1274fd154d33f6f294fe965154030d9d0e4a55a37db44b4f6ada99` |
| 8 | `theorem` | [to_ofList](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/to-oflist.md) | 90 | `result-track:4bc2e29fe14c40e7079a0322e82a5dda858befd8b4b562f80a3f2fe8675684da` |
| 9 | `theorem` | [of_toList](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/of-tolist-source-edition-2.md) | 93 | `result-track:7a5f6ae8093b50479da260992bcc9b9f974e2189216703b42846a257c6445187` |
| 10 | `inductive` | [Lists.Equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/lists-equiv.md) | 109 | `declaration-track:c10e1aa6d73b4bf9bdd4938efc7f1aa33ad355ac45b20ca2353324e36d90bd59` |
| 11 | `inductive` | [Lists'.Subset](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/lists-subset.md) | 115 | `declaration-track:89a0b5eb90c185293e9928a78dc608db3d85cf490f834284170fa5b8b882b2ba` |
| 12 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/instance-source-edition-7.md) | 126 | `declaration-track:aaa0c9d156a4a189c19b4638eeb7fb3c1d670152e8e6b480a5c884436aa200f0` |
| 13 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/instance-source-edition-9.md) | 131 | `declaration-track:c9b937856281b9f35a285bb3cb52f1dd5327a2702af358a99815abe2c99bdf46` |
| 14 | `theorem` | [mem_def](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/mem-def.md) | 134 | `result-track:8590ec9046dd83177bd023b7e490b9357a8eadc2f4d09b85c589d239e709e889` |
| 15 | `theorem` | [mem_cons](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/mem-cons.md) | 138 | `result-track:17daab698eccd90ef5c02c339b2b82a45e68eb03a7e9549c4a753b2491f6b4f8` |
| 16 | `theorem` | [cons_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/cons-subset.md) | 141 | `result-track:30e54fc06e66243c7122c8c6ae82b94c091316ca2a1a72176def8608ab336153` |
| 17 | `theorem` | [ofList_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/oflist-subset.md) | 149 | `result-track:4b85309e8455b8391bff08f95613e56bbbcf85491c3cf73476b594019fa8ccb7` |
| 18 | `theorem` | [Subset.refl](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/subset-refl.md) | 158 | `result-track:e4336a888986d6ccf805b280dc04f3ddd900f7d58abaec9f215b2d4a29d33fd4` |
| 19 | `theorem` | [subset_nil](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/subset-nil.md) | 161 | `result-track:c836058e660086e39a386cb2387f23736af5f0be0117c84fe02c7687fc6d3249` |
| 20 | `theorem` | [mem_of_subset'](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/mem-of-subset.md) | 167 | `result-track:a9aedc8dfa1da634f68a95370640fae747c71a9a8bfd0f15fdb0efef0d5e2bca` |
| 21 | `theorem` | [subset_def](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/subset-def.md) | 176 | `result-track:4732474c8b87fefa10e3d675b8414c0b476ec453edc0c5fa3d1c4d7774eeb8f0` |
| 22 | `def` | [atom](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/atom.md) | 190 | `declaration-track:3b5e139e9e5e00c143d18881e5e7d0095a2b6aa0834b2fca3b0a3b88967271f5` |
| 23 | `def` | [of'](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/of.md) | 195 | `declaration-track:f401c2db4c6b83361a4e356f78b75cbcac6180c93a2eb0fb33e83c9d6c570436` |
| 24 | `def` | [toList](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/tolist-source-edition-2.md) | 200 | `declaration-track:86cbc78268f09492af8b12f0a4761897469f019b582e37fc3332f5f11877a125` |
| 25 | `def` | [IsList](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/islist.md) | 204 | `declaration-track:5cf8d4e8de958712434b7887353941951411e4c4ab764ff3f00b8d25435a2cde` |
| 26 | `def` | [ofList](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/oflist-source-edition-2.md) | 208 | `declaration-track:dbbb0b8e22ab68c3ac260c673326caab017c397bdcb8a3858138bf3a4c55df65` |
| 27 | `theorem` | [isList_toList](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/islist-tolist.md) | 211 | `result-track:c02f15532ee42eae6d3526fed4626c64f01fd988044e885557be29156e9fa72b` |
| 28 | `theorem` | [to_ofList](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/to-oflist-source-edition-2.md) | 214 | `result-track:818047b29bf08639b5014516d2a535c1cd30b158cb63695b7061de11c49a6bcd` |
| 29 | `theorem` | [of_toList](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/of-tolist.md) | 216 | `result-track:3b5a5ee5d380495b2b208d6ef4f39d840aab999509d0a997696c1620dc9b50cc` |
| 30 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/instance-source-edition-8.md) | 219 | `declaration-track:b20057cd96d104f97b5b094bcebd9c1c7061f4dff750cb3e748073a3a26d6b53` |
| 31 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/instance-source-edition-10.md) | 222 | `declaration-track:caa810b50332219e5ea902de4240a1edbfbfba64b342f637704498ab2212142a` |
| 32 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/instance-source-edition-5.md) | 224 | `declaration-track:5c8140b38dcfa5aae791983aee978076ace31d9c80a2fbd65f4e246d2a6cb533` |
| 33 | `def` | [inductionMut](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/inductionmut.md) | 227 | `declaration-track:50e3c29ac2a664e99b06f641c5a9d98dbb1f85de2bcb3d1249d39ef7d68b175b` |
| 34 | `def` | [mem](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/mem.md) | 248 | `declaration-track:6b3f750312f0a355469baf91f5d23f97664de53efcda777cca9f76dac5ab3f58` |
| 35 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/instance-source-edition-3.md) | 252 | `declaration-track:3430427c0b41dd20e17b66bbe677cedb6aa80e6015a1c017408c5595f8c06011` |
| 36 | `theorem` | [isList_of_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/islist-of-mem.md) | 255 | `result-track:89316e682fb38174da50ba0341af2e341ebad69ebaeb4ab45ff61026ecc9ec1a` |
| 37 | `theorem` | [Equiv.antisymm_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/equiv-antisymm-iff.md) | 259 | `result-track:896c704ffcfd0fb87dbba83427ff84c0f9648b430fd3c210dc65662ca54b130f` |
| 38 | `theorem` | [equiv_atom](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/equiv-atom.md) | 267 | `result-track:6418486bf0ae6d0f1052e091106bb87cc18beabe392ec7ca633d665ad4f87739` |
| 39 | `theorem` | [Equiv.symm](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/equiv-symm.md) | 271 | `result-track:72b7f7dfb1e34490570c1dbfdb483a535cd74aea9833f9c13aca041cbab053cc` |
| 40 | `theorem` | [Equiv.trans](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/equiv-trans.md) | 274 | `result-track:b3bde95f96b2b1616e60be1a12b22fe088989e685cd6643722e17c148301cb72` |
| 41 | `instance` | [instSetoidLists](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/instsetoidlists.md) | 300 | `declaration-track:4536bbf1c549248450f8822a2cf631987802baadebddaf3754f826f4034c99ec` |
| 42 | `theorem` | [sizeof_pos](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/sizeof-pos.md) | 305 | `result-track:a91ffe1fa48d6212556a7947e1cbb2df154b9bd80a5b26c202dffcf641c7667e` |
| 43 | `theorem` | [lt_sizeof_cons'](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/lt-sizeof-cons.md) | 309 | `result-track:96f8e39eaa9f060fd7918c34bc389bc61e8db334426eebc7840d20a6cbd5258b` |
| 44 | `instance` | [Equiv.decidable](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/equiv-decidable.md) | 317 | `declaration-track:88687ff2f416d5925c50cdf9e2ff20067be6d1d4555e0fb5f3c8fe141678bd8e` |
| 45 | `instance` | [Subset.decidable](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/subset-decidable.md) | 339 | `declaration-track:4f6178f92e294be0a6b07f3dd71abb8ead9bfb3a29c9cd6f1f4c0c1c2dae8f6a` |
| 46 | `instance` | [mem.decidable](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/mem-decidable.md) | 352 | `declaration-track:4f79a1b09b775b79a2b075f693149039a3b48979f8df01d04f35355dad30ee26` |
| 47 | `theorem` | [mem_equiv_left](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/mem-equiv-left.md) | 378 | `result-track:c078142a1184901a5893c27f7c2db4efe3b6003617aa7898cc0a4fe60e6f3b27` |
| 48 | `theorem` | [mem_of_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/mem-of-subset-source-edition-2.md) | 382 | `result-track:f051dc9e9aea0246b659adb32fceeadb5fd28638e959ad7724e90c0679e6a4bb` |
| 49 | `theorem` | [Subset.trans](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/subset-trans.md) | 385 | `result-track:515273bc11a9bc8771a1969e23e02d71f449edb6125a4b43a23ad9fd5e726201` |
| 50 | `def` | [Finsets](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/finsets.md) | 391 | `declaration-track:4d8e28de8b3638b20cf647fc9a37460c32cc9bb3b73c398a203f0aada08997e9` |
| 51 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/instance-source-edition-6.md) | 396 | `declaration-track:6da98a6f7e239bf8098b28cb0e093ff5e7da17c860b7b6b6244d803bcd035118` |
| 52 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/instance-source-edition-2.md) | 399 | `declaration-track:0b8e87f30caa0049cad2d389180aeb02846e9d03f30638f2b3051eff6d2fe508` |
| 53 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/Lists.lean/declarations/instance.md) | 402 | `declaration-track:000d347ed38f6ab84befe3a3dd967bb9e656d5f8fd01aaebe46b5d936cb464af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c7a03af9b366444c1420e55a45eed441e751de2320003b140175591b68f5f03 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3245d476cbdd42376414b3f75f285c53381dfd52ce911d2a5f930714626e0ae4.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3245d476cbdd42376414b3f75f285c53381dfd52ce911d2a5f930714626e0ae4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
