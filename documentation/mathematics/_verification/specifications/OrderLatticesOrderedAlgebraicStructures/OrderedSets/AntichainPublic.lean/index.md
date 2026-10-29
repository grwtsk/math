# Verification target: Antichain Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f6c64a818d97b45359229b4186c2443db337d94",
  "lexical_observation_count": 90,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Antichain/Variant3a034d61d6ece0e6a5f16acba448b1071ca45058ad2a0c09f23222703a1d4fe0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f6c64a818d97b45359229b4186c2443db337d94`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Antichain/Variant3a034d61d6ece0e6a5f16acba448b1071ca45058ad2a0c09f23222703a1d4fe0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Antichain/Variant3a034d61d6ece0e6a5f16acba448b1071ca45058ad2a0c09f23222703a1d4fe0.lean.json)

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
| 1 | `instance` | [Std.Symm.compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/std-symm-compl.md) | 36 | `declaration-track:bace93320163e329a730d0813335134d5584f66ff271e263fbdf748a22dc04bb` |
| 2 | `def` | [IsAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/isantichain.md) | 42 | `declaration-track:896fe97a0735d459559964785ef6e3e5c3eca36ad624d7671610321286455d35` |
| 3 | `theorem` | [empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/empty.md) | 47 | `result-track:38969eac0dbf31ab5d272afce42ccbc38bebe0648c8d672f7d07517364ff1b6c` |
| 4 | `theorem` | [singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/singleton.md) | 50 | `result-track:bd449f7f29b90ca5558480b7cd850ce648f760c2f869b89abd3b06ef2608d9e3` |
| 5 | `theorem` | [subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/subset.md) | 53 | `result-track:608c793df2c290513ca4e323d3835aa71ee17ec5bf9580663e39715f2dc2439b` |
| 6 | `theorem` | [mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/mono.md) | 56 | `result-track:157882651cd7df630904ab958cf122f8e1c9c3d634c88f9454e745bf70776ebb` |
| 7 | `theorem` | [mono_on](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/mono-on.md) | 59 | `result-track:bf6679797554aa67f52b75876b807f560de6ec4196da222a30d3b543177baac7` |
| 8 | `theorem` | [eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/eq-source-edition-2.md) | 63 | `result-track:49ac0680f74dfe6b534a3a7afe6b9e0e13ecb323be93cf1b50499dd0cf057c24` |
| 9 | `theorem` | [eq'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/eq-source-edition-3.md) | 67 | `result-track:ed2b0789e0e4f332023d928cb39474dfc8b724b7b27afc55cc41b6e5d2df2a43` |
| 10 | `theorem` | [antisymm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/antisymm.md) | 71 | `result-track:ca91405b8ec5c48fd6d68c734f2983f8ff8347300e307d6a1f72e24fae10bc13` |
| 11 | `theorem` | [subsingleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/subsingleton-source-edition-2.md) | 74 | `result-track:04433be40f8356fd586006dfffb852efaa883664f0b80648e697019f3e900f06` |
| 12 | `theorem` | [flip](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/flip-source-edition-2.md) | 81 | `result-track:958689cc37cc8991f7a916f1995a82b1b7f06a58630e08f092c28c08a8edce5a` |
| 13 | `theorem` | [swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/swap.md) | 84 | `result-track:1199d555b62a3980e873e97247df18a0574cff50cffc02a249a65c37ee4c020c` |
| 14 | `theorem` | [image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/image-source-edition-3.md) | 87 | `result-track:e5c594b51a45114c97fbf554154b1953c7b495d498bcbff0025508bed4f77669` |
| 15 | `theorem` | [preimage](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/preimage-source-edition-2.md) | 92 | `result-track:e2d6b2c956bc60541a17092c808be74e0edabd2f4cd42834b9a3b4683237ab75` |
| 16 | `theorem` | [_root_.isAntichain_insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/root-isantichain-insert.md) | 96 | `result-track:8f4eae824df45824e448e945ab32de1436d45758483f458ab7977c97f705580c` |
| 17 | `theorem` | [insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/insert-source-edition-2.md) | 100 | `result-track:4223d461008cfe81aaa99e323a2e5e8330af31e7c88b8733acb9321ce6c5182b` |
| 18 | `theorem` | [_root_.isAntichain_insert_of_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/root-isantichain-insert-of-symm.md) | 104 | `result-track:5ae563d4f912125ceaf4b0807f090c8eb856454b2cf77a86d042648bf8e02aa2` |
| 19 | `theorem` | [insert_of_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/insert-of-symm.md) | 111 | `result-track:c159f8fbe61838a711dfad018df80239793b2ed588c17b2990d2892f094541cd` |
| 20 | `theorem` | [image_relEmbedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/image-relembedding.md) | 117 | `result-track:2d6be81a552cf5aae1e14edc7cc1c70bbacca16b2f0a454304e04e275125f04a` |
| 21 | `theorem` | [preimage_relEmbedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/preimage-relembedding.md) | 123 | `result-track:508a3346faa51b44cc8893ef20789e00c896bd8919cfdb6f92e616bf7a745772` |
| 22 | `theorem` | [image_relIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/image-reliso.md) | 127 | `result-track:7695d3889904828807fed2940b0c56829aecb6c01742a469ef5e2931582bdf9e` |
| 23 | `theorem` | [preimage_relIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/preimage-reliso.md) | 130 | `result-track:b217f4ef3f76af7c3c01ca8fc938a097ec18a24d7c7b3c62f66c1a6d495b6b80` |
| 24 | `theorem` | [image_relEmbedding_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/image-relembedding-iff.md) | 134 | `result-track:34cb9e816917449e2fe7e29dd2077e5134248aefe48dfea07c6e817be864172d` |
| 25 | `theorem` | [image_relIso_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/image-reliso-iff.md) | 138 | `result-track:a8d246565825582e8c07af9935c38fa029b304df545d12f52e53c36dbf74e108` |
| 26 | `theorem` | [image_embedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/image-embedding.md) | 141 | `result-track:6fb5cd380b24299addbc057772024f1a4d3dfe0214d2d07469de293084515dc0` |
| 27 | `theorem` | [preimage_embedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/preimage-embedding.md) | 145 | `result-track:2239442853d575444026e32c6edebd990423702947d6adbc097d17f0df5afb80` |
| 28 | `theorem` | [image_embedding_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/image-embedding-iff.md) | 149 | `result-track:292cb783696e4089aa7f7fed3c13c10ae7e4a68ccc76a2b4611e20878bc65c04` |
| 29 | `theorem` | [image_iso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/image-iso.md) | 153 | `result-track:8f4a0447fcc2bd5f206e72d7386ac577203c026cb7afdd001c06dacdab3f3b65` |
| 30 | `theorem` | [image_iso_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/image-iso-iff.md) | 157 | `result-track:03c5ff73328a71bfd8a9217e0c329634543de9d386d7fe55966726da13601858` |
| 31 | `theorem` | [preimage_iso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/preimage-iso.md) | 161 | `result-track:5a15d64c04439517b9b6a6ebd050f52fff31d1ecf8f79b3550c6c95c7c13eff8` |
| 32 | `theorem` | [preimage_iso_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/preimage-iso-iff.md) | 165 | `result-track:f5825875d7580d5ef1efbe35aa368be2ef4944b8545102708f0d66abff08c7f1` |
| 33 | `theorem` | [to_dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/to-dual.md) | 169 | `result-track:3c6d86ec4482d0edf3d802ad48494aeb170a18cefa7e79d420c2950b9f05470d` |
| 34 | `theorem` | [to_dual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/to-dual-iff.md) | 172 | `result-track:e09e26399020957832280b97010cb49f55f54d812b62d330adb2cca7b76cc6ae` |
| 35 | `theorem` | [image_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/image-compl.md) | 175 | `result-track:ec14d5cff9431ae2c5a981c5a0750247636dc0846768d7a0c0925a58e2ca8976` |
| 36 | `theorem` | [preimage_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/preimage-compl.md) | 179 | `result-track:b9bfb97e89c41eeba824002b0e855e4217f00bf1da434c148677dca27ce1877f` |
| 37 | `theorem` | [diff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/diff.md) | 183 | `result-track:ff95e71197351309b27c3126550e004744b6db6e4aface4f1789c0386792c2b4` |
| 38 | `theorem` | [isAntichain_preimage_subtypeVal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/isantichain-preimage-subtypeval.md) | 188 | `result-track:da92a40ab2c2feb1d0c5d74df70b1d64a216fbfb00a63194b4129fbe52a9557f` |
| 39 | `theorem` | [isAntichain_coe_univ_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/isantichain-coe-univ-iff.md) | 192 | `result-track:224d59a56568407f6c8b512cfb40f317b488bcc358ddcc75d67211a466281990` |
| 40 | `theorem` | [isAntichain_union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/isantichain-union.md) | 195 | `result-track:46f935804dd3754227da91055a7d696d8c0d8f24dafa33e9c520883f18344c1e` |
| 41 | `theorem` | [Set.Subsingleton.isAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/set-subsingleton-isantichain.md) | 200 | `result-track:2a0f23e70c7ccad18eb20aa0ccacabb499c42d8eca553d45a219d017c03874f0` |
| 42 | `lemma` | [subsingleton_of_isChain_of_isAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/subsingleton-of-ischain-of-isantichain.md) | 204 | `result-track:57bd68f41bb0d69c66b18b35052d58f88a557878b1244d09d48f4e0031039602` |
| 43 | `lemma` | [isChain_and_isAntichain_iff_subsingleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/ischain-and-isantichain-iff-subsingleton.md) | 212 | `result-track:f6ddc11153e9128e135223eaeab56810e5e6e5e9a721560761256e535c335bd5` |
| 44 | `lemma` | [inter_subsingleton_of_isChain_of_isAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/inter-subsingleton-of-ischain-of-isantichain.md) | 216 | `result-track:780a8eb858d539eb00ea6f2961f601cb02e7c4bd62353286ee092c6a578f6b2b` |
| 45 | `lemma` | [inter_subsingleton_of_isAntichain_of_isChain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/inter-subsingleton-of-isantichain-of-ischain.md) | 221 | `result-track:cbc16e18ad650e59628cf19b08098a2a2e5224ddab7cb1aec424431b97e40a21` |
| 46 | `theorem` | [IsAntichain.not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/isantichain-not-lt.md) | 229 | `result-track:8121e319ab5aa34187f1d576923dfcc631f36c15a94c49eca6f267090b0f1ddc` |
| 47 | `theorem` | [isAntichain_and_least_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/isantichain-and-least-iff.md) | 232 | `result-track:7d9aabd3c537331d320a76082b55281fc3dd2b08d8c8fc4a08fdc94b59e3ad74` |
| 48 | `theorem` | [isAntichain_and_greatest_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/isantichain-and-greatest-iff.md) | 237 | `result-track:7156052dcaa91f1ed548717b241aaebe6d06b835f83055c29a6bdc4a334d761b` |
| 49 | `theorem` | [IsAntichain.least_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/isantichain-least-iff.md) | 242 | `result-track:9ee91c753b207d9becff93e59072f9f94c9738ddf77549a9152ab154062c812e` |
| 50 | `theorem` | [IsAntichain.greatest_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/isantichain-greatest-iff.md) | 245 | `result-track:ca95fd4877eecb4eb0271afbb10a70bbdab92e56a678512f17a6dc8294c92c13` |
| 51 | `theorem` | [IsLeast.antichain_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/isleast-antichain-iff.md) | 248 | `result-track:1bcb6173530d089506d07867a5c4b0c670e270ac8bcddc541aabd19dd0e3494e` |
| 52 | `theorem` | [IsGreatest.antichain_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/isgreatest-antichain-iff.md) | 251 | `result-track:69adde326babb46d62f0ac1947a8aa06ce521c1a2200b08de821b6e3f3a9fe81` |
| 53 | `theorem` | [IsAntichain.bot_mem_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/isantichain-bot-mem-iff.md) | 254 | `result-track:50ae3ab2e7656cee2e4759139b7304fd752db4b79fec14acfd192daa7e9d85d5` |
| 54 | `theorem` | [IsAntichain.top_mem_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/isantichain-top-mem-iff.md) | 257 | `result-track:3486674ee1218921d0a51f3029ba537e680c27e848d1853ce1a5c9beb27e8964` |
| 55 | `theorem` | [IsAntichain.minimal_mem_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/isantichain-minimal-mem-iff.md) | 260 | `result-track:6b0b913f568ff175ce72e6f3968ccc3c40f3d10f17a1d73a80f9afee33c647e4` |
| 56 | `theorem` | [IsAntichain.maximal_mem_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/isantichain-maximal-mem-iff.md) | 263 | `result-track:17a1a0f9dca60dc534942e110a65d7a049ed432380ef50ea19419f1e4d97b71c` |
| 57 | `theorem` | [IsAntichain.eq_setOfPred_maximal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/isantichain-eq-setofpred-maximal.md) | 268 | `result-track:e78058da05e5ba432036670530971e230ce73de71c4ca5b609ae7b5545da251b` |
| 58 | `theorem` | [IsAntichain.eq_setOfPred_minimal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/isantichain-eq-setofpred-minimal.md) | 280 | `result-track:7f8873ca48d6e92243cc3b2f33371df302468c836bc32f0cdc48ea572c8fa9d0` |
| 59 | `lemma` | [IsAntichain.of_strictMonoOn_antitoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/isantichain-of-strictmonoon-antitoneon.md) | 294 | `result-track:a4a0bdd4c5e5804346cce51081d47c483ca9a92df4c724d80f23d6767f45eabf` |
| 60 | `lemma` | [IsAntichain.of_monotoneOn_strictAntiOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/isantichain-of-monotoneon-strictantion.md) | 298 | `result-track:a14446ce488062fa2f9f7d1acff3ab6c5fe247ad46cbe499413ca588f2314062` |
| 61 | `theorem` | [isAntichain_iff_forall_not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/isantichain-iff-forall-not-lt.md) | 302 | `result-track:259ee5a5c8ff4ddb1fb8e1a2e1a87b0b33677fdd2ae916e75198aadc84142e4d` |
| 62 | `theorem` | [setOfPred_maximal_antichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/setofpred-maximal-antichain.md) | 306 | `result-track:59320bd30c80dfc00df6199583291b4ab0551ba3da8660026bba7650fcffe6a5` |
| 63 | `theorem` | [setOfPred_minimal_antichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/setofpred-minimal-antichain.md) | 312 | `result-track:fdffe77331eeeece7bcdb56c95e5493c90bd63b4f69cd2d6bd7b294d469ae141` |
| 64 | `def` | [IsStrongAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/isstrongantichain.md) | 324 | `declaration-track:62b418a954b1a67b1eef101c6ef9a6d981208f3564e58c1158dd41f155dda69d` |
| 65 | `theorem` | [subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/subset-source-edition-2.md) | 329 | `result-track:b1cff3cbeaf09bbfb4710de67f7f6d2ae42d1b09578505c51d4d4efca0de5406` |
| 66 | `theorem` | [mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/mono-source-edition-2.md) | 332 | `result-track:6a6f570414c6a901526cf041b58ef3a794584ead1ec7a817e52c6fbc880764e1` |
| 67 | `theorem` | [eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/eq.md) | 335 | `result-track:0ba27e212587e561702f896f66c2d5ee1e2f302f7c38d8d0af7bfb3e7292a457` |
| 68 | `theorem` | [isAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/isantichain-source-edition-2.md) | 340 | `result-track:8a13dd8106a6cefbe0c04c6cd915697609f31af27e22710dcefe014517996d00` |
| 69 | `theorem` | [subsingleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/subsingleton.md) | 343 | `result-track:0340aa6a49470b1ce12f4e38ed74e00538b25a0abe786aca563b3040734aea20` |
| 70 | `theorem` | [flip](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/flip.md) | 348 | `result-track:52c31995493d0357ae5dc6b241eb6f2237ee6df1397d3c2bd4479e44bdd3d82c` |
| 71 | `theorem` | [swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/swap-source-edition-2.md) | 351 | `result-track:b928adc5d3127fbea4c1b7aca09f177f69bbf3c477252aa462dd474fe4ffbb76` |
| 72 | `theorem` | [image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/image.md) | 354 | `result-track:20e3c588c8022e418bbdd3f661ca97aa1b0f5425b531ba30836e6abc130446af` |
| 73 | `theorem` | [preimage](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/preimage.md) | 360 | `result-track:9d7dc488137d82f29ffb93565d6329100f03e793880a15b2732f7c6cecf97692` |
| 74 | `theorem` | [_root_.isStrongAntichain_insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/root-isstrongantichain-insert.md) | 364 | `result-track:0cac17719414b5a7912046e5ef8ac8b879f917a56d7d916c88861e490653712d` |
| 75 | `theorem` | [insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/insert-source-edition-3.md) | 370 | `result-track:f0d2237e5a85d7f0b1c81f7a1e9264ac389742ed60bfbb4e02981276b53c00b6` |
| 76 | `theorem` | [Set.Subsingleton.isStrongAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/set-subsingleton-isstrongantichain.md) | 376 | `result-track:c95bf9fb28eda88903208522e05b07efac9f0102e9323e829f6dc7bd649a8da3` |
| 77 | `def` | [IsMaxAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/ismaxantichain.md) | 384 | `declaration-track:15a3f93641daf55ae4dfcc24d518e8a2a95b98347e15373edd9880420a6dc3b7` |
| 78 | `theorem` | [isAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/isantichain-source-edition-3.md) | 389 | `result-track:ede533519781194c6c5bbf1288fc93c540be508f71fc8aae0c9cfbc1485a3419` |
| 79 | `theorem` | [image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/image-source-edition-2.md) | 392 | `result-track:c0f4b10d9fb8cd8756fcb5684b1f912f9db17decbd42a9e4b402c382da90c87e` |
| 80 | `theorem` | [isEmpty_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/isempty-iff.md) | 400 | `result-track:6f1f3a60608d532209174ddb35d18eb439adec4f3400f23c6914cedd18cb9ad9` |
| 81 | `theorem` | [nonempty_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/nonempty-iff.md) | 407 | `result-track:b6a6fae07212c215cbd91b60952d8313397588b0bc6ca5a7d1736a11cd1a9dec` |
| 82 | `theorem` | [symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/symm.md) | 410 | `result-track:861a01be732199c9badca8d37d4df160157c93984a0ab289fb234bf07f38f67e` |
| 83 | `theorem` | [maximal_isAntichain_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/maximal-isantichain-iff.md) | 415 | `result-track:1b97170fb90ce586f8a56ab80efe3c30818267b7aad68155074ffca104bfdc15` |
| 84 | `def` | [IsWeakAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/isweakantichain.md) | 437 | `declaration-track:1959cc7a4a2c8e4faddfe58815c85e00bcf72ea40919810a8b4e76ca1acad889` |
| 85 | `theorem` | [subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/subset-source-edition-3.md) | 442 | `result-track:d6801fa6844db75d9e1b0eb2104a86f8faa4a3de7979371c4f7b3c0727d11043` |
| 86 | `theorem` | [eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/eq-source-edition-4.md) | 445 | `result-track:f2809c148cda61be5dc2962be867d7f25d0d5cab4ff17fafd6cab70e20900a02` |
| 87 | `theorem` | [insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/insert.md) | 448 | `result-track:13853dadceac85da5e6f967b0ae03511104a3f4f311dd0585535722358c2f75d` |
| 88 | `theorem` | [_root_.isWeakAntichain_insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/root-isweakantichain-insert.md) | 455 | `result-track:e5d2f2b45f5182f47031afeaed7bba3bfb00f1bab793b6758680cc0b9bb2ecbf` |
| 89 | `theorem` | [IsAntichain.isWeakAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/isantichain-isweakantichain.md) | 459 | `result-track:2d58cc2c7aab6516187431a7d4ca12d7249167c03db44875d12c8ef1d2f64904` |
| 90 | `theorem` | [Set.Subsingleton.isWeakAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntichainPublic.lean/declarations/set-subsingleton-isweakantichain.md) | 462 | `result-track:d18ba5d626dac864f0c059a02a666f3e7f451ae83aa309ee8da2134d1991e469` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=724a1b18529dec94260de440636f658ff844e4ef9e10d71d57c1fcacb3bbdc00 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Antichain/Variant3a034d61d6ece0e6a5f16acba448b1071ca45058ad2a0c09f23222703a1d4fe0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Antichain/Variant3a034d61d6ece0e6a5f16acba448b1071ca45058ad2a0c09f23222703a1d4fe0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
