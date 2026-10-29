# Verification target: Subgroup Finite Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "160fdb43d564d95653e907be425948ae12204193",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `160fdb43d564d95653e907be425948ae12204193`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.BigOperators` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Card` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Range` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/instance-source-edition-2.md) | 36 | `declaration-track:d95e8f8f56fc55cf43708e0778770e813818e5bf770850d14b2d6d69784eda87` |
| 2 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/instance.md) | 40 | `declaration-track:0d8b4bf6f16fee1ba0ac02d755d99449b5648c90493f2d13188244d0af22b0d7` |
| 3 | `theorem` | [list_prod_mem](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/list-prod-mem.md) | 56 | `result-track:23c7d0f5f54a3b7cf3d2e67118092c3216997b3008be8dec2efdf39e6f7d7df2` |
| 4 | `theorem` | [multiset_prod_mem](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/multiset-prod-mem.md) | 62 | `result-track:9658e2bc63487b0dabd194f40b3c9ca96238a5dbbb45115f9bf0c890f00bebcc` |
| 5 | `theorem` | [multiset_noncommProd_mem](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/multiset-noncommprod-mem.md) | 67 | `result-track:ecea4e2c10591adef52cba8b230c0bc7ad4626028569731f926c3e9ccf69344d` |
| 6 | `theorem` | [prod_mem](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/prod-mem.md) | 75 | `result-track:e985d03c12611e5b59f0a5a2b3ef89e8061e4275e7b55b708a0029bb65ed4727` |
| 7 | `theorem` | [noncommProd_mem](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/noncommprod-mem.md) | 80 | `result-track:4ad36a4d48f89e988416ec569a61746d80ee5580a697ed89ad34d4aa897526fa` |
| 8 | `theorem` | [val_list_prod](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/val-list-prod.md) | 85 | `result-track:1a067ef52c805b3a0936ea001bd3b30bd33e32c399c9657709f1625c15d73e4f` |
| 9 | `theorem` | [val_multiset_prod](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/val-multiset-prod.md) | 89 | `result-track:a97ca53ec4cf2c8eb8114fb5dd5ea67d3592e6626c6b11eba4c7e02928b9a8c6` |
| 10 | `theorem` | [val_finset_prod](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/val-finset-prod.md) | 94 | `result-track:9439dd4b3b4593b08c8a7f1406ea692f2ef4041b58ba40165d8eaea021806895` |
| 11 | `instance` | [fintypeBot](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/fintypebot.md) | 99 | `declaration-track:328d8778655d7f945ee096a3c6dab57ef0d134c0ddeab052d2698b53c88f9509` |
| 12 | `theorem` | [card_bot](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/card-bot.md) | 105 | `result-track:423a8afecd8a3bcdb09695d27780d8c7f2095060bbd8818031c36389278ed5a8` |
| 13 | `theorem` | [card_top](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/card-top.md) | 108 | `result-track:31e89b1b5f3d11eb028f0873bcd08e5b79a70683d3af6ba7e039705aa9af38a0` |
| 14 | `theorem` | [eq_of_le_of_card_ge](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/eq-of-le-of-card-ge.md) | 112 | `result-track:8c0e2c997eb37c4cfffc70f0680e984c360d9140cbc9d6ff45db2d2c4d2cd16c` |
| 15 | `theorem` | [eq_top_of_le_card](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/eq-top-of-le-card.md) | 118 | `result-track:dc6f050b1855f6a692717bcb8cb8ccba170d3bad66c2153fc224ce24f4a3ef57` |
| 16 | `theorem` | [eq_top_of_card_eq](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/eq-top-of-card-eq.md) | 122 | `result-track:357f2d50bcb6b10ee4144e453c5711a250546e65ee05a811896517df2fce0da6` |
| 17 | `theorem` | [card_eq_iff_eq_top](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/card-eq-iff-eq-top.md) | 127 | `result-track:36e882ac4362ecaf0bc0bc45addde7a884397d0a48fc7371e3017eee21ebe7bf` |
| 18 | `theorem` | [eq_bot_of_card_le](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/eq-bot-of-card-le.md) | 131 | `result-track:14e6add321805395e921b9a5ef621cefeb444f1c33962ea96aaeb8a4d45c2f32` |
| 19 | `theorem` | [eq_bot_of_card_eq](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/eq-bot-of-card-eq.md) | 136 | `result-track:c16757f29e7b135f3a6376c25ea84a9238db32933c26852062422ab3e2645532` |
| 20 | `theorem` | [card_le_one_iff_eq_bot](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/card-le-one-iff-eq-bot.md) | 141 | `result-track:e50dfc18bc05170428afb41db64cfe70df95a33b9601f71b6894bdb1e970365d` |
| 21 | `lemma` | [eq_bot_iff_card](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/eq-bot-iff-card.md) | 144 | `result-track:2f858294561e580b1eb9db6524aa503ec17d79d5976e08f0bb6c775522618601` |
| 22 | `theorem` | [one_lt_card_iff_ne_bot](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/one-lt-card-iff-ne-bot.md) | 148 | `result-track:4ad86d52597628219dd5f5bffd28c719064fbfa11f9556620a032547a731fe84` |
| 23 | `theorem` | [card_le_card_group](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/card-le-card-group.md) | 152 | `result-track:dde476f8d29e94795f473cf635da08a63c604e3747157ada1c3ac6759e1af39e` |
| 24 | `theorem` | [card_le_of_le](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/card-le-of-le.md) | 156 | `result-track:d219c8d0b622812bae5ffe3f2c133280d7824c97ea5c9cf98ec37236c65bcfc0` |
| 25 | `theorem` | [card_map_of_injective](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/card-map-of-injective.md) | 160 | `result-track:07667630d68862124f6910a82b32a2f4d2a5945fb7f1853ef681bace97804572` |
| 26 | `theorem` | [card_subtype](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/card-subtype.md) | 166 | `result-track:d4eb6bfc4c9445552359b37170044b09601f33a1ea32bbe3c6ecbf5c0406eb6f` |
| 27 | `theorem` | [pi_mem_of_mulSingle_mem_aux](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/pi-mem-of-mulsingle-mem-aux.md) | 181 | `result-track:fc7cea662d11dea0020510933b19997dbed2ddec12f250a3fcedd65b96632c5a` |
| 28 | `theorem` | [pi_mem_of_mulSingle_mem](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/pi-mem-of-mulsingle-mem.md) | 217 | `result-track:1c00cb018ea79eee8de16cf3fc0f3db5c8de314a1713e1dbf580e74fffd2faba` |
| 29 | `theorem` | [pi_le_iff](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/pi-le-iff.md) | 225 | `result-track:4c265afc5484719a400ded63e5f539e641b5e480cb78e50de7b6e81e74dbf3db` |
| 30 | `theorem` | [mem_normalizer_fintype](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/mem-normalizer-fintype.md) | 241 | `result-track:876fc1aec443b1de260b20c044e55e787fcad744c9e76eb171b2f9d0b4c5c3b8` |
| 31 | `instance` | [decidableMemRange](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/decidablememrange.md) | 265 | `declaration-track:d7de4b2133941891bdf10a9b698fdb4614f3de164c70673a7df055bcd8c0853a` |
| 32 | `instance` | [fintypeMrange](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/fintypemrange.md) | 278 | `declaration-track:0db0b3f2765c0653bbc90ce1f47de4535f98db67fc00cd609a44e14db820a87c` |
| 33 | `instance` | [fintypeRange](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/fintyperange.md) | 290 | `declaration-track:108cf57a27f2ac6b3a7d8b2bfc84178ae0ceb657b521ff718fd5e2333bb056fb` |
| 34 | `lemma` | [Subgroup Finite Namespaced](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/card-coesort-mrange.md) | 293 | `result-track:bd689e2e1b22f2bd8ba8f74f8a5e30dc62a5646a8de5e5a48ca270075acc1cc6` |
| 35 | `lemma` | [Subgroup Finite Namespaced](../../../../GroupTheoryAndGeneralizations/SubgroupFiniteNamespaced.lean/declarations/card-coesort-range.md) | 298 | `result-track:4a0de2502cfa9704a336dd1dced820ad0ff4967f0e303d19af16bd1c195afdb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5ad182c43636f481a940a5ce53db837a23e9b87dcada557244f15536dcde2f7b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Finite/Variantae484a459685ba4c8391b20febed32f8d80dcaf29a851217b88c02e8a7d1e39a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
