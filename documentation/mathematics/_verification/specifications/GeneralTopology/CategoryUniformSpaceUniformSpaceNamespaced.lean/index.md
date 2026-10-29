# Verification target: Category Uniform Space Uniform Space Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38229bc4d13125ce098a58c1a879595c45db01b8",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant5723ceb6cd040bbb0847f0fed1fef683873026d66c3397310960fb32e00b2810.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38229bc4d13125ce098a58c1a879595c45db01b8`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant5723ceb6cd040bbb0847f0fed1fef683873026d66c3397310960fb32e00b2810.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant5723ceb6cd040bbb0847f0fed1fef683873026d66c3397310960fb32e00b2810.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Reflective` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Limits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Completion` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [UniformSpaceCat](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/uniformspacecat.md) | 35 | `declaration-track:578455062c330ea2cf49e7591f751d12bf6e30a387265ed0ad70308cc290202c` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/instance-source-edition-6.md) | 44 | `declaration-track:cad5e9d2286a722ff62c9e7e096e8c9bae1b74cece41761b2129dbb7d10a68e8` |
| 3 | `abbrev` | [of](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/of-source-edition-2.md) | 48 | `declaration-track:827a9ce282532a2284d7aa7bdeb80a202c8a29a0c16056d2d4c10352bda00495` |
| 4 | `structure` | [Hom](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/hom.md) | 53 | `declaration-track:96d063b0d9e5c104f17be1c4cb8459e105970a9c91c303bf6c38b80a0fdc1b00` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/instance-source-edition-5.md) | 57 | `declaration-track:c9966b02034144e987c048223387778f461ada2f662d83cdc3ed858c8ffc9d41` |
| 6 | `instance` | [instFunLike](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/instfunlike.md) | 65 | `declaration-track:73056b875964a613aded93c9771c01e6df5c9143d0283c9fd062709c82d00274` |
| 7 | `instance` | [(anonymous)](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/instance-source-edition-4.md) | 70 | `declaration-track:8cf506c46c3e5712c1a3e1d6ddc743d034fe04e7d8aedd98bba6c24150b01090` |
| 8 | `abbrev` | [Hom.hom](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/hom-hom.md) | 75 | `declaration-track:600f202d043cf4d4057217d902e7f0a8bcfaf635707fe9d29a8fe8eecbe6fe7f` |
| 9 | `abbrev` | [ofHom](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/ofhom.md) | 79 | `declaration-track:ff27a109a0bc91aed3bd075131e75be5b5adcff6b88ab9453620de8ac9a7e61e` |
| 10 | `instance` | [(anonymous)](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/instance-source-edition-2.md) | 83 | `declaration-track:359297dc4585de8c4d073006b56e8b70267dd97ecf6289b52b0855d413cf8ad7` |
| 11 | `theorem` | [coe_of](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/coe-of.md) | 86 | `result-track:48e71d15d2cc38929031a2872b7e7fe8cd007718984c7cfdd3d13895a5d9b8b6` |
| 12 | `theorem` | [hom_comp](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/hom-comp.md) | 90 | `result-track:30291dcdec9e0344544025237d8184aa9e7de779995df0ffc9d3c6bb33fd1ce7` |
| 13 | `theorem` | [hom_id](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/hom-id.md) | 95 | `result-track:2af8af28f5022a431a9bc15e642cbff802c0ef8a0e927dd11d367dd2de838b0b` |
| 14 | `theorem` | [hom_ofHom](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/hom-ofhom-source-edition-2.md) | 99 | `result-track:e24507a31beef3793f23aea157765ad563d4ace8c9b17868fd7b7a3ac4602cc8` |
| 15 | `theorem` | [coe_comp](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/coe-comp.md) | 103 | `result-track:cf259b88be4be40110f65dc61e6d15cf2f55f0569711b032dada20d69312ec40` |
| 16 | `theorem` | [coe_id](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/coe-id.md) | 106 | `result-track:eccf523ee3ae110b797f20b461dfaee60e30afa7a1b89984544c34b2278b6b0e` |
| 17 | `theorem` | [coe_mk](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/coe-mk.md) | 109 | `result-track:558923b5068ea07fc90d9d49825fd18b6003212ed82a2f21ee8879d2eb7b66b4` |
| 18 | `theorem` | [hom_ext](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/hom-ext.md) | 114 | `result-track:22a7737310602f11bd5233461053548768a01b6921fa654aaf5fb0662492a012` |
| 19 | `instance` | [hasForgetToTop](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/hasforgettotop.md) | 118 | `declaration-track:6348ea15c37d005a0638d987311e844773ddc8e49cf27a06b86b3253108cb03f` |
| 20 | `structure` | [CpltSepUniformSpace](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/cpltsepuniformspace.md) | 128 | `declaration-track:4a4f90210be48b023ef72ef51cc18071385ff74a0df29ab22c7c05d94ebc690b` |
| 21 | `instance` | [(anonymous)](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/instance-source-edition-3.md) | 137 | `declaration-track:4fbce4cb8063a90c69884c9f76dcb864e472ce9df0574e6da8436e3a39bd46e0` |
| 22 | `def` | [toUniformSpace](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/touniformspace.md) | 143 | `declaration-track:67f7af64a5eba14c15792ac1395f1be2988563ad2e3998eda8ae863f5b355dd7` |
| 23 | `instance` | [completeSpace](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/completespace.md) | 146 | `declaration-track:51236632720fa2792e7e65edc4719dff632bb11a0916352c28ca0a7b0a41c898` |
| 24 | `instance` | [t0Space](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/t0space.md) | 149 | `declaration-track:1c3c8fd2b9a1afe7324ecb3689c82fa4166bcf0cac5c0e50eca15ccc930b48a5` |
| 25 | `def` | [of](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/of.md) | 153 | `declaration-track:6ee94e848744693d1668d5f58c9924fb9142dd961bef00590b5c337cccb463c5` |
| 26 | `theorem` | [coe_of](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/coe-of-source-edition-2.md) | 157 | `result-track:ce1dce4cc87625dfacea767fdad27da7f26bb345779a7437da0e03164948480f` |
| 27 | `instance` | [(anonymous)](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/instance-source-edition-7.md) | 161 | `declaration-track:f5d0a1e13fbf1deecb6f7032bcdfc8a5fddef09bfb899dda8304bea9d84cb359` |
| 28 | `instance` | [category](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/category.md) | 165 | `declaration-track:a4c1a796e375bd3b886c43729d1e6c3495fcb9ce8cf2fac6326d8e8a76145e3b` |
| 29 | `instance` | [instFunLike](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/instfunlike-source-edition-2.md) | 168 | `declaration-track:f88a86811a05af246d56a85199f8bb7f0805cf7f04d6c1e70f336f2a3d5331ed` |
| 30 | `instance` | [concreteCategory](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/concretecategory.md) | 174 | `declaration-track:4c808bd596e346ce30b26322e4724373135bf93325fa8591afe3747cc18b4d50` |
| 31 | `instance` | [hasForgetToUniformSpace](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/hasforgettouniformspace.md) | 178 | `declaration-track:3c22db2b36801106bf6eae687b0deab381897f08a4396030c4d01bb38a64a243` |
| 32 | `theorem` | [hom_comp](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/hom-comp-source-edition-2.md) | 182 | `result-track:83d0fde95598ddc492dc4efcc443d7ed1e7d6937b1f3cae6aed598aca7dcea8f` |
| 33 | `theorem` | [hom_id](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/hom-id-source-edition-2.md) | 187 | `result-track:4aac493809fa73f2fff88d70f9e763a09cd0fe4d366b6101fe0bff24bb5b039a` |
| 34 | `theorem` | [hom_ofHom](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/hom-ofhom.md) | 192 | `result-track:cd09e4fbe1c84602662029883d435da2e0e218f718c5ebc590a9f1ddb6108c34` |
| 35 | `def` | [completionFunctor](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/completionfunctor.md) | 206 | `declaration-track:3b31931f317c0d0bb7887c67091a19090074a53a3e931740d2c1c110804587c8` |
| 36 | `def` | [completionHom](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/completionhom.md) | 213 | `declaration-track:a9f78cf63d41309ed0bff8b4d161f03feeca79124284acd40a0dd47ca7691221` |
| 37 | `theorem` | [completionHom_val](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/completionhom-val.md) | 219 | `result-track:4d1d25faae1f65a053cd5ddf25bbcb5b1ed21b3ff7139c87fbe6d1fcc2cd7d91` |
| 38 | `def` | [extensionHom](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/extensionhom.md) | 223 | `declaration-track:17e4152762c52fe32acba673949f5e91d932eeb4855dd539ec9a30333a5e04e0` |
| 39 | `theorem` | [extensionHom_val](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/extensionhom-val.md) | 230 | `result-track:ba537d49a4578d12f786603735dea465d3b99f760a012ba2a01a3e277a3acd05` |
| 40 | `theorem` | [extension_comp_coe](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/extension-comp-coe.md) | 235 | `result-track:2bfead5562c985218fb83e62b0ba7c7a2e440d02f9832c42936f398e08ad9d5f` |
| 41 | `def` | [adj](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/adj.md) | 242 | `declaration-track:aef0029785fd9807c9f1ed792e2493e1e2638b6664b09f9bdf3ebe4e38a15ec7` |
| 42 | `instance` | [(anonymous)](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/instance.md) | 259 | `declaration-track:1f09e5fadaba9666eb8bdccc7f07edd675e6700b0398cfd0ccc5f0eab177c63e` |
| 43 | `example` | [(anonymous)](../../../../GeneralTopology/CategoryUniformSpaceUniformSpaceNamespaced.lean/declarations/example.md) | 267 | `declaration-track:a24e0791bddf91f5a79ee2e893d7db3335dc2dae6b78cba7fad5d527cc96333e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9c7bf11b4c69265d1b15b74c303462c89d2e8bf59984d9715c324a0fe752ac20 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant5723ceb6cd040bbb0847f0fed1fef683873026d66c3397310960fb32e00b2810.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant5723ceb6cd040bbb0847f0fed1fef683873026d66c3397310960fb32e00b2810.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
