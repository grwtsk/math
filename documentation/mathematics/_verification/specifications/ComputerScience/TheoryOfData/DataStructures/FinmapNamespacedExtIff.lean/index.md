# Verification target: Finmap Namespaced Ext Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3e35e946ff945582a5daeded0d2a7b7a2117c3b",
  "lexical_observation_count": 110,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finmap/Variant005a47eed17324e65fca62af0afe0342af88045d072be91105c41245e97035f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3e35e946ff945582a5daeded0d2a7b7a2117c3b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finmap/Variant005a47eed17324e65fca62af0afe0342af88045d072be91105c41245e97035f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finmap/Variant005a47eed17324e65fca62af0afe0342af88045d072be91105c41245e97035f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.AList` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sigma` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Part` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/keys-source-edition-2.md) | 35 | `declaration-track:397b24e001548dd84fed78fe8444b9b69132caf052b55b8d8c36064d49d8450f` |
| 2 | `theorem` | [coe_keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/coe-keys.md) | 40 | `result-track:9dfc16e26e7a4d9f40159ea9d2504eb41514bfc79d1bcbebc63267ed52e2094b` |
| 3 | `def` | [NodupKeys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/nodupkeys.md) | 46 | `declaration-track:de0372197c3c865f6cb024c3ee678c86703710a985d0e0002ed5d5c02cdeb990` |
| 4 | `theorem` | [coe_nodupKeys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/coe-nodupkeys.md) | 51 | `result-track:2e59a0700332a785250eb70b09749e48bd92326ddef5a35dc557ebdd208e8470` |
| 5 | `lemma` | [nodup_keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/nodup-keys.md) | 55 | `result-track:5287be1ac8a3c2edf6c612d05a856beca140cdbaf5d2721c0da3802a325a53ab` |
| 6 | `lemma` | [NodupKeys.nodup](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/nodupkeys-nodup.md) | 60 | `result-track:212ac2318a3c3d9c7007f8dc7f64d39e0302e4add09c53479c71dd5d7408cc15` |
| 7 | `structure` | [Finmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/finmap.md) | 69 | `declaration-track:7f7d1b2245b3fed336cafa370c3b4720d86b3c212652e59e85d9e47f8a037d58` |
| 8 | `def` | [AList.toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/alist-tofinmap.md) | 77 | `declaration-track:b15117bd8ee60a79959a767dcb69385512e6ab61a9265a77065e9858fdcff535` |
| 9 | `theorem` | [AList.toFinmap_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/alist-tofinmap-eq.md) | 83 | `result-track:2a9cf122dba118ccc97c60b31ad1fc7faabf4e181dc989a2037c6b51906f2c7f` |
| 10 | `theorem` | [AList.toFinmap_entries](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/alist-tofinmap-entries.md) | 91 | `result-track:bc40858e42ae526d2f785176ad98c19811d939e148c067e5dd4f4f629f2f7c77` |
| 11 | `def` | [List.toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/list-tofinmap.md) | 97 | `declaration-track:353cafe38323625d3a185750e7599d077087215bfd67efc34836c1596cb9b5e7` |
| 12 | `lemma` | [nodup_entries](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/nodup-entries.md) | 105 | `result-track:cd2c474ebd4f800480bc41c450f221fc27d7900548b8c829265427ef72a365a8` |
| 13 | `def` | [liftOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/lifton-source-edition-2.md) | 111 | `declaration-track:6bce79c5270b06032fb67bb34b91e6c03fe2a2e65add171612a064a46c67d32f` |
| 14 | `theorem` | [liftOn_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/lifton-tofinmap-source-edition-2.md) | 126 | `result-track:e624a1ecd3ee9b9b814344d921d45f580249b1990d1a90de4d8fc5d04ce16643` |
| 15 | `def` | [liftOn₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/lifton.md) | 133 | `declaration-track:07d140170c56e278abeadd4de8169a2430b020ae88af30db3174233cf064b0e8` |
| 16 | `theorem` | [liftOn₂_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/lifton-tofinmap.md) | 142 | `result-track:4bc1fd7ead5245a1a4e93446b448c5ee7db32b87e8f68b24e6f7ea4561400a66` |
| 17 | `theorem` | [induction_on](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/induction-on-source-edition-2.md) | 150 | `result-track:be44bab9c5967d71d46f00b57cfffe5b1b7586988109bd02bfe9a723611ebab6` |
| 18 | `theorem` | [induction_on₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/induction-on-source-edition-3.md) | 155 | `result-track:f70f9d26d1240f4174e3841d29e9cf615a7e7a1377f8ca7fbfef438ce78d8a60` |
| 19 | `theorem` | [induction_on₃](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/induction-on.md) | 161 | `result-track:4688bd559c61783eb56ce831aecc7e891bf47081e94a540d8e430a2b8ea81136` |
| 20 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/ext.md) | 169 | `result-track:6ba1a752c86139c09ed978c549990a490c4ffc0dbe1f15607911fe1b858c7b8c` |
| 21 | `theorem` | [ext_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/ext-iff.md) | 174 | `result-track:9ba06de062aedff7b700c2e1c42f7285689f100f325e232c1c763b4a4bcbc75d` |
| 22 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/instance-source-edition-5.md) | 181 | `declaration-track:bb4d19b83d54a8cd1440459457d6eee0ed624f1a88ac2731c720b374b651c1b2` |
| 23 | `theorem` | [mem_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/mem-def.md) | 184 | `result-track:e21f2cff8dbec48ddff43115b5598fc806818040dbf5af0aa2de2c6528db24b6` |
| 24 | `theorem` | [mem_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/mem-tofinmap.md) | 189 | `result-track:5ae389ab8128a0d5e321b655b0b26fba4ca08485753c45e9c7def3abcb186d01` |
| 25 | `def` | [keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/keys.md) | 196 | `declaration-track:010889de1871089cdd86bb120706ab903b8561b1ee739e96e3a58f43dbdf57ef` |
| 26 | `theorem` | [keys_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/keys-val.md) | 201 | `result-track:d59f5e5c9876cb6c6b10d3b34567016d77d1391c48183b429d384e0d1201866f` |
| 27 | `theorem` | [keys_ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/keys-ext.md) | 206 | `result-track:e455da6fc738bc6c320691d16636332dab7163e04dbb572dc2523146020e272b` |
| 28 | `theorem` | [mem_keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/mem-keys.md) | 210 | `result-track:cd1213b8f3a39b7e5f2c2ca00312f1e2849a9d4a04c497d23f2131978dbd5770` |
| 29 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/instance-source-edition-6.md) | 217 | `declaration-track:d92c7c54f4d44e2a87a34f0353de37d4bdbb92c281cdfef020ebe22ad90a8709` |
| 30 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/instance-source-edition-2.md) | 220 | `declaration-track:4f718c90c59d7ee4f9bd674b9ba4112c9d05418080167bac9211a051e2fa200d` |
| 31 | `theorem` | [empty_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/empty-tofinmap.md) | 224 | `result-track:421545c48fdabc23689d2ed1622a73b5705a661cf905106ebb422698aff8db74` |
| 32 | `theorem` | [toFinmap_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/tofinmap-nil.md) | 229 | `result-track:5802fd9edc286e97d7cb492a1f6b34e62b6686c3ecbf17c03e39e3ed84e31028` |
| 33 | `theorem` | [not_mem_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/not-mem-empty.md) | 233 | `result-track:80740954019783babc9cc6d1f9d52742f0470de50bf243228cc34469a43636a3` |
| 34 | `theorem` | [keys_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/keys-empty.md) | 238 | `result-track:e497dd26bd91ec4f3a6d1432fdcbaed81185a07efd26165dc4522d2358580dc7` |
| 35 | `def` | [singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/singleton.md) | 245 | `declaration-track:383b40d9d2727fd5219b7627b8e22c6a02e2c4a35f7081372220e2c39c5e95e8` |
| 36 | `theorem` | [keys_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/keys-singleton.md) | 250 | `result-track:74f89fda04600475f5df164eca0318ab0a2cf00e3b08f5cfa1131ae3f5b3ed69` |
| 37 | `theorem` | [mem_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/mem-singleton.md) | 255 | `result-track:3788861626737af2c29b5f26afcec039207f2efdfee5851d0906f832277de2ef` |
| 38 | `instance` | [decidableEq](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/decidableeq.md) | 263 | `declaration-track:59365cd847388d05987ff28ecb8c485557795d23f6189423a25ef14c6fffdf09` |
| 39 | `def` | [lookup](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/lookup.md) | 270 | `declaration-track:8d65deb59d460747d990399db91bb8146a667e3213d3a6c754426454e5ada217` |
| 40 | `theorem` | [lookup_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/lookup-tofinmap.md) | 275 | `result-track:c14ae2c02dcf8144cf5d9be6ee1fc55d70601df9218fe6f00de9ddd719525022` |
| 41 | `theorem` | [dlookup_list_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/dlookup-list-tofinmap.md) | 281 | `result-track:af73e1942bb18c8d50e698ab96527ebcb9e3613347fb6204deb8079dd0ecfe16` |
| 42 | `theorem` | [lookup_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/lookup-empty.md) | 286 | `result-track:2aae8a5209f45f91e4092407b4b9d785c9973bb6d457057f0d362e8dec9ed517` |
| 43 | `theorem` | [lookup_isSome](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/lookup-issome.md) | 290 | `result-track:fc3af6a27e066428de742974eb954cb46e7936bac7f51c6d57125616d4007543` |
| 44 | `theorem` | [lookup_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/lookup-eq-none.md) | 294 | `result-track:9c410f314e7a31c4d2d5cbecfa90095a5b0b475ffc3bc4e92418ac2d905a9f2a` |
| 45 | `lemma` | [mem_lookup_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/mem-lookup-iff.md) | 298 | `result-track:12bfeb35fd936f402177217e845c21ac7855dd4b8bc0f2706a59397723b6ba39` |
| 46 | `lemma` | [lookup_eq_some_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/lookup-eq-some-iff.md) | 302 | `result-track:bf1a8bd4063f5ec24bd873ad349e611a4fa77b5942ce9025f2bbd4bbfaeb4d62` |
| 47 | `lemma` | [sigma_keys_lookup](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/sigma-keys-lookup.md) | 305 | `result-track:057918cd1595b4842ac895a5674baa3ee03ba0f5c11a9fcef46553986ca64d90` |
| 48 | `theorem` | [lookup_singleton_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/lookup-singleton-eq.md) | 312 | `result-track:d39065c0590279243634b083f74f15444bd273543d24aa061876822b87b89623` |
| 49 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/instance-source-edition-7.md) | 316 | `declaration-track:e79e42b83f0419202f57bed0c5c53d67e99ef2ace981a7f9d299cb2b81fe3148` |
| 50 | `theorem` | [mem_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/mem-iff.md) | 319 | `result-track:20ecd6cba830bed9250e2a4dd52feb05620c0fbb9454962b17f8bd52c4a808ab` |
| 51 | `theorem` | [mem_of_lookup_eq_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/mem-of-lookup-eq-some.md) | 324 | `result-track:a6d4a115c52f9f94b9aa276fed80279b4601e902f1f519945e1c3f10dbdf843a` |
| 52 | `theorem` | [ext_lookup](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/ext-lookup.md) | 328 | `result-track:f76654c4b4b50660b8383c0ba870cfa93a6d67e3b5e18a6d4689fa66c1a8f3f6` |
| 53 | `def` | [keysLookupEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/keyslookupequiv.md) | 340 | `declaration-track:9ba8d99abc3aac4939fa02b6ec7805cbc63c8b9bdd6389c9a4da4e7a9eb6fd6a` |
| 54 | `lemma` | [keysLookupEquiv_symm_apply_keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/keyslookupequiv-symm-apply-keys.md) | 355 | `result-track:df51e5214c65d91c31968885a1c5885cd397b2dae2443d0323a0710a5f02e4b9` |
| 55 | `lemma` | [keysLookupEquiv_symm_apply_lookup](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/keyslookupequiv-symm-apply-lookup.md) | 361 | `result-track:b81858d8e089aac176d0e7f388141271c7ebd04759de994cdc6fc69250295292` |
| 56 | `def` | [replace](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/replace.md) | 371 | `declaration-track:10a92c47fbb8bd09515af4f03baf1adfd62fbbe4e1bc20ba5487334adab9eade` |
| 57 | `theorem` | [replace_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/replace-tofinmap.md) | 378 | `result-track:0fe72f31746b9aff46d0966923374218c5dc789026bbec448af314958100a08e` |
| 58 | `theorem` | [keys_replace](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/keys-replace.md) | 384 | `result-track:45d9357da88003fc4623c61c2e8a862073db08ecaddc7ece7da5844685f48c6b` |
| 59 | `theorem` | [mem_replace](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/mem-replace.md) | 389 | `result-track:ed309b56062adce79ec495e41706fd3cb6ed943fd91e88b64f3ab2a3db05cdfe` |
| 60 | `def` | [foldl](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/foldl.md) | 398 | `declaration-track:8c8c4f0c85679f4549b7027174228769d52a764dca3342980b00c9f4c16712e8` |
| 61 | `def` | [any](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/any.md) | 404 | `declaration-track:3467e618db1c85cd70f79b62bf30c7d770005ffd7fc7a1fe11300757137c878d` |
| 62 | `def` | [all](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/all.md) | 411 | `declaration-track:a0318ec31e3551bd000808bc242fcaf9dffdf4d02ae0c5c227c05294748dd2b6` |
| 63 | `def` | [erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/erase.md) | 423 | `declaration-track:73ec4d7065bda9d3f882803243362d23225f7dc4f50ee977faf32ca695a59c3e` |
| 64 | `theorem` | [erase_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/erase-tofinmap.md) | 428 | `result-track:a8515f3e4af3f8cf5c97a2bc9988fc31ecbc4ec62a28b150e508f1b958e4e48d` |
| 65 | `theorem` | [keys_erase_toFinset](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/keys-erase-tofinset.md) | 433 | `result-track:6c20970612e5db5ed6dd9974da7987f6192cc6b7453fad4dff61a4395af50077` |
| 66 | `theorem` | [keys_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/keys-erase.md) | 438 | `result-track:787df78359912683890c73c597e19fc234fb8fa9de696a009ddde25cfe31450b` |
| 67 | `theorem` | [mem_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/mem-erase.md) | 443 | `result-track:561836ada6e6f828ff732c5891ff6e5749bb221f7f1d28a7d9c361926f1c3da4` |
| 68 | `theorem` | [not_mem_erase_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/not-mem-erase-self.md) | 447 | `result-track:317f3e497ece3090056cc247fc6ccabde23f11fe9b8339b4de8413a17348f7ce` |
| 69 | `theorem` | [lookup_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/lookup-erase.md) | 454 | `result-track:0f84194b71749f01038ac2647d44ea59e8a14ac19096ecb3e2d248e3aa823890` |
| 70 | `theorem` | [lookup_erase_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/lookup-erase-ne.md) | 459 | `result-track:facd908db67537b19f453b49cdd4dfee0d7d6e43006d4e5bb36c8f8264902927` |
| 71 | `theorem` | [erase_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/erase-erase.md) | 463 | `result-track:79e2e26d09fab8c54b79c398852a4cbc2fa637f45cc0da431920e1c60c1249eb` |
| 72 | `def` | [sdiff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/sdiff.md) | 471 | `declaration-track:916cc087a053b0ca9341d9b1880de43063d3d6a9648e478e9f36fea73fd05f8b` |
| 73 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/instance-source-edition-4.md) | 475 | `declaration-track:ba67762285bd9addfbd86ea2fd1c3ffcf6e0779c79dc950154962918757af187` |
| 74 | `def` | [insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/insert.md) | 482 | `declaration-track:7eb63d14bc0faf59b1f6251335340350bf773015f59554a4bd557720c1ba1461` |
| 75 | `theorem` | [insert_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/insert-tofinmap.md) | 488 | `result-track:69f2787aa604c20984099277e59cbff978f916dc3a27fd70dd8d8336bfcc15c4` |
| 76 | `theorem` | [insert_entries_of_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/insert-entries-of-neg.md) | 493 | `result-track:e723ea2901843b3786eb626a22819ef8d0fd0105472b7de3154047f68b658ef7` |
| 77 | `theorem` | [mem_insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/mem-insert.md) | 501 | `result-track:f4a6a7585612693a6e164188add86484d02e005af6acae32bd395848cc4b3907` |
| 78 | `theorem` | [lookup_insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/lookup-insert.md) | 506 | `result-track:8371f277d2527896bb26502eb40214f70056f26f588b12318537701f4c9aa53d` |
| 79 | `theorem` | [lookup_insert_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/lookup-insert-of-ne.md) | 511 | `result-track:3801e718a804591140949ac4330445fff0cca5a9ff0d3e45dd37c5294d12f1d8` |
| 80 | `theorem` | [insert_insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/insert-insert.md) | 517 | `result-track:5ada01d16b22887f1d5334950f1f24be942ff6904b2d980863cb0f617cd6a8aa` |
| 81 | `theorem` | [insert_insert_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/insert-insert-of-ne.md) | 522 | `result-track:96425b51d54d935bc525370c86eb9a3f43b7db519789fee3c1eced10d7e797a0` |
| 82 | `theorem` | [toFinmap_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/tofinmap-cons.md) | 528 | `result-track:1bba38713949f717f0a2a8502888c173efece31297145d9e4d8732bac9c95d7b` |
| 83 | `theorem` | [mem_list_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/mem-list-tofinmap.md) | 533 | `result-track:a31a98625ca1129bc7c6e0d3394f18a8c4912d82e1410018b63b7e00c6460624` |
| 84 | `theorem` | [insert_singleton_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/insert-singleton-eq.md) | 547 | `result-track:560e1bcd96e34153d65d86049c5ea5e161e698e75ba803f9b2e1fe208cd19ea6` |
| 85 | `def` | [extract](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/extract.md) | 554 | `declaration-track:83f37aedb5a66258a9c5276e526c8eca2a4046148cef792f1c58ee4b586d7778` |
| 86 | `theorem` | [extract_eq_lookup_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/extract-eq-lookup-erase.md) | 560 | `result-track:41db3daa7c1a353091b3a5f1a73f8fcf8b2b1c9b82c4a0acc98e89fdae866bb8` |
| 87 | `def` | [union](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/union.md) | 568 | `declaration-track:c30e17f69ff995ab42ac43943801f81d4bd43ea3529778311a7a47fa89fa6ad7` |
| 88 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/instance-source-edition-3.md) | 573 | `declaration-track:a3865904ccd19bc455356b06f44761b87f1016d8caebce9494c6b23790f29f8e` |
| 89 | `theorem` | [mem_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/mem-union.md) | 577 | `result-track:7d2c711a9d317f82985dc9bf5ff4530290414763772f09b8d40ceefff52ebcf0` |
| 90 | `theorem` | [union_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/union-tofinmap.md) | 582 | `result-track:82c5f9fba6104e7e985198d82e32bb126a5b838bbaac73838903c7e415f53dad` |
| 91 | `theorem` | [keys_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/keys-union.md) | 586 | `result-track:5165f2af7ff41bb4ac14c9c4895f588bac91873d31e5e040b8c2ed09171a58c1` |
| 92 | `theorem` | [lookup_union_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/lookup-union-left.md) | 591 | `result-track:41acb679c9bd5bb87e7747f88addd49e55e6a3248407ac507a0f85d9b827d9e8` |
| 93 | `theorem` | [lookup_union_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/lookup-union-right.md) | 596 | `result-track:495f1069a93bb21ce178d2e825d4a2797a44db661810b414833330de02fce439` |
| 94 | `theorem` | [lookup_union_left_of_not_in](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/lookup-union-left-of-not-in.md) | 600 | `result-track:1abe463fd76848d9e9f24073a713a23450a1132a990ad8bc2b3ac260d0b32b52` |
| 95 | `theorem` | [mem_lookup_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/mem-lookup-union.md) | 608 | `result-track:517e0df9fe9c4f1d23ebdde11ad53d6b6c48f0b1c85538575f71a0c01b0c22ac` |
| 96 | `theorem` | [mem_lookup_union_middle](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/mem-lookup-union-middle.md) | 613 | `result-track:c0f883b984af960a0b7918cc519856d299ddd5b1de3c608a02a91fb87666d632` |
| 97 | `theorem` | [insert_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/insert-union.md) | 618 | `result-track:654f5d3d8b1cb05e21a1dae9bb020aa404a991c96d48841eefd2ba204213f7ef` |
| 98 | `theorem` | [union_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/union-assoc.md) | 622 | `result-track:3b491d8a448c3932232c6e6cb1cf0f7a0261a3733f9ac5bfe9f992ec8f98f7ed` |
| 99 | `theorem` | [empty_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/empty-union.md) | 628 | `result-track:8b4aa3aca38779e7f4c5b7df46b57a246672465e3360c5f55d840de50c2d2793` |
| 100 | `theorem` | [union_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/union-empty.md) | 635 | `result-track:854b5f78c07f9703b5ab72a1cceadeee5d2eb3376286baee8a64c1f6108a6721` |
| 101 | `theorem` | [erase_union_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/erase-union-singleton.md) | 641 | `result-track:85d4bbeb1c56faf47a34f46e0209c92235effd8aea670ed0029f35513961f87b` |
| 102 | `def` | [Disjoint](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/disjoint.md) | 656 | `declaration-track:0d3aed2a1a5fa7f5bdc547f5d2086856c3f46ad07ac351848107650a7f7e8d90` |
| 103 | `theorem` | [disjoint_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/disjoint-empty.md) | 660 | `result-track:bfcec5882be84c8d079833bc49a1e2f5a83ba3aa32f48aad3718b58adf408646` |
| 104 | `theorem` | [Disjoint.symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/disjoint-symm.md) | 665 | `result-track:e4b42670554904bdae68b3e3f3037c70d7f5d4e04d28839460c295b15d5cc2ec` |
| 105 | `theorem` | [Disjoint.symm_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/disjoint-symm-iff.md) | 668 | `result-track:f38c00dd0a39a119d4a154cf2c640491d2227fa0fdcce076e0dafb437c2080ae` |
| 106 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/instance.md) | 676 | `declaration-track:1b32e084d0a48997ec6ee97f8327774ce6a51a08f7747043390609674174bdc9` |
| 107 | `theorem` | [disjoint_union_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/disjoint-union-left.md) | 678 | `result-track:b5279b5d1f880dc8723b07ad688f23efa5d4cc1057488f8eead6419dc8caf4f3` |
| 108 | `theorem` | [disjoint_union_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/disjoint-union-right.md) | 682 | `result-track:b8e48879becaa1034b9cf6c18ca9318337db802d0c1f52305005d8a408a3035d` |
| 109 | `theorem` | [union_comm_of_disjoint](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/union-comm-of-disjoint.md) | 687 | `result-track:2d6c08ac2c1c0f5c9141d0e574fee4ebcc69fe053d3f14b54132ef6b2581b689` |
| 110 | `theorem` | [union_cancel](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedExtIff.lean/declarations/union-cancel.md) | 693 | `result-track:61a275ee1115e923ea84e765c7868a2bb7d66802280b4fbf5c8a439c05953918` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e90961bac146147337b3fda1dfcc0e87c32f097ea3661f41d390fd32e16849f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Finmap/Variant005a47eed17324e65fca62af0afe0342af88045d072be91105c41245e97035f5.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Finmap/Variant005a47eed17324e65fca62af0afe0342af88045d072be91105c41245e97035f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
