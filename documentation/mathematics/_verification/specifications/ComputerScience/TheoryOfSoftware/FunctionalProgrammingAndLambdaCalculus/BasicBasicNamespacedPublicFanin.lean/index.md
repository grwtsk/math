# Verification target: Basic Basic Namespaced Public Fanin

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3bae1d9abbf3d69f00d2aa6297e5be306c80a487",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8ca1e8bbd30d89dae4c519ce0e8c7d719070b27ebab59a301570b8588573984b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3bae1d9abbf3d69f00d2aa6297e5be306c80a487`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8ca1e8bbd30d89dae4c519ce0e8c7d719070b27ebab59a301570b8588573984b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8ca1e8bbd30d89dae4c519ce0e8c7d719070b27ebab59a301570b8588573984b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Fanin](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/fanin.md) | 45 | `declaration-track:d3781c4d6d361ddc0030a671dbcca898bf685e9b391054842bfcdefdd5208d52` |
| 2 | `def` | [mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/mk.md) | 56 | `declaration-track:13a5b7b0e9bd1d9719cba800063032a2c9bb78bdab75ad54aa78d41d8b92f35e` |
| 3 | `def` | [gate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/gate.md) | 63 | `declaration-track:3f242c27d324a17977d455ffed597009d7ceb2f813693cea22e17bf306efe293` |
| 4 | `def` | [invert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/invert.md) | 69 | `declaration-track:4673ec016de241a4737c39e6f92f83cea087d753831587370caa525ae5121514` |
| 5 | `def` | [flip](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/flip.md) | 76 | `declaration-track:dbc1a03112078634cdc3b657e6eadedbca3cd7cc3743817fbc379ff3a01aba40` |
| 6 | `theorem` | [gate_mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/gate-mk.md) | 79 | `result-track:30870213852bdd80fb103aae89c4a67c590589187a570e662e3bb862484f7793` |
| 7 | `theorem` | [invert_mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/invert-mk.md) | 85 | `result-track:e3d3ed6c21c2a4b99f60a6a1e8ccb70ca89664d40a3d302fab9d161ca657cf96` |
| 8 | `theorem` | [gate_flip](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/gate-flip.md) | 89 | `result-track:8cc59dc1623e0a84b6ade2869fe4088b48e37fc04e129605b30cf5f5c8bbc6c2` |
| 9 | `theorem` | [invert_eq_testBit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/invert-eq-testbit.md) | 92 | `result-track:ed1e96881c76d64311aaa13dad05c2412ca9816601bfeef8b9343f701f7eaa8a` |
| 10 | `theorem` | [invert_flip](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/invert-flip.md) | 96 | `result-track:e4afe2cc6c89415a4a2ada2057d90e1ceaefccd016849df59703320759ccebc6` |
| 11 | `inductive` | [Decl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/decl.md) | 104 | `declaration-track:518df55140bfda275976481ba32f202adc0db31fda16137c5ef4364206f5f9ce` |
| 12 | `inductive` | [Cache.WF](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/cache-wf.md) | 128 | `declaration-track:49a751d802f60fa23c0a1bb407bb22519b01505e89902767e4cde3722978cf68` |
| 13 | `def` | [Cache](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/cache.md) | 147 | `declaration-track:08ac8e51aa020b25dc06d5d0f5364863fb8ca3f82480f0736a4330f80281ee71` |
| 14 | `def` | [Cache.empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/cache-empty.md) | 154 | `declaration-track:659ba67226c42d14db150f7f6721c384232277513ed7216503c3916d8f1ee982` |
| 15 | `def` | [Cache.noUpdate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/cache-noupdate.md) | 157 | `declaration-track:b7ddd1fc77fbe9e74a611e068c34b73554e5428bb8fad84270a670cc5241ca03` |
| 16 | `def` | [Cache.insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/cache-insert.md) | 165 | `declaration-track:ed69e9e96e4892f5453461e89dc19087138f43b41ca8edb5da45cbaa61094fca` |
| 17 | `structure` | [CacheHit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/cachehit.md) | 172 | `declaration-track:c535aeecf3161d650d2b3bf5aebbd7fe8218552013042cd0e1019cf341bec230` |
| 18 | `theorem` | [Cache.get?_bounds](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/cache-get-bounds.md) | 180 | `result-track:190fa5d60db04f07c10f444174ad2c9c2309ce3b6e33da55fd4cc7da40b9aa08` |
| 19 | `theorem` | [Cache.get?_property](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/cache-get-property.md) | 202 | `result-track:c0fd3bc39c1df3983aaea114692a58b6443565cd8350e397437c39cab22d2d25` |
| 20 | `def` | [Cache.get?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/cache-get.md) | 250 | `declaration-track:d3f9cf79725139167e6b0880bc521756fbf6c76a7319891477af0b6fc1ebcea0` |
| 21 | `def` | [IsDAG](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/isdag.md) | 259 | `declaration-track:b2a05f1390dca14afe6b2e0bdd16a25d12c91d8a2de1cdcd784ec5862d8852d5` |
| 22 | `theorem` | [IsDAG.empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/isdag-empty.md) | 266 | `result-track:98119d8606c7c3af84b57322ff4ed4faea186d0de9a6dc3b2d7d9f2c75042c4f` |
| 23 | `structure` | [AIG](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/aig.md) | 277 | `declaration-track:094ad855618d2f2d0865a8cdea787353686be6e4b8f50706d1eb403cc81c7e72` |
| 24 | `def` | [empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/empty.md) | 304 | `declaration-track:20d82daae7ac87b09aaa256dfb5dd49353193b50778d0e3ff606614784c364aa` |
| 25 | `def` | [Mem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/mem.md) | 316 | `declaration-track:4eb5f73ce493409174cb795ce5b2f3dea0f33a726286b37bfc6dcef83ebaaf92` |
| 26 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/instance.md) | 318 | `declaration-track:727b17a0f24e0b0c15dcea31b8a4031560843f49332d051a38dd25a46c230e4c` |
| 27 | `structure` | [Ref](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/ref.md) | 324 | `declaration-track:532f8ee39583a93df0573fed832db9c1f86ee15c3e3fcc7a05bdec269beecdcc` |
| 28 | `def` | [Ref.cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/ref-cast.md) | 333 | `declaration-track:9a1e933403ce1acab5b4cb4989dfc58494afac5a99e9fd03f6a9d7884a59257c` |
| 29 | `def` | [Ref.flip](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/ref-flip.md) | 342 | `declaration-track:9423b46020f1de5cac36baa79bc32a755506ba9f525657e287533546392ba569` |
| 30 | `def` | [Ref.not](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/ref-not.md) | 349 | `declaration-track:78dc396b0f051ba18ddccf040a7f8b17f11afed51b3392aa331395523d4f6957` |
| 31 | `structure` | [BinaryInput](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/binaryinput.md) | 355 | `declaration-track:561be138110ddc24fb8efaedf5439989eefeeb313e874c9030e65dcc31a50a81` |
| 32 | `def` | [BinaryInput.cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/binaryinput-cast.md) | 363 | `declaration-track:c37bc9ad0cb6950b5a22307297710a1286419a1c129b2d87df2cea342055c26d` |
| 33 | `def` | [BinaryInput.invert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/binaryinput-invert.md) | 372 | `declaration-track:1e775500014f0d2c29ff30bdb74b198379793ddf7c78fe70fd9e8d9f34007ecd` |
| 34 | `structure` | [TernaryInput](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/ternaryinput.md) | 380 | `declaration-track:4e618b2540536069eb17192101cb3a617ff074272006d876d8c20f4314044933` |
| 35 | `def` | [TernaryInput.cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/ternaryinput-cast.md) | 389 | `declaration-track:5a9a023e2f991313ff48d822d847ff7bec7bb2b8e70f23370531e113abb603c0` |
| 36 | `structure` | [Entrypoint](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/entrypoint.md) | 398 | `declaration-track:a44672c53388740515602da0a7631ce6e6684af66b566c303de4fadc96d63ff6` |
| 37 | `def` | [toGraphviz](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/tographviz.md) | 411 | `declaration-track:b0c7a848518cc7fc6a2e6550980b287986316b65f8ac7ef52f89e96255e64a3e` |
| 38 | `structure` | [RefVec](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/refvec.md) | 449 | `declaration-track:c501e2b81ef38ca4444d882e9e86ea3f7a6bbfbc0cfeb804c0f9fbeeea19d9f9` |
| 39 | `structure` | [RefVecEntry](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/refvecentry.md) | 456 | `declaration-track:8396926012ba93ca3ff638d182c7d0a59f3b30a3a5165dd8eec7c96c88aab415` |
| 40 | `structure` | [ShiftTarget](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/shifttarget.md) | 463 | `declaration-track:689f567ec261cc8e3623dfd9c3a7dd201d484486ebd0038dc9af60c30e4e7ce7` |
| 41 | `structure` | [ArbitraryShiftTarget](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/arbitraryshifttarget.md) | 470 | `declaration-track:4df8c9d51ef8a8f1c8283c39aedccebb7a6c053d1682204158e69c054b18c158` |
| 42 | `structure` | [ExtendTarget](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/extendtarget.md) | 478 | `declaration-track:0c5d89dbf3d246d6bccb7de8347d4ce18c851d87d80ec1a08c651d1cf5c1ecf8` |
| 43 | `def` | [denote](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/denote.md) | 485 | `declaration-track:7c4905e9fa815442e22659d5acbeb7c57dc2f0d6fd684874bfc310c770a1868b` |
| 44 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/syntax-source-edition-2.md) | 504 | `declaration-track:74f53c6d541cb00d78a8e4c77b5fc925ada8994578a6a4e5c9f2e3cd205d2c18` |
| 45 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/syntax.md) | 509 | `declaration-track:6509bb90b87b8ea8b2b1e2389fe2d182e43a7792eee004299d2854646b334b76` |
| 46 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/macro-rules.md) | 511 | `declaration-track:59bf42dcc2067c05810a6a2366cf5eb08b2e636ac7b8877edaab63f245d3d335` |
| 47 | `def` | [unexpandDenote](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/unexpanddenote.md) | 516 | `declaration-track:23a283029b943a14b218c68262590e81755f6f221ed063f29bc60867d421cab9` |
| 48 | `def` | [UnsatAt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/unsatat.md) | 525 | `declaration-track:2adfa63665c5e7372d893481adacc6f8a0f3d3c795031a6f0aff91a6d42ab9cf` |
| 49 | `def` | [Entrypoint.Unsat](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/entrypoint-unsat.md) | 531 | `declaration-track:40bd5a1858515543192b455b4e7358bbda59c7bd524a3813d9c3902a414e95a8` |
| 50 | `def` | [mkGate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/mkgate.md) | 538 | `declaration-track:efd7ac044b21a8db212a32b88b95a5a38f991cd60d1259ddbf87c11b87f3d1a3` |
| 51 | `def` | [mkAtom](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/mkatom.md) | 561 | `declaration-track:9336dee51f5df26743a92a1d6f4d2ba1b7714f3e980836e0ae7906e0375ed54f` |
| 52 | `def` | [mkConst](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/mkconst.md) | 579 | `declaration-track:de8186d860efeb4f3d875eaa8778ce06a99ca04d7d09cfaed0156e19d0f22814` |
| 53 | `def` | [isConstant](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/isconstant.md) | 596 | `declaration-track:9f448dc3fa05e59b0dc486aca806358fc57f7de738d20113fc95ff2aac783e41` |
| 54 | `def` | [getConstant](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/declarations/getconstant.md) | 606 | `declaration-track:83b1448dccf06992f3027d3fe28aa7c39e521697b60e8329ac170848cea3956e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=697be7efb3cbf84a74eadd8232cca6a740a9110907fa10d148df09a064ffc051 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8ca1e8bbd30d89dae4c519ce0e8c7d719070b27ebab59a301570b8588573984b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8ca1e8bbd30d89dae4c519ce0e8c7d719070b27ebab59a301570b8588573984b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
