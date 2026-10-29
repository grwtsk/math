# Verification target: Bounded Lattice Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e663732895f971d05403d0edf6ffdbce32644704",
  "lexical_observation_count": 140,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoundedLattice/Variant93799baabc48fc7adcef51aaa71cc62a82882dda252a484117647a6db960c533.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e663732895f971d05403d0edf6ffdbce32644704`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoundedLattice/Variant93799baabc48fc7adcef51aaa71cc62a82882dda252a484117647a6db960c533.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoundedLattice/Variant93799baabc48fc7adcef51aaa71cc62a82882dda252a484117647a6db960c533.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Hom.Bounded` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SymmDiff` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SupBotHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/supbothom.md) | 49 | `declaration-track:cfc1469fe5e8b3cc11cea21a2b8d41872418ab28eb4207a91ca04120e50feca5` |
| 2 | `structure` | [InfTopHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/inftophom.md) | 56 | `declaration-track:6cb90daa608cefb5e8e6982ce979cb277c634dea6891c2388a4afc8f250a76f8` |
| 3 | `structure` | [BoundedLatticeHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/boundedlatticehom.md) | 63 | `declaration-track:f5dcca7575f32550e12201121e9b31a3d597f00bef7960f5611335ac71a9cea3` |
| 4 | `class` | [SupBotHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/supbothomclass.md) | 84 | `declaration-track:90c5dba24498771ff0fb14552fd5d4f9c6910057e4be7054f0080fc04047fd5f` |
| 5 | `class` | [InfTopHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/inftophomclass.md) | 92 | `declaration-track:3e40499bedaa3de0fe4366da17df241c1a107eb6e4cff45ee898d3a69116a25a` |
| 6 | `class` | [BoundedLatticeHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/boundedlatticehomclass.md) | 100 | `declaration-track:081aa8ed52bebedae1c5afdeda7d9d94a6554eb7f44fcb8e86ac0329286ae8df` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/instance-source-edition-18.md) | 115 | `declaration-track:a2aa700092f8dc39138e6d42e8f3e8e96192edcd664beeae09c5815e61eff581` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/instance-source-edition-16.md) | 120 | `declaration-track:86ba2e9da4a167d6ac9bd1a4b6737266a262352253a21f6784a6f4764da4a3e1` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/instance-source-edition-3.md) | 125 | `declaration-track:1896cccb57470e95ee0eee5fd26f41f481fa3cb935c01fd69bb87e23922c9430` |
| 10 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/instance-source-edition-11.md) | 131 | `declaration-track:4b1ffcf9808ae1ec7e3fedf14e2c695b8d340557fe1693eb1078a28ce9f6fad7` |
| 11 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/instance-source-edition-23.md) | 137 | `declaration-track:ebea0659bbfb74cf6b2c19d3992e9f1cc83bf84f8e2dc516df7928303732fa30` |
| 12 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/instance-source-edition-5.md) | 149 | `declaration-track:2831526e5a173e08bcb2213d8161351fe9172aedd309fe7d819881355a6d622c` |
| 13 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/instance-source-edition-2.md) | 154 | `declaration-track:1625160bb854f67e1069e13b3a94301a49ee9e2a1e267fdcc64be6e0576193e6` |
| 14 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/instance-source-edition-13.md) | 159 | `declaration-track:6c1bdbb010f6128cf953f9ac43e9518d49d86482aa219d0a72c459a7bc1fa123` |
| 15 | `theorem` | [Disjoint.map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/disjoint-map.md) | 170 | `result-track:d6d38ea2b68e9622cc01f954187d061109ff36704ef75d60f02d154f1de5587c` |
| 16 | `theorem` | [Codisjoint.map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/codisjoint-map.md) | 174 | `result-track:05ce0232f14c5de2e480d101d6302550cdfab8017993ddb0f5e12335edd41b87` |
| 17 | `theorem` | [IsCompl.map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/iscompl-map.md) | 178 | `result-track:4df1a2d83be0bed5753f280ac4d162fa9627e01015a1626ea21ee1ea4ed5dd18` |
| 18 | `theorem` | [map_compl'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/map-compl.md) | 190 | `result-track:4cfaf2b255ea9472a688c3e2152cf93b73521fa6eed3b5321dd98a01db54a0ae` |
| 19 | `theorem` | [map_sdiff'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/map-sdiff.md) | 194 | `result-track:42fe5c3a363c988ed54841b64c0dae6689e1470a346eb4f3dabece4e541dc0e2` |
| 20 | `theorem` | [map_symmDiff'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/map-symmdiff.md) | 199 | `result-track:e37e3c11b31d760ec532f88c76ad180280abc5196567e2cae3ad8ec0f2097c94` |
| 21 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/instance-source-edition-17.md) | 206 | `declaration-track:8ee2c659852ea84358170c3ec1277868bd6bf49c0bc88cc524a1b6a3e44737d3` |
| 22 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/instance-source-edition-6.md) | 209 | `declaration-track:35e0d589d0961fc1c0a664ab7135eaae46d577fcf545c7bbfdd4d187962a9e5f` |
| 23 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/instance-source-edition-14.md) | 212 | `declaration-track:6ddbbd3c571a3ba71b02507cd96d662bfabfa57d7530f8979e5b3f8b2d1acdce` |
| 24 | `def` | [toBotHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/tobothom.md) | 231 | `declaration-track:0d49ef104b48078bb76753ee1a3303f7abe5519f808f29d7fded008418f081cd` |
| 25 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/instance-source-edition-4.md) | 234 | `declaration-track:1f26e21c806112dbff266a61a9bd00d07a139c786f0adc6bbc83507ff86b2918` |
| 26 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/instance.md) | 241 | `declaration-track:1352d47d0d35c1d5206b694cfe5dcf697799c451332e5e2d04b65418cdeebd42` |
| 27 | `lemma` | [toFun_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/tofun-eq-coe.md) | 245 | `result-track:d69323092c5ebb094f3f3278a542cb21ae94c3fb04746e1410af7d4cc10fd426` |
| 28 | `lemma` | [coe_toSupHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/coe-tosuphom.md) | 247 | `result-track:287d1306eafd12578312a89da1f29c2092622058a393fd20244d839309bc8518` |
| 29 | `lemma` | [coe_toBotHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/coe-tobothom.md) | 248 | `result-track:a4d6332fcdc798397d5be9fb68c4e37c6e2fd101c9647779e7fe45ff22b31059` |
| 30 | `lemma` | [coe_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/coe-mk-source-edition-3.md) | 249 | `result-track:962a0b96c56e607cfe62a8a7b32ef4ab7239348a7150d18bb7d8d5d2724ad022` |
| 31 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/ext-source-edition-3.md) | 252 | `result-track:96eb29a54113b8ebca679d47894e44497da15e6ad1f130bcdfd1250f873f1052` |
| 32 | `def` | [copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/copy-source-edition-2.md) | 257 | `declaration-track:96b85b47e15b7b10d50b06c3437bf52deae0e2332e1a6b030195ded6726da75a` |
| 33 | `theorem` | [coe_copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/coe-copy-source-edition-2.md) | 261 | `result-track:8d66144bce6d268575c59804308258374f5156c7c963a8dcaba9de577f2e8f37` |
| 34 | `theorem` | [copy_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/copy-eq.md) | 264 | `result-track:4c612c844c14dd80aa203d4b68e541e9293ab6082883d00c493ce8f71584037b` |
| 35 | `def` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/id.md) | 271 | `declaration-track:4a2de5eb1aeb1448e64b7789a9623794c1e81f03ffb60722c7ae38792fed9574` |
| 36 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/instance-source-edition-22.md) | 274 | `declaration-track:db6ae92686e768e7c6e4453a8ed6dcd41cb0657bb6ba54cd0a61d33b2eda36f7` |
| 37 | `theorem` | [coe_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/coe-id-source-edition-3.md) | 278 | `result-track:c43b7bb83fdf09ba6d968033c48b438c93aa13256e11fa054ec4d4781e7961d4` |
| 38 | `theorem` | [id_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/id-apply.md) | 284 | `result-track:374e8c7cce5561c59061fe24ff3ac09ff75a9aac728185da347464ce6f7dd639` |
| 39 | `def` | [comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/comp-source-edition-3.md) | 288 | `declaration-track:d56d08d36048cca1a3d7bb7a757de8836cbccfd4b0b99ad914a27eb1ef250728` |
| 40 | `theorem` | [coe_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/coe-comp-source-edition-2.md) | 292 | `result-track:572a6abbaf4141d796099c1c5a1fb34e8e7f16ead1f5252b5cafd7249ee8c221` |
| 41 | `theorem` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/comp-apply-source-edition-3.md) | 296 | `result-track:d7694d51011c749a085a57165319e374b1e010162b4677db206c838f1b0264c6` |
| 42 | `theorem` | [comp_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/comp-assoc-source-edition-2.md) | 300 | `result-track:c581b6b04af3da734405753f264aee07be71a836cfd839a23ee34a1f71fd6e9f` |
| 43 | `theorem` | [comp_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/comp-id-source-edition-3.md) | 304 | `result-track:7028222a1a379ae12838120377d535bd7f05a5b1af2898d738f1bcb1beef36ea` |
| 44 | `theorem` | [id_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/id-comp-source-edition-2.md) | 306 | `result-track:96875360cc668a213801d0b6bb8bad505513e3c4fa4392b6efb04000b36cfeb7` |
| 45 | `theorem` | [cancel_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/cancel-right.md) | 309 | `result-track:63e8b31917e6e55acd79cfd3f515b0564b27defe300d48ba732ab11028e533c5` |
| 46 | `theorem` | [cancel_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/cancel-left-source-edition-2.md) | 314 | `result-track:402b080241e11fdcde4d6e7696aa7373b960d92470e6a4ad286875648659c55a` |
| 47 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/instance-source-edition-21.md) | 322 | `declaration-track:d109640ea7da750f8750a3d0c6af89a57974a4c2569fe781dc015627835b3ead` |
| 48 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/instance-source-edition-19.md) | 325 | `declaration-track:ae6fd093cc4aab4bde9a1143a92ee6a5870fbeef16249b587ad60e61b43c5b0a` |
| 49 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/instance-source-edition-15.md) | 328 | `declaration-track:83296980448de77ac1eacf914602eb60333d66e53b523281652a7219e59647bc` |
| 50 | `theorem` | [coe_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/coe-sup.md) | 333 | `result-track:ef4079528a2f7751268832ccba988585307eafb7c65ed8d5de4d41e3d02f8fc3` |
| 51 | `theorem` | [coe_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/coe-bot.md) | 337 | `result-track:bdbbd4c43dcf490f91222f1b0d15aac190cf3b9158eb8241c135de95f7f6af3c` |
| 52 | `theorem` | [sup_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/sup-apply.md) | 341 | `result-track:7279a9905205d23f1b952809bde012b6b3a0598390e733bf843d42fd828b4908` |
| 53 | `theorem` | [bot_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/bot-apply.md) | 345 | `result-track:da9ebc0c2ee996d48ff680e57560d3fe7b8319344fa16e41f0f775b9481feca1` |
| 54 | `def` | [subtypeVal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/subtypeval.md) | 349 | `declaration-track:25204718694e559abf6adb5d368b1b1eccb4577f764f4b6837415d5ae08b6f08` |
| 55 | `lemma` | [subtypeVal_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/subtypeval-apply-source-edition-2.md) | 359 | `result-track:88beedc54f79b0b9d0d1181b96fd4235b616ceb8e138df8774d72994fef1286c` |
| 56 | `lemma` | [subtypeVal_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/subtypeval-coe.md) | 364 | `result-track:12f654ee82fe6ed851fbeb9f827095305e44507f7aad2eaa95c59ffa49011ba0` |
| 57 | `def` | [toTopHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/totophom.md) | 381 | `declaration-track:8c50db2afda3a257e7d35598d74d63394b108e810dc7b1753ff51deee40d0392` |
| 58 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/instance-source-edition-7.md) | 384 | `declaration-track:37e54494a7ac91fc3914e596c276a9084d7612bdda131fcaafce73e8bbc745df` |
| 59 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/instance-source-edition-8.md) | 391 | `declaration-track:39bbf82b62d2b9abe15738a6a740fe721c537cd073b401477a217fd68f57a386` |
| 60 | `theorem` | [toFun_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/tofun-eq-coe-source-edition-3.md) | 395 | `result-track:e83348e33d6847c4150fbf4d72ba121a937627e453490803f4112668875b61d9` |
| 61 | `lemma` | [coe_toInfHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/coe-toinfhom.md) | 397 | `result-track:77789246c259defd10881df0ad0fb94ecabf57b9b6a290032a2658b56b68e2dd` |
| 62 | `lemma` | [coe_toTopHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/coe-totophom.md) | 398 | `result-track:ce9674a53fbd28e5f30e0e0ca99f004c7cd88511bd2603d0443f608b7e423165` |
| 63 | `lemma` | [coe_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/coe-mk-source-edition-2.md) | 399 | `result-track:519a4ff651b3588b5414aec535313364ac7ace8d49c5b8499f4db45f00d37635` |
| 64 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/ext.md) | 402 | `result-track:155e9c70a1d194255c43a398fbf0994504c446f15fdcfd5962940c6f9d891a9d` |
| 65 | `def` | [copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/copy-source-edition-3.md) | 407 | `declaration-track:ad2039384d167272edf01ed1c7986af6eb7211736f6226e1861af01f62619191` |
| 66 | `theorem` | [coe_copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/coe-copy-source-edition-3.md) | 411 | `result-track:b7ba6ec93d4b7a5d9899568272003b62fde5496d8978ecf5af918eff5c8cd7af` |
| 67 | `theorem` | [copy_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/copy-eq-source-edition-3.md) | 414 | `result-track:dbee9c81e03d0d132686e2d5b34434f052834c59df28ea39321ed9841c545916` |
| 68 | `def` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/id-source-edition-3.md) | 421 | `declaration-track:d504f56868f3552c97ad04a6c0bc2ce018113fda19f987b075b4cb31cc9b5b5e` |
| 69 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/instance-source-edition-20.md) | 424 | `declaration-track:ce34d915bf0f15db0e6d83ee4214a0b716373f45b87201ec8a2719b03dd93444` |
| 70 | `theorem` | [coe_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/coe-id-source-edition-2.md) | 428 | `result-track:63c47f373f493c58c9afd2fc1f01228aa6308a4855cbe7941c30f43852ea4dc9` |
| 71 | `theorem` | [id_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/id-apply-source-edition-2.md) | 434 | `result-track:c88318df00aa9db3fcca9a8923008219e57593264419859d5014d8f4092b2088` |
| 72 | `def` | [comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/comp.md) | 438 | `declaration-track:1044fe266cdb34844eadfb9e98717d1535eca1232defd882f17c4886e0a314f4` |
| 73 | `theorem` | [coe_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/coe-comp-source-edition-3.md) | 442 | `result-track:af638137f47301485a950fa6613540443d578c585968b3cf8491c9bfd4936458` |
| 74 | `theorem` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/comp-apply.md) | 446 | `result-track:bcf2cf27dcfea1510f7966c4d276c65a7c13015a3c075c504954953deceeb1b5` |
| 75 | `theorem` | [comp_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/comp-assoc-source-edition-3.md) | 450 | `result-track:ef5e8b9a50a5450647634bb6ac9809817bb89c7288c780904617962570e3206c` |
| 76 | `theorem` | [comp_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/comp-id-source-edition-2.md) | 454 | `result-track:4159cf3ff8c26499b236fa476df72ed7d03752322abc76fb3dc106e637080ab8` |
| 77 | `theorem` | [id_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/id-comp-source-edition-3.md) | 456 | `result-track:9cd856daa0686eadc242955b07a5e7fe031ec28155678e5ec5e12889d5f769ad` |
| 78 | `theorem` | [cancel_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/cancel-right-source-edition-2.md) | 459 | `result-track:82e5114a843a734aac41754f7ade55ab0f869b03c853099ae7a1eb59a58a0416` |
| 79 | `theorem` | [cancel_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/cancel-left-source-edition-3.md) | 464 | `result-track:6e736826705f6c7839a904f28f257112d29ae6e8086600513c3e21edd5943a75` |
| 80 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/instance-source-edition-10.md) | 472 | `declaration-track:3f66f00b5eacf3aa8658cd08eae233f48114377140d4788e11ac426c51b35e01` |
| 81 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/instance-source-edition-12.md) | 475 | `declaration-track:59bcaeddc5c77f728110e1bd74ba5e0741a8e6db9bfeeac15c336fef327d037f` |
| 82 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/instance-source-edition-24.md) | 478 | `declaration-track:f148f95ff89703168d313439073baf9f98dfc2b698a4f2b27d03949133977718` |
| 83 | `theorem` | [coe_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/coe-inf.md) | 483 | `result-track:53e202eb1209a3be1c101c555daa75250625e23e7f7e96ffd4fab7c773809f45` |
| 84 | `theorem` | [coe_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/coe-top.md) | 487 | `result-track:cc3de8e4519ce5b075e26a7bc896e8ad99ced6accf611169dc01e7ba8128e9cf` |
| 85 | `theorem` | [inf_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/inf-apply.md) | 491 | `result-track:afb7ae48782458a3df172bf4640d4fb6e080bde9402081eec860ded7266ca1d3` |
| 86 | `theorem` | [top_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/top-apply.md) | 495 | `result-track:b006c76e2a2487c019de98aa4be4a82bb93461a5f1aaecd1812e67b190c23dac` |
| 87 | `def` | [subtypeVal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/subtypeval-source-edition-3.md) | 499 | `declaration-track:f76807511b169fc013290a4c0199068b3411f795c064f362d8b4c0687fcd5835` |
| 88 | `lemma` | [subtypeVal_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/subtypeval-apply.md) | 509 | `result-track:874b32a9dae85f0588d5319434b2ad44196ba70a4f6f734d03a00fc03b56ac7f` |
| 89 | `lemma` | [subtypeVal_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/subtypeval-coe-source-edition-3.md) | 514 | `result-track:598d06259cf29ca39c131078eff0aff1e1c9aaa755bb371ff5e05c5698ecd852` |
| 90 | `def` | [toSupBotHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/tosupbothom.md) | 528 | `declaration-track:2a15f9df0f19eea10af41b97fedc195059871d25d163c8b02a30af189b17fff4` |
| 91 | `def` | [toInfTopHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/toinftophom.md) | 532 | `declaration-track:53b9e62c1d2d3ff55ebd88cca7e01482ce88b114c72a4cdeca1112fce67cd39b` |
| 92 | `def` | [toBoundedOrderHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/toboundedorderhom.md) | 536 | `declaration-track:675e70c622c59525440f8a5304abff4e2627196289ff2409c5ed6988570e74fe` |
| 93 | `instance` | [instFunLike](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/instfunlike.md) | 539 | `declaration-track:e9c56a70c93324a6151e020a472cfaa233d88688b82220e12668bb991ec7c589` |
| 94 | `instance` | [instBoundedLatticeHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/instboundedlatticehomclass.md) | 543 | `declaration-track:d93596878229ec644e381901fb7a4dc08f04a9b1c4cf86c5adf00ca8d7237ef9` |
| 95 | `lemma` | [toFun_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/tofun-eq-coe-source-edition-2.md) | 549 | `result-track:dfb120520828f254ab2dc169c3f95a041f5905ddf550bf0f6b1004ac31b1615e` |
| 96 | `lemma` | [coe_toLatticeHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/coe-tolatticehom.md) | 551 | `result-track:0716ad05779e9583e90007dd2f4d27cf6e25d4eccaa78b32c863a188ea7c6374` |
| 97 | `lemma` | [coe_toSupBotHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/coe-tosupbothom.md) | 552 | `result-track:683e889d44a462fe18f2d27a5b913b35af62df1ea88cc4610ce70527b4cd96a1` |
| 98 | `lemma` | [coe_toInfTopHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/coe-toinftophom.md) | 553 | `result-track:4489409e47fdf44d7425a820794ea823fe5a6f0d7f4adeb563a5dea5d1695df8` |
| 99 | `lemma` | [coe_toBoundedOrderHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/coe-toboundedorderhom.md) | 554 | `result-track:0c0bcdaec74e4591e5cacace1ac68ecb6cf612995b02e6f4cef2412d51bf74aa` |
| 100 | `lemma` | [coe_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/coe-mk.md) | 555 | `result-track:1a7c84e8cd705bcce6271b201265dc405d2f3254500cffde4de1b68ba3c300fc` |
| 101 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/ext-source-edition-2.md) | 558 | `result-track:92a762642eea7bd3fe05de86bb5dd9a1827c9cf274ff0721a09108cf5da11f94` |
| 102 | `def` | [copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/copy.md) | 563 | `declaration-track:14e02b6b85d1240dcde6713297518c2ab525c1a38c1c55d6cc9401697c086946` |
| 103 | `theorem` | [coe_copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/coe-copy.md) | 567 | `result-track:7de73cec48fe25a547dbab85b48ea0f03eaabd6f2b2d7466f99d3ac77b3d0e21` |
| 104 | `theorem` | [copy_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/copy-eq-source-edition-2.md) | 570 | `result-track:53d29dc1d3f95c993bea979be79b9a5c650e21a2f8cc1711e8a0674050e9e6b9` |
| 105 | `def` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/id-source-edition-2.md) | 576 | `declaration-track:c1130064d8ccfd2f7b6e1b98da421fc410540167dfd8dbf457707c0a9f939b87` |
| 106 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/instance-source-edition-9.md) | 579 | `declaration-track:3a4093dbcb0640426014a685665682e4cb93ed6ab798d6f45109f608de35b776` |
| 107 | `theorem` | [coe_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/coe-id.md) | 583 | `result-track:2174c71d129fdccc071f183560ad0b09a5e65aadea83b2f909d8a1f45daefd76` |
| 108 | `theorem` | [id_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/id-apply-source-edition-3.md) | 589 | `result-track:dc369964b47518870023f42b74f68184b6aa4c448ea50aa24e1b5f78a95d0b54` |
| 109 | `def` | [comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/comp-source-edition-2.md) | 593 | `declaration-track:3c176230abd427e71c1d0ab17607d4b4165d8179baa3b74e473dce56454fa131` |
| 110 | `theorem` | [coe_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/coe-comp.md) | 597 | `result-track:24725a4411d936ae1102febf0f0f007d8154d2dfea8dcef3c4d0beaa21455bdb` |
| 111 | `theorem` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/comp-apply-source-edition-2.md) | 602 | `result-track:c7fd7ccf6ea0baca63e12559e764bef1fec0e13bd0ee21e5adab1a0dc6185f1f` |
| 112 | `theorem` | [coe_comp_lattice_hom'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/coe-comp-lattice-hom-source-edition-2.md) | 608 | `result-track:a3ebf19c517005eee0bf0c38cf945c74d79bea47b88a60d2b1ec0ba5c3dfc579` |
| 113 | `theorem` | [coe_comp_lattice_hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/coe-comp-lattice-hom.md) | 613 | `result-track:0ea2adfd9f4a188cea53ad74c0ab595d2056390f800a2bc6ef55de5755c4e8b7` |
| 114 | `theorem` | [coe_comp_sup_hom'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/coe-comp-sup-hom-source-edition-2.md) | 619 | `result-track:bfa9bfab5d9beb87753ef82cb625513dab23222bbeb9c980116a7b1c90c08ef3` |
| 115 | `theorem` | [coe_comp_sup_hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/coe-comp-sup-hom.md) | 623 | `result-track:50a6e373741d8733bb4993265d42d44088cae00a5f2670fa650812c0e3019b98` |
| 116 | `theorem` | [coe_comp_inf_hom'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/coe-comp-inf-hom.md) | 629 | `result-track:828f6e8b5139289166cda06eff32712e6f296450a4e01901c8109ff3ffae164c` |
| 117 | `theorem` | [coe_comp_inf_hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/coe-comp-inf-hom-source-edition-2.md) | 633 | `result-track:cd26cb4695f865efaeb877df63f9ef895b904c44315af879fb467a016054a33a` |
| 118 | `theorem` | [comp_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/comp-assoc.md) | 638 | `result-track:813f2aa6105282541744a6eba47f647e08c2e1eedd7325ed4cfe69bb75ba05bc` |
| 119 | `theorem` | [comp_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/comp-id.md) | 642 | `result-track:0fe9cd795f2cb4651fbb960d2cbe6b988a521fd3d5808a77bfe085651c1decc2` |
| 120 | `theorem` | [id_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/id-comp.md) | 644 | `result-track:3e95728bd6beb7de6c723b2be04e17a3f6decd4b606bb1d45b015000fec6d8d6` |
| 121 | `theorem` | [cancel_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/cancel-right-source-edition-3.md) | 647 | `result-track:b5418ccba29cc052e73a36a20b6cbeb39aa5ca8bb42e03a55549b764c329beed` |
| 122 | `theorem` | [cancel_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/cancel-left.md) | 653 | `result-track:3235f656b349c7ffcd909ff217082f15969ff3c1b1f5abb00c0dcdb50892c322` |
| 123 | `def` | [subtypeVal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/subtypeval-source-edition-2.md) | 658 | `declaration-track:3a3a1841e4af62b3969e5c1d8a0ddfcd1a0fe745c5d455cd672148e4180f0b08` |
| 124 | `lemma` | [subtypeVal_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/subtypeval-apply-source-edition-3.md) | 668 | `result-track:c6796769a42f6da8efc2ae37ce1bf38c3e0340e4b36a8005d732dff45fa859e4` |
| 125 | `lemma` | [subtypeVal_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/subtypeval-coe-source-edition-2.md) | 674 | `result-track:228af5f156628c5e8607d6be4272d2d80696dda1e45755260af8c5bde3d758f1` |
| 126 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/dual-source-edition-2.md) | 688 | `declaration-track:7b1939a069b2fde7b74082b5ac8281dd71a2303b969dca4fb2a511c1761819a2` |
| 127 | `theorem` | [dual_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/dual-id-source-edition-2.md) | 694 | `result-track:72f03e6064b1fe5d83118b924d7ff9543597bba9dfdbf767a6b8b6c0afdb0f19` |
| 128 | `theorem` | [dual_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/dual-comp-source-edition-2.md) | 697 | `result-track:77ee611dcaf0f7211014709554ec9f6c638231e651a81ef04892549df0e8fe4a` |
| 129 | `theorem` | [symm_dual_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/symm-dual-id.md) | 702 | `result-track:4bfa3383d055dffec274d69f7922e5f1b8d8f338ce012a68390dcb4d0061c2d0` |
| 130 | `theorem` | [symm_dual_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/symm-dual-comp-source-edition-2.md) | 706 | `result-track:3889d75f6f08ce243554a8d87190eeaa6dd52da05c8633c1e8e1f2c705081106` |
| 131 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/dual-source-edition-3.md) | 720 | `declaration-track:abb85378c26a9d7c187b6b890c482b6983204d2f8af05a292184c9872ea60ba5` |
| 132 | `theorem` | [dual_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/dual-id.md) | 727 | `result-track:3229cb640ff2295e1566ccba7c9addcf97e00ce0001dc51bee5f1d6351608b9e` |
| 133 | `theorem` | [dual_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/dual-comp.md) | 731 | `result-track:6bf8d0b0ba6aa9c16b57d70fd1477a3d4ba0a4ad2a9d1ba06b7fb442e0f45128` |
| 134 | `theorem` | [symm_dual_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/symm-dual-id-source-edition-3.md) | 736 | `result-track:b57681f8b521219854685c7d3d73e96154d031e659f8b0e0118f08da42cbda88` |
| 135 | `theorem` | [symm_dual_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/symm-dual-comp.md) | 740 | `result-track:1573042c4e5e043e1da2fde35d295a79e2a4299f490fb67fba46ce9970e5bba9` |
| 136 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/dual.md) | 754 | `declaration-track:0e69c561c99a75fefa1c492fadaf2ece5e662738e06f88baafe8e498b4e845f0` |
| 137 | `theorem` | [dual_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/dual-id-source-edition-3.md) | 761 | `result-track:fc520e99eeb3c16c7414a727bed397010bd51996b529364db82563e446b2c71b` |
| 138 | `theorem` | [dual_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/dual-comp-source-edition-3.md) | 765 | `result-track:7a8c1341b750a8ac816258c2f486255b46fb30390c01550e206c6719eb923042` |
| 139 | `theorem` | [symm_dual_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/symm-dual-id-source-edition-2.md) | 771 | `result-track:ae1fd4cbf54e7302a31e6498f616e1be308507f5217c8178690f3a7e36b7b518` |
| 140 | `theorem` | [symm_dual_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedLatticeNamespaced.lean/declarations/symm-dual-comp-source-edition-3.md) | 776 | `result-track:a85f8b55ef4ea75fd3489f2486f2f27e433b75efc35733bf0eedba87bd5f847c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b3ec0dd2f64dac8dbd8c57af0fc0ae1fefc81a435fdf8ddec033054c408330b5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoundedLattice/Variant93799baabc48fc7adcef51aaa71cc62a82882dda252a484117647a6db960c533.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoundedLattice/Variant93799baabc48fc7adcef51aaa71cc62a82882dda252a484117647a6db960c533.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
