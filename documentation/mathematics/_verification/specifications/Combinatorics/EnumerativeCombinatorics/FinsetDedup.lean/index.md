# Verification target: Finset Dedup

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "558784b0d6409f80bc9a65b3b52c36ceb2f25631",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Dedup/Variantf71f0a5d490feb3e67f2b126f8486dced79af0db39975c2ffa96cbc2cc5d119f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `558784b0d6409f80bc9a65b3b52c36ceb2f25631`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Dedup/Variantf71f0a5d490feb3e67f2b126f8486dced79af0db39975c2ffa96cbc2cc5d119f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Dedup/Variantf71f0a5d490feb3e67f2b126f8486dced79af0db39975c2ffa96cbc2cc5d119f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Dedup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dedup_eq_self](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/dedup-eq-self.md) | 34 | `result-track:96e20ff280cd6e35cd5abbd593cf982c3e726ad5563e0543c809c851488fd23d` |
| 2 | `def` | [toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/tofinset-source-edition-2.md) | 46 | `declaration-track:9cbcb2dae0bc80aee3e096ccbec6a59acda1345ff92d98d92dbbcb3a65370cf7` |
| 3 | `theorem` | [toFinset_val](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/tofinset-val.md) | 50 | `result-track:791b204541441fd64af4303330b5bd39addf107f89ff1f42f5d8475e96342c42` |
| 4 | `theorem` | [toFinset_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/tofinset-eq.md) | 53 | `result-track:4ccbf5fb9ee0887695e307f295d94b65378c60a4151ef3c8845c6ce27c1f41cb` |
| 5 | `theorem` | [Nodup.toFinset_inj](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/nodup-tofinset-inj.md) | 56 | `result-track:6fe02cfb807e64dce1eef137db1dfc7142d53617c505104fe361d63037c5199c` |
| 6 | `theorem` | [mem_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/mem-tofinset.md) | 61 | `result-track:1579fa93a241595ce330afa55aa0fdbb6f78a268a886c048ac161ad4d582db90` |
| 7 | `theorem` | [toFinset_subset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/tofinset-subset.md) | 65 | `result-track:317bc7c410813cbd78b90da331089c9a815e544949cbf858184e8d1c57f2e262` |
| 8 | `theorem` | [toFinset_ssubset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/tofinset-ssubset.md) | 69 | `result-track:83e3b74187c7719f5e4db262be46a481f8be0ca51bf5ad1f5ba49de78d354df6` |
| 9 | `theorem` | [toFinset_dedup](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/tofinset-dedup.md) | 74 | `result-track:542f4aee0feceda7052e83105e8ea00524bd87b0c642ee9d2b8c7126c5e3384f` |
| 10 | `instance` | [isWellFounded_ssubset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/iswellfounded-ssubset.md) | 77 | `declaration-track:1bd7a5ca9fc9a41a2a983cd3829ecca0d50ca39e06efed082fca240a41a729bf` |
| 11 | `theorem` | [val_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/val-tofinset.md) | 86 | `result-track:c90d65021d96b5f8eb2095b4574490be03eddd5b1f960a689779f6a3d25a5cf2` |
| 12 | `theorem` | [val_le_iff_val_subset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/val-le-iff-val-subset.md) | 90 | `result-track:e106d6f3bf93e8fd3500294dd073cc813b91b6a0f07077dcb1d3cc0ba2fd389f` |
| 13 | `def` | [toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/tofinset.md) | 101 | `declaration-track:56944f03112db2cdf5ed65f0650022fb86c49ba9006733598a79daf7efa36b55` |
| 14 | `theorem` | [toFinset_val](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/tofinset-val-source-edition-2.md) | 105 | `result-track:7cc5877471fb703da7d28e8678195ed852f9fcc7b565b8b5754e2dd3ee4b134e` |
| 15 | `theorem` | [toFinset_coe](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/tofinset-coe.md) | 109 | `result-track:773fb6cddfc7358249571bc6b3978798f6df34a83bd57d872d8920d9688b0989` |
| 16 | `theorem` | [toFinset_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/tofinset-eq-source-edition-2.md) | 112 | `result-track:5350b705d2eb05845436aa3c39d542c13f5fa16273cc12eff3a9fe63a6802eae` |
| 17 | `theorem` | [mem_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/mem-tofinset-source-edition-2.md) | 116 | `result-track:57c80e850684262a4ea2aeedc03bab0a563fffcd9583210e834da6703db30804` |
| 18 | `theorem` | [coe_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/coe-tofinset.md) | 120 | `result-track:fa78b92cb29a83170c514df8c63bbfdbfe94a1a649cb6384bac8d3569984610a` |
| 19 | `theorem` | [toFinset_surj_on](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/tofinset-surj-on.md) | 123 | `result-track:178ce52daf1409f39d3356e1354190c4212a9efd3a1a6bb7bfb5e10b46a2e195` |
| 20 | `theorem` | [toFinset_surjective](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/tofinset-surjective.md) | 127 | `result-track:c2cbb6d651b6d9855a688784481d7e3b29da98d819cedb6e6eda308cdf5f9899` |
| 21 | `theorem` | [toFinset_eq_iff_perm_dedup](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/tofinset-eq-iff-perm-dedup.md) | 131 | `result-track:36af451337207a07ccc32005366d7c36f77d02e0e325df281c291d540c275a0a` |
| 22 | `theorem` | [toFinset.ext_iff](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/tofinset-ext-iff.md) | 134 | `result-track:43550e3e756eb1936bacad406d2ac8a03350f4992bda777bf80e65270d12c4ca` |
| 23 | `theorem` | [toFinset.ext](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/tofinset-ext.md) | 137 | `result-track:28ce558f03597fd48ea0285ab41bd0aadd0e0ce5428d78fb21fb579ba7062a7e` |
| 24 | `theorem` | [toFinset_eq_of_perm](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/tofinset-eq-of-perm.md) | 140 | `result-track:cad6e5bd950ca147800bd7856ef2e9b627514e724e01681a6ca4f69a25ab2391` |
| 25 | `theorem` | [perm_of_nodup_nodup_toFinset_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/perm-of-nodup-nodup-tofinset-eq.md) | 143 | `result-track:3363ee5dd08e22f047d59aad92db4994d27da4eb29fc84461a640f80ad434d35` |
| 26 | `theorem` | [toFinset_reverse](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/tofinset-reverse.md) | 149 | `result-track:ae1006d1047fd63ef6c1f15cabf60b4b7ac95aa7bb182e8d643a386c6386633b` |
| 27 | `def` | [toList](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/tolist.md) | 159 | `declaration-track:f516f802d485012b36717df84407fd5ddfd64b810243db076b9c1cfbc9f762a1` |
| 28 | `theorem` | [nodup_toList](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/nodup-tolist.md) | 162 | `result-track:b05ed906d1f3bb646da785c18610ab8ebd78c897e62402ce3826f4bdf311fa23` |
| 29 | `theorem` | [mem_toList](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/mem-tolist.md) | 167 | `result-track:0c12a352328f7a0432a3d7e00bbb9215054fcbf581881a0a947cf7452965ab66` |
| 30 | `theorem` | [coe_toList](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/coe-tolist.md) | 171 | `result-track:442777997145147ac8fb5d5cd7ba1d508e65d8e79a30d827ca37f39dc1aba6d5` |
| 31 | `theorem` | [toList_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/tolist-tofinset.md) | 175 | `result-track:bfe64cbb3c0f1ac4b686acb9dafdd465148dce3cdc9f77e52de68b07491d759a` |
| 32 | `theorem` | [_root_.List.toFinset_toList](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/root-list-tofinset-tolist.md) | 179 | `result-track:78e927a624bf0bd0b14b69d0f5349bc324d75691881c2e919a0cecd4d471e443` |
| 33 | `theorem` | [exists_list_nodup_eq](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetDedup.lean/declarations/exists-list-nodup-eq.md) | 184 | `result-track:6185a01174de551b7bde1d0b2f15daac2bf962b482f3ee23a7fe2bf874f09c51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ab8c46d97a656de99c59d557dfdcaeea3ed0ff4b2160889061ef3ac911c9ac9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Dedup/Variantf71f0a5d490feb3e67f2b126f8486dced79af0db39975c2ffa96cbc2cc5d119f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Dedup/Variantf71f0a5d490feb3e67f2b126f8486dced79af0db39975c2ffa96cbc2cc5d119f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
