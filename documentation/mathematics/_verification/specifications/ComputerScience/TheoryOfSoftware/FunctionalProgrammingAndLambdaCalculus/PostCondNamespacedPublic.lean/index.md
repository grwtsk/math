# Verification target: Post Cond Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f64f9c0b07722e346fce05f277ea13625593d257",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostCond/Variant59caa4c8cee243356fb4cec0aa63bd6f1e5ac18e250db27244a191214a928605.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f64f9c0b07722e346fce05f277ea13625593d257`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostCond/Variant59caa4c8cee243356fb4cec0aa63bd6f1e5ac18e250db27244a191214a928605.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostCond/Variant59caa4c8cee243356fb4cec0aa63bd6f1e5ac18e250db27244a191214a928605.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PostShape](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/postshape.md) | 62 | `declaration-track:5ab47ff0c4db6643bbdbc996e145aa53dc70118ab3b1e0bf2dc310dcd1d97971` |
| 2 | `abbrev` | [PostShape.args](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/postshape-args.md) | 83 | `declaration-track:7e117462ea539becf31adee54afbd40e52d7843666e42efc3eb403f09f364859` |
| 3 | `abbrev` | [Assertion](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/assertion.md) | 101 | `declaration-track:745946d3ac4572e5cdd631be5e3d954a5256bcd06b80ec07708873be088538fd` |
| 4 | `def` | [ExceptConds](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds.md) | 115 | `declaration-track:9a4f4e6226fe9e75894d942dbc6be19e5629af64d1b52cfd22369d7ec5979b47` |
| 5 | `def` | [ExceptConds.const](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-const.md) | 124 | `declaration-track:bedbb80c4ab398043c84e985ebc46a565bce1b14b3b41603602d29b7bc07d41c` |
| 6 | `def` | [ExceptConds.true](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-true.md) | 132 | `declaration-track:1a65991c74e3b1c8e01c75a99d5cc9d91b496c9b37ddc3095f2e343178796e60` |
| 7 | `def` | [ExceptConds.false](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-false.md) | 137 | `declaration-track:1174ed49d1e56f0d5a29a167912651b9ff0e943d7bfeb0cb9a65235c1f214b0d` |
| 8 | `theorem` | [ExceptConds.fst_const](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-fst-const.md) | 140 | `result-track:89783bc7a66962fe5dc66f08ca1aef52bcb86f790c089ff1102beeb0b62e4801` |
| 9 | `theorem` | [ExceptConds.snd_const](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-snd-const.md) | 144 | `result-track:a91542c77db897aa9d4785e9879c4ed648cd00b9d9071f56e071e096bded3634` |
| 10 | `theorem` | [ExceptConds.fst_true](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-fst-true.md) | 148 | `result-track:ef7c86de491bef9a8508209bfedb0778aa82a17b85085900a6ab0c7a33ea8b8f` |
| 11 | `theorem` | [ExceptConds.snd_true](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-snd-true.md) | 152 | `result-track:51cec7e34c7bd39b3a31df659c7b7c22e06754afa15ca1578008c996ccbc4fa8` |
| 12 | `theorem` | [ExceptConds.fst_false](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-fst-false.md) | 156 | `result-track:e3e12e59710f3b79d2a2fd6645dba3a01fbaa73af233ff1008d667ab47e5447d` |
| 13 | `theorem` | [ExceptConds.snd_false](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-snd-false.md) | 160 | `result-track:e31b6c554e70abfb176f06ea22ead0a586ce7cd7390431c7b25dff83605716da` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 163 | `declaration-track:8b0958e044c7b91bd183ee613fa292b5adaf33107950230773b44f03625ad01b` |
| 15 | `def` | [ExceptConds.entails](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-entails.md) | 173 | `declaration-track:8de2fccaf73445a960c8c5960f3fe30696c2a81bd739a79a6067f2e6ecb8419f` |
| 16 | `theorem` | [ExceptConds.entails.refl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-entails-refl.md) | 183 | `result-track:80c2d1142c37bd5be6dac47fda8c236c3e4762710124f5e7fe466bdbc66b8b55` |
| 17 | `theorem` | [ExceptConds.entails.rfl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-entails-rfl.md) | 186 | `result-track:ac789b53476447a9c06c4e5d50e3179e0a2e6752adb9f0ff29e02f998dd49f65` |
| 18 | `theorem` | [ExceptConds.entails.pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-entails-pure.md) | 188 | `result-track:d0812d6aebc73f6076f3ed57a381a50c9f56f572e47d848d3d35af880e96441c` |
| 19 | `theorem` | [ExceptConds.entails.trans](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-entails-trans.md) | 190 | `result-track:e2e0d278c84d1329a6c495d2dbece323be1cbe44a667b8149bd100cfb20d4c5a` |
| 20 | `theorem` | [ExceptConds.entails_false](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-entails-false.md) | 197 | `result-track:3b944adf3c80ca5ba33608f6246afdc096f0207a826d065ed25f46abe8f7fbbf` |
| 21 | `theorem` | [ExceptConds.entails_true](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-entails-true.md) | 201 | `result-track:afb0b537c5ef25e676a415c969f8e96a6f9b0c65dc6450fd96c12e57bc1a7417` |
| 22 | `def` | [ExceptConds.and](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-and.md) | 208 | `declaration-track:1eedc6d237a2599ae719bbc7b40f3a3ed9c5add73ad8e3f4956108013671f75f` |
| 23 | `theorem` | [ExceptConds.fst_and](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-fst-and.md) | 218 | `result-track:b905803e22fe2e370ed9f357e6f17678732efe66698316aa6a3ca92cb8cdf649` |
| 24 | `theorem` | [ExceptConds.snd_and](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-snd-and.md) | 221 | `result-track:06ab96341a294196ba70213d6d65123ea19841c282e00c6dbb390b243b5d349c` |
| 25 | `theorem` | [ExceptConds.and_elim_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-and-elim-left.md) | 223 | `result-track:88a7a31c57b7ee39b15cf319a0de8968a6a3d0ec24c5dffb9468003a068fe6ca` |
| 26 | `theorem` | [ExceptConds.and_elim_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-and-elim-right.md) | 230 | `result-track:2c915f6f0f01b398c9d7bfc0da6b28fcb2b613e73815df7301b7f863115453b8` |
| 27 | `theorem` | [ExceptConds.and_true](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-and-true.md) | 237 | `result-track:41a4e16756a09d6afb58d29730525173c2d8cbe9c2e72b9178f0c5c42e80376a` |
| 28 | `theorem` | [ExceptConds.true_and](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-true-and.md) | 239 | `result-track:da082d9fa27c89e6a620086a6bcace491f18ff53c0bb7cd0b5a2e8cdab6f1bf2` |
| 29 | `theorem` | [ExceptConds.and_false](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-and-false.md) | 241 | `result-track:bd38cd1f919c0c278bb16ed29dbb90880539977505fa61f5df8b5d18dcc4d665` |
| 30 | `theorem` | [ExceptConds.false_and](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-false-and.md) | 243 | `result-track:7ec10f934180f089caa85180e6d5dd3b0d64f7c888a78e14ddbfc8cc742aeb7e` |
| 31 | `theorem` | [ExceptConds.and_eq_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-and-eq-left.md) | 246 | `result-track:98543eebb3d97fe66d955d30196856453072ff9437fdcd2818894baa6130772a` |
| 32 | `def` | [ExceptConds.imp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-imp.md) | 264 | `declaration-track:aede7c017a9ec9e936296dc5767cb940ed04f65710c70495b6269d3e664c9c53` |
| 33 | `theorem` | [ExceptConds.fst_imp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-fst-imp.md) | 274 | `result-track:b6822c48140e5467e26be555be8b69dc78e6a9e075f9601f06fd48f5241bc654` |
| 34 | `theorem` | [ExceptConds.snd_imp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-snd-imp.md) | 277 | `result-track:ddd43d9956af0072317d87a9a2122b7a9e4aa6ebc1bf46c7f86a7d61ca983e18` |
| 35 | `theorem` | [ExceptConds.imp_intro](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-imp-intro.md) | 279 | `result-track:8bd7eaa093dabdb48f3fa5bf9ec90dfd25e05e371ad9eed6b8e12bccc9f55268` |
| 36 | `theorem` | [ExceptConds.imp_elim](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-imp-elim.md) | 285 | `result-track:5e5a05558e45a265bd87f2fe6547be7e38ec49c256a4cc5861152d6535296be7` |
| 37 | `theorem` | [ExceptConds.true_imp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-true-imp.md) | 292 | `result-track:9370be091c53daeb7056478ac70d005a56a37817604afa63b71bf9ba1a305651` |
| 38 | `theorem` | [ExceptConds.false_imp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-false-imp.md) | 301 | `result-track:e5762fe5c89ae8ad52604e0f41e15d824967ba060e838ddec3b7fe91e6ef373b` |
| 39 | `theorem` | [ExceptConds.and_imp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/exceptconds-and-imp.md) | 308 | `result-track:35b60bdb34df450862dfd49fa0b762d377dba0c40fd05a56a6442200091a5de9` |
| 40 | `abbrev` | [PostCond](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/postcond.md) | 325 | `declaration-track:29a9ceaea224a3dd5e2948b127fb9a58e570b7bb6521c72d06f68f0c814bc71d` |
| 41 | `abbrev` | [PostCond.noThrow](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/postcond-nothrow.md) | 339 | `declaration-track:b52ffa59daf1ee93cfbe73b4c756ef2959e997c14b733dfcf2baa6fcaef92164` |
| 42 | `abbrev` | [PostCond.mayThrow](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/postcond-maythrow.md) | 352 | `declaration-track:0788c4d6e86976f751de13b22051b84b53b19047ad5f1612b37de1c5fb52c156` |
| 43 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/instance.md) | 359 | `declaration-track:4ab1a54b7e7142f3e01a49e040efb5fd2105c2d0132fd0f10b3bb04e75e3f89c` |
| 44 | `def` | [PostCond.entails](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/postcond-entails.md) | 373 | `declaration-track:69333154c5c5b8a782ebf0b9830c5487382019cbcf02453d1a5e2c20e5b16548` |
| 45 | `theorem` | [PostCond.entails.mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/postcond-entails-mk.md) | 379 | `result-track:4b66cf28309cbc9a980e9845fd40b27d77b39e32c8f881ea1260f32d8f3c03b0` |
| 46 | `theorem` | [PostCond.entails.refl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/postcond-entails-refl.md) | 383 | `result-track:b7365467e6c06d0470af0dfcc0e59ba70c8cc058fcdbc123904fe05ff712fe82` |
| 47 | `theorem` | [PostCond.entails.rfl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/postcond-entails-rfl.md) | 384 | `result-track:bca432369e2ab3cee4d13be39b918eb94111bfde81e26338056b7e055c009de6` |
| 48 | `theorem` | [PostCond.entails.trans](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/postcond-entails-trans.md) | 386 | `result-track:178998065be78f736cbba39aa628db0affd741669e8f415c925c811067ea09cf` |
| 49 | `theorem` | [PostCond.entails_noThrow](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/postcond-entails-nothrow.md) | 390 | `result-track:f755e52087f25802fc204d7a2b7bc3936fd27afa0ca0c121cd542fea572c7c5d` |
| 50 | `theorem` | [PostCond.entails_mayThrow](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/postcond-entails-maythrow.md) | 394 | `result-track:6bac476271d629cf75eb8d9bfeada6976cd0bebd920638f978f77e19d95b0366` |
| 51 | `abbrev` | [PostCond.and](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/postcond-and.md) | 403 | `declaration-track:4fb99310522e8e621f13b7bde068f2cacf27dd355c3532cb39b6228467520113` |
| 52 | `abbrev` | [PostCond.imp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/postcond-imp.md) | 418 | `declaration-track:313b1e4e064537b245a1dd55e70ad318177c01a0bd162c4a6d3f102c48049b63` |
| 53 | `theorem` | [PostCond.and_imp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/postcond-and-imp.md) | 424 | `result-track:bba2d664e02f91377dcf8b656648bd3ce6ba7c15bed2b29af5a36ede520c7048` |
| 54 | `theorem` | [PostCond.and_left_of_entails](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PostCondNamespacedPublic.lean/declarations/postcond-and-left-of-entails.md) | 427 | `result-track:99ff2c51b7d116fd9220640903630b295e78b9521b8480e2af576f4e7cd0c6c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=92d5d3f8433f18dff4979febaee217a7ddaa42a4e1a7fe60da18aae9dcdea5be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostCond/Variant59caa4c8cee243356fb4cec0aa63bd6f1e5ac18e250db27244a191214a928605.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostCond/Variant59caa4c8cee243356fb4cec0aa63bd6f1e5ac18e250db27244a191214a928605.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
