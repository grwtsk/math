# Verification target: Part Not Mem None Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b23992e740084ac5975c9c83c179a79c4644f41",
  "lexical_observation_count": 165,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant9fc245bd029104d74ea865a8840fd3122d545e1f53d976496002d0e934255c66.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b23992e740084ac5975c9c83c179a79c4644f41`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant9fc245bd029104d74ea865a8840fd3122d545e1f53d976496002d0e934255c66.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant9fc245bd029104d74ea865a8840fd3122d545e1f53d976496002d0e934255c66.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Part.](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/part.md) | 51 | `declaration-track:ef318abc7cc3e18b2b2b5f59d24c7050f56501812dc6bc1fb89d22ab52ca6871` |
| 2 | `def` | [toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/tooption.md) | 63 | `declaration-track:2c33483eb621761eb0a9073b7ad7e019f3e704006db41976643dda4863be084e` |
| 3 | `lemma` | [toOption_isSome](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/tooption-issome.md) | 67 | `result-track:943f1e428aae667c183ed2ab230611aababce35b3f1afbe4741128fd1524319f` |
| 4 | `lemma` | [toOption_isNone](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/tooption-isnone.md) | 71 | `result-track:bcd44b26740ca34b6e65246ff6e3405821d204e72f4223785976bbe4719d5770` |
| 5 | `theorem` | [ext'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/ext.md) | 76 | `result-track:a01a81f0d42e3673ab746cb4abb104360ea689bd972011c81bfe40f7ac59242d` |
| 6 | `theorem` | [eta](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/eta.md) | 84 | `result-track:9a6a2c81de42add1d523dcb55fa07addf1a8ffbcdd7b64f7c1fbd1283c1686eb` |
| 7 | `def` | [Mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/mem.md) | 89 | `declaration-track:e53c9896aa9090df37cd403d3f44ea1f77d93c0d715a1d513420f324f93dcb0d` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/instance-source-edition-11.md) | 93 | `declaration-track:b05642e6ebc122906fee674a1f16862a971719b67ac9b4a509e201a4ba073000` |
| 9 | `theorem` | [mem_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/mem-eq.md) | 96 | `result-track:50d91c2bdbe09e698f4cb8a4e7bb06ba3a4080ca05b913beda1f2027c91dc337` |
| 10 | `theorem` | [dom_iff_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/dom-iff-mem.md) | 100 | `result-track:71e840ee791d48dfc786d6c0e30f8ec4f77140579d83f00151ecc59199c48bb6` |
| 11 | `theorem` | [get_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/get-mem.md) | 104 | `result-track:5ec5de084146f958c97f0befc48c52428735ec84e9d2417938e73be8a8d7af53` |
| 12 | `theorem` | [mem_mk_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/mem-mk-iff.md) | 109 | `result-track:fd103ac3d1250322bcd3b6f7d2141d7ec761cc23c330538ecac778e3d1b2e727` |
| 13 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/ext-source-edition-2.md) | 115 | `result-track:bcec343182a8597432c06f907e0f0d8c93b2c835e843435392516b95033979fc` |
| 14 | `def` | [none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/none.md) | 121 | `declaration-track:13a29540854e664566863d5a5e38645a50c68c19773d41c9faa4cb90f2cae83b` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/instance-source-edition-9.md) | 125 | `declaration-track:a9f61ca932a4652701516b77771a5321cf41a7f04ede9d232c9a89c197f3c8fa` |
| 16 | `theorem` | [not_mem_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/not-mem-none.md) | 129 | `result-track:ed818ec6df99949c51ef642bbe8f39ec37f88c26280e06bcdf510541e5d3e5f9` |
| 17 | `def` | [some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/some.md) | 134 | `declaration-track:3253d4940eef460eb5c8c8a5147de8339f7dc303ed9130b08c6a7461a709a3f4` |
| 18 | `theorem` | [some_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/some-dom.md) | 139 | `result-track:21a0e8532dcda2091c87325e0a5816a1689ff8d2612715c0014ff6c44dfd0701` |
| 19 | `theorem` | [mem_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/mem-unique.md) | 143 | `result-track:23ac007e650ab33f563cee8097079c15879cbb7b568ed434369c77a2e8a49b8e` |
| 20 | `theorem` | [Mem.left_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/mem-left-unique.md) | 147 | `result-track:2839bb350423daf14a82b8a292404b0dae24711d8dbf11a7a48093af47c46382` |
| 21 | `theorem` | [get_eq_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/get-eq-of-mem.md) | 151 | `result-track:dcf4bfbe77bd3be87aaf9190afcd35b8b51fa37c3a68c8d86a1b96936da6123c` |
| 22 | `theorem` | [subsingleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/subsingleton.md) | 155 | `result-track:e7b59a868423881953d6fae538f31f574c7cfc2894c903416d0de479853c47db` |
| 23 | `theorem` | [get_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/get-some.md) | 160 | `result-track:1727990d004cbbe89d29c52b6fa72cdef2ce5090caf3df75943d32a7e2333bc8` |
| 24 | `theorem` | [mem_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/mem-some.md) | 164 | `result-track:814393a71b745a9920f14cebb55baef48fe9c4bbdbe18659f8ac8134c502db0c` |
| 25 | `theorem` | [mem_some_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/mem-some-iff.md) | 169 | `result-track:1b6e16d727db448791ee834d42713fee456f82ace2dcd1168cf94a3d1b76297b` |
| 26 | `theorem` | [eq_some_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/eq-some-iff.md) | 173 | `result-track:0027e1dcece4f213f54c994f9b1cddd3110cd09ca6488f3cc01cd8bcd4a65dff` |
| 27 | `theorem` | [eq_none_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/eq-none-iff-source-edition-2.md) | 177 | `result-track:57f5697a0be4cc3fdf2b4ce55661c79fc651cc9618f40e1bf438957b6a5d7878` |
| 28 | `theorem` | [eq_none_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/eq-none-iff.md) | 181 | `result-track:1c7c933fa79b0da20eab88fc708e4aeb3d5b7f223f3dddc9f3200f958e16d9b2` |
| 29 | `theorem` | [not_none_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/not-none-dom.md) | 186 | `result-track:f4ff685dc41fc0d3474f62f7f7ebf2b486f0eba04f987ff1c32ac9799da2bf2d` |
| 30 | `theorem` | [some_ne_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/some-ne-none.md) | 191 | `result-track:60d69876e5ac54b4dca048bd261f5f521c16a47126b87d3492151420f951a932` |
| 31 | `theorem` | [none_ne_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/none-ne-some.md) | 197 | `result-track:2ec98052d6669467f7980e5c65cb1d35ec9a99d2e8b2f7c7f18e14d824da44a4` |
| 32 | `theorem` | [ne_none_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/ne-none-iff.md) | 201 | `result-track:6f8de710acea6d9b4e443d60a17e2a278fed181cb1bd2b13b35187e58e0dd982` |
| 33 | `theorem` | [eq_none_or_eq_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/eq-none-or-eq-some.md) | 209 | `result-track:fcef70fa384061d79ff238995a055e2331bdc37cf008c63549e02b1ede695998` |
| 34 | `theorem` | [some_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/some-injective.md) | 213 | `result-track:d0a8649bc949b864cfe16f62f1be34a1e2e3dbdcf80c66c708c7d3334cf2f13f` |
| 35 | `theorem` | [some_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/some-inj.md) | 218 | `result-track:bcc4cb90ceabe0c7f3d8a49db2f4774527e9143cabfbceedc72d8efa317a2c7f` |
| 36 | `theorem` | [some_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/some-get.md) | 223 | `result-track:fa51a8f1ce7d531e74383d7cd9a0fe138befa1b130b14d4fd09530ed8a489af4` |
| 37 | `theorem` | [get_eq_iff_eq_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/get-eq-iff-eq-some.md) | 227 | `result-track:f5b4e955e7d25d88b71d47aadcc4bfccc03af5e86cda5b4987673368d9f57953` |
| 38 | `theorem` | [get_eq_get_of_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/get-eq-get-of-eq.md) | 231 | `result-track:42cf56b5984a3cd4a60a56803314921b5d6fdcc553f44e59a00aa4b9b37e93fc` |
| 39 | `theorem` | [get_eq_iff_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/get-eq-iff-mem.md) | 236 | `result-track:32fc93883e6ca928538dd27c49cc63d74ba031ca2d8244a1641c70db4ba3cdc7` |
| 40 | `theorem` | [eq_get_iff_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/eq-get-iff-mem.md) | 240 | `result-track:6e074b03897c711212ba26e4815a241f7126686608a8d5cde24c4c9aad18514c` |
| 41 | `theorem` | [none_toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/none-tooption.md) | 245 | `result-track:7c008adcdf6470d23cf0eaf32b87ccfc4a9b71da9b64ecc94cb503ee6c0e2134` |
| 42 | `theorem` | [some_toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/some-tooption.md) | 250 | `result-track:b4fa07786999a563931a19d37b5f21b8e56a1cdf7738ed6b010ec9b61726cc95` |
| 43 | `instance` | [noneDecidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/nonedecidable.md) | 254 | `declaration-track:be730f3624a3781bce36122343e1a239e0632e1c8ec5d296712aebb2ff192278` |
| 44 | `instance` | [someDecidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/somedecidable.md) | 258 | `declaration-track:35c137c34aee4c1552c46f5cc2d0aaf265805f69c3767e6f16162f1aa2998622` |
| 45 | `def` | [getOrElse](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/getorelse.md) | 264 | `declaration-track:207e7d9f73872b74aead2aee412682b811b951e0eab1e2cc7c540b3790b99681` |
| 46 | `theorem` | [getOrElse_of_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/getorelse-of-dom.md) | 268 | `result-track:ddff0e47e3090c54277e010353b76858e243041e37b34614ebd46cf95f64c917` |
| 47 | `theorem` | [getOrElse_of_not_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/getorelse-of-not-dom.md) | 273 | `result-track:b04e2fe853fbf0d18d4c3f0145e02ccff9bce65160d8a6b89e2d4ae54c074138` |
| 48 | `theorem` | [getOrElse_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/getorelse-none.md) | 279 | `result-track:c599090d296f87d1e7fa137f6efe7aedfcc80439815b4f15b782e3b9b927f319` |
| 49 | `theorem` | [getOrElse_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/getorelse-some.md) | 284 | `result-track:52cb6736e6b990f067234c532faaf5dc23af358d565fb9534e47044bfbea001f` |
| 50 | `theorem` | [mem_toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/mem-tooption.md) | 289 | `result-track:bead2d9ea63753246568afd8885c1f4a607952df9f400d00c84db8709ce92303` |
| 51 | `theorem` | [toOption_eq_some_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/tooption-eq-some-iff.md) | 298 | `result-track:0b98ec2ea8f3d41c1920ef5c3ef93341d58ac1a33c37d3f08824187ab9264278` |
| 52 | `theorem` | [Dom.toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/dom-tooption.md) | 302 | `result-track:59b48999930002836ff4ecd9f476482391c45573860ec20836059337b01c0712` |
| 53 | `theorem` | [toOption_eq_none_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/tooption-eq-none-iff.md) | 306 | `result-track:0b8343314cb4e5fbd6c968768b378f07bebf212c091729f7684b79c39035a657` |
| 54 | `theorem` | [elim_toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/elim-tooption.md) | 312 | `result-track:eb2a4a21c4e08d3bb58f26b33e059a676fd444c8f98b12ccb87b78cf4a03d4ef` |
| 55 | `def` | [ofOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/ofoption.md) | 323 | `declaration-track:476d3aab1b8a9d45c4d2e7632100f827c65d32008670d3db12bb5cfd0d0594f7` |
| 56 | `theorem` | [mem_ofOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/mem-ofoption.md) | 329 | `result-track:dae39f0981a8fdb7e80862fe3c874523f95a201e462e421db78edd87038b0d5f` |
| 57 | `theorem` | [ofOption_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/ofoption-dom.md) | 335 | `result-track:4d391c75fcb44aaef819d8e1e2083e61d5de9e92fc3747bf65aaf58bcd7da50d` |
| 58 | `theorem` | [ofOption_eq_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/ofoption-eq-get.md) | 340 | `result-track:de80e6290a1ef17e1d9f587a43561ac5a98eb8a5a0f2f4d2be20e612c8e83e3d` |
| 59 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/instance-source-edition-8.md) | 347 | `declaration-track:8262131f403f7c0ee3b7bea982ee407635255bbf30935a4be17696fe097ca228` |
| 60 | `theorem` | [mem_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/mem-coe.md) | 350 | `result-track:eb0b7010d0fd5f1d04d51c4c7c2bf8115d520069ac1905bd549dda6f787556f6` |
| 61 | `theorem` | [coe_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/coe-none.md) | 355 | `result-track:494dde9f513a4ed86e4ef31e15164b556a2cfd42f12d06ff8f1da48741092dd5` |
| 62 | `theorem` | [coe_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/coe-some.md) | 360 | `result-track:83b9f26954e79168c224717de8123a07e15d68bd297bfc415cd0ff7956fe911c` |
| 63 | `theorem` | [induction_on](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/induction-on.md) | 365 | `result-track:a36c580bc333a8036109eae0689bf0ba64b620dc83e3655b2700375733d97905` |
| 64 | `instance` | [ofOptionDecidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/ofoptiondecidable.md) | 371 | `declaration-track:0ad0a1a48e1ba99689b5963c94bc6df8ef3e0e5c4deea58b8a4d8117d4c2d8e1` |
| 65 | `theorem` | [to_ofOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/to-ofoption.md) | 377 | `result-track:c9f13e66450f3d6db6795ee082ef64f35c190162fecafe1df1413e3a7460bbb0` |
| 66 | `theorem` | [of_toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/of-tooption.md) | 381 | `result-track:8fa070d49e2639f17f986f1e075005d359e54a054c69b03d4501790952ffcd54` |
| 67 | `def` | [equivOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/equivoption.md) | 386 | `declaration-track:23371e0cd821886c6318eaf668200b30e8eefe5a7b249944d31b034143f1ca41` |
| 68 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/instance-source-edition-14.md) | 393 | `declaration-track:d915b4654e8b03f6f3805673048d9845dc933c90af54d82134eb4168da128958` |
| 69 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/instance-source-edition-16.md) | 400 | `declaration-track:f4ad1e85455ce11c1d56036423f8bb01e1a8b156306722ede1518aa261e49eaa` |
| 70 | `theorem` | [le_total_of_le_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/le-total-of-le-of-le.md) | 406 | `result-track:5821edbe58ac25c6b1d6ba9cfc27e3dd840e934fe0a4c0790b6fc8243b1c0f9a` |
| 71 | `def` | [assert](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/assert.md) | 421 | `declaration-track:77042475716a4657a2243b85ac12d10f6df453512183ac6a222a78300c9c01fd` |
| 72 | `def` | [bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/bind.md) | 427 | `declaration-track:5a190ad380a8c3113e9af859e5c78f48c3a21fa044ad1fe370184a0ac2be2482` |
| 73 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/map.md) | 433 | `declaration-track:c1657c66a4b5704e3ddbf171cfb6f3a85a00c2f17bcfa44fabb7992317dcd8fa` |
| 74 | `theorem` | [mem_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/mem-map.md) | 439 | `result-track:1ac3a612858f2888244ff057fe7211cd2ef58e01a4c0e4daec7425de859460f1` |
| 75 | `theorem` | [mem_map_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/mem-map-iff.md) | 444 | `result-track:095f90fc9220c45e3a69bebec84584b4a4fc844efa5a8441b7db9efa9cfdc087` |
| 76 | `theorem` | [map_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/map-none.md) | 451 | `result-track:1023736157172ac40910a62fe9dd37cb29e74bafce55d2234241d928ce6116d0` |
| 77 | `theorem` | [map_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/map-some.md) | 456 | `result-track:04228ba720e671302d37d830eb92a1d6d315520b01f0e8e4abae9b833e0274f2` |
| 78 | `theorem` | [mem_assert](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/mem-assert.md) | 460 | `result-track:3119e67f79a22dc10b0e157ec0e6939a0b1a5cba940b0d37cb793628bf887817` |
| 79 | `theorem` | [mem_assert_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/mem-assert-iff.md) | 465 | `result-track:caac11e690b25f7683b58b78dc55591889aa735ac243005e85b02e0c459e87cb` |
| 80 | `theorem` | [assert_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/assert-pos.md) | 471 | `result-track:c552e2970bc5687b078ffd865a0cd2957fa144fb9c3f83932170630b8cc5dbe0` |
| 81 | `theorem` | [assert_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/assert-neg.md) | 480 | `result-track:39273e456a63285122acacf27b6683e86411fc174cba6e807add7fe747474747` |
| 82 | `theorem` | [mem_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/mem-bind.md) | 488 | `result-track:d85b28221a6b8eacf4c8e7cec985acc44dbf78adf49cf51818f33eb21ec79d4b` |
| 83 | `theorem` | [mem_bind_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/mem-bind-iff.md) | 493 | `result-track:adc76581524eefd4d596fd1b4e4ed27b2bc6e3178a404197b5b0e369b74851d7` |
| 84 | `theorem` | [Dom.bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/dom-bind.md) | 499 | `result-track:1131a775d7596d08e241d87c6fa774c35194373115ab6fe215f6d074470ebcbb` |
| 85 | `theorem` | [Dom.of_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/dom-of-bind.md) | 507 | `result-track:8b4179a8ccd15870ee5b626cdc2ebabc6c55267622f5d97339b2dc39b45925b2` |
| 86 | `theorem` | [bind_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/bind-none.md) | 512 | `result-track:cc8917b915880fd51af1d8997037e7adafc61aee235402dfd1fa1ee4f18f167c` |
| 87 | `theorem` | [bind_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/bind-some.md) | 517 | `result-track:5a0536e202eaed8445b64833becdd66c51caf23ba9ab93200c805c8092ab2f15` |
| 88 | `theorem` | [bind_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/bind-of-mem.md) | 521 | `result-track:74a9e3d78a8c4062553fea7deae900ac88d9987fae5e8458a64d712829656e8c` |
| 89 | `theorem` | [bind_some_eq_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/bind-some-eq-map.md) | 525 | `result-track:fa5adb9d77eded29933f37bb3ec096ef38b26c2ad3bcad14fce0a9288d162156` |
| 90 | `theorem` | [bind_toOption](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/bind-tooption.md) | 529 | `result-track:07104090e8b81ccab986a3812b87b6a6ddac0be0e04448bdac0b1afc23fb9195` |
| 91 | `theorem` | [bind_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/bind-assoc.md) | 539 | `result-track:aaf13eae6964011a4fc8e7306f817b66354155e18481c054df8a59545019286b` |
| 92 | `theorem` | [bind_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/bind-map.md) | 548 | `result-track:61ae6f222df47fc9ae8549fd2f7b39c9e3db2e69bbd53780776c93d17381018f` |
| 93 | `theorem` | [map_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/map-bind.md) | 553 | `result-track:8e495a53adfce580a1681022096986a48b5061403aa6fe7b845fdc76e3d4ed11` |
| 94 | `theorem` | [map_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/map-map.md) | 558 | `result-track:7bc491ec1bcff9a629c8b5a037d80f0308d04c1f811a3b2cb703ec150a3d3f66` |
| 95 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/instance-source-edition-7.md) | 562 | `declaration-track:814acf4828084a97564dcb00a463bc876bbe212fc493f247a08f2dd9f5272868` |
| 96 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/instance-source-edition-15.md) | 567 | `declaration-track:d96ae562e4f4cc89fb3c46a0ebb6ad82257370156803fe442bd5eddec5d91685` |
| 97 | `theorem` | [map_id'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/map-id.md) | 588 | `result-track:67a33e2ffeb695ecdb718e26c7afcfd3fe34adbcc74428b8af41275db7e20f5c` |
| 98 | `theorem` | [bind_some_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/bind-some-right.md) | 593 | `result-track:53826b539f1b8ffb9741b40000f6b744f53b669df7e4c335e2830bb48aa74d7a` |
| 99 | `theorem` | [pure_eq_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/pure-eq-some.md) | 598 | `result-track:1472e5b27b433db203cf0937600f4dcd475c7fae43391bc7257e74364300ca90` |
| 100 | `theorem` | [ret_eq_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/ret-eq-some.md) | 603 | `result-track:be62b0eecb07e5ffec853a88013eef06abcf5b42ec26e8de31b168acde8ca2c3` |
| 101 | `theorem` | [map_eq_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/map-eq-map.md) | 608 | `result-track:db8fd4c97e09b610070115be450a2a001afdf6a26ae2e93e9fb5ee187a0925c9` |
| 102 | `theorem` | [bind_eq_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/bind-eq-bind.md) | 613 | `result-track:72ec6ccd5656c7ffbf01b3455d686bf294efa40feac3d311b2509cdca7541cc2` |
| 103 | `theorem` | [bind_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/bind-le.md) | 617 | `result-track:d9e1a8eb533a5c5b4cdca2b8928540e1b858db898c590036c47a04352f2da1c4` |
| 104 | `def` | [restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/restrict.md) | 636 | `declaration-track:402ed35de414ec4fd8cf3860a92f8ea314540b200a07f5584ebbd3d93aa4d0be` |
| 105 | `theorem` | [mem_restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/mem-restrict.md) | 641 | `result-track:4d56db8f1865d50fb551a7fd1542fe8ea7815640b788157672f44dea6429f499` |
| 106 | `def` | [unwrap](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/unwrap.md) | 650 | `declaration-track:1b5b8a38f67930267003cbb7320bad3c4e99f62f28f596ab2305f044bfc8349a` |
| 107 | `theorem` | [assert_defined](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/assert-defined.md) | 654 | `result-track:8dde6e686e19ce669c8177bd5a6dff3210365555db427c42fb14f63c2553ace7` |
| 108 | `theorem` | [bind_defined](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/bind-defined.md) | 658 | `result-track:044f10c2f1c4263ce0324635a5007d874aca0f7c32a8c9690b6c2b161e810044` |
| 109 | `theorem` | [bind_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/bind-dom.md) | 664 | `result-track:83f661431829a17f25da196eda1b5647f7a7349b6a37cbd4fc9d09dce63bc57f` |
| 110 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/instance-source-edition-2.md) | 672 | `declaration-track:353c75fbbbd09c03c4171de78ab213816cf0b92153aae40b89a89ef8b4120f43` |
| 111 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/instance-source-edition-13.md) | 675 | `declaration-track:d5b063de9aaf3874e70c0e076f26eb304da9f75084dd3504102e8b21e9f4c70a` |
| 112 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/instance-source-edition-12.md) | 678 | `declaration-track:c3a5efacd68d34484235c308ec5cc5e8d9287e4b76dc53c3986627b4c8c73d33` |
| 113 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/instance-source-edition-3.md) | 681 | `declaration-track:3add9a09319be79fa6b4286205ea6b277bc6d51ddf6295bdb0a1ea4eebbd88b8` |
| 114 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/instance-source-edition-6.md) | 683 | `declaration-track:78a8353db6f9a1c7ad75d063d3c49dda0e5245913d272b3c5be0053fc1dee630` |
| 115 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/instance-source-edition-4.md) | 685 | `declaration-track:5eeb3bdccef7fc05992e4620a8c84e119549ca41f385cd0c1df120f02b5e1d6a` |
| 116 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/instance-source-edition-5.md) | 687 | `declaration-track:60965e05322c29aeab728d47230e9cc3e30c20f81597de804fd8fd63a875c619` |
| 117 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/instance-source-edition-10.md) | 689 | `declaration-track:ad46cd65ab2cd828421935cd635b607dd465ac06322474f61267a6d622d56743` |
| 118 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/instance.md) | 691 | `declaration-track:0a1fa9bc1ef76fce3b84000ca931d9f661d57587da65783be1efb1281269e693` |
| 119 | `theorem` | [mul_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/mul-def.md) | 695 | `result-track:57e324999cb1e29ffa0be4484d31b4669b144931535d7bf37e039b9fe4d185d9` |
| 120 | `theorem` | [one_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/one-def.md) | 696 | `result-track:03aca471bae81b909e8ec6bf550fbde40306a8855458ab30ec1f8dd91ff8db23` |
| 121 | `theorem` | [inv_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/inv-def.md) | 697 | `result-track:68ff1ad737bb37301fe14582ba916b967b91cf8b3d2ca237a310a2854fc7b1c6` |
| 122 | `theorem` | [div_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/div-def.md) | 698 | `result-track:1d7b42fb2bcb50d0b58b371aac16540862ea7d3739da752d2f9c566055468a7b` |
| 123 | `theorem` | [mod_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/mod-def.md) | 699 | `result-track:5b99fbcc7b3f1f85ef96175ece0c03762c8a7566f8433e82e6f1005bc1ed1853` |
| 124 | `theorem` | [append_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/append-def.md) | 700 | `result-track:d3659412b0f091022b04451e49047fea338a4cd0f6612b370d7d9a93d7ff2737` |
| 125 | `theorem` | [inter_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/inter-def.md) | 701 | `result-track:c89adce2df1e7304a3b23020461325262e9d891efe86ebea57cc8089d3aef6f5` |
| 126 | `theorem` | [union_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/union-def.md) | 702 | `result-track:f382f5439a7f3981b50a9ac097ea61f5ec04d83fa29ac5b8cc7cd7ffbbb601f3` |
| 127 | `theorem` | [sdiff_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/sdiff-def.md) | 703 | `result-track:302f17983839b7f688d4fc1905d3c527536a1b9908750520fd1b798a4a9266c5` |
| 128 | `theorem` | [one_mem_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/one-mem-one.md) | 708 | `result-track:3d42ecd68342f9f7006d6ab7b2be03269c455629af4b43224ae096b1f237dce7` |
| 129 | `theorem` | [mul_mem_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/mul-mem-mul.md) | 714 | `result-track:053f371956254477859f049fcddb5b7382e47186982e5b5f39e66e528cbdf8a8` |
| 130 | `theorem` | [left_dom_of_mul_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/left-dom-of-mul-dom.md) | 720 | `result-track:752f6f9cc327e21672afe9db72d20287b873da586f1a1eacc96d7798548e3d4b` |
| 131 | `theorem` | [right_dom_of_mul_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/right-dom-of-mul-dom.md) | 725 | `result-track:c6e257405e870189677f535ca9db3e3470b321a34f44bcc384017e8e4e2b76ff` |
| 132 | `theorem` | [mul_get_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/mul-get-eq.md) | 730 | `result-track:bc170da4ab29f6058cadbccd8373f48b8a143c3399fc8f61f5c9d92661597a2a` |
| 133 | `theorem` | [some_mul_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/some-mul-some.md) | 736 | `result-track:9205773373e80d7020b52d2d220d44ee500f12a45186bd3c717866ea16322b84` |
| 134 | `theorem` | [inv_mem_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/inv-mem-inv.md) | 741 | `result-track:c9da5d11f7d33756032b19bb51291f7854f0def236fbb615dbead22022461b13` |
| 135 | `theorem` | [inv_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/inv-some.md) | 747 | `result-track:c36bdb5cb10ec64bde993775fa7b0beea49e241408742f19c24167c6c959a948` |
| 136 | `theorem` | [div_mem_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/div-mem-div.md) | 753 | `result-track:55908b3a48c67b113d3ce4c42421cd9f90a1d64e7f71a29cf494bca82298d73b` |
| 137 | `theorem` | [left_dom_of_div_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/left-dom-of-div-dom.md) | 759 | `result-track:e4f958a6ef41b227ce7a5742b63714209399466bdad1a5ad203daf54018ca73b` |
| 138 | `theorem` | [right_dom_of_div_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/right-dom-of-div-dom.md) | 764 | `result-track:b85c0cbef8fc45b0452012224ed95767ceb4788a18570a3b17fc7ff75555221f` |
| 139 | `theorem` | [div_get_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/div-get-eq.md) | 769 | `result-track:63c29687813969fa79e5303f18bd76ce6fbb8c7a213b94c3623aafafde0f8514` |
| 140 | `theorem` | [some_div_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/some-div-some.md) | 776 | `result-track:f2663e1aa37eef4e731fd9259023b521fba826229a3654c7a93c769d61ea23e5` |
| 141 | `theorem` | [mod_mem_mod](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/mod-mem-mod.md) | 780 | `result-track:fddb73e870a85650f9cf16758103a8b142dae674d733d7bdc28b4f94b49d5df3` |
| 142 | `theorem` | [left_dom_of_mod_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/left-dom-of-mod-dom.md) | 784 | `result-track:f5fca2cc11c5251a30b8a24082698037aeca7bf99cde11d261a49442a4e24e8c` |
| 143 | `theorem` | [right_dom_of_mod_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/right-dom-of-mod-dom.md) | 787 | `result-track:db332e9b48cfa541d716a81273bd5dec793f527c336bb3b06e5c62a65af00e38` |
| 144 | `theorem` | [mod_get_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/mod-get-eq.md) | 791 | `result-track:7a0e868fbdbbf5113bb043d36130dee0fe30a92b37e4741479128d275c83c0ea` |
| 145 | `theorem` | [some_mod_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/some-mod-some.md) | 796 | `result-track:8716142ffad014848ccb086fe8a81f64947451c087d35fad30c5e5b3a129af75` |
| 146 | `theorem` | [append_mem_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/append-mem-append.md) | 799 | `result-track:04da0038ef434d90fb9bd294175256bf430ecfe84dd38a5866d11ec1143ea39c` |
| 147 | `theorem` | [left_dom_of_append_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/left-dom-of-append-dom.md) | 803 | `result-track:a443f1a40830e3e84a750d40ac906c4249b734097bf0db797494e24d1cab655e` |
| 148 | `theorem` | [right_dom_of_append_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/right-dom-of-append-dom.md) | 806 | `result-track:ffc825ec43767de15efc9042f1a31c5ae8cae8b349c618eae7e760acd77e7933` |
| 149 | `theorem` | [append_get_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/append-get-eq.md) | 810 | `result-track:d242451dca184828e507c6456ba31663adadda33761cb0bb289e0d3d8b8e807d` |
| 150 | `theorem` | [some_append_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/some-append-some.md) | 815 | `result-track:60fad001f629e34c74caf9ed8be6b428bc7ce3d5ada68e1c3857b2141e4a936b` |
| 151 | `theorem` | [inter_mem_inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/inter-mem-inter.md) | 819 | `result-track:13218352499ca417f4ce83a7e3aca56ed847df8bb2ef32bced8363c3c9331bb5` |
| 152 | `theorem` | [left_dom_of_inter_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/left-dom-of-inter-dom.md) | 823 | `result-track:6ee52aa97453a6ffa12ef01174831591ae54aedc5a261314b10b027453a70c85` |
| 153 | `theorem` | [right_dom_of_inter_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/right-dom-of-inter-dom.md) | 826 | `result-track:a3f64876b5fd250c66224d0c9dc565066f7be726daf1ba66cbe92777a45fdb81` |
| 154 | `theorem` | [inter_get_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/inter-get-eq.md) | 830 | `result-track:556e7d2af9ff5cdf42f36f4abb46d187bfa2728102406c920fcbc2ce01c63f61` |
| 155 | `theorem` | [some_inter_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/some-inter-some.md) | 835 | `result-track:7d43f68c5bcd10edaea9b00d97f9d4b57629a9057dde2fcf310341c165e5065f` |
| 156 | `theorem` | [union_mem_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/union-mem-union.md) | 839 | `result-track:d8ae376fdea7e208372d40f6825067e5e44f0c007c847126d23fc647260b4f6a` |
| 157 | `theorem` | [left_dom_of_union_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/left-dom-of-union-dom.md) | 843 | `result-track:11dfe82f1c1cc5955cd38cae02ac3f3ed178cde7d1b59c7333866541de2f7bc1` |
| 158 | `theorem` | [right_dom_of_union_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/right-dom-of-union-dom.md) | 846 | `result-track:37ae17df37098c202e42d600951d2de553514b75ddfeb733851343e4f7e7651f` |
| 159 | `theorem` | [union_get_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/union-get-eq.md) | 850 | `result-track:159133d8957a6aa15ad20edf2c324aff9582255b2f0c789ff8076ea6312ccf0c` |
| 160 | `theorem` | [some_union_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/some-union-some.md) | 855 | `result-track:5b1783752641ef307cc8fbd2c17e2ecfab16d5c248a9851b8477926f6786ad63` |
| 161 | `theorem` | [sdiff_mem_sdiff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/sdiff-mem-sdiff.md) | 858 | `result-track:9fadf854249309d24633f87080ed1ec492ae28ac811530a9ad04335fea99353d` |
| 162 | `theorem` | [left_dom_of_sdiff_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/left-dom-of-sdiff-dom.md) | 862 | `result-track:48194eec3287796124e5aed2f41ed0e7aff44141aaa1365e053dacd78ffd3cb3` |
| 163 | `theorem` | [right_dom_of_sdiff_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/right-dom-of-sdiff-dom.md) | 865 | `result-track:8f356dd7063e693318dffd2be40d8b76d3239b930c8f758908be44d3ffcea6f1` |
| 164 | `theorem` | [sdiff_get_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/sdiff-get-eq.md) | 869 | `result-track:00a286267009dfd6dca38cdd3462e79fd55fb5f9788efc0b0147f706515611ad` |
| 165 | `theorem` | [some_sdiff_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PartNotMemNoneAligned.lean/declarations/some-sdiff-some.md) | 874 | `result-track:4d383f2f4712c4230e4384901e893c95a795f26abae642b6331ccb9752b9cac4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bed0e7015a1e1a6264608410737e8e369626acb28b50956088893624b9e9a779 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant9fc245bd029104d74ea865a8840fd3122d545e1f53d976496002d0e934255c66.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant9fc245bd029104d74ea865a8840fd3122d545e1f53d976496002d0e934255c66.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
