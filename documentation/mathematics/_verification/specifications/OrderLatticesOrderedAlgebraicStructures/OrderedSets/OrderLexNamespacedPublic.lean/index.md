# Verification target: Order Lex Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4ca914b0e603d15057f221b8719a09951ef433d",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variant5fab8136a1f6fa383c9146607e0404fdd09b6e0b2de02016a230a9d98e9d2ad3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4ca914b0e603d15057f221b8719a09951ef433d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variant5fab8136a1f6fa383c9146607e0404fdd09b6e0b2de02016a230a9d98e9d2ad3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variant5fab8136a1f6fa383c9146607e0404fdd09b6e0b2de02016a230a9d98e9d2ad3.lean.json)

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
| 1 | `def` | [Lex](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/lex.md) | 55 | `declaration-track:62ef615f3c735c8dc5ee2f581d51ad1f68f103a5361b6fc25957b46a5a2354ad` |
| 2 | `def` | [toLex](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/tolex.md) | 60 | `declaration-track:fc2769d55f841c706a7fd2157d7cd3c065eface7a92004a0470c682fe825e50a` |
| 3 | `def` | [ofLex](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/oflex.md) | 65 | `declaration-track:b9e51fb1b0228ee92876400fad8fb884415218e5fa0bc42f7d3bf32705e57780` |
| 4 | `theorem` | [toLex_symm_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/tolex-symm-eq.md) | 69 | `result-track:c50aac3f75d4d0a12c2b6adc87ea419055ae975ab8ca7773d6c12c4a5236da73` |
| 5 | `theorem` | [ofLex_symm_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/oflex-symm-eq.md) | 73 | `result-track:553bf65bccc315d123e9c03cab0b25b9daa323bd834a6eb744973bead7f09304` |
| 6 | `theorem` | [toLex_ofLex](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/tolex-oflex.md) | 77 | `result-track:1e7fe388a22834b62583ebc8b78c960dfc03ae847cf47994c73d344b34167f3e` |
| 7 | `theorem` | [ofLex_toLex](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/oflex-tolex.md) | 81 | `result-track:2e0f06a449dfdd83579a58d7c312f131f6824ddde909dbf1f4b3e5c9045fa9c6` |
| 8 | `theorem` | [toLex_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/tolex-inj.md) | 84 | `result-track:02622acc7194c97d8cf082468506c2a4e0b3e03983c1a0d2c2b316fc2de54498` |
| 9 | `theorem` | [ofLex_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/oflex-inj.md) | 86 | `result-track:72c4cf726f4c9035a944731d15ecabefaddbeb0d7f77035af6843052c2369f45` |
| 10 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/instance-source-edition-15.md) | 88 | `declaration-track:e8a449db820c29b0921fce504fbf0af1bfba34cc419e70e2f9bbd5c287e0f09b` |
| 11 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 91 | `declaration-track:950cb71e06b0f26d0d4d57a5847572df1766c5bfdbd189b8185d115d570caf59` |
| 12 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 92 | `declaration-track:91176221ce88196ac1de7e5fcf4dc04f8caf5b34d1c9ac71b3cbc4254fce3107` |
| 13 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 94 | `declaration-track:8e19afc0677cd778db63bbe01750a27d0e3477f6f19897380693038309922b6f` |
| 14 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 95 | `declaration-track:55d86cd6cf6e442227b50086e6cb4fd5e6f0ed65b20711df774e81e15ee2a17d` |
| 15 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/instance.md) | 96 | `declaration-track:186300d33dc8665c4b51f4450ffd8f97f4b1867ee4387506668573cb7363e37d` |
| 16 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 97 | `declaration-track:8f321632fe02c1e8f00362060224395dcc941d9a85a3d64f75ee2c64b33abdfb` |
| 17 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 99 | `declaration-track:232ac0554c4d9397b0d36bfdb5983f02afa0c67a439dd2f543984192e4a54a7b` |
| 18 | `def` | [Lex.rec](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/lex-rec.md) | 104 | `declaration-track:5dc16e02178cd7a5b5026eea1c06562e59251fd6f82e56a4eebdea8152f487a4` |
| 19 | `lemma` | [Lex.forall](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/lex-forall.md) | 106 | `result-track:e70db2b5f83cdb0f82051fe241be1e692f23f2b60138d9f02e24fe3c9c87634a` |
| 20 | `lemma` | [Lex.exists](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/lex-exists.md) | 107 | `result-track:59e6c9171a61896e8a524428f6bdd31774222e8a7a837ef00fb84f10c038e317` |
| 21 | `def` | [Colex](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/colex.md) | 113 | `declaration-track:90169b3581b9fb34d0351a2e0794dc7b48ac2f5624c405c24fbd35c30853d9af` |
| 22 | `def` | [toColex](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/tocolex.md) | 118 | `declaration-track:29f1063a8813e721952a2b11ddcbd8359bdf1a35d3a85ab42fb464d0767cb85f` |
| 23 | `def` | [ofColex](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/ofcolex.md) | 123 | `declaration-track:6dcbcd7f2bcb60f7e7939cfc35baea8fe84a9e6e619113ad7b7c6c16659da0b2` |
| 24 | `theorem` | [toColex_symm_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/tocolex-symm-eq.md) | 127 | `result-track:bd0bf35a2d0d8f4fed5af2111c67e811c302aac79b1ed3c731703cc2636e4df2` |
| 25 | `theorem` | [ofColex_symm_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/ofcolex-symm-eq.md) | 131 | `result-track:3b62dfa667d388f4f93c35c9fcea4a8dccb849d28964db580be95ef450bf3e9b` |
| 26 | `theorem` | [toColex_ofColex](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/tocolex-ofcolex.md) | 135 | `result-track:998f80745289cd2457ac3bd7f0a888485d69cc13141299d100ad74fb4ac15fab` |
| 27 | `theorem` | [ofColex_toColex](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/ofcolex-tocolex.md) | 139 | `result-track:236ee52f14520499e451645c47baa2fdd0c0cd70acbf0b11480fcaebb28cfeab` |
| 28 | `theorem` | [toColex_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/tocolex-inj.md) | 142 | `result-track:2fbb4e34199224ffa00975f80aae5ab6b587a46dbd131ec7771982ea81b6fd99` |
| 29 | `theorem` | [ofColex_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/ofcolex-inj.md) | 144 | `result-track:6aea98c89d197c1c4ece89736566c349f4a457afc2ac3872a440246751eb9263` |
| 30 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 146 | `declaration-track:7ea521160b1e1a975ed01adc7ff9fa919d88aa041b5879cea3c14afe64e46936` |
| 31 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 149 | `declaration-track:9f9c65d7b441dc78fbaef2199b1bf79711162223a35ad9ba816e44ca8f38b895` |
| 32 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 150 | `declaration-track:b086e16bbe6c682f9cb6bfb3d274f8345fccaa147dab17645d55f4738f1a55b1` |
| 33 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 152 | `declaration-track:4d2c6cff40fdfc1a82d70173013a4e9f997c6e0bf21b2f11591e7f6b26084949` |
| 34 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 153 | `declaration-track:d416218aac7b059999ec3aa59dd84a7f510988b16c7a3c3c665c48eba541858f` |
| 35 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 154 | `declaration-track:4f66d0db712be521ef2a8ec0b2b80eccf6548b52282606fec7abfec55c996109` |
| 36 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 155 | `declaration-track:d647c968c620bf655bee4d0cef9b50b27c12fefac196d1e911a6e54a6b0e05a8` |
| 37 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/instance-source-edition-16.md) | 157 | `declaration-track:fdfa30b35151d2e4cc0c40530e94630254da1ea236b69dd46ce31b74d760a479` |
| 38 | `def` | [Colex.rec](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/colex-rec.md) | 162 | `declaration-track:5817b90385105a74ca022c73cc5efe4d2303cb189e8a4ee5caddac9bfcd92a60` |
| 39 | `lemma` | [Colex.forall](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/colex-forall.md) | 165 | `result-track:7f36c7f60e30096db3e93b5292a29ba3942f991b4d52da1ccd79c2b7739b5fdf` |
| 40 | `lemma` | [Colex.exists](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLexNamespacedPublic.lean/declarations/colex-exists.md) | 166 | `result-track:b0380892404d1c02bab9786885923616c37219e680cf4b45e906b71a552cf33e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a7c5404501c19ef9e3f17aa8b066e0596ffae99780ecc40f96d5732d6335b56 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variant5fab8136a1f6fa383c9146607e0404fdd09b6e0b2de02016a230a9d98e9d2ad3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variant5fab8136a1f6fa383c9146607e0404fdd09b6e0b2de02016a230a9d98e9d2ad3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
