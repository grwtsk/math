# Verification target: Colex Namespaced Of Colex To Colex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edc35cfcc4b517ac7d0b0068e6cc3291e9b21fa7",
  "lexical_observation_count": 80,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Colex/Variant924bdc761b78352868cf12c69b2f2b603b860a0fbdf434fad9b2b9aebf728ff7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/index.md) · [Full source](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edc35cfcc4b517ac7d0b0068e6cc3291e9b21fa7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Colex/Variant924bdc761b78352868cf12c69b2f2b603b860a0fbdf434fad9b2b9aebf728ff7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Colex/Variant924bdc761b78352868cf12c69b2f2b603b860a0fbdf434fad9b2b9aebf728ff7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Slice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.BitIndices` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SupClosed` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.UpperLower.Closure` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Colex](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/colex.md) | 77 | `declaration-track:b4b427b7913abad4670e9eca8f70f2ebfc490b454a277c42f08f243c0a4bd8e8` |
| 2 | `instance` | [(anonymous)](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/instance.md) | 88 | `declaration-track:c8550edfe1625b7036c5348cb3b2f6acf43aa8b7649ae12d17b1865d9cfc0b50` |
| 3 | `lemma` | [toColex_ofColex](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/tocolex-ofcolex.md) | 90 | `result-track:1c3c783cda9ef19c92810177625d7003cbeaf8ea8e91441a1b0b5532f5b8d32c` |
| 4 | `lemma` | [ofColex_toColex](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/ofcolex-tocolex.md) | 91 | `result-track:31740b1afc646afd97b9e6be174ff264e2af7928b5c6915ccce3310eafaa0613` |
| 5 | `lemma` | [toColex_inj](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/tocolex-inj.md) | 92 | `result-track:730bf372bb14b44fda15d9ad0c629d1845a5550f841611328d2f6eed2d5c0c4b` |
| 6 | `lemma` | [ofColex_inj](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/ofcolex-inj.md) | 94 | `result-track:27582c21993af24d1b3c6366b383461a3269a63542f6e20f5faa47e40b42d5f3` |
| 7 | `lemma` | [toColex_ne_toColex](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/tocolex-ne-tocolex.md) | 95 | `result-track:b8b95596c34aa18d92e69b2c12c94699fab05947e76943779341d16b7524761c` |
| 8 | `lemma` | [ofColex_ne_ofColex](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/ofcolex-ne-ofcolex.md) | 96 | `result-track:cc9d4d0f27e1ba6880730dbf517b3c81d0868e9c479ffd35706dd3921b7d5e92` |
| 9 | `lemma` | [toColex_injective](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/tocolex-injective.md) | 98 | `result-track:0734802017bb4d4ecdfa3f1d223cc456092f66fa02fff0b442d502ee98591d92` |
| 10 | `lemma` | [ofColex_injective](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/ofcolex-injective.md) | 99 | `result-track:23a051d282f3dd9da2c44ab120c637d75a3cc32803a609d97e5820b6028b1cc5` |
| 11 | `instance` | [instLE](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/instle.md) | 106 | `declaration-track:bb923722063cf21d1a8a539107e904f51379631ae7ab88501325df56ac1cdf8e` |
| 12 | `lemma` | [trans_aux](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/trans-aux.md) | 111 | `result-track:fdbeb5b97070679e3a5b489ab1f74c515a81d3c8fe2a9e5aee94b416e08c8003` |
| 13 | `lemma` | [antisymm_aux](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/antisymm-aux.md) | 125 | `result-track:67477d011479bbdf7050b9e1edff64e4afb702c3d0325144fd84fe920f436241` |
| 14 | `instance` | [instPartialOrder](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/instpartialorder.md) | 131 | `declaration-track:cbf124d5f140dc600936aff89f0f754a7632ddd401048042661fdd0bff99ca59` |
| 15 | `lemma` | [le_def](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/le-def.md) | 143 | `result-track:b8ef005d0760ef935fde88afe7d6cbbb552981a09283d55c62e5d9833b7b296c` |
| 16 | `lemma` | [toColex_le_toColex](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/tocolex-le-tocolex.md) | 147 | `result-track:c58a8943882cb55108da573bf787e4e0ea22ecde35e260dfa7542dd6d3ed1c18` |
| 17 | `lemma` | [toColex_lt_toColex](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/tocolex-lt-tocolex.md) | 150 | `result-track:37f46414654540c0186822013822c661cba98550e0881cc9823519eb1abd7f3f` |
| 18 | `lemma` | [toColex_mono](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/tocolex-mono.md) | 156 | `result-track:909dbf986452808f652e172ad059909207cee80299335bc42b7357fdaed5e05c` |
| 19 | `lemma` | [toColex_strictMono](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/tocolex-strictmono.md) | 161 | `result-track:24e16d6d5f521c9092c88297664829920ed7f61f476b4ece231e0dec1022c67b` |
| 20 | `lemma` | [toColex_le_toColex_of_subset](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/tocolex-le-tocolex-of-subset.md) | 166 | `result-track:1439af3e3ebc67111443024afb0a7da810467d0b319b4cf0fec14b0c14c007d5` |
| 21 | `lemma` | [toColex_lt_toColex_of_ssubset](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/tocolex-lt-tocolex-of-ssubset.md) | 170 | `result-track:d47ef04d16b6ff3c884a0711ce9199cc3e290caebb12dc031aa0aa3c582c9fd3` |
| 22 | `instance` | [instOrderBot](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/instorderbot.md) | 172 | `declaration-track:20ac317189cdc762cda6305bb50bc752aa0dd788293a57010b5312a7ca4873b7` |
| 23 | `lemma` | [toColex_empty](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/tocolex-empty.md) | 176 | `result-track:006d88ca7feaa53bcd97fdda128b2fdef0516a35b713cf0f5878c2fdddf8b850` |
| 24 | `lemma` | [ofColex_bot](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/ofcolex-bot.md) | 177 | `result-track:5918ad6a76aad05f1059f563f562c56d9d3d1e7562f88702c7ab02c542b715d2` |
| 25 | `lemma` | [forall_le_mono](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/forall-le-mono.md) | 180 | `result-track:2c98d9fab5325997b62f87b3e7f1c49a95deadcb5371679b973e4c2252a5adf1` |
| 26 | `lemma` | [forall_lt_mono](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/forall-lt-mono.md) | 188 | `result-track:df3774687f7c8c05d69f440ef3e8eb154ebc70e86505d0ad7443d8f61b02dc6d` |
| 27 | `lemma` | [toColex_le_singleton](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/tocolex-le-singleton.md) | 197 | `result-track:a83e9ce6235bc6978bec9cc970f6bec5a1c043bd93420b9cb54e4d469d887a39` |
| 28 | `lemma` | [toColex_lt_singleton](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/tocolex-lt-singleton.md) | 202 | `result-track:3830b33e7549da913a7a958089bb48b965ebe0c06fef22357aa4663befc58ec0` |
| 29 | `lemma` | [singleton_le_toColex](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/singleton-le-tocolex.md) | 210 | `result-track:ff11edc589afa4fa2a429eb6c18c114238e818cadde909ccdfc4a1f9d9b74b0d` |
| 30 | `lemma` | [singleton_le_singleton](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/singleton-le-singleton.md) | 214 | `result-track:01c670dc885ea6bde73a0192a28b51e89c0a22125e3d9a4af5cbea007e3910c0` |
| 31 | `lemma` | [singleton_lt_singleton](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/singleton-lt-singleton.md) | 218 | `result-track:216481823714f17a879ff2d5e53e49dd34d25f68f59f514305eb35af5426bf66` |
| 32 | `lemma` | [le_iff_sdiff_subset_lowerClosure](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/le-iff-sdiff-subset-lowerclosure.md) | 221 | `result-track:6c1ecb5b94a87ab147791e6de7f3581fbf43e7837f29ca95df975b14fa0c72a9` |
| 33 | `instance` | [instDecidableEq](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/instdecidableeq.md) | 228 | `declaration-track:559d76cb39948b6816434944537aee1cc00e396884e8ad40ab7dc2cea322f0bd` |
| 34 | `instance` | [instDecidableLE](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/instdecidablele.md) | 231 | `declaration-track:c0b1844a1d3d8adadabf3b218f2b208cf0728655a7cb587ff3077515e247fb7e` |
| 35 | `instance` | [instDecidableLT](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/instdecidablelt.md) | 235 | `declaration-track:f48c0129f58d5b384a44162ea5a27dd9186a37ae1c2375e584c7972406686678` |
| 36 | `lemma` | [toColex_sdiff_le_toColex_sdiff](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/tocolex-sdiff-le-tocolex-sdiff-source-edition-2.md) | 239 | `result-track:ab425e8fe93a283bcb8bfd8a0e911323bf7c0c74a52e29703a11dbfe75f617b2` |
| 37 | `lemma` | [toColex_sdiff_lt_toColex_sdiff](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/tocolex-sdiff-lt-tocolex-sdiff-source-edition-2.md) | 246 | `result-track:f4a396df809818d325b21e3fa44297112fd986028ad33f4a499c94cc0fa9630c` |
| 38 | `lemma` | [toColex_sdiff_le_toColex_sdiff'](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/tocolex-sdiff-le-tocolex-sdiff.md) | 251 | `result-track:88ea88227be23d78dfd82b7ae2f2f35ccd9dd50c75a3ff9d9afabaf825010f5a` |
| 39 | `lemma` | [toColex_sdiff_lt_toColex_sdiff'](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/tocolex-sdiff-lt-tocolex-sdiff.md) | 255 | `result-track:9a456bb866867722ec793ec543542bddf3e789a8225bfc557a88cef65e3e7713` |
| 40 | `lemma` | [cons_le_cons](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/cons-le-cons.md) | 261 | `result-track:b4efe69bab0efde96c136ec03f5e969b723ce68da3437b6ffab3a8fd0c73d784` |
| 41 | `lemma` | [cons_lt_cons](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/cons-lt-cons.md) | 268 | `result-track:d5062c03c55f7de915d349efc0cf09f3e386ddcbdc43ea7e67e3008a4de65987` |
| 42 | `lemma` | [insert_le_insert](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/insert-le-insert.md) | 273 | `result-track:6c23ec8ee66ffdeed9dca29b5bb22a3caf98f4f273b871ed7916b7aa3c65861c` |
| 43 | `lemma` | [insert_lt_insert](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/insert-lt-insert.md) | 277 | `result-track:02d8a7914c174ba228f334c1e70430da435d585779795800ab31f2f97bf75969` |
| 44 | `lemma` | [erase_le_erase](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/erase-le-erase.md) | 281 | `result-track:468979fb69d2337eeca9e0270bc148277f2a7bb9b3f6f46285b7d821f8d4446c` |
| 45 | `lemma` | [erase_lt_erase](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/erase-lt-erase.md) | 289 | `result-track:2246d238ae7aee762f7cd92d28aea9531a479a78be3fc0ddddaf3948118feed1` |
| 46 | `instance` | [instLinearOrder](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/instlinearorder.md) | 298 | `declaration-track:51df2f6a0c56573b1948963c6abf198c811b6817d468ee418c77a9074cee5b91` |
| 47 | `lemma` | [max_mem_aux](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/max-mem-aux.md) | 312 | `result-track:d47ff2a4e5dd190950d58dfa3eb9195b79c0efa02d2c710835074f9a0b46fc4c` |
| 48 | `lemma` | [toColex_lt_toColex_iff_exists_forall_lt](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/tocolex-lt-tocolex-iff-exists-forall-lt.md) | 315 | `result-track:57c1270943d5010e02a2459d04fb732948a626bb538f0845949467bc15dd34e3` |
| 49 | `lemma` | [lt_iff_exists_forall_lt](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/lt-iff-exists-forall-lt.md) | 320 | `result-track:30743f08ccc7a4523e03f1321f0b25a5b452b331984bb22d38178b95899f94c9` |
| 50 | `lemma` | [toColex_le_toColex_iff_max'_mem](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/tocolex-le-tocolex-iff-max-mem.md) | 324 | `result-track:9de045cc184bf2a79d471f363190dddfa37c6d481b8fa45b0844ece449a89a18` |
| 51 | `lemma` | [le_iff_max'_mem](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/le-iff-max-mem.md) | 338 | `result-track:2dacb6b14629a7736c953566ba9d75329fb27bbdcf68440e2219b2d3df6d40a5` |
| 52 | `lemma` | [toColex_lt_toColex_iff_max'_mem](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/tocolex-lt-tocolex-iff-max-mem.md) | 343 | `result-track:dc6d44beb2ebc237aa127d03fd1edd7ceffb979de94e9d1cb7a879250ff54cdf` |
| 53 | `lemma` | [lt_iff_max'_mem](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/lt-iff-max-mem.md) | 347 | `result-track:99d4edc1094ea4e3737238a16bd5f4f50e2558b64c112df8a1fad2e3ba67c4e7` |
| 54 | `lemma` | [lt_iff_exists_filter_lt](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/lt-iff-exists-filter-lt.md) | 351 | `result-track:155317a4a14525670029ab63740e89759d86d5ae10d5ed27203fdd2223a883b2` |
| 55 | `lemma` | [erase_le_erase_min'](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/erase-le-erase-min.md) | 370 | `result-track:d8eceb90254ff066ba33e43fc1c23713e5379a33568b0ba3718980593a9429f3` |
| 56 | `lemma` | [toColex_image_le_toColex_image](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/tocolex-image-le-tocolex-image.md) | 416 | `result-track:76c6a0ccb1ec640db4d7d2f1cdce58dc827da5a03c71d780ba088720ca31c5e1` |
| 57 | `lemma` | [toColex_image_lt_toColex_image](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/tocolex-image-lt-tocolex-image.md) | 421 | `result-track:bbd0d9030fdbcf95fb884a69a33c7ec2b9d28b23a48d7ddb7d8e5b39f2546b61` |
| 58 | `lemma` | [toColex_image_ofColex_strictMono](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/tocolex-image-ofcolex-strictmono.md) | 425 | `result-track:85e362801d50d6d233f1fd7357dfeb085e5956954761ce6a7c654e66ae5f4cb8` |
| 59 | `instance` | [instBoundedOrder](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/instboundedorder.md) | 432 | `declaration-track:4eeb60b33024fc4e4166449864cee6a8f0215c3539c53f9c720066573257a3bb` |
| 60 | `lemma` | [toColex_univ](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/tocolex-univ.md) | 436 | `result-track:a0b7106c838fbc11810315dacb6629f98f6fc8410726ddf2b24280ec31f98bcc` |
| 61 | `lemma` | [ofColex_top](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/ofcolex-top.md) | 437 | `result-track:a6e9e8397c42731b72e9dddafe81e83abf0a93fc4f394a079fc433d01064a252` |
| 62 | `def` | [IsInitSeg](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/isinitseg.md) | 446 | `declaration-track:728d5abf6752649c84cbe426ea3fd2edeb2f82dc07a1b98505ca0de16d1a1a0f` |
| 63 | `lemma` | [isInitSeg_empty](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/isinitseg-empty.md) | 450 | `result-track:42ea76b41f1d6672349d8a186f33d1ce69c1c601a59b11cb19e8ca30babf45bf` |
| 64 | `lemma` | [IsInitSeg.total](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/isinitseg-total.md) | 454 | `result-track:01445917357173eee22170ac62e6fdab2a6e6a839681c0962e787788023536c5` |
| 65 | `def` | [initSeg](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/initseg.md) | 470 | `declaration-track:dbd78c216961f568394ea94ec67ac4a21c73ac152822f701abb19d8b359d64e5` |
| 66 | `lemma` | [mem_initSeg](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/mem-initseg.md) | 473 | `result-track:700eab527198816abfa68a9b2419e815d462a1c8ff36e2008cf2196bd064795c` |
| 67 | `lemma` | [mem_initSeg_self](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/mem-initseg-self.md) | 475 | `result-track:ef7a047f48696bd3fcbe3090eef1ee725ebaa024b5dd59e6ef017a66c3c5f8c5` |
| 68 | `lemma` | [initSeg_nonempty](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/initseg-nonempty.md) | 476 | `result-track:f741c6bdc0e110da39de1e3b7a5020789518d51928a81260ff9dc91f0f456f60` |
| 69 | `lemma` | [isInitSeg_initSeg](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/isinitseg-initseg.md) | 478 | `result-track:9c8abf9e09f2c63e4c0aaa29443f57205bbf48ee6c7c261c651f909a1a027f6e` |
| 70 | `lemma` | [IsInitSeg.exists_initSeg](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/isinitseg-exists-initseg.md) | 483 | `result-track:8ea82aa7eaee1aa8ec77e5f892525a1a4f587766b2dd7ffe39a6708e5f3504c4` |
| 71 | `lemma` | [isInitSeg_iff_exists_initSeg](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/isinitseg-iff-exists-initseg.md) | 499 | `result-track:5756f6f040f9282a6de77220a9cf2e1d0b7f5c6ddf584ccb7b7579923fde800b` |
| 72 | `lemma` | [geomSum_ofColex_strictMono](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/geomsum-ofcolex-strictmono.md) | 519 | `result-track:a7cbaf1f9b79c08032160d7bd5e81e83ccfb1cf79858a473beb8f89ff66313e2` |
| 73 | `lemma` | [geomSum_le_geomSum_iff_toColex_le_toColex](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/geomsum-le-geomsum-iff-tocolex-le-tocolex.md) | 529 | `result-track:0f78502053b9d96aefc44a2ae76fb11671bb16c18acb43ac4e1e5bf67eb042b1` |
| 74 | `lemma` | [geomSum_lt_geomSum_iff_toColex_lt_toColex](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/geomsum-lt-geomsum-iff-tocolex-lt-tocolex.md) | 535 | `result-track:a0dc395352692fe5e0c078b4f3a9c261134941f2e5aa5814b41a268c3aa3a394` |
| 75 | `theorem` | [geomSum_injective](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/geomsum-injective.md) | 539 | `result-track:b0a4cd69bb5dc2ffa0d09ef48a972206c8ef7671276d581dc7f9212df21853eb` |
| 76 | `theorem` | [lt_geomSum_of_mem](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/lt-geomsum-of-mem.md) | 545 | `result-track:46444867a670c8a85d745885767ba7f507e207fbac9c190eac9fe8898830d7ef` |
| 77 | `theorem` | [toFinset_bitIndices_twoPowSum](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/tofinset-bitindices-twopowsum.md) | 548 | `result-track:d9ebda02eb3a2288c14ae8244b310413fda4d1c31009eb97ed26ac167a537663` |
| 78 | `theorem` | [twoPowSum_toFinset_bitIndices](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/twopowsum-tofinset-bitindices.md) | 552 | `result-track:eefadc70c06270da355737b5cbc91b5772e22990457562342b18b99d85bb4c65` |
| 79 | `def` | [equivBitIndices](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/equivbitindices.md) | 557 | `declaration-track:cd307ade916648f92e2ebbdc406dd34d6b2c7ede71e4d59aa09c68679f6cb32f` |
| 80 | `def` | [orderIsoColex](../../../../Combinatorics/ColexNamespacedOfColexToColex.lean/declarations/orderisocolex.md) | 564 | `declaration-track:a3e1f6904b4a2347a37d840a67054237dc2dec8dd9f223a70a381e052b8e517f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=711c950defaef58362909a39a2cc45b9f7a19bc324c51a404597cce9d23bb99b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Colex/Variant924bdc761b78352868cf12c69b2f2b603b860a0fbdf434fad9b2b9aebf728ff7.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Colex/Variant924bdc761b78352868cf12c69b2f2b603b860a0fbdf434fad9b2b9aebf728ff7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
