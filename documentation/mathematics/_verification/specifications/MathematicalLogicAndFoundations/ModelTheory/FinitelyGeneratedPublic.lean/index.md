# Verification target: Finitely Generated Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b83fd47d21c184af54a98cf4ab763d5b8b308167",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Variantf6a11e72b094a0bae53d1cbb9b36a1b23bd1a20fa8c6df236ca8f8b714fb9939.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b83fd47d21c184af54a98cf4ab763d5b8b308167`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Variantf6a11e72b094a0bae53d1cbb9b36a1b23bd1a20fa8c6df236ca8f8b714fb9939.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Variantf6a11e72b094a0bae53d1cbb9b36a1b23bd1a20fa8c6df236ca8f8b714fb9939.lean.json)

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
| 1 | `def` | [FG](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/fg-source-edition-2.md) | 48 | `declaration-track:be68e3529cb3b7c70d4d68576b9a4ff581928a96277706ad8a4bc66f48aabe07` |
| 2 | `theorem` | [fg_def](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/fg-def.md) | 51 | `result-track:1d0488e82428988bb60b48a01c85c6bf6d08b07cb6f86e6c063cb58e551a54f1` |
| 3 | `theorem` | [fg_iff_exists_fin_generating_family](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/fg-iff-exists-fin-generating-family.md) | 57 | `result-track:656f5ac7bf728b38a9cc1827107ec6ea9198cf25efd3de69829e88c5126e12b9` |
| 4 | `theorem` | [fg_bot](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/fg-bot.md) | 67 | `result-track:ddf623a4884c0ca2e51c0386a3d10610f763441a83ac5052ef79992d370290e3` |
| 5 | `instance` | [instInhabited_fg](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/instinhabited-fg.md) | 70 | `declaration-track:48c76ab8602a6bd606efcb43dcd7b84737d76c81053bf2cf479d163b2925d966` |
| 6 | `theorem` | [fg_closure](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/fg-closure.md) | 72 | `result-track:e70da920633e28cc6f0fb6f1381d0a04a99128a5eef5ae5fa2bfacf203e14fcf` |
| 7 | `theorem` | [fg_closure_singleton](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/fg-closure-singleton.md) | 75 | `result-track:c72b17b25ebfe55a5652d34a77d71801a6cf89906d1aa85db6362415f6eae6db` |
| 8 | `theorem` | [FG.sup](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/fg-sup.md) | 78 | `result-track:0652f159abc3e7bc6fc70d986fb54a62edbdb774a1699f73e2a14155d7850302` |
| 9 | `theorem` | [FG.map](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/fg-map.md) | 83 | `result-track:8b5e69cce3d8e8519391ef8941d456bbf923165c9332ce622638439ffc31dc26` |
| 10 | `theorem` | [FG.of_map_embedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/fg-of-map-embedding.md) | 88 | `result-track:679bbcf25b0f5e0927525adcc7880313daf969da745162a219fe391ece9d3761` |
| 11 | `theorem` | [FG.of_finite](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/fg-of-finite.md) | 102 | `result-track:09b0d3b8726691d381ca2474d13d430356379b8bcf60511c431904fe4151a421` |
| 12 | `theorem` | [FG.finite](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/fg-finite.md) | 105 | `result-track:a8383daf0d5b12043d4943b9f5a2be8dd86b9bb629e8f991d0fde4eba8e0e01f` |
| 13 | `theorem` | [fg_iff_finite](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/fg-iff-finite.md) | 111 | `result-track:8095fd087a438f91e44585be515408ea5fc773f9807516d4c567bcc1a7242238` |
| 14 | `def` | [CG](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/cg.md) | 116 | `declaration-track:4679d9467072488c971d96d82af480d9bc145ffcfe9b3fb7f4dab254738ff29b` |
| 15 | `theorem` | [cg_def](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/cg-def-source-edition-2.md) | 119 | `result-track:f497dfaee216b1d709ed8e67ab9f7c90f20f617d00a6746e530824a99218870b` |
| 16 | `theorem` | [FG.cg](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/fg-cg-source-edition-2.md) | 122 | `result-track:d4fef79b69aa75756dd0ceeab8d9da13cde4ae6a1f945d2829c330d920fd784e` |
| 17 | `theorem` | [cg_iff_empty_or_exists_nat_generating_family](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/cg-iff-empty-or-exists-nat-generating-family.md) | 126 | `result-track:a59911a558bf042bdb549431bca4b503c00b39747b9a688d59e573079633f07b` |
| 18 | `theorem` | [cg_bot](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/cg-bot.md) | 147 | `result-track:439c2e428a525402fc305224eb24809ba8fcc9cc6b6d14217d8c915547816448` |
| 19 | `theorem` | [cg_closure](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/cg-closure.md) | 150 | `result-track:ec7c333e83086d8444d18672df471bca662b138b993d5a1381b14e9268cab3d7` |
| 20 | `theorem` | [cg_closure_singleton](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/cg-closure-singleton.md) | 153 | `result-track:da3fef738533ab10404eb53e63a94d32d8f552b92f45a5f25a73cb87d2e5fa0d` |
| 21 | `theorem` | [CG.sup](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/cg-sup.md) | 156 | `result-track:20373f6e6a4b04ce7957d9298ecf8ed9711c1ba00f4942b1fb0594133df6d5c1` |
| 22 | `theorem` | [CG.map](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/cg-map.md) | 161 | `result-track:62f7cb33cbe18d506586db6b3711959a8395b68f3212759e990b864eb67143a0` |
| 23 | `theorem` | [CG.of_map_embedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/cg-of-map-embedding.md) | 166 | `result-track:3a5440f0ad99c1a8ca43860c4c305425aac3ab0e25d6e39f2ce82eaa1cbb52e6` |
| 24 | `theorem` | [cg_iff_countable](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/cg-iff-countable.md) | 179 | `result-track:1b5c5afc9d5075c0053973303a24764e688309bb4aa835c7aab8bb71aa795286` |
| 25 | `theorem` | [cg_of_countable](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/cg-of-countable-source-edition-2.md) | 185 | `result-track:fedab1aaa3e5064cb5fd52ea8ba797710b5dc13dc87c50b5f723d6a2be8f256e` |
| 26 | `class` | [FG](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/fg.md) | 197 | `declaration-track:5d23f33a3844ea3c4283172fe353592ddb6443c7f815dde65c92d9ffcf32369c` |
| 27 | `class` | [CG](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/cg-source-edition-2.md) | 201 | `declaration-track:64b483bfbfa2151f4f3d689ca97a7dbf6b21948d8461904820930c6b80e8ada1` |
| 28 | `theorem` | [fg_def](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/fg-def-source-edition-2.md) | 206 | `result-track:44274b3e4257a1d337c819940b867a13e3c1bdf8c1ede2917b64bf215c7b2851` |
| 29 | `theorem` | [fg_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/fg-iff.md) | 210 | `result-track:8b073d6f82740400bbbf445a914748e01403df5922cd8c9bd84ed2e71c97871d` |
| 30 | `theorem` | [FG.range](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/fg-range.md) | 213 | `result-track:812d18939092061fa2d148a2703d63fbe1f1ce6089a7305897ad56c4889cc378` |
| 31 | `theorem` | [FG.map_of_surjective](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/fg-map-of-surjective.md) | 217 | `result-track:964f33a92582dc38519ff7a6693efa87b637a0dcbc4d0073f252837e24b4d652` |
| 32 | `theorem` | [FG.countable_hom](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/fg-countable-hom.md) | 223 | `result-track:a620cbee1a86ec237909b46bcc4150d8599719615c3a7b1087a02df14b638a2b` |
| 33 | `instance` | [FG.instCountable_hom](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/fg-instcountable-hom.md) | 236 | `declaration-track:ffeba7e1426970dff0caa3043d30ad8edbc05227e3288a765400c2b5149ceea2` |
| 34 | `theorem` | [FG.countable_embedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/fg-countable-embedding.md) | 240 | `result-track:dfacdad4f8ec2f1679ae4c88e9f969a8368284840d8ac84cc338210aa92f935e` |
| 35 | `instance` | [Fg.instCountable_embedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/fg-instcountable-embedding.md) | 244 | `declaration-track:2b155fb8e8d205b40a75a45012ef419a2bbd20f9819e4e0a6c4099aaf9cf44bb` |
| 36 | `theorem` | [FG.of_finite](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/fg-of-finite-source-edition-2.md) | 248 | `result-track:16c214b149b96951175ce3d7ec4d29b63a4d4e9976861e1d0374956162e3e336` |
| 37 | `theorem` | [FG.finite](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/fg-finite-source-edition-2.md) | 251 | `result-track:dbe4e1267a7c2c817a33306565611e478bd72bf2ccc18994067f72f6aee7f7a3` |
| 38 | `theorem` | [fg_iff_finite](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/fg-iff-finite-source-edition-2.md) | 254 | `result-track:f48099ca0a8136ff3be1798d646fc01e1a3005e5831ea3d086be89de9ebea5c3` |
| 39 | `theorem` | [cg_def](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/cg-def.md) | 257 | `result-track:f32aa6ef76f5a04c84128a5963667e7a79e322d413ee96d54d603414bcc39e30` |
| 40 | `theorem` | [cg_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/cg-iff.md) | 261 | `result-track:cc44dade61c2a94fa54a61ff13c3f7ea9824d59ad7736708b0f23db6cbf74eaf` |
| 41 | `theorem` | [CG.range](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/cg-range.md) | 264 | `result-track:5ee1c1c87b7d43b903ad329e4e8873fad7bdb0102b861a9ca4f80afba6232dd3` |
| 42 | `theorem` | [CG.map_of_surjective](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/cg-map-of-surjective.md) | 268 | `result-track:a9ce7e270884dc351f9768a9b6cfbbbc2a3ed0e03406ea4fcf94c66a6c7adfb9` |
| 43 | `theorem` | [cg_iff_countable](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/cg-iff-countable-source-edition-2.md) | 274 | `result-track:cadecb68fb4ff6a16af224f89217b98ac02649a8bca7f2e7296531d3d57ebc7b` |
| 44 | `theorem` | [cg_of_countable](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/cg-of-countable.md) | 277 | `result-track:8570117d5d068ba0854102834d0a11a9f4425ba36ff62bc3728bf72d05267029` |
| 45 | `theorem` | [FG.cg](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/fg-cg.md) | 280 | `result-track:5c76c9ae8c476184f62526137b889ad386e784152cb2c6c02434bbdd446e2469` |
| 46 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/instance.md) | 283 | `declaration-track:68da2153ed47049475740cbce1f648eb5b984dd5ad1cfee5d992f7a664e517fa` |
| 47 | `theorem` | [Equiv.fg_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/equiv-fg-iff.md) | 288 | `result-track:9ab2e1920a6b963c33120db60b79cd499bc5468201f08183dfe6d5c53f628cb3` |
| 48 | `theorem` | [Substructure.fg_iff_structure_fg](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/substructure-fg-iff-structure-fg.md) | 293 | `result-track:99fbad200f10ecc7916096f1cdc2d312b6ed20a548c30f513cac04dd103fe918` |
| 49 | `theorem` | [Equiv.cg_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/equiv-cg-iff.md) | 302 | `result-track:ce63a090419a4353f827ce266c371e594972d1c8611281dd113109d614dd9038` |
| 50 | `theorem` | [Substructure.cg_iff_structure_cg](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/substructure-cg-iff-structure-cg.md) | 307 | `result-track:e94a6253290520f6e03e5c547f34e34604c960346e3cf10f87667f88d2ce990c` |
| 51 | `theorem` | [Substructure.countable_fg_substructures_of_countable](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/substructure-countable-fg-substructures-of-countable.md) | 316 | `result-track:2d0466408b1cbb6eb958c0caabdff65b1bff1d7b8b0d3bde4e1ab47bc89b9c86` |
| 52 | `instance` | [Substructure.instCountable_fg_substructures_of_countable](../../../../../MathematicalLogicAndFoundations/ModelTheory/FinitelyGeneratedPublic.lean/declarations/substructure-instcountable-fg-substructures-of-countable.md) | 327 | `declaration-track:f0abad973fec8ef787d55fc239b5c98094c818637acaa505a57fff288d49f419` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8a8355ec58151179de45e4c9cb5a15b5a7394a407a5203bc751c4ba00286e5cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Variantf6a11e72b094a0bae53d1cbb9b36a1b23bd1a20fa8c6df236ca8f8b714fb9939.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Variantf6a11e72b094a0bae53d1cbb9b36a1b23bd1a20fa8c6df236ca8f8b714fb9939.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
