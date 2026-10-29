# Verification target: Finset Scalar Scalar Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80ce92a57b7109231d1e8c78974b3394b343555e",
  "lexical_observation_count": 80,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Scalar/Variant3c4ea4729f28fb241636b4a04656b3219c0347302a265fbcb519d5d250220f7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80ce92a57b7109231d1e8c78974b3394b343555e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Scalar/Variant3c4ea4729f28fb241636b4a04656b3219c0347302a265fbcb519d5d250220f7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Scalar/Variant3c4ea4729f28fb241636b4a04656b3219c0347302a265fbcb519d5d250220f7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.NAry` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Finite` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/smul.md) | 72 | `declaration-track:823aabb71cdce4ba579d3127fc16c6bd9c4ea185c9da88a09c04db4486fa39cc` |
| 2 | `lemma` | [smul_def](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/smul-def.md) | 76 | `result-track:63dea4ab65ff4410d2e7aee702ad2277422293bf8019aaa61fb59cde0e028e1f` |
| 3 | `lemma` | [image_smul_product](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/image-smul-product.md) | 79 | `result-track:6cc4104cbe70d2298f45e429525118a488982f1232706dbd2e1efb22d5d41fe8` |
| 4 | `lemma` | [mem_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/mem-smul.md) | 81 | `result-track:f49fb0ff6a4018385770ad72ad16d8bf0ed28933c43767b0f03885260334a67c` |
| 5 | `lemma` | [coe_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/coe-smul.md) | 84 | `result-track:f48e027682485dd670c03fe8e6f632483d0f1f143c5185ae5cc5ad1412bae576` |
| 6 | `lemma` | [smul_mem_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/smul-mem-smul.md) | 86 | `result-track:36d2910951c900f1fae5bb6040bf8c82456a1f0803aa616aab5461ac33d3abe4` |
| 7 | `lemma` | [card_smul_le](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/card-smul-le.md) | 88 | `result-track:f178f3ac417f921eda6df82f06492e131d3e8db7d50a0a1bb8f2d4674831204c` |
| 8 | `lemma` | [empty_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/empty-smul.md) | 94 | `result-track:48cd2e3350863b0ba113aa71161a450cc58c87ee78c760aaa513b1ccf2153b2f` |
| 9 | `lemma` | [smul_empty](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/smul-empty.md) | 97 | `result-track:0c3ebc232705ee58620d27d2049164e0430255a81f58b2390228f1b1ae7d51f6` |
| 10 | `lemma` | [smul_eq_empty](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/smul-eq-empty.md) | 100 | `result-track:98254c437c2e1f0d2c934be37ae60c41590a2b329c63f6ce12d27f2c12041590` |
| 11 | `lemma` | [smul_nonempty_iff](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/smul-nonempty-iff.md) | 103 | `result-track:08b2b80b4ff485854a11fb83a7cd10d809f71557c4a88cb371e7bf22a142dad6` |
| 12 | `lemma` | [Nonempty.smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/nonempty-smul.md) | 106 | `result-track:f0491119b4c697f79aed8c7b5d59db72d3e759a8c360df018b307c3aaa58a079` |
| 13 | `lemma` | [Nonempty.of_smul_left](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/nonempty-of-smul-left.md) | 108 | `result-track:456fddb5f95224d0529f4ee2eca81479b4ef982fea06a25bc80b367a11e5ab27` |
| 14 | `lemma` | [Nonempty.of_smul_right](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/nonempty-of-smul-right.md) | 109 | `result-track:cc52c8fc8ef7dd4c21cd25c2db6ca69a537c9e8bae92d7c4c5900b2600cff066` |
| 15 | `lemma` | [smul_singleton](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/smul-singleton.md) | 112 | `result-track:06411ed7f10223ece644afc07732e998406ba0d266036dce4defb42b0b803837` |
| 16 | `lemma` | [singleton_smul_singleton](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/singleton-smul-singleton.md) | 115 | `result-track:23e46f632fb4ba15746c769e1a5c661199d21b75155927fb78d26e4c1ab09415` |
| 17 | `lemma` | [smul_subset_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/smul-subset-smul.md) | 119 | `result-track:b0fb529b94b20817a92b9ea668c71e0ced52413c892a39db2c6fd614c18c7b89` |
| 18 | `lemma` | [smul_subset_smul_left](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/smul-subset-smul-left.md) | 121 | `result-track:2bb1a19441886eff48a4280d7e1df6fa913425596de3d3a2e8fd1e6e95179495` |
| 19 | `lemma` | [smul_subset_smul_right](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/smul-subset-smul-right.md) | 122 | `result-track:88e455aa6a1d6cca35a7ee5eccf56af9a94c671c93df6a44a2c160f2ee6b57f3` |
| 20 | `lemma` | [smul_subset_iff](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/smul-subset-iff.md) | 123 | `result-track:630ef75417bfa7e9c44169df6ba3d5ebe370e729040285f91c15f4faeef9134d` |
| 21 | `lemma` | [union_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/union-smul.md) | 126 | `result-track:b6b886a21e6ecca5ae962e3e82f0ebe02bf62e591e3ab786e7dbe15915c3f75d` |
| 22 | `lemma` | [smul_union](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/smul-union.md) | 129 | `result-track:6e899c2b18c4e3a65cafe343bbbd0435d1284058116d5178e16163fd1d8391ae` |
| 23 | `lemma` | [inter_smul_subset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/inter-smul-subset.md) | 132 | `result-track:c76acd7f71067c01a1a943cb73bd29949e1efd93c35d3466f9e70542d1683982` |
| 24 | `lemma` | [smul_inter_subset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/smul-inter-subset.md) | 136 | `result-track:973b25112e8e04b2d083a17f6ee3ccd885ebcfebcf446637d72aa9700830a9ec` |
| 25 | `lemma` | [inter_smul_union_subset_union](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/inter-smul-union-subset-union.md) | 139 | `result-track:e94562262df5fff036c4a7b6b8f978c10bba971e2efded3bb78f254029128258` |
| 26 | `lemma` | [union_smul_inter_subset_union](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/union-smul-inter-subset-union.md) | 143 | `result-track:b1ac33556ae800291dc0a1e048cf65ddaf8695718c8e953a57bf7be3257afebd` |
| 27 | `lemma` | [subset_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/subset-smul.md) | 151 | `result-track:cb38e1c5984e18b51da7aabac8d5871b6f3d15052963e8329f6b17307647736e` |
| 28 | `def` | [smulFinset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/smulfinset.md) | 164 | `declaration-track:e7ec1f38d35834a4862ed524268fa9a7e29d6fa17dd53be29dd3c73b7b88f8af` |
| 29 | `lemma` | [smul_finset_def](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/smul-finset-def.md) | 168 | `result-track:71b452c0d5dd055d6b2b183d52834c301c1954f88cf3264e9588eab75f459e06` |
| 30 | `lemma` | [image_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/image-smul.md) | 170 | `result-track:1fbd1944056e00154e34b034580ea2db35811dc4e4766104c4e214da429749ef` |
| 31 | `lemma` | [mem_smul_finset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/mem-smul-finset.md) | 173 | `result-track:aeb3cc74a1e14c0558b3fa2b651baabc043db16e258ce9da889cc9baa398dda0` |
| 32 | `lemma` | [coe_smul_finset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/coe-smul-finset.md) | 177 | `result-track:960fc7efb087eb850b0b5ec8e03494dcd05c12873332e5747fc1f413b9ba3859` |
| 33 | `lemma` | [smul_mem_smul_finset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/smul-mem-smul-finset.md) | 179 | `result-track:31a5a5e71e169758319d4052dc3ac45087af0a487c0bc2bb035328d1decf49fc` |
| 34 | `lemma` | [smul_finset_card_le](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/smul-finset-card-le.md) | 181 | `result-track:a00b7c138fce14502edf8e2e26aaa8df0c7b1cbe36d65342eb809eb6f8bbc57f` |
| 35 | `lemma` | [smul_finset_empty](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/smul-finset-empty.md) | 184 | `result-track:1325136f70653bbaee5465867d40422b1b10d986f523dec104adf5d3e8bf50c1` |
| 36 | `lemma` | [smul_finset_eq_empty](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/smul-finset-eq-empty.md) | 187 | `result-track:f4787be980a615f3c89d6cda03ff2ea069c5e695bef86d9fb6d339eceb1dba35` |
| 37 | `lemma` | [smul_finset_nonempty](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/smul-finset-nonempty.md) | 190 | `result-track:db4d500e28b910b7cfafc68e2a2b889df2e3c5c7d8d3ce24f5d7a0dc43bffc27` |
| 38 | `lemma` | [Nonempty.smul_finset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/nonempty-smul-finset.md) | 193 | `result-track:ae659f7109d3a39e051959aabe150065a34b04a888a71721b6dafc3a2b948a57` |
| 39 | `lemma` | [singleton_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/singleton-smul.md) | 197 | `result-track:f601e171f35754d6ec2879f82a98829ddb99c9c24991467d4aafb78774f73329` |
| 40 | `lemma` | [smul_finset_subset_smul_finset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/smul-finset-subset-smul-finset.md) | 200 | `result-track:39f272950327e4a58507ea5ba82bab3e417903bc74d398b4f2b846196826ad4d` |
| 41 | `lemma` | [smul_finset_singleton](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/smul-finset-singleton.md) | 203 | `result-track:55a62e131390da6568142e86ffceff070ec57bd0452838828051dc371e4fcecd` |
| 42 | `lemma` | [smul_finset_union](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/smul-finset-union.md) | 206 | `result-track:fb23ea9bc8df9f30b4a3146ffcf4885113051ee995b88e637abd5ad9161fada0` |
| 43 | `lemma` | [smul_finset_insert](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/smul-finset-insert.md) | 209 | `result-track:233c1e739e9ee025957626ba4496e00d826048b2c7f7d2e30aa90e37110622f4` |
| 44 | `lemma` | [smul_finset_inter_subset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/smul-finset-inter-subset.md) | 213 | `result-track:eacef6e9ce6860c6259c6e3af1aedeb4b179a34638133bd70951401ba1f270ab` |
| 45 | `lemma` | [smul_finset_subset_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/smul-finset-subset-smul.md) | 216 | `result-track:da56d0f8baa0b140cd3de94ccaf58cfe5d32b91805098e8ee06b2f8ff6ebe17f` |
| 46 | `lemma` | [biUnion_smul_finset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/biunion-smul-finset.md) | 219 | `result-track:8138895e7be95947ad213afbe39d947af4ddfab7a2bef8527bb748b6a256471c` |
| 47 | `def` | [vsub](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/vsub.md) | 237 | `declaration-track:dc1b99ea33e9611ed4891dcd2b37e58cb470202c59facb76fdd08c8830faaf35` |
| 48 | `theorem` | [vsub_def](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/vsub-def.md) | 242 | `result-track:d293ee37e6bc09b1ddc9860ba72bf7e4eafb681ee7fdccece3028d806b953915` |
| 49 | `theorem` | [image_vsub_product](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/image-vsub-product.md) | 246 | `result-track:5fb01324bfc144660c277f4d3ac4f75140763af232fe730bc543304b810cebee` |
| 50 | `theorem` | [mem_vsub](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/mem-vsub.md) | 249 | `result-track:5782f97a7976fafa593dcb13f329ab1cdc55f7458241ade2dcd3e85eef238eb8` |
| 51 | `theorem` | [coe_vsub](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/coe-vsub.md) | 253 | `result-track:21829f984655f75eaff3ee8b6eb25e2cc99a709c5452229065a32ef8a1234c80` |
| 52 | `theorem` | [vsub_mem_vsub](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/vsub-mem-vsub.md) | 256 | `result-track:bead2833a87254315ce3edd63e02b32713fce6d6e64acd85cd486e18b3c4624f` |
| 53 | `theorem` | [vsub_card_le](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/vsub-card-le.md) | 259 | `result-track:f1a83d4cafdfb3ece3576e0c29a725f58e08d978ba264aad7c18843c8d11b579` |
| 54 | `theorem` | [empty_vsub](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/empty-vsub.md) | 263 | `result-track:feac62b33721380ee62e38489010dc47fe9864eb70a02bf8f2b164b3ab7c95e9` |
| 55 | `theorem` | [vsub_empty](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/vsub-empty.md) | 267 | `result-track:58af74fe9b5cbfc7f01dc097ad55816efd9c2d0d8d92db13bfcbff20f13132d8` |
| 56 | `theorem` | [vsub_eq_empty](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/vsub-eq-empty.md) | 271 | `result-track:cf1a3958033b517481271c953e69bee6e87086762c1110f88d448b51964ebd29` |
| 57 | `theorem` | [vsub_nonempty](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/vsub-nonempty.md) | 275 | `result-track:ef202c0c5ded253d3e986a8cf9de3cc8b57f53aed397800bafe8dbbf4f638065` |
| 58 | `theorem` | [Nonempty.vsub](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/nonempty-vsub.md) | 279 | `result-track:5c9c8bbfcb89982225e50a76d1ce8bf7063b9af6e8685f47f09710bdb46587e6` |
| 59 | `theorem` | [Nonempty.of_vsub_left](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/nonempty-of-vsub-left.md) | 282 | `result-track:6b377c7fdd308e7c8e873ca26f8d77c5fadb251e642c860316f8651da13c2412` |
| 60 | `theorem` | [Nonempty.of_vsub_right](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/nonempty-of-vsub-right.md) | 285 | `result-track:d9b8c35235ab63defe4e81b9c19a79d11aba4a50d1a240c3938d0efd1c6b49a0` |
| 61 | `theorem` | [vsub_singleton](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/vsub-singleton.md) | 289 | `result-track:dd3b251fdf79caf299792304e5df0381af799d226e52e35cc49502aed5366e8b` |
| 62 | `theorem` | [singleton_vsub](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/singleton-vsub.md) | 292 | `result-track:c36a42703aea7dddee2a0a51eb692afaab0bfc0ec8f618177eeb0486103c2387` |
| 63 | `theorem` | [singleton_vsub_singleton](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/singleton-vsub-singleton.md) | 295 | `result-track:964016193be269466835f07fd2ac210ccdc8a14b1c0d5cc57f53f54f7dd31371` |
| 64 | `theorem` | [vsub_subset_vsub](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/vsub-subset-vsub.md) | 299 | `result-track:fc2e9ad719798a452013a3ef2bc72f5df9b732912cc4f500599e5f93463b041f` |
| 65 | `theorem` | [vsub_subset_vsub_left](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/vsub-subset-vsub-left.md) | 302 | `result-track:ea2025306caad02d3457b671b1b90bf8645264939355cbd561653faae366cb1f` |
| 66 | `theorem` | [vsub_subset_vsub_right](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/vsub-subset-vsub-right.md) | 305 | `result-track:b37ac5d4d34e8031c1a83d16253369e091078da9c0f2e726e30f4d7735e07953` |
| 67 | `theorem` | [vsub_subset_iff](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/vsub-subset-iff.md) | 308 | `result-track:fa257d78f8cb7020a65cdf771d1faa958a2ffcc710d2370cf8a502549b10a6d7` |
| 68 | `theorem` | [union_vsub](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/union-vsub.md) | 315 | `result-track:5e9565031a5ecb35d1dfd347dfa9976d3fd4b5368d6c3b7537585ce39e794787` |
| 69 | `theorem` | [vsub_union](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/vsub-union.md) | 318 | `result-track:d3d9e64c43a57e75200166773b365c78ec4412cda6fb7a5d35fcda97c1c07394` |
| 70 | `theorem` | [inter_vsub_subset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/inter-vsub-subset.md) | 321 | `result-track:972906c1a42252310597192c9e3221696b8f52c521c2d0ec9feae3e1759e2536` |
| 71 | `theorem` | [vsub_inter_subset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/vsub-inter-subset.md) | 324 | `result-track:9613f51ff43b63696c5152fa5fe9642a5d7072ee2dad67ba7c249b5bf61f97fc` |
| 72 | `theorem` | [subset_vsub](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/subset-vsub.md) | 331 | `result-track:1d8ba89f837e5b09812ab2c547ce8a13a36954925aec2b59488cb107076ebc97` |
| 73 | `theorem` | [op_smul_finset_smul_eq_smul_smul_finset](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/op-smul-finset-smul-eq-smul-smul-finset.md) | 343 | `result-track:de47792eac8d022ee0949be51fc05c6e821d855f7cb79096b883a4dbb96f8976` |
| 74 | `theorem` | [image_smul_comm](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/image-smul-comm.md) | 371 | `result-track:d06aeb2f15fa55a5d4617588ea9d9af3f833dba481b3473eddcad869bf2b3b69` |
| 75 | `theorem` | [toFinset_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/tofinset-smul.md) | 392 | `result-track:425c78a09d108a3c8d3298485dbfd36981217f33125e46fc918cc44a16cfc15e` |
| 76 | `theorem` | [Finite.toFinset_smul](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/finite-tofinset-smul.md) | 397 | `result-track:b1a9b72eae481781d0b40d07cb81216cf375dee869564e5cd25590e64890c8c9` |
| 77 | `theorem` | [toFinset_smul_set](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/tofinset-smul-set.md) | 408 | `result-track:e84c6451a33ec67e23e1a0065acac89860931325b08dfcdfe1df69f5ee745ca0` |
| 78 | `theorem` | [Finite.toFinset_smul_set](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/finite-tofinset-smul-set.md) | 413 | `result-track:9303e1c5814c6131af34f522cb9df152d258d15a3b1b2cf5cb58657945686c50` |
| 79 | `theorem` | [toFinset_vsub](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/tofinset-vsub.md) | 424 | `result-track:614c38f6db6cfd33fba004472cba795fc3366cb8c4dcf1b9d3691a5658cf029a` |
| 80 | `theorem` | [Finite.toFinset_vsub](../../../../GroupTheoryAndGeneralizations/FinsetScalarScalarNamespaced.lean/declarations/finite-tofinset-vsub.md) | 428 | `result-track:cf69f56f369a0b470d3bed896e45d29bb9f7291aefdefb98effa606c49769706` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=51760501e38e2d61f9007f5bd1b5c1c497518ddfdea0305f916ff6f136176f9e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Scalar/Variant3c4ea4729f28fb241636b4a04656b3219c0347302a265fbcb519d5d250220f7d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Scalar/Variant3c4ea4729f28fb241636b4a04656b3219c0347302a265fbcb519d5d250220f7d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
