# Verification target: Basic Basic Namespaced Public Nondet

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b5f2a4c5081ef3f635eb96e81ba46b2a9e853fb",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant976711c7f99ec2461ef80b235831c9c273a6e1942bab409c21c48017ed2522ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicNondet.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicNondet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b5f2a4c5081ef3f635eb96e81ba46b2a9e853fb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant976711c7f99ec2461ef80b235831c9c273a6e1942bab409c21c48017ed2522ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant976711c7f99ec2461ef80b235831c9c273a6e1942bab409c21c48017ed2522ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Util.MonadBacktrack` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Nondet](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicNondet.lean/declarations/nondet.md) | 58 | `declaration-track:9a8814082d6b657be7382b879b7df0cfb6ca833bbb193c60171208fbb66f163e` |
| 2 | `def` | [nil](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicNondet.lean/declarations/nil.md) | 72 | `declaration-track:acd97139f65fc196099c25cefd6d846ee0125746b6107a72c7a68557e27dcf18` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicNondet.lean/declarations/instance-source-edition-3.md) | 74 | `declaration-track:bc3f20590ab403a6d57d40edfdfddb34435197da85a9c380e19edbcf08f91f4a` |
| 4 | `def` | [squash](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicNondet.lean/declarations/squash.md) | 79 | `declaration-track:6d4e9a4e146edfbb27e8d86e9c25f0a85dc9cbcfe00bee05503772912244c4a1` |
| 5 | `def` | [bind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicNondet.lean/declarations/bind.md) | 86 | `declaration-track:1283ef31a90810bc5c14df0ab960f209de5938b58d18bd2a1e773941cd03d8cb` |
| 6 | `def` | [singletonM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicNondet.lean/declarations/singletonm.md) | 97 | `declaration-track:94228c694e4b8949fa7aa1c4879fb33098347169b83f48e518257c5d5c627df6` |
| 7 | `def` | [singleton](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicNondet.lean/declarations/singleton.md) | 103 | `declaration-track:e9c57488822728b8e596034c2c3181c246757ccedfe9ab201574207e86116f10` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicNondet.lean/declarations/instance.md) | 106 | `declaration-track:230a8bf1ee8781bf1988b497842bd3b4a1cc957431bc714ee6cb5a2acaf0c485` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicNondet.lean/declarations/instance-source-edition-4.md) | 112 | `declaration-track:e317bb49ac04bfb42b3428c660fb5496c3202ff836e5c6a9531e4e03aa4e01d8` |
| 10 | `def` | [ofListM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicNondet.lean/declarations/oflistm.md) | 119 | `declaration-track:1f8d1e04f6323a169e4fa2a9104096f40ba28a752284b4568d4d79e385a972b5` |
| 11 | `def` | [ofList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicNondet.lean/declarations/oflist.md) | 132 | `declaration-track:5bd125e343ea3d71fda465d1c9c2dd307705411c733c51637d4c618dc1adc46d` |
| 12 | `def` | [mapM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicNondet.lean/declarations/mapm.md) | 135 | `declaration-track:14e6413de6ccaa36d4ad7b6443702ed0c339e678183d6a8013d9ebe9cbf1dd69` |
| 13 | `def` | [map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicNondet.lean/declarations/map.md) | 139 | `declaration-track:6a9c3001940ccde951bb7006822d53bc93e9dfd3797204827390add470808c11` |
| 14 | `def` | [ofOptionM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicNondet.lean/declarations/ofoptionm.md) | 143 | `declaration-track:ef0b3b4fdd87ae71f5bbf3042f0b6b8ac90fc753fe2d941702780a38c5ddabba` |
| 15 | `def` | [ofOption](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicNondet.lean/declarations/ofoption.md) | 149 | `declaration-track:f7e50c076c90f2785fdd1958027e59bc4fadc03dcc08f30ca422ee07a73baa23` |
| 16 | `def` | [filterMapM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicNondet.lean/declarations/filtermapm.md) | 152 | `declaration-track:c52f037e00a0695e3d78e2239f63c852b04d17c2f1a62681d76e470acddb2b5f` |
| 17 | `def` | [filterMap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicNondet.lean/declarations/filtermap.md) | 156 | `declaration-track:945a17aaa948fcd1155ac95e901d960519f564b1444d9456f8ccf99cbdf30984` |
| 18 | `def` | [filterM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicNondet.lean/declarations/filterm.md) | 160 | `declaration-track:3cee8ba8ca9874655d0b191b49b78f30e70645ea5324436b29bdebdf9d4fdc15` |
| 19 | `def` | [filter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicNondet.lean/declarations/filter.md) | 168 | `declaration-track:a465060ed428cd5bf5c5e1248135566bd84ece89150c4386394aa463652a097f` |
| 20 | `def` | [iterate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicNondet.lean/declarations/iterate.md) | 176 | `declaration-track:8a22c682820ba1c59c1dfccebec5b878937a0e03d3d6cf8d4b142eedf51aec25` |
| 21 | `def` | [toMLList'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicNondet.lean/declarations/tomllist.md) | 182 | `declaration-track:b4abdbca6267e9a092cdf0806b061f4c20df7185327f993af66bf749d02c412c` |
| 22 | `def` | [toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicNondet.lean/declarations/tolist.md) | 187 | `declaration-track:6a527821071dfd86f3e7f42adf2aba79472917005ac47a4424b7775fd0d0242b` |
| 23 | `def` | [toList'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicNondet.lean/declarations/tolist-source-edition-2.md) | 192 | `declaration-track:9e1f0bd4a6369a37b144d5b3f35b5798dc12bb552b15784adade77babb7e250e` |
| 24 | `def` | [head](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicNondet.lean/declarations/head.md) | 202 | `declaration-track:da40b1f1d0a53287d3cddfe5b5f7d42cc73ac58034704c46256c743853dfc429` |
| 25 | `def` | [firstM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicNondet.lean/declarations/firstm.md) | 211 | `declaration-track:e5efce26d99172090e069cafea1e36ce27908ed4b63872b056577e70d1eb8095` |
| 26 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicNondet.lean/declarations/instance-source-edition-2.md) | 221 | `declaration-track:2e07a05c351e3df63b3b51e19cc4b2e4a7a3597e1b303621cfdefc3ffc252b54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56cc27c81a28b80e9da407fe67313c956ea67dccfab912639ea794a85628eadd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant976711c7f99ec2461ef80b235831c9c273a6e1942bab409c21c48017ed2522ea.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant976711c7f99ec2461ef80b235831c9c273a6e1942bab409c21c48017ed2522ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
