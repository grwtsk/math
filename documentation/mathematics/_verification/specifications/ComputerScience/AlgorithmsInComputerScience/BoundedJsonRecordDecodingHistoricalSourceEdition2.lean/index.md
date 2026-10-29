# Verification target: Bounded Json Record Decoding Historical Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b94ff40f11346fd563fcc348adfe864a9941a850",
  "lexical_observation_count": 87,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantb45a1db3ba64dc2a7fb614a83b7af52dc15325569a3daa111f848a8221b5f82b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b94ff40f11346fd563fcc348adfe864a9941a850`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantb45a1db3ba64dc2a7fb614a83b7af52dc15325569a3daa111f848a8221b5f82b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantb45a1db3ba64dc2a7fb614a83b7af52dc15325569a3daa111f848a8221b5f82b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CertificateProducer.Basic` — import line 1; internal source missing from the pinned tree.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Value](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/value-source-edition-2.md) | 13 | `declaration-track:cacc1ecd58ab3668730a0024283615e0053e31ac4f6631c5d173ebea6309b1dd` |
| 2 | `def` | [Value.array](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/value-array.md) | 24 | `declaration-track:ec2f56a1bb48202a92d2284e42560a4b009a71e634dcf989995ba9c9c9186653` |
| 3 | `def` | [Value.object](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/value-object.md) | 28 | `declaration-track:fb0047f86efb339bb3e7a9298b94c08bac90a66603564779ddb48200ec52b26c` |
| 4 | `abbrev` | [Raw](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/raw.md) | 32 | `declaration-track:700e473f3126d35fc26fc44e6bcaded3e556e0eb918bf5b267ae6c89b860def3` |
| 5 | `def` | [scalar](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/scalar.md) | 34 | `declaration-track:16256499f5d0eaf380876b590fa199ac188f857e47f7fa1c9959a38af628e395` |
| 6 | `def` | [whitespace](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/whitespace.md) | 36 | `declaration-track:55e6619779cbb5c708221d3d2813765345e1e99d6a3c737d8d664445306017dc` |
| 7 | `def` | [skip](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/skip.md) | 40 | `declaration-track:0a29908cea3bc15b21929cbfd7d853f47497918510560bff3b7a7b71ab01fc8e` |
| 8 | `def` | [hexDigit](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/hexdigit.md) | 44 | `declaration-track:7ec11416b3420d10ef32bc5e01c2805932e71dea81a2a1c93d58f695f1e9011f` |
| 9 | `def` | [hex4](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/hex4.md) | 49 | `declaration-track:b36caae223abe75f6fcff210bd41a1078581b52646be6b7c2be133638ba3e6d8` |
| 10 | `def` | [utf8](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/utf8.md) | 59 | `declaration-track:e3f377b4a1e403424e36397f24d3cd6c5f79c4f031705fb3f81acba187fc7fc9` |
| 11 | `def` | [escaped](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/escaped.md) | 84 | `declaration-track:d2da9a10b2ee046197d43dca949c0c99594f4b739584138fe437334989a0483c` |
| 12 | `def` | [stringBody](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/stringbody.md) | 106 | `declaration-track:5a31c23284eeadadc2dc45fa10ce77f85b23cb4901bd097dd9e8752da6231b27` |
| 13 | `def` | [stringToken](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/stringtoken.md) | 119 | `declaration-track:740b517f471d435439b2438ccc000302ec326f6b8371fc4fd6de964b50d73f1f` |
| 14 | `def` | [digits](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/digits.md) | 123 | `declaration-track:d7db15cf3c7847e487ce38af66a61a6ff88053d57ec1b8b947cd04b73217ca1f` |
| 15 | `def` | [naturalToken](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/naturaltoken.md) | 131 | `declaration-track:63cf941f705fa66952fc14ff1483608cd40372405cb2478f6b2de8412a344445` |
| 16 | `def` | [value](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/value.md) | 140 | `declaration-track:40b98fc068c71304062e9445c99221efb137c0341c662542bb07fbfc2abf79c5` |
| 17 | `def` | [arrayItems](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/arrayitems.md) | 160 | `declaration-track:916c88c0c8014deb24ab2e6efdfe02883ac6d98f93eba3221bf15953a2f192ff` |
| 18 | `def` | [objectItems](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/objectitems.md) | 172 | `declaration-track:26eb2b36fd9c92956a702f48db073d51438e6df62314bf0324e7cbabeedbce5e` |
| 19 | `def` | [decode](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/decode.md) | 191 | `declaration-track:d88b4cf4fa4652a7ea7f6c781373401204484cc699a9e28572558b32f019afef` |
| 20 | `def` | [asString](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/asstring.md) | 197 | `declaration-track:24a501df9fc53e96086d3b9975ec2f1dfea6b6d6892b7ce278138701fe13a7b7` |
| 21 | `def` | [asNat](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/asnat.md) | 201 | `declaration-track:ae44ea36ea0cdcf7bdc963a7c980c004ce9f695b59059277921be82fc26aa164` |
| 22 | `def` | [asBool](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/asbool.md) | 205 | `declaration-track:3b9b6eb828695fa93e5a3d89f7d8fa07e2f3342048f004e9d3e6e6d99dff103c` |
| 23 | `def` | [asArray](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/asarray.md) | 209 | `declaration-track:812ba85b58514068478b1d2722762d1ea03a519152e0644101c9a138f14ee6e1` |
| 24 | `def` | [asObject](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/asobject.md) | 214 | `declaration-track:8735e59dc5836cb63919fe7a22d8d277029be46c2d8529a3f7cf1bc321dc88de` |
| 25 | `def` | [field](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/field.md) | 219 | `declaration-track:a689443be4bed3b1829465735991965091ac14b9cae96799f6450328ca660739` |
| 26 | `def` | [getString](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/getstring.md) | 223 | `declaration-track:c8fd32683b68e0699d9ca2075650ab9ed33abdd6d6183a859616b208aa53aee6` |
| 27 | `def` | [getNat](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/getnat.md) | 224 | `declaration-track:376793a54f953b0efa47d472f146b566713ab3941fcc367ac221d52761679e37` |
| 28 | `def` | [getArray](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/getarray.md) | 225 | `declaration-track:78e588ff89e5f53f72e5480bf6fd63c78ab73f496ca5a3fdb41f47a84d3ebf55` |
| 29 | `def` | [allSome](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/allsome.md) | 227 | `declaration-track:d6c53376dd5285a21ced5b3dadf503c07733b8bdc1105e1994b9c7b70b35c488` |
| 30 | `def` | [area](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/area.md) | 234 | `declaration-track:40ac93b281443809c2ffb38db8797ac91159d6ed074a9a11295cb86d1f5b77da` |
| 31 | `def` | [byteHex](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/bytehex.md) | 237 | `declaration-track:746b2205d0372754ea7fec84de9b974d15d09cf822995802ab2a55c357af28f4` |
| 32 | `def` | [objects](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/objects.md) | 246 | `declaration-track:9614b6137301d0fd139027d035fa1cacedb128be11f054d2df8021f84eebf360` |
| 33 | `def` | [insertBy](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/insertby.md) | 252 | `declaration-track:bb2c6efbb80b06e62f9dba442ab10ba7c27fbd0324cab124fd45631267c32bdb` |
| 34 | `def` | [sortBy](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/sortby.md) | 257 | `declaration-track:b264eed9e46a4022145e5f045eead311749b50775f211eec1d37f3d634ed5d7b` |
| 35 | `def` | [readSet](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/readset.md) | 261 | `declaration-track:58995b3ece2e21603f96ca5686c20258c73495c30eb2b1b6239ef4221a3e0936` |
| 36 | `def` | [readSets](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/readsets.md) | 269 | `declaration-track:c2af5fae625bfc78b8118affc108a0cba6ae5b055675ed4f21f7cf36fd5cb008` |
| 37 | `def` | [outputs](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/outputs.md) | 277 | `declaration-track:1815fd5e900d9da555c8ca7b504f9f431ab32c01dc4f9085275269d28f1e3ce9` |
| 38 | `def` | [occurrences](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/occurrences.md) | 285 | `declaration-track:5edd408bc4645ff7498c0af13421104dd521ac00c41794b95d277623f93ca06c` |
| 39 | `def` | [planBindings](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/planbindings.md) | 308 | `declaration-track:03e34dd5bed62dff18971112d6cb7a2deb7df2412c06e8cb291c0cc16e11161e` |
| 40 | `def` | [targetLe](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/targetle.md) | 328 | `declaration-track:ddeb82df6fb9594f1e1eb07cc9a72c37f0757e6cce4f678256ede02df3043f70` |
| 41 | `def` | [expectedOutputs](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/expectedoutputs.md) | 333 | `declaration-track:a301ffbde50da72d02b31492e4b11c517dae37d3c1c9458f0d3a7441ad4369f1` |
| 42 | `def` | [actionCosts](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/actioncosts.md) | 356 | `declaration-track:986c192fc733269a4d5c30cfe0e9af5a1b0c005a4764f603c14523b867a88fe9` |
| 43 | `def` | [shardIndices](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/shardindices.md) | 360 | `declaration-track:f686c3b19fdb3866cf11885af9ceec143cdd6b45afb43b6fdad2c1f12c615daa` |
| 44 | `def` | [shardTotals](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/shardtotals.md) | 364 | `declaration-track:78a8c64daba0ac381e6feb0ef0a3c53c3bd34fb0c3d803483014bc2a46c8c7e6` |
| 45 | `def` | [shardProfile](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/shardprofile.md) | 368 | `declaration-track:2d3dbfbdf1b7561077bb61d4aff185448d0dc61c862e8d1cf4b704205006dd1d` |
| 46 | `def` | [exactKeys](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/exactkeys.md) | 372 | `declaration-track:ca4d0822aba9dd2f0e7c64d378bef16fe4d5dead951e155a72c170e61df812b5` |
| 47 | `def` | [lowerHex](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/lowerhex.md) | 378 | `declaration-track:750a1a78c2778c88b6c480d6203048695382d2e3fad5724b7cda5f648e1aa2b6` |
| 48 | `def` | [certificateGrammar](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/certificategrammar.md) | 382 | `declaration-track:19e95d07da5d3df230a11375ab382bce58661ba76fd73b369032a4ec4f30fad3` |
| 49 | `def` | [planInventories](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/planinventories.md) | 401 | `declaration-track:3181c179bc174fe2ad9a0f5ea01078b2a079e88cf0e835860297c6805e896e8a` |
| 50 | `def` | [inventoryMatches](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/inventorymatches.md) | 407 | `declaration-track:9d9d0a29cca681e125f89ec2b1559a1d4d243c3deeb2f42f691bb8df47c53ecd` |
| 51 | `def` | [inventoryCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/inventorycheck.md) | 423 | `declaration-track:e620666121c1b23b8029402c411edff7d1c6cc396dde34636af96b9af11b7f15` |
| 52 | `def` | [retentionCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/retentioncheck.md) | 434 | `declaration-track:46a4cb5430710e6e71a007b4581fd96c6e6bc844018c9137e7e21e4b29560cbe` |
| 53 | `structure` | [ReplayData](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/replaydata.md) | 449 | `declaration-track:57641fd9b14b91eeaac44b77edcef8d11a4697e4baa66790f544576c8d901e96` |
| 54 | `def` | [contextCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/contextcheck.md) | 465 | `declaration-track:1a818b3a6071d3810d6ddd40007adbfbd236beee14c6087655fcb6c01d4ee164` |
| 55 | `def` | [project](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/project.md) | 478 | `declaration-track:8debe33088693b98c8f76a8aa8297e45760fe59837ebc290d62fe2f1ae581f70` |
| 56 | `def` | [ReplayData.accepts](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/replaydata-accepts.md) | 494 | `declaration-track:91ff19674e37b98a1a70e4953d643d784f531a26c57c513be0a62eabbead250d` |
| 57 | `def` | [guardCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/guardcheck.md) | 498 | `declaration-track:124f0312ec029886840ea7f6e3204d9809e84d2dac60fc43f278bdf37265edc5` |
| 58 | `def` | [rawCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/rawcheck.md) | 503 | `declaration-track:8ae489f3c06b2b8aacf4cf2d1aedd9422b47669aa95b5c9b28b3e639ecbc8ef7` |
| 59 | `theorem` | [rawCheck_spec](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/rawcheck-spec.md) | 508 | `result-track:832bfbffd9aa27d8d426897f442690959363b26c3f3561562867292296d57d37` |
| 60 | `theorem` | [rawCheck_projection_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/rawcheck-projection-exact.md) | 532 | `result-track:7ae6637628f78fffd01a6f3c7879a9c56277ca89c16923264ec32a6ab8317f4f` |
| 61 | `theorem` | [rawCheck_literal_decode](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/rawcheck-literal-decode.md) | 539 | `result-track:7dc7bd7db35086504a4dd40a96a48602d0cc67db428d0e762aa1da62c83ef471` |
| 62 | `theorem` | [rawCheck_inventory_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/rawcheck-inventory-exact.md) | 549 | `result-track:63a7f9204e18ce45307279fb7356bb681b69a94b4b1485b70cdcf86dcc5c0ee6` |
| 63 | `theorem` | [decoded_reification_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/decoded-reification-exact.md) | 559 | `result-track:c3f156c3925c6a716459c74aee5de61d41fd4bc8a6afc334ed5d896ed8db7915` |
| 64 | `theorem` | [decoded_objects_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/decoded-objects-exact.md) | 563 | `result-track:3adbed9c567feef64e07b4e205ca2299c3231e469f5dde0e6e2ae696ea9d006f` |
| 65 | `theorem` | [decoded_readSets_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/decoded-readsets-exact.md) | 567 | `result-track:d2d811a18f109fae9844e951c9643dc610dbfbec452862733b64948be8270b9e` |
| 66 | `theorem` | [decoded_occurrences_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/decoded-occurrences-exact.md) | 571 | `result-track:e4f1df162f56d664a63eac669c381075536addc868587393726c6a5ab67e213f` |
| 67 | `theorem` | [decoded_outputs_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/decoded-outputs-exact.md) | 575 | `result-track:02b1fd9ae1563ebbabc35eb6309d6e19f4974c2f434a6b797cb2b6ab7ef13677` |
| 68 | `theorem` | [natural_is_not_boolean](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/natural-is-not-boolean.md) | 579 | `result-track:65b92ed6d7106c1cb5b7ea01fbfc10143df48c310fa99ae0488e52d8aa62e1bd` |
| 69 | `theorem` | [same_raw_unique_decode](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/same-raw-unique-decode.md) | 581 | `result-track:8e6069c613b0ebac985847eb5da1eef5cc0d2cb96ae82bfef4ed7ccacdf21a6e` |
| 70 | `theorem` | [array_order_and_multiplicity](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/array-order-and-multiplicity.md) | 585 | `result-track:ac0c81baceacddcd546df1da37bdedb46b0c000025f22069e033b1e4648ea0e1` |
| 71 | `theorem` | [object_order_and_multiplicity](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/object-order-and-multiplicity.md) | 590 | `result-track:391adb28e05b0257f2e693afda51169c1dc61b46eaf4672fc8d07c1d663a2155` |
| 72 | `theorem` | [string_codepoints_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/string-codepoints-exact.md) | 596 | `result-track:1f723e4c2021ca5ade6f19a8f01da9a1ce0851932282fbc04778f0683db96724` |
| 73 | `def` | [ascii](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/ascii.md) | 598 | `declaration-track:669dac62013f17f9e21c919faf98d9f47bdce69680a60b69a541adb7345b0a44` |
| 74 | `theorem` | [duplicate_decoded_key_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/duplicate-decoded-key-rejected.md) | 600 | `result-track:861e64f952714c5b123599d0a490a4342b8d021b20a22d2ad8702645a63a5666` |
| 75 | `theorem` | [array_trailing_comma_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/array-trailing-comma-rejected.md) | 603 | `result-track:25a2b1195e1cdb057218883e67672ddba21059161781f3d42c6a05c506eb9ee5` |
| 76 | `theorem` | [object_trailing_comma_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/object-trailing-comma-rejected.md) | 605 | `result-track:645a96f85fe4aa932a02f2ed3567c2e0e5133c01728d69d920cb1f4418059402` |
| 77 | `theorem` | [leading_zero_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/leading-zero-rejected.md) | 607 | `result-track:b0b554c34b815e0b761562b91b5d04b3558d9269784e3f74079303b129394fee` |
| 78 | `theorem` | [u64_overflow_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/u64-overflow-rejected.md) | 609 | `result-track:3ef6fbd2343c59635a8eb9867bf4d64af87307afc409a3a29c903b68e7420d24` |
| 79 | `theorem` | [u64_maximum_decodes](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/u64-maximum-decodes.md) | 611 | `result-track:6c82ff506215ef1f557cb54725fd46a7a3baefba98fb417db42d7624bcc3fe2e` |
| 80 | `theorem` | [boolean_natural_distinct](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/boolean-natural-distinct.md) | 614 | `result-track:7c65b2ccc1ce801e0916b77dccfd36e9c50b018a8fb5d953dd711312c35edd54` |
| 81 | `theorem` | [utf8_overlong_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/utf8-overlong-rejected.md) | 616 | `result-track:d7f697f95fd895dc3ba562365b52acc4e30e1436885e91a9e1d6235b9d2b2287` |
| 82 | `theorem` | [utf8_surrogate_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/utf8-surrogate-rejected.md) | 618 | `result-track:bc4fcaf6f0bf68d4e724e3f52178d5b95f76f2c4056882b7c038d8112d0b4cc8` |
| 83 | `theorem` | [lone_escape_surrogate_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/lone-escape-surrogate-rejected.md) | 620 | `result-track:f9f5ad7b81a40082a8437a2fc67523c53016a67fd6ded56013ebf829d02ed7ac` |
| 84 | `theorem` | [surrogate_pair_decodes](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/surrogate-pair-decodes.md) | 622 | `result-track:f06ab32d8d8a07506630f551937618d53b5baa86e220f83dd984ace6eac17ae6` |
| 85 | `theorem` | [utf8_non_bmp_decodes](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/utf8-non-bmp-decodes.md) | 625 | `result-track:efc6ee26c74ae53efdcb13ed9a6587613d0ab6a636a8ad627da424c7006c55e5` |
| 86 | `theorem` | [unicode_spelling_not_normalized](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/unicode-spelling-not-normalized.md) | 628 | `result-track:fd6eb701c813483c07cd124890434961b92b8356b16a6314d2a961e9db6b504c` |
| 87 | `theorem` | [decoded_array_order_multiplicity](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedJsonRecordDecodingHistoricalSourceEdition2.lean/declarations/decoded-array-order-multiplicity.md) | 631 | `result-track:cb0b522512469b12a3a0d3cf3ce983e1f9d8557d428fc90a27e8d7e69bd79799` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b4894b497e0c12f1f30a1af636a35b8abc9b45506357fe0f50f3b88574fb63d5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantb45a1db3ba64dc2a7fb614a83b7af52dc15325569a3daa111f848a8221b5f82b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variantb45a1db3ba64dc2a7fb614a83b7af52dc15325569a3daa111f848a8221b5f82b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
