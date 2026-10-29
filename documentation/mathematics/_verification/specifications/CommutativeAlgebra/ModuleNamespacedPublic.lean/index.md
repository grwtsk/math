# Verification target: Module Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4893242c50a69a71868f6b511797b5be563d49d",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Module/Variantc33a2b01ae606fff848c6a0ffd59683879fc8722da46547db1a8e996991acc60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4893242c50a69a71868f6b511797b5be563d49d`.

Source path: `GRWTSK/Algebra/Module/Variantc33a2b01ae606fff848c6a0ffd59683879fc8722da46547db1a8e996991acc60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Module/Variantc33a2b01ae606fff848c6a0ffd59683879fc8722da46547db1a8e996991acc60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Abel` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-11.md) | 33 | `declaration-track:30ccfe11266ccdfbd7c6870d155bd468f004959a62e39ed6f7afa614e98bba7c` |
| 2 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-15.md) | 34 | `declaration-track:4523c102bc224f17b7b0bca61082f00fd2575cc5526c6ff7d8ce856cc035e610` |
| 3 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-44.md) | 35 | `declaration-track:cfcf8c35f3459fd6b8a5b5b00a8d256fee1b7f14107d607f4e50b0b86b3af5f6` |
| 4 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-4.md) | 36 | `declaration-track:0697a8380760799d158762318510036629b5cb0df29bb903afdb040daa86461a` |
| 5 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-45.md) | 37 | `declaration-track:d42631fafda32e9184638adea8e06d6a3223b8efc3083076afebb91cf504d04d` |
| 6 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-41.md) | 38 | `declaration-track:b93a126ce07c9c78a4079741b14186c3a2a04bbeedc28062127081a00220677e` |
| 7 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-30.md) | 39 | `declaration-track:8836aa00e0a2d0a7b7da0576e4d7b1e1c2781955486113969bf5ebb8cff25e71` |
| 8 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-20.md) | 40 | `declaration-track:6bbcb5face80ee673e53807935cfc09a1fa22ef880d365fa4c29845a7e364b73` |
| 9 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-21.md) | 42 | `declaration-track:6d902bb04b33a65f0c40a4cae0c9c7f0599e31e88ce34193e114ee35e402aa65` |
| 10 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-23.md) | 63 | `declaration-track:70d39049915f7ca3d18b961bef31584bce68249cae98a02de82e2782d56ebbe3` |
| 11 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-27.md) | 75 | `declaration-track:81f11c8414be1b15229efdf72b729d8965a5f04e1d692ceaaa03a96a38dc1243` |
| 12 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-38.md) | 79 | `declaration-track:a9a28ed0765f1833b529b248b9ba080cc1c56b2938d74c0b24a95b1d67ff9c14` |
| 13 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-43.md) | 87 | `declaration-track:c4dc4125012edd632e1d8351d30deadb33fd886d3323e61a8b91f86ab92a97cf` |
| 14 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-10.md) | 88 | `declaration-track:2fa9e2aa5d59d9468cc203dd336124aeca5c22578c565476d42575f8b38c7647` |
| 15 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-31.md) | 89 | `declaration-track:8adb7a85a49611a37ad7160b624bc401ea2ff0655043f574741abb4d5f34c4bd` |
| 16 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-36.md) | 90 | `declaration-track:a373e56739313e098d72569f1b27bf7c479f122993ab99ca9ff5700a9f616f9f` |
| 17 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-26.md) | 91 | `declaration-track:7cc2ce5041a14a75984ddd692efdc927ec040557502ea872a4ee6b3f4c7bdf38` |
| 18 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-19.md) | 92 | `declaration-track:67c0658bbd440823e641fe91810fe2993d8248a5f79e589cf76501a2f42fb5fe` |
| 19 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-9.md) | 93 | `declaration-track:2cea381edfba12d444cb1101e51afc20438f9cfec6ea584280f423d57ef32296` |
| 20 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-18.md) | 94 | `declaration-track:5680b61ec4271f66583f25d70a75141cccb11589be507959ef17b65979a37dde` |
| 21 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-48.md) | 95 | `declaration-track:d82870948872bcb98af2d545a0078f05bda0833aa3b0ad0a5c7524f3825144a4` |
| 22 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-29.md) | 96 | `declaration-track:85e3268f414d22c03f736537fab2946a94dc41753d87ad84c1a27d0b8fc9cde8` |
| 23 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-57.md) | 97 | `declaration-track:fb1a2e8584c81a639e3533a344cb90995ffe1ab4fcd13cf3a5cc93237b5ae449` |
| 24 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-40.md) | 99 | `declaration-track:b2521b6e1d3980146331be5bf79c4203e17ccf86875424d6014581741cead145` |
| 25 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-5.md) | 106 | `declaration-track:16089c4de7a192090746df6fe325ac90c92c2c0270f565d9ffb0f83c203467b4` |
| 26 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-56.md) | 112 | `declaration-track:f763a4f15d04aba0cc8da30b769a621cf8104bd18e7afa9562b9fa449b647c82` |
| 27 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-34.md) | 123 | `declaration-track:9b69e68c655b77b96fccfbba4517fe5d7d5c0bcd3cecd6f534241484f01beb94` |
| 28 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-46.md) | 127 | `declaration-track:d55fc54bac4641bd6316f813fcb367a5d21fcb838f85a1b46815edc3ed506d6e` |
| 29 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example.md) | 141 | `declaration-track:026e1e030f9a5b92280764925d18eecbdbc3d65385baa2067e026e4bd41b9a83` |
| 30 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-39.md) | 149 | `declaration-track:a9bcc7811566ad0b649d9aadbc22c11753ef562df64168d31ae1078946e98c00` |
| 31 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-13.md) | 150 | `declaration-track:35dc8a72cf91b41b658131407db55b831761aa368f25167e2c5b7e48a15c259b` |
| 32 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-6.md) | 151 | `declaration-track:180c8f1051667545401ef9fd29a6a9ada98bdfc8247e140456bf710f15818c59` |
| 33 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-37.md) | 152 | `declaration-track:a6e458d4dc90ee7a1cc0448cf1cdef2c1e0d5d482ff46c433f3bba3dff3cf1ad` |
| 34 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-51.md) | 153 | `declaration-track:ead8c4a392f9b9cdba2f071a96356495c530711d31f4677b6fae4f76c8e19020` |
| 35 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-32.md) | 154 | `declaration-track:8afa5699a40b4616a56b4537e819e17c32c4579f2d26f731a86bfe1ee6ca2563` |
| 36 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-53.md) | 155 | `declaration-track:f0a2802f76f9db99b14293a5a2522d7fe03d5c055ee11a2fad6659406bfda083` |
| 37 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-33.md) | 158 | `declaration-track:96590f37b0d443132f6320f40c8a3229a38296c92b154a3c285652d591f23fc4` |
| 38 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-52.md) | 159 | `declaration-track:ef8ef52c605d5276d0d1c510a6e1643d7492bba5005947f425d1a74c3861f391` |
| 39 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-16.md) | 162 | `declaration-track:4f1abc546ab77c6139506721d5e94e0b0de07f45bdd07d1aae80f32edc5d238f` |
| 40 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-47.md) | 164 | `declaration-track:d7d8db21f1a838ed4004d4486d07f15b022c534dd19a879d08f322c9d4ab02c0` |
| 41 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-49.md) | 168 | `declaration-track:dc9e6551e46e7f12aefbda5b58b0824c22725a921078b7bae7a57db1424f752a` |
| 42 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-8.md) | 171 | `declaration-track:2666e907cff82db3510f40ef4116e800cafd6723013cc5d83d3e56ab686a8827` |
| 43 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-12.md) | 176 | `declaration-track:356b8a41bed7c30e632395f089084c10ec747c71f180f63167606da61a1910da` |
| 44 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-14.md) | 179 | `declaration-track:3aafd0af63f816425882dd717fa53a102c9a16d8fbfdd741e5ac8070a95a7c82` |
| 45 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-50.md) | 185 | `declaration-track:e5a0af4988f4a418bcd3df88d15c562b1ee0eb18eb4e764003938f7d88952df5` |
| 46 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-3.md) | 189 | `declaration-track:061c2b14494ef47e4656f0e760ddf8c20c6af9633fa662d00f550b8bc6763e52` |
| 47 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-55.md) | 212 | `declaration-track:f6ceeef4b6f2a012466607519e9014263077774a87b1c9bc1810da5f9255a953` |
| 48 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-54.md) | 221 | `declaration-track:f47d668c5f0fc41ba525c3749b649456e24859eb6cc3d72deed2a79cd066c312` |
| 49 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-42.md) | 226 | `declaration-track:c3e6fe4d70d84854b4aac8ce0f49cbee2ea2824ea119be47f4124239170aea1c` |
| 50 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-17.md) | 230 | `declaration-track:4fd2e2ff1784d870c43bd0b02f0ecb4b0653fe1eeaba829c08a6032c98fa73bc` |
| 51 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-28.md) | 234 | `declaration-track:846ceaf2676a06544f80119fe49561f06da8e9a942f9fe0ccb128301a021d18e` |
| 52 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-25.md) | 245 | `declaration-track:79ef73535f791fe67897959e8b074ebcfce5e2b5e98cdfa21ae49de25640dada` |
| 53 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-24.md) | 247 | `declaration-track:749380684a4f9f6c0f8a78266614c40fa5f7716fa5bcc6b252c0bee207d06ecd` |
| 54 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-7.md) | 257 | `declaration-track:209fb27e39f9422492dfbc6f8309dbc26f1ccd334faebc8bf6234e388bf27ac5` |
| 55 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-35.md) | 266 | `declaration-track:a0447848da4b7f500df9034e6567607a4f6e1b1ecfd376f95185ae2bf55166eb` |
| 56 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-22.md) | 277 | `declaration-track:6e1fcf82f5a7deb4348a9ce0ccfd051b8c3f0faffffc5be087223b7a8fb9095c` |
| 57 | `example` | [(anonymous)](../../../../CommutativeAlgebra/ModuleNamespacedPublic.lean/declarations/example-source-edition-2.md) | 288 | `declaration-track:048994e6b1e8f5baaac82123420f84a6b2c2c66600f71dcbc2b5f038babc7510` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5dce7cb95bb0da6e01f26482595420390315e6df94003d3019cc8996fbe9ffc5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Module/Variantc33a2b01ae606fff848c6a0ffd59683879fc8722da46547db1a8e996991acc60.lean","GRWTSK/_verification/specifications/Algebra/ModuleTheory/Variantc33a2b01ae606fff848c6a0ffd59683879fc8722da46547db1a8e996991acc60.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
