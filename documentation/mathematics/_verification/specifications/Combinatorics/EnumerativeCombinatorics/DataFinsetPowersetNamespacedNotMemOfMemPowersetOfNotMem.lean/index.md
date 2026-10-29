# Verification target: Data Finset Powerset Namespaced Not Mem Of Mem Powerset Of Not Mem

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdb4b38b9d6d328acf0838833c9b696a1a76a151",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variantbd13b3b68ad13d887334ce4fb425eff669708ec3f50e13504cf18142a5e46d62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdb4b38b9d6d328acf0838833c9b696a1a76a151`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variantbd13b3b68ad13d887334ce4fb425eff669708ec3f50e13504cf18142a5e46d62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Powerset/Variantbd13b3b68ad13d887334ce4fb425eff669708ec3f50e13504cf18142a5e46d62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Card` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Union` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Powerset` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pairwise.Lattice` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powerset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/powerset.md) | 36 | `declaration-track:04b4fbda75573cf5df1b299139d407455189fd2b19ed6f8644dd2b1854d2c274` |
| 2 | `theorem` | [mem_powerset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/mem-powerset.md) | 41 | `result-track:9ccf7dd3ee92f40b58148453d61f5894fb3f33d937d6b1a07dab40800142b016` |
| 3 | `theorem` | [coe_powerset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/coe-powerset.md) | 47 | `result-track:8794725cff18bf1ac2f9119074290f5a9fe1c2a8e6a820e4bbcd57a6589e53f5` |
| 4 | `theorem` | [empty_mem_powerset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/empty-mem-powerset.md) | 52 | `result-track:249bf051f520d5cb78351be41fdcba1bb147ded7edd8c234fbb6b0d3d05832cc` |
| 5 | `theorem` | [mem_powerset_self](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/mem-powerset-self.md) | 54 | `result-track:fbbc3034e3476ab6260224951bbba3b1c9a99a56522b3d9bef5ced0373b10000` |
| 6 | `theorem` | [powerset_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/powerset-nonempty.md) | 57 | `result-track:61931b5e1f8a8d219ba86352caa655aafc4bd5fb5e7059081de84e9226d5eaec` |
| 7 | `theorem` | [powerset_mono](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/powerset-mono.md) | 61 | `result-track:abe9710c90c5a3233c6054c2b6daa120a4c2f9fd33e5fbdce3055ca379871f48` |
| 8 | `theorem` | [powerset_injective](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/powerset-injective.md) | 65 | `result-track:687ab97e0648ee7f42b455ee966c7e314b263fb9770a30eade30fabe15a66b93` |
| 9 | `theorem` | [powerset_inj](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/powerset-inj.md) | 69 | `result-track:1d279390a7ef28e0ef23f4075d0c93db2e1d236e8eb15e98ce313891217fd83e` |
| 10 | `theorem` | [powerset_empty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/powerset-empty.md) | 73 | `result-track:ce398a9cad5f1246a0ad09942cbefa4f03596f3baf584bc55c047af2bbcae64b` |
| 11 | `theorem` | [powerset_eq_singleton_empty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/powerset-eq-singleton-empty.md) | 77 | `result-track:7c14ffa39f47d758105d6418162429fb01a19ca3b90846a081aa6b6444c5d780` |
| 12 | `theorem` | [card_powerset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/card-powerset.md) | 82 | `result-track:e2553eb1c20a865c9bd1a598ad882cb9a57198495f18ebf824f00124d4bc7a20` |
| 13 | `theorem` | [notMem_of_mem_powerset_of_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/notmem-of-mem-powerset-of-notmem.md) | 85 | `result-track:84661f675eda5980c917d00507b9214c93a302c74b0bc55d4d6321e818fa4c30` |
| 14 | `theorem` | [powerset_insert](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/powerset-insert.md) | 93 | `result-track:8815097ce8abcdaf125c70b7a9bc2ad03bcd57bbbd3c08bdb6c1cf67c3bc2867` |
| 15 | `lemma` | [pairwiseDisjoint_pair_insert](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/pairwisedisjoint-pair-insert.md) | 109 | `result-track:e8bf3f79ce2e2f56f8df30a90792c14efe9ef530ec5ddc96c1c3745b59e67ac0` |
| 16 | `instance` | [decidableExistsOfDecidableSubsets](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/decidableexistsofdecidablesubsets.md) | 120 | `declaration-track:a81697f9b1859b1c4e6b0052f6b3e2aade12bc0ac23ea46277074587be1bbe36` |
| 17 | `instance` | [decidableForallOfDecidableSubsets](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/decidableforallofdecidablesubsets-source-edition-2.md) | 126 | `declaration-track:68b10186311ef90410bf65c021c1d7fb5e826d7de356c1e8db049297d8ac91a1` |
| 18 | `instance` | [decidableExistsOfDecidableSubsets'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/decidableexistsofdecidablesubsets-source-edition-2.md) | 132 | `declaration-track:e6381e1e8fadc4005853114d1ec3c969aab45824a1c92fc07303a24053fa0c39` |
| 19 | `instance` | [decidableForallOfDecidableSubsets'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/decidableforallofdecidablesubsets.md) | 137 | `declaration-track:26dd9bf9206f7f89d6b7b8bde492b9107d2d8621a122135775cd3400f21468d3` |
| 20 | `def` | [ssubsets](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/ssubsets.md) | 148 | `declaration-track:9555d9ce02a13e4757596e51fe57886afb2952f4eb6f030c02b4d7d7dce4a109` |
| 21 | `theorem` | [mem_ssubsets](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/mem-ssubsets.md) | 152 | `result-track:7af9ec13bc7799edbc39501bd5cce3a9e58eeb4aee975c963c9b4a64f494f70b` |
| 22 | `theorem` | [empty_mem_ssubsets](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/empty-mem-ssubsets.md) | 155 | `result-track:1a0296b213fdca96adcb8ddf165ba2ccd0162d0f6871d29ccc44fb6f8f129950` |
| 23 | `def` | [decidableExistsOfDecidableSSubsets](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/decidableexistsofdecidablessubsets.md) | 160 | `declaration-track:14b00515e3e8715669186a80ad2d465728bda31d1fff0765fdd25cc60ba4c77e` |
| 24 | `def` | [decidableForallOfDecidableSSubsets](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/decidableforallofdecidablessubsets.md) | 166 | `declaration-track:eb70f7be4ecad1e0308a81859f7fe25e9299693fef8ad9429a0f14cb60be5ffd` |
| 25 | `def` | [decidableExistsOfDecidableSSubsets'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/decidableexistsofdecidablessubsets-source-edition-2.md) | 173 | `declaration-track:31bfadf8d6ea7af412aa30992daa7e62a176c4101d2511824e03a5483034cf5a` |
| 26 | `def` | [decidableForallOfDecidableSSubsets'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/decidableforallofdecidablessubsets-source-edition-2.md) | 179 | `declaration-track:fb3a378103fd5714c26f377240b16849ce1e95d8009c0ab307ea69d16845df66` |
| 27 | `def` | [powersetCard](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/powersetcard.md) | 190 | `declaration-track:b33d6faa26856997b98f43063205c6fda563f831e1be4a85145831f7446c1b90` |
| 28 | `lemma` | [mem_powersetCard](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/mem-powersetcard.md) | 194 | `result-track:9a65af2641f9536d5a14e11b2cf0d5ae58dd3502142019cc3466329859ba8488` |
| 29 | `theorem` | [powersetCard_mono](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/powersetcard-mono.md) | 198 | `result-track:417d5077cc835bf68d4b6260682ac6d2527a43a881dda5026cea712772ee26a1` |
| 30 | `theorem` | [card_powersetCard](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/card-powersetcard.md) | 204 | `result-track:41bb47e34cf8364dc03b474f96e2e1774252cc513e84f622ed10791f0a333577` |
| 31 | `theorem` | [powersetCard_zero](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/powersetcard-zero.md) | 209 | `result-track:557ee500c36ae0688ed91eeccd55e51fab4fd31a747a2768f13999f0d6cc06b3` |
| 32 | `lemma` | [powersetCard_empty_subsingleton](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/powersetcard-empty-subsingleton.md) | 216 | `result-track:6420677590ae128966bcbc91902f10ddeb741d9e94d135bd73655cafefdf70de` |
| 33 | `theorem` | [map_val_val_powersetCard](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/map-val-val-powersetcard.md) | 221 | `result-track:5e2391da43793147b8dad1f4aadb9fbafdc2a295e2790944f78d3c7e7185bd60` |
| 34 | `theorem` | [powersetCard_one](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/powersetcard-one.md) | 225 | `result-track:6c6ffc17652d2f490b7e77c7536af37247c8fc464cce4a57fe1fa76965635564` |
| 35 | `lemma` | [powersetCard_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/powersetcard-eq-empty.md) | 230 | `result-track:82cfce4c6e31ca44d6c35126c355c49c861c41c64d26a47348223ab600e802cb` |
| 36 | `lemma` | [powersetCard_card_add](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/powersetcard-card-add.md) | 235 | `result-track:9e731fb61864846176b8a6ee384e873430ce4a74b507603f1b391372eeb5f91a` |
| 37 | `theorem` | [powersetCard_eq_filter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/powersetcard-eq-filter.md) | 238 | `result-track:4ee4682b5f10583cc156e2ad86bf25830b849719d56773edb6221fb89c7b8c80` |
| 38 | `theorem` | [powersetCard_succ_insert](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/powersetcard-succ-insert.md) | 243 | `result-track:e0a098d503f67541abb5db7946767da8055b68d88e46d1303f7666ab448caf19` |
| 39 | `lemma` | [powersetCard_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/powersetcard-nonempty.md) | 257 | `result-track:45780e881b320b9c511715317a6239fddf72cb70778e176e1d06789154de7d3d` |
| 40 | `theorem` | [powersetCard_self](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/powersetcard-self.md) | 264 | `result-track:45e7d7239c0254585dc60f19399809a4d70c5d0d9a1a59c628741312249f15c7` |
| 41 | `theorem` | [pairwise_disjoint_powersetCard](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/pairwise-disjoint-powersetcard.md) | 272 | `result-track:55793a41346e32cd174960b0fcc36424d0d0fa10d2e226274817d540ef58b14a` |
| 42 | `theorem` | [powerset_card_disjiUnion](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/powerset-card-disjiunion.md) | 277 | `result-track:ad1ee085941b8072529a2b94f23420ab2482846badae132ae81d511b91848b24` |
| 43 | `theorem` | [powerset_card_biUnion](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/powerset-card-biunion.md) | 289 | `result-track:679d45fff07d8146ad4b05886851eabfc0ee3e895a5d89a11b5fb17e2f6a08eb` |
| 44 | `theorem` | [powersetCard_sup](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/powersetcard-sup.md) | 293 | `result-track:d66cd7d8fef3cc9a24af7cf17f4ba4a62f6d97becea3b52083ba8423d2bae125` |
| 45 | `theorem` | [powersetCard_map](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPowersetNamespacedNotMemOfMemPowersetOfNotMem.lean/declarations/powersetcard-map.md) | 308 | `result-track:4028e6a25774b99b41a5f9460eb460c8b6358b346c4b2271c4d59929d880d013` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=258bef6c880e9195b151c4b3ae1c4d7b15b3240367314aa4b84d59e7f0530fd8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variantbd13b3b68ad13d887334ce4fb425eff669708ec3f50e13504cf18142a5e46d62.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Powerset/Variantbd13b3b68ad13d887334ce4fb425eff669708ec3f50e13504cf18142a5e46d62.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
