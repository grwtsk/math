# Verification target: Reduce Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e66ce5f7bde31b471fa77faa8ed42c06bdd42a34",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e66ce5f7bde31b471fa77faa8ed42c06bdd42a34`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Dedup` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Sublists` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.FreeGroup.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reduce](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/reduce.md) | 42 | `declaration-track:b25566877580ae2c8983f006ba38b4bbbd34753a0f71f306b48116eb0feae09a` |
| 2 | `lemma` | [reduce_nil](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/reduce-nil.md) | 47 | `result-track:cceea83acfacc97efb13e0f0bd13e4c4e2d62b8f922e3e7b4b761f1e7a75bdb1` |
| 3 | `lemma` | [reduce_singleton](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/reduce-singleton.md) | 48 | `result-track:61f4d1751d3e6566bbf3fffd797ccfc5c90c21db0f4a805ff0a3acd60cb1b4b2` |
| 4 | `theorem` | [reduce.cons](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/reduce-cons.md) | 51 | `result-track:eadb50224f827526b4b01884d25af12c2aad5816308648246207d1295da6ddb5` |
| 5 | `theorem` | [reduce_replicate](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/reduce-replicate.md) | 58 | `result-track:be191cb05b305eb5e3b323902009bc565ac130f7b9bf277081dc9992d9d666bb` |
| 6 | `theorem` | [reduce.red](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/reduce-red.md) | 72 | `result-track:e96ac6fd0f57800815649deef5ac6ea21c8c3bf060584a62f90947b8cdf04760` |
| 7 | `theorem` | [reduce.not](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/reduce-not.md) | 95 | `result-track:67e90abb82b50374bf177e46e04612068737eff543e2207dfb1db847315b0e3e` |
| 8 | `theorem` | [reduce.min](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/reduce-min.md) | 126 | `result-track:76c838bd412bdb7ba883edba01f292bf5ab3df7d1fb4cd5ea5aec4518911ab2e` |
| 9 | `theorem` | [reduce.idem](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/reduce-idem.md) | 137 | `result-track:1a904b371faae717ce87ef7c02812c3f22c473ccc1aab6cd49c354ddff4d8ba9` |
| 10 | `theorem` | [reduce.Step.eq](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/reduce-step-eq.md) | 141 | `result-track:074b12929c9f8114147fbe8b9072d81f4a726e179beac0b746f9fd23e4b1e94f` |
| 11 | `theorem` | [reduce.eq_of_red](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/reduce-eq-of-red.md) | 147 | `result-track:466ab6ca4c3a9f77d9e6c6553b9088cc2f999859e4da7cec635cc46ceed832a5` |
| 12 | `theorem` | [Red.reduce_right](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/red-reduce-right.md) | 156 | `result-track:c1a431732792ea8469ae87599f550d3456fb98225d50a110b4fc27eb59a688fe` |
| 13 | `theorem` | [Red.reduce_left](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/red-reduce-left.md) | 160 | `result-track:ff4866e7ca25c57fd4a1467fcb3843da0b284ed540dd9031ad41443ca21dc02d` |
| 14 | `theorem` | [reduce.sound](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/reduce-sound.md) | 169 | `result-track:00694b59f58f1e3ad511b397e3fcc3ba32916397d47083d7d9c7726046ff1db6` |
| 15 | `theorem` | [reduce.exact](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/reduce-exact.md) | 177 | `result-track:ceac74c84acda0f95ff2f7c61937f156056e9bd1c6e846d012b30e40a7b89d11` |
| 16 | `theorem` | [reduce.self](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/reduce-self.md) | 183 | `result-track:2fadeaccf60ea52b22dd267ea6310e9924da7fe15bd802482284d9c47eaf9547` |
| 17 | `theorem` | [reduce.rev](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/reduce-rev.md) | 190 | `result-track:caa7d52e5b74e2970c139e0192c51a2e1f158bde9808508cb1cc7f734fd87eca` |
| 18 | `def` | [toWord](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/toword.md) | 196 | `declaration-track:77c1f4126bba75ff44258826ebd53fcb3785071b3c8cb9d0c092dfa2ac0a02f2` |
| 19 | `theorem` | [mk_toWord](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/mk-toword.md) | 200 | `result-track:2e30e91338dd2545d6db11c4592a1a2800b599d567af318cd01327cb418b15b0` |
| 20 | `theorem` | [toWord_injective](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/toword-injective.md) | 203 | `result-track:6ecb66b096bbdf060d8875488ecc1c1e2d60ded31fa1fd60f02147d016cc87d8` |
| 21 | `theorem` | [toWord_inj](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/toword-inj.md) | 207 | `result-track:e98d395190c54c03bf5d0601d1662946d88b94492f1d89d596ef76080eb5a3eb` |
| 22 | `theorem` | [toWord_mk](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/toword-mk.md) | 211 | `result-track:7f6d0a572566d1ffc1d2f7c4194f474a45235471bc2889b467183221b1ab0caa` |
| 23 | `theorem` | [toWord_of](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/toword-of.md) | 215 | `result-track:c53afb5cacdd0134132f03b06b00bd8f2e201e9ad06f126931b4db9a13d9d7c9` |
| 24 | `theorem` | [reduce_toWord](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/reduce-toword.md) | 219 | `result-track:c2fadcc0f5ba8fc58d81b9716c1dbce78149221c77380d0cde9c061ff89ac3eb` |
| 25 | `theorem` | [toWord_one](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/toword-one.md) | 224 | `result-track:5ad34de03b35707200997ac593ccc6c68f1f64c62f10ff2794129b5ec727d9bc` |
| 26 | `theorem` | [toWord_mul](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/toword-mul.md) | 228 | `result-track:f0e96bb02064fad20a4908b322601569795788855dccbd7835227550e5eb0eea` |
| 27 | `theorem` | [toWord_pow](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/toword-pow.md) | 233 | `result-track:1a500d1ee0b4b709725c546f83f84ca4a0765a5404941244c24eb4f94b589a08` |
| 28 | `theorem` | [toWord_of_pow](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/toword-of-pow.md) | 239 | `result-track:6a4a4cd015eaf706bffa3f7c25f40b56a274ac78fef1fd7a5647ed07792484ec` |
| 29 | `theorem` | [toWord_eq_nil_iff](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/toword-eq-nil-iff.md) | 244 | `result-track:24c2456431a025675979621176ee885f8eb6f462bde28bd182acda51c6840c57` |
| 30 | `theorem` | [reduce_invRev](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/reduce-invrev.md) | 248 | `result-track:49fc0e64dd759abb50422f987ee246eadfa217e7e8700739450e8b1395df5b8c` |
| 31 | `theorem` | [toWord_inv](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/toword-inv.md) | 256 | `result-track:0d1f8275172e10b371d3617ccf2ba5e0711b42bd1a9a02b73ab0dfbdd09aaf66` |
| 32 | `theorem` | [reduce_append_reduce_reduce](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/reduce-append-reduce-reduce.md) | 261 | `result-track:23e7f113396b0db2bc5d0eccdba71f71ffb86e168c722fe17f08eeb17feb0bce` |
| 33 | `theorem` | [reduce_cons_reduce](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/reduce-cons-reduce.md) | 265 | `result-track:9eb329e6337801d9bd27ba6b5de205dd4f08277f717da657abd103f19ddac3e3` |
| 34 | `theorem` | [reduce_invRev_left_cancel](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/reduce-invrev-left-cancel.md) | 269 | `result-track:af430f59a3f730b2f231d00f63be38d7be1b0abbce55f83c35b238dbd994c20f` |
| 35 | `lemma` | [toWord_mul_sublist](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/toword-mul-sublist.md) | 275 | `result-track:2af299535f60613ac85e91ca317736b0e8f2ed323867f2756f81f747e3c473a1` |
| 36 | `def` | [reduce.churchRosser](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/reduce-churchrosser.md) | 284 | `declaration-track:3fbf073594b3be42562f5660871d3e7daf6d045ff1dbc18e390dfc5877f61314` |
| 37 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/instance-source-edition-3.md) | 288 | `declaration-track:995b16541ebd9f457a7a4faceb1b5c64932002619f0ae111311d71035ceda484` |
| 38 | `instance` | [Red.decidableRel](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/red-decidablerel.md) | 294 | `declaration-track:385897558502f9434477fed946d6d1f355a1ab6ba3a1601ede6f3df739fe8e45` |
| 39 | `def` | [Red.enum](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/red-enum.md) | 312 | `declaration-track:91a9300f8c4b60d3f4dc24561b8d93f8e1383a7575f07986f63ce3a2ce5ac9e7` |
| 40 | `theorem` | [Red.enum.sound](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/red-enum-sound.md) | 315 | `result-track:ba75287af9c9de2d776fe757a1b11343e70bea35278e0fd16a6653455a48b043` |
| 41 | `theorem` | [Red.enum.complete](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/red-enum-complete.md) | 318 | `result-track:524f98e5dc550781acf3d8e54231796d2e82c700707b6fe3322e685efecfd7a0` |
| 42 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/instance-source-edition-2.md) | 321 | `declaration-track:2e8850cccc64358a9d3121b5c9a20c1623f7d8049290933c22eb97606946824f` |
| 43 | `theorem` | [one_ne_of](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/one-ne-of.md) | 329 | `result-track:f6fcfa4b6f91d59425d21630c3cc915b1c19cbd9bc0651da5a24b90641a1561c` |
| 44 | `theorem` | [of_ne_one](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/of-ne-one.md) | 333 | `result-track:e7e8a0b88e4c541e4d361922f2d6cfa5b967bc0914db00b42851d18af87aaa6b` |
| 45 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/instance.md) | 336 | `declaration-track:2071a6727acc26a6c253895d6a7445446bb56547735f210542ab880bb3171f95` |
| 46 | `def` | [norm](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/norm.md) | 345 | `declaration-track:007deebcaaeaa9ab7a67e9bca85e8199df3e1df9fa5709f35b4dfae1115e6710` |
| 47 | `theorem` | [norm_inv_eq](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/norm-inv-eq.md) | 349 | `result-track:774b775afa525c73b8e8162c4df1e2d2ea047d4b49a8e0654bf331f9c7e37cf2` |
| 48 | `theorem` | [norm_eq_zero](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/norm-eq-zero.md) | 353 | `result-track:cdb537c659b38c9e0fe2344f7ae3d003e246439825e75395256b5e28994e62ef` |
| 49 | `theorem` | [norm_one](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/norm-one.md) | 357 | `result-track:4423118bdc2b0ca2d5c4c76f9c3ef6d099d54d3f34a96b640c71fc589a9a96cb` |
| 50 | `theorem` | [norm_of](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/norm-of.md) | 361 | `result-track:1c710ab96bae970efbca7ed6854ae150990a6b2f2dcc1592dbdd45d3be610d21` |
| 51 | `theorem` | [norm_mk_le](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/norm-mk-le.md) | 365 | `result-track:eb1a71e3172eef08d0b22063fb028be33830572b5e9fbfe99954c8f5bd58fb62` |
| 52 | `theorem` | [norm_mul_le](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/norm-mul-le.md) | 369 | `result-track:439eba486fa6420d06912fd1e8ecd3a623eed19664802b441737fe70fd07883f` |
| 53 | `theorem` | [norm_of_pow](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/norm-of-pow.md) | 376 | `result-track:32a22ec3a73d3a3704681ed12b6e69e1acc872c066d8fb2e1d7f4ddd5e4f8719` |
| 54 | `theorem` | [norm_surjective](../../../../GroupTheoryAndGeneralizations/ReduceNamespaced.lean/declarations/norm-surjective.md) | 380 | `result-track:f028dece83f1f2ed2aef30d227a913327713f0423e5fb02163d70a5d0fe470f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=202cd85641a341cac3082a8b3b54df01114aaa9ff6f9af15507ab7508137cfc7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
