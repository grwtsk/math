# Verification target: Perm Namespaced Public Sublist

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "881e18989c325b57d44d3ebca85497117adc440a",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant78192de4bd455ae99e2bbdcfe9cccbc9944b03fdee0f1a238ea0b69b19efadfe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `881e18989c325b57d44d3ebca85497117adc440a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant78192de4bd455ae99e2bbdcfe9cccbc9944b03fdee0f1a238ea0b69b19efadfe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant78192de4bd455ae99e2bbdcfe9cccbc9944b03fdee0f1a238ea0b69b19efadfe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Util.ProofWanted` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nil_subperm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/nil-subperm.md) | 39 | `result-track:36fc6557cbdfae0c973e283357e8216a53bc48574c822bc44de83939b6cf069f` |
| 2 | `theorem` | [Perm.subperm_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/perm-subperm-left.md) | 41 | `result-track:a9c88b2050958cb807096c0398d7525988e1c23177efe9c95c40a860137c7969` |
| 3 | `theorem` | [Perm.subperm_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/perm-subperm-right.md) | 47 | `result-track:1e7ae93dfc0ba94f28289c22af25466526b525dd2e27ca79b5da539c67cc95d9` |
| 4 | `theorem` | [Sublist.subperm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/sublist-subperm.md) | 50 | `result-track:3575cc9d161e3884ab95f8ea3242f3e35ef4590b5af7f13ed7653268d4a2beb8` |
| 5 | `theorem` | [Perm.subperm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/perm-subperm.md) | 52 | `result-track:819f65b0c7a23b0a3e18980c9600ae1eb1b8a14cfd3bc4c1754f1d7ae441c8ce` |
| 6 | `theorem` | [Subperm.refl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/subperm-refl.md) | 54 | `result-track:b4d96d0a36cdb7cb4567e111d5e5847799ec99e26ef58b9eee7e13901e217914` |
| 7 | `theorem` | [Subperm.trans](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/subperm-trans.md) | 56 | `result-track:f60acd725c765b3b6e58580a18c660ff15c044a214d2ca7f7befebf843d472be` |
| 8 | `theorem` | [Subperm.cons_self](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/subperm-cons-self.md) | 61 | `result-track:a2560e12e154d5fd79df4f14e19a816fcf556b3b8cd08ccf80e4522422dff059` |
| 9 | `theorem` | [Subperm.cons_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/subperm-cons-right.md) | 63 | `result-track:af497d89a2ad661fba47547f2c84f640945e9ea33a5b707a6808834536e4366b` |
| 10 | `theorem` | [Subperm.length_le](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/subperm-length-le.md) | 66 | `result-track:e3494b7905690d9cc752af906e68e4e51c71eda0a82c77daa2ea1cc70668b184` |
| 11 | `theorem` | [Subperm.perm_of_length_le](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/subperm-perm-of-length-le.md) | 69 | `result-track:400b570f78acdfeb639a9780dd3b4a5c8b20b92edad59021f1cdb62c0a9d50e2` |
| 12 | `theorem` | [Subperm.antisymm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/subperm-antisymm.md) | 72 | `result-track:4d356fceb64bf1b24d7152d03b8e3c1f6163981704ed73fcd8d404bf318348bf` |
| 13 | `theorem` | [Subperm.subset](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/subperm-subset.md) | 75 | `result-track:bd5504b9c5e91107bb67e1e3cbaf74ccf84d343bd7f30bf76833715455b58d56` |
| 14 | `theorem` | [Subperm.filter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/subperm-filter.md) | 78 | `result-track:0558b92f001d79633c885ab5cc3f991df7ad7b3c3e0ec5dd4089909efc8a752f` |
| 15 | `theorem` | [subperm_nil](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/subperm-nil.md) | 83 | `result-track:ae94bbd9b673c00e960fa99f6845f6c38805fae96a28c7a7204c15a1a791e837` |
| 16 | `theorem` | [singleton_subperm_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/singleton-subperm-iff.md) | 86 | `result-track:25770458062d8e1fbf776b1e3142cc6f562323b70cfe9c25f496a650a19db8d1` |
| 17 | `theorem` | [Subperm.countP_le](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/subperm-countp-le.md) | 90 | `result-track:4e90f3e588faa0747c41e9725933e2e0c7d2eb9fc3e695ad77482f0a60c9615c` |
| 18 | `theorem` | [Subperm.count_le](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/subperm-count-le.md) | 93 | `result-track:a872bcd0d2ba831d09747ae39b919810748c8c4cf973e6f12037d7f96a79809c` |
| 19 | `theorem` | [subperm_cons](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/subperm-cons.md) | 96 | `result-track:822dfa5e53e1a5a2a9e1a08403b4073e8a6272fffcfde3dc8603cec17738b0e0` |
| 20 | `theorem` | [cons_subperm_of_not_mem_of_mem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/cons-subperm-of-not-mem-of-mem.md) | 103 | `result-track:e650b02568cc5c0b2ba63c7af43705d21ffdfa19f5c2534b6bebd2fbcad6cc9b` |
| 21 | `theorem` | [subperm_append_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/subperm-append-left.md) | 124 | `result-track:34fabcb3239fb068b92cb40383b2582ed56723c28c2b0eaf76378b244b98f6fc` |
| 22 | `theorem` | [subperm_append_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/subperm-append-right.md) | 128 | `result-track:399c3969e9e3e0cd66969365ad41acfd74ca51fbdbac1ebd48acad71702785c2` |
| 23 | `theorem` | [Subperm.exists_of_length_lt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/subperm-exists-of-length-lt.md) | 131 | `result-track:d95f2e10840a6979597df7ca290ca42088097a509284642766c8e144d6b06008` |
| 24 | `theorem` | [subperm_of_subset](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/subperm-of-subset.md) | 147 | `result-track:8e73b12b4bb5b17ee67ca9c9d2e577ef40abc72aea776e6d324db2e65eb950b5` |
| 25 | `theorem` | [Nodup.perm_iff_eq_of_sublist](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/nodup-perm-iff-eq-of-sublist.md) | 154 | `result-track:5a87845da25b37140e828c9b98b0e5cf7706259a24a0e71533ca3b6907dc662f` |
| 26 | `theorem` | [subperm_cons_erase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/subperm-cons-erase.md) | 172 | `result-track:6f1ed6ae3d0a747169e67e644206ec7c5779365eab268170fc305e949d64e3b9` |
| 27 | `theorem` | [erase_subperm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/erase-subperm.md) | 178 | `result-track:60a90bfc582894b82371226625c98f70ab59aff00862443adbfc66f04974e44c` |
| 28 | `theorem` | [Subperm.erase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/subperm-erase.md) | 180 | `result-track:ef5484619f2143e76aad3fe15838bdd99ef338bb12acd9602d26059fab98a54a` |
| 29 | `theorem` | [Perm.diff_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/perm-diff-right.md) | 184 | `result-track:df54f16b2e5f946e3558c2fc156552b4e2c7fbe2f87f5fd0dda49d7351d03a47` |
| 30 | `theorem` | [Perm.diff_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/perm-diff-left.md) | 194 | `result-track:f80a5e6ebe7c3a3a827963ae446a7c8090949459b2b9ca0df64851a0dda16061` |
| 31 | `theorem` | [Perm.diff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/perm-diff.md) | 206 | `result-track:b578f863b871d3c18e9bdc6e0babf551a54eafa78e6e9d5a116083a3dbcfd18c` |
| 32 | `theorem` | [Subperm.diff_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/subperm-diff-right.md) | 210 | `result-track:6c6871900babecfe26ea4240366e7a0cb2b00ae5dcaaa48dbb71cf4f3f91af65` |
| 33 | `theorem` | [erase_cons_subperm_cons_erase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/erase-cons-subperm-cons-erase.md) | 222 | `result-track:91ee8fdff56aea6eb26902c99ce05da38b049f7d344933a0583c8516ec4019e8` |
| 34 | `theorem` | [subperm_cons_diff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/subperm-cons-diff.md) | 230 | `result-track:9681ce90f7e3219e2d794642378c8726a8603027bc1e05634207f0312e3e00ac` |
| 35 | `theorem` | [subset_cons_diff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/subset-cons-diff.md) | 238 | `result-track:868cba5bcf949b26b3ca8b872b82e2fd1f7420b19ab558c2db5422f7595c0d57` |
| 36 | `theorem` | [subperm_append_diff_self_of_count_le](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/subperm-append-diff-self-of-count-le.md) | 243 | `result-track:bdfb8a961ef6c4299c6840eb20435200e222a1dcc465b9babf85b76c58b5ea60` |
| 37 | `theorem` | [subperm_ext_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/subperm-ext-iff.md) | 261 | `result-track:c5879c74cc00f7b0c4d8f977fd9e46e1f8ea82b2f36201f42ff8d37b3393bbda` |
| 38 | `theorem` | [isSubperm_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/issubperm-iff.md) | 268 | `result-track:76e298c2c8b4234f3521837222279843f83ed26b4972c000f7c4abf1378b5e9d` |
| 39 | `instance` | [decidableSubperm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/decidablesubperm.md) | 271 | `declaration-track:a3b3e82c0094d4f17781a93e38afdb1f6173f3f3f32eafa660cea8635f4733d1` |
| 40 | `theorem` | [Subperm.cons_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/subperm-cons-left.md) | 275 | `result-track:7c7f0c8ac0811a11620c21e7d083febb1a655ca8df776531d2ff8ba100b11a9c` |
| 41 | `theorem` | [Perm.union_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/perm-union-right.md) | 286 | `result-track:9286fd6896b0e9607a81b9e5455254123d776ea150a6d89926df053fef2b32cc` |
| 42 | `theorem` | [Perm.union_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/perm-union-left.md) | 294 | `result-track:b3a8d23a5b1d45b6d162aa71071c69b366973e81d7a4fc7feb362d0e4d8ee6b9` |
| 43 | `theorem` | [Perm.union](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/perm-union.md) | 299 | `result-track:922b9a8bf098701affdfa0883986187438052516f85c658299948ef94f1c8102` |
| 44 | `theorem` | [Perm.inter_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/perm-inter-right.md) | 303 | `result-track:4fe5f7d34fde48288a061dc7d3536186dea8062a838e417fcf8bfcfd30e03b39` |
| 45 | `theorem` | [Perm.inter_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/perm-inter-left.md) | 305 | `result-track:4b3a35721f6ef9e3698f9bbf791b6af8acc2d1ad1afc26300c6803c86fbd27fd` |
| 46 | `theorem` | [Perm.inter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/perm-inter.md) | 308 | `result-track:f945667974bd4c3c820ff525a2d65d1b96938562719022557569d3ca5961fae5` |
| 47 | `theorem` | [Perm.flatten_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/perm-flatten-congr.md) | 312 | `result-track:3ff83a7e9768fba4412dae92829b3b08f3f50b98279fa334e80239e71baddd2f` |
| 48 | `theorem` | [perm_insertP](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/perm-insertp-source-edition-2.md) | 317 | `result-track:c59a4fd66b250743a4bf9a8c2578b8f3c5427d2c5e14e68cea12bc9c85bce624` |
| 49 | `theorem` | [Perm.insertP](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/perm-insertp.md) | 325 | `result-track:5c505cc012d8915fabf8408601a6c4ec0c615ff6288fbc195a0717d3516bc9bc` |
| 50 | `theorem` | [getD_set_perm_cons](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/getd-set-perm-cons.md) | 328 | `result-track:0624b34b8151ea47c502ff38de0d26c47a112b093744bfd13aea036f3eddd5ff` |
| 51 | `theorem` | [cons_uncurry_swapAt_perm_cons](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/cons-uncurry-swapat-perm-cons.md) | 335 | `result-track:9a3995543b3f3b4027de4da0d433fa03ac4fc650af05e1f28cb02314d210459d` |
| 52 | `theorem` | [swap_perm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/swap-perm.md) | 338 | `result-track:cb37892870b6096789b4b302264ca7ab52ce9dd4506a9ffa1166f22105457053` |
| 53 | `theorem` | [mem_swap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/mem-swap.md) | 346 | `result-track:6ff58b48304ca1059caed7ffbda63cfc59b378ab8bb540e109e412ebc9cc22f8` |
| 54 | `def` | [Subperm.idxInj](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/subperm-idxinj.md) | 358 | `declaration-track:f4d4d813bce4d2eacb7eb362e3ce6c9d4ff9eb1d1aeabb7852ad00c328fd0f13` |
| 55 | `theorem` | [coe_idxInj](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/coe-idxinj.md) | 364 | `result-track:f400a1b538ebd46b57259b7565e674935460887595bf4dd02dfbc04c7b7ad132` |
| 56 | `theorem` | [Subperm.getElem_idxInj_eq_getElem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/subperm-getelem-idxinj-eq-getelem.md) | 368 | `result-track:3089f91ee21aa0052f64a31b334196eb949d0aae9130df835d96f7264df6b81a` |
| 57 | `theorem` | [Subperm.idxInj_injective](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/subperm-idxinj-injective.md) | 372 | `result-track:783b6f076cc0fbd44a0a7a55de8ffde36895b7385f0b9edaffd930b01af6e7a7` |
| 58 | `theorem` | [Subperm.idxInj_inj](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/subperm-idxinj-inj.md) | 378 | `result-track:5ff0cb45ccfd750f25995b48efbd164096642526ca9b5b367279188631b28d22` |
| 59 | `def` | [Perm.idxBij](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/perm-idxbij.md) | 391 | `declaration-track:f134094ada0d0dc6a78bd06b5062adc2e9cd436a25f643f821d300d26611186c` |
| 60 | `theorem` | [Perm.subperm_idxBij](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/perm-subperm-idxbij.md) | 395 | `result-track:7e35c55d0f5833e4240783fc7c2f8d9b53ad547fc7a85a5dc80fec58f7f05606` |
| 61 | `theorem` | [Perm.coe_idxBij](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/perm-coe-idxbij.md) | 399 | `result-track:5e10664dd37809af5fcdc86a5cc21580a36f2e986645c0f728fd648181c90773` |
| 62 | `theorem` | [Perm.getElem_idxBij_eq_getElem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/perm-getelem-idxbij-eq-getelem.md) | 402 | `result-track:ae5a884689e74bd483fc19f7cb29a505eeafa52e0543aef87c40bd606be0cc81` |
| 63 | `theorem` | [Perm.getElem_idxBij_symm_eq_getElem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/perm-getelem-idxbij-symm-eq-getelem.md) | 406 | `result-track:7bb15fd1a276bbcf897914d220d2b9c6baabc0d61f57a5e50ed95a038cbe418c` |
| 64 | `theorem` | [Perm.idxBij_leftInverse_idxBij_symm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/perm-idxbij-leftinverse-idxbij-symm.md) | 410 | `result-track:f9a327ee53d21d69deeefe757086bc39327ccdf1fac9f1c47e0035c6cef08947` |
| 65 | `theorem` | [Perm.idxBij_rightInverse_idxBij_symm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/perm-idxbij-rightinverse-idxbij-symm.md) | 413 | `result-track:790097ff79a800088d616b059ad9da16695d953bf6ffcf60b0cc4d70515d763e` |
| 66 | `theorem` | [Perm.idxBij_symm_rightInverse_idxBij](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/perm-idxbij-symm-rightinverse-idxbij.md) | 416 | `result-track:d2631624f8a77c369435ec3608ce327783355cb18a84f1ef4a522660c28f485d` |
| 67 | `theorem` | [Perm.idxBij_symm_leftInverse_idxBij](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/perm-idxbij-symm-leftinverse-idxbij.md) | 419 | `result-track:3776f221075cd31da6d247bd8431b755a4b7a00199ec043e244595c1cfc82a06` |
| 68 | `theorem` | [Perm.idxBij_idxBij_symm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/perm-idxbij-idxbij-symm.md) | 422 | `result-track:ba65ff896631331eaba4840746828ce81b0f9dda05f9ee76fb9e97b963a3299e` |
| 69 | `theorem` | [Perm.idxBij_symm_idxBij](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/perm-idxbij-symm-idxbij.md) | 425 | `result-track:f3324b7ed2f73511483856cb36086df2638b58b2f629211f8fd6f0f218739bd8` |
| 70 | `theorem` | [Perm.idxBij_injective](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/perm-idxbij-injective.md) | 428 | `result-track:9cb680d8621474c6c44a752d42803acee2ceb43aad1e6cf645f2f8011757f33c` |
| 71 | `theorem` | [Perm.idxBij_surjective](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PermNamespacedPublicSublist.lean/declarations/perm-idxbij-surjective.md) | 431 | `result-track:d75393c634b3f97db2acf3521798bb40f23810fa3f43af8ac336d048c16a894f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e8eec3a5f8aa0d01abf27eab62b858005fb0f427185058c4efefcd4bfc5535ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant78192de4bd455ae99e2bbdcfe9cccbc9944b03fdee0f1a238ea0b69b19efadfe.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant78192de4bd455ae99e2bbdcfe9cccbc9944b03fdee0f1a238ea0b69b19efadfe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
