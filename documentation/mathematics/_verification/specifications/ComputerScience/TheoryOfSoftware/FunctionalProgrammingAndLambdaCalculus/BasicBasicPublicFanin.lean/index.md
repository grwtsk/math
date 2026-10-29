# Verification target: Basic Basic Public Fanin

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "830e377bb133d41347c1bec758bce0c87b17f243",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantde584b4ccd5c074f13bb4843513763191196c9fc56ad0820c636c4e0f0685123.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `830e377bb133d41347c1bec758bce0c87b17f243`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantde584b4ccd5c074f13bb4843513763191196c9fc56ad0820c636c4e0f0685123.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantde584b4ccd5c074f13bb4843513763191196c9fc56ad0820c636c4e0f0685123.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Fanin](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/fanin.md) | 37 | `declaration-track:25fe73f1adefdce75062f08dd6fa628d17c51413ce26f16a9bc02ba634e69c72` |
| 2 | `def` | [mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/mk.md) | 48 | `declaration-track:79f61fefcacdc44b9073e305789058a9d6c5be0d71982bb73537951e89de18e3` |
| 3 | `def` | [gate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/gate.md) | 55 | `declaration-track:2ca82b2137429c2b7610ca83eca44e11638249c7ee84c0cc0bf0c8b6ff8091dc` |
| 4 | `def` | [invert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/invert.md) | 61 | `declaration-track:a671fd6e6e530cc8d6de2c4cdc4681a03cc96356f1820d11df87e6965807a62e` |
| 5 | `def` | [flip](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/flip.md) | 68 | `declaration-track:f4464b634b288944b95ca31555bc14136120919f0a5d18e873ef38a59908b5f1` |
| 6 | `theorem` | [gate_mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/gate-mk.md) | 71 | `result-track:dc92f1e5a4060d33b36020259e01ddf431984c4fc757f69737c498d14afb6a85` |
| 7 | `theorem` | [invert_mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/invert-mk.md) | 77 | `result-track:e9746b702c5fa4d290d9322f4654735d30504803efbbc3a192486754901f01b2` |
| 8 | `theorem` | [gate_flip](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/gate-flip.md) | 81 | `result-track:93cf4e3794d27504ecc2e03476262a4c15680bc7bde3b1453d7329f60d612bcb` |
| 9 | `theorem` | [invert_eq_testBit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/invert-eq-testbit.md) | 84 | `result-track:0d2fea26f9db745625394d591b4c0e68ec13896df72fb2dd753c0cbf0e752a83` |
| 10 | `theorem` | [invert_flip](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/invert-flip.md) | 88 | `result-track:83c4d5c16c10ac83151f0312ec0fdd25e7877fc69544e976d041b3d04c29be81` |
| 11 | `inductive` | [Decl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/decl.md) | 96 | `declaration-track:8c863d5436363c93216130b4b620a0dc5ee12def7020f09708309a61d40836b2` |
| 12 | `inductive` | [Cache.WF](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/cache-wf.md) | 120 | `declaration-track:d04d705d0b154fc6bc9b06b26ae952eb6d02410824baa9006e9426374f6d3c6b` |
| 13 | `def` | [Cache](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/cache.md) | 139 | `declaration-track:5cbedcbb91c5e3c2dab6590d6b4b6f7bc686237e8e0702dd675f7477afe28c4b` |
| 14 | `def` | [Cache.empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/cache-empty.md) | 146 | `declaration-track:cbdb5d61b133e2342989f9cde7e39e3c7d478d835f31e256ce904665085029b1` |
| 15 | `def` | [Cache.noUpdate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/cache-noupdate.md) | 149 | `declaration-track:0c6c9c620bd3a1599e9506666410ab11ee7d7117fe8c5db78f71166c3c7ccc71` |
| 16 | `def` | [Cache.insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/cache-insert.md) | 157 | `declaration-track:3cb250d422f0eb2489d030d75157cc4210240ed43bf8f2c0b3956220ce618af7` |
| 17 | `structure` | [CacheHit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/cachehit.md) | 164 | `declaration-track:0781265aee9076ea6b832eb2fce5ef447a7185dcb6fbdccd39e96977e22c36a4` |
| 18 | `theorem` | [Cache.get?_bounds](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/cache-get-bounds.md) | 172 | `result-track:3cfae80fc6371c10e3d33a8082435fdb9c36f50c1131ddbc7249b0f008e96d5c` |
| 19 | `theorem` | [Cache.get?_property](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/cache-get-property.md) | 194 | `result-track:a45e0240936765a524c703fe37d0d4e0e3cbf11a3f9bf42f6127d05a968bc11f` |
| 20 | `def` | [Cache.get?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/cache-get.md) | 242 | `declaration-track:711be50e5a54b7f574c150ab8e6f624bcc6191b81006464bca34774795e99b50` |
| 21 | `def` | [IsDAG](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/isdag.md) | 251 | `declaration-track:831eeea3b5581ec7b8e6860a1fbeff5ee659e294c898b9091aa6eff1515b76e2` |
| 22 | `theorem` | [IsDAG.empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/isdag-empty.md) | 258 | `result-track:6b24b9400a0586a61896cfc77f9cafcd09c4f76ccb6d94f94d62d87d7163f684` |
| 23 | `structure` | [AIG](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/aig.md) | 269 | `declaration-track:827ae1b544c91fa7d6faf3c52738f08be5f60da91f402932b32f8465623d97d5` |
| 24 | `def` | [empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/empty.md) | 296 | `declaration-track:4c77f90b55a88022ee7fe52a38c715cebda1024868e8883a8fe81c5f41805508` |
| 25 | `def` | [Mem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/mem.md) | 308 | `declaration-track:8c48c92f862cd2eb9e92ec3408f701932c8c3497ae7651d95519367ef7b8fe97` |
| 26 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/instance.md) | 310 | `declaration-track:32355707ae5a5380cc98379fceacd90b084e4cc4420ec89f61c65c689da879b2` |
| 27 | `structure` | [Ref](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/ref.md) | 316 | `declaration-track:ae612c7012a5fe04b7eab375d01378184565da06ac6faed3c1ca30ad33bac6e2` |
| 28 | `def` | [Ref.cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/ref-cast.md) | 325 | `declaration-track:50ec6cb2f9fb6189dc40d0691e2cfaf055776c2afd614a50b3992a2ec0f2cbbd` |
| 29 | `def` | [Ref.flip](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/ref-flip.md) | 334 | `declaration-track:dc6b6360022f5e4c61ca8ad2977ec9fc4a0f643df90a02609fe3d6da5e3ac7a5` |
| 30 | `def` | [Ref.not](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/ref-not.md) | 341 | `declaration-track:9a8bbfdde3fa64b0f3a6a975da47ebfc64bd239cc5ee9f93c09181117d9afaef` |
| 31 | `structure` | [BinaryInput](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/binaryinput.md) | 347 | `declaration-track:752e8fb91092a971b42349fcdf24318fc078330ea8d3d4ced532e94dcd0a90df` |
| 32 | `def` | [BinaryInput.cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/binaryinput-cast.md) | 355 | `declaration-track:572da3df292d8f05d774172eb4c6f3eaac4fc9a6ed3582a8adfea175f57f454e` |
| 33 | `def` | [BinaryInput.invert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/binaryinput-invert.md) | 364 | `declaration-track:82452dfd3638bc94b2a7106f4a169f40ecdfd103555da32105e5d0877b6a5fed` |
| 34 | `structure` | [TernaryInput](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/ternaryinput.md) | 372 | `declaration-track:f6e3956e9f85894b0426828df3d084b7f827381ba98c6f5865c09563c2f10262` |
| 35 | `def` | [TernaryInput.cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/ternaryinput-cast.md) | 381 | `declaration-track:318e2c79c7c02e74bd2cf9a404fa60cec136303713be0d390f312e9d48e0fdc4` |
| 36 | `structure` | [Entrypoint](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/entrypoint.md) | 390 | `declaration-track:5cc31c0d9e798965f22af97c866ce473812ae78c4f999bddb0f7a4c5371e25e3` |
| 37 | `def` | [toGraphviz](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/tographviz.md) | 403 | `declaration-track:4ccc094e391fa82b9617ce5edec71e97ec882b062c5dd020c821cb60244e8398` |
| 38 | `structure` | [RefVec](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/refvec.md) | 441 | `declaration-track:e0878694f20290a0d34558de97837d384f83ae1407db35e19d4bdc941982276a` |
| 39 | `structure` | [RefVecEntry](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/refvecentry.md) | 448 | `declaration-track:302fa5a00088f74e345009954509c65b6502bbff2f4a716fbb28f6d285804157` |
| 40 | `structure` | [ShiftTarget](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/shifttarget.md) | 455 | `declaration-track:3e5201b0ee88d2a29711f319d9a3646c01a99787bcaaaf31452873cf940f7d05` |
| 41 | `structure` | [ArbitraryShiftTarget](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/arbitraryshifttarget.md) | 462 | `declaration-track:cc9aef4cf0ed496620ae11ae5970c6110b2f50cf26ef6296340ccf471e0fcb49` |
| 42 | `structure` | [ExtendTarget](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/extendtarget.md) | 470 | `declaration-track:edcd1977286d863c9990f8ce9a0a471c942b254665731770d3edc373f03f2bb6` |
| 43 | `def` | [denote](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/denote.md) | 477 | `declaration-track:994900312f57bb13c54b207a5aff48c3c7398d6fdf27a6c9ade73ee4d04006cf` |
| 44 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/syntax.md) | 496 | `declaration-track:07b748c49404d8c769c87e0470f8b5c13372108e090debaf582fb35c91f4b46b` |
| 45 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/syntax-source-edition-2.md) | 501 | `declaration-track:e94e5433475072e73050f894e4eb7284b0d0703fedec54a19efcf45f95706df6` |
| 46 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/macro-rules.md) | 503 | `declaration-track:9c14c3692fb00bf26ee3df20f5905d57fa04c04b9729fe11776d7bcc6fc90b7c` |
| 47 | `def` | [unexpandDenote](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/unexpanddenote.md) | 508 | `declaration-track:e497572acc5828dc06f90b62599553083cd72596b25290602d8e38572aad231d` |
| 48 | `def` | [UnsatAt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/unsatat.md) | 517 | `declaration-track:619fac0df39b50732e0cbcec2f2c5eab413b0f6cce8072e4d518391587e4e980` |
| 49 | `def` | [Entrypoint.Unsat](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/entrypoint-unsat.md) | 523 | `declaration-track:232fa72b6d1b741188fa0851294b32482c2b7fb0a824587074d220c490699530` |
| 50 | `def` | [mkGate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/mkgate.md) | 530 | `declaration-track:59d87283d03394de13ef1e35336a9f176b139f85ff3b084f0af52f4516fa1d26` |
| 51 | `def` | [mkAtom](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/mkatom.md) | 553 | `declaration-track:1c44e14f7956f1754acb9425f5663a576ddff06d8ebb1bc1b16263edcf4432b9` |
| 52 | `def` | [mkConst](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/mkconst.md) | 571 | `declaration-track:9a7e016d9d2e7a6a63c66123696a25441ecfc138a044463e8cd3dce810061010` |
| 53 | `def` | [isConstant](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/isconstant.md) | 588 | `declaration-track:96ee53eafbb57f052e54aab4b4b9c613db6f22dfc5cc00800f48a09348d3d22b` |
| 54 | `def` | [getConstant](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/declarations/getconstant.md) | 598 | `declaration-track:2cba75464f42bc54b3dd18a816db31fe4708a20bf61698024136d18c4fa1efdf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=13dd7ebd1b7dbc1e9b6cde1c7038a6339c50457f64cafaa2f1cf87d186f1c221 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantde584b4ccd5c074f13bb4843513763191196c9fc56ad0820c636c4e0f0685123.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantde584b4ccd5c074f13bb4843513763191196c9fc56ad0820c636c4e0f0685123.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
