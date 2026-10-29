# Verification target: Cartan Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fae84a1e3d51428d2e6d08c9951f4d474a686680",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantb73e66c2cf630d7220f5e5bd027ca56a2add4a7a84a770a3338ab294c002ba77.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fae84a1e3d51428d2e6d08c9951f4d474a686680`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantb73e66c2cf630d7220f5e5bd027ca56a2add4a7a84a770a3338ab294c002ba77.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantb73e66c2cf630d7220f5e5bd027ca56a2add4a7a84a770a3338ab294c002ba77.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.LinearCombination` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormDet` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [E](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/e-source-edition-4.md) | 59 | `declaration-track:ea740c1b53868fb1cba3e839c197d1e28c2253a1186927ead15b28882a969bef` |
| 2 | `lemma` | [E_six_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/e-six-eq.md) | 68 | `result-track:d8e470762ed1e7021c342cfd4b0bd5505a8f092ef7cae3aef3e84cb00cb5b440` |
| 3 | `abbrev` | [E₆](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/e-source-edition-2.md) | 78 | `declaration-track:687bd0a18b37c7f9899bae87ae5edc26c95c2c895698331a7083c17164a45af3` |
| 4 | `lemma` | [E_seven_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/e-seven-eq.md) | 81 | `result-track:0824f37daaf4d3b86913c660ddfbeeb9220ed310555e1e45bd1d5b52e223b3dd` |
| 5 | `abbrev` | [E₇](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/e-source-edition-3.md) | 92 | `declaration-track:77dcf36485e9b4ccd5e4c69dd22c9beecb488fbead12b1c0b010861d3d6a6e6f` |
| 6 | `lemma` | [E_eight_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/e-eight-eq.md) | 95 | `result-track:f23cc7415b026a8717276cc2f53e0e6edf2386529f8572f2301f79c34145d5d9` |
| 7 | `abbrev` | [E₈](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/e.md) | 107 | `declaration-track:1debd69e4671208034eb28bd14fa2e4861c55d51a908c731c91d120688b93ef5` |
| 8 | `def` | [F₄](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/f.md) | 110 | `declaration-track:3162edffd28639778d750cebffa37b212040ccad4e574e86427b71129a3b55e2` |
| 9 | `def` | [G₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/g.md) | 118 | `declaration-track:d15e0df5c3a7be30291d1796aab4075636e96170c9fbefd3051adb20bc69fb2f` |
| 10 | `def` | [A](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/a.md) | 125 | `declaration-track:7df7c1d1e5da4decdcd517d16f4f7f748ace7432bbe099fe4f56b1e2bf8abab6` |
| 11 | `def` | [B](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/b.md) | 132 | `declaration-track:578d5bac57c46868e8b4c746a642b70a934dc0b306f078e9a86f1a66bb3649ce` |
| 12 | `def` | [C](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/c.md) | 141 | `declaration-track:7f4dcdbea9058af2c9219f73bb4bc1fe60c8e3f36d1d9c9a2df5e009404b15a6` |
| 13 | `def` | [D](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/d.md) | 150 | `declaration-track:c2d9a47f71d6821323830d2302003a7c1970752759eb5486263ba286735e4fb3` |
| 14 | `theorem` | [A_diag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/a-diag.md) | 166 | `result-track:c8f88cf0e9cbcefdc2507a2478093322fcc79eeb247a38a8adc26b1686fabe26` |
| 15 | `theorem` | [B_diag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/b-diag.md) | 167 | `result-track:aa07e824143a881441c86ec8be1561f1b72ca8f626fdaecdb4dfb608c0e7e197` |
| 16 | `theorem` | [C_diag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/c-diag.md) | 168 | `result-track:c8af654678294ce7f408f3a3d78d5d6de453848f56f67114566f44000c47d947` |
| 17 | `theorem` | [D_diag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/d-diag.md) | 169 | `result-track:c2e12a6ce213b1312ea93f45d453a72ec502c45e59f22294a0f38ad16d765f39` |
| 18 | `theorem` | [A_apply_le_zero_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/a-apply-le-zero-of-ne.md) | 171 | `result-track:0d41a2eb1fb575d88f774b6d1c3de90b360b04f9b4d62b2300e91d2da323bc4d` |
| 19 | `theorem` | [B_off_diag_nonpos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/b-off-diag-nonpos.md) | 174 | `result-track:243d91bd32bfa3f3ebaecf79e172e05bb48f7fccaac19c7f9967a5d9447afca9` |
| 20 | `theorem` | [C_off_diag_nonpos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/c-off-diag-nonpos.md) | 177 | `result-track:6a513a5a98811949a1ce9d2ef6287b966995f71c3bf0ffc81c119905d6746864` |
| 21 | `theorem` | [D_off_diag_nonpos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/d-off-diag-nonpos.md) | 180 | `result-track:e9388caee32959aea59f529aedf40917dfe370708e06b96fd429285d8c6ee6e9` |
| 22 | `theorem` | [A_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/a-transpose.md) | 185 | `result-track:fd125a896ee941dbf936de85985e41925f66b80c24c8c1507f1e12f5bce278a0` |
| 23 | `theorem` | [A_isSymm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/a-issymm.md) | 188 | `result-track:27a09cc232e42d642f3fb09dc10e306ac3da809c9eaf4cd8a45fd5dce3fbf12c` |
| 24 | `theorem` | [B_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/b-transpose.md) | 190 | `result-track:4cd9084087a50b9db0e940923daa493d7dc52f8d6b358af3f84a4e75fa7b1b02` |
| 25 | `theorem` | [C_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/c-transpose.md) | 193 | `result-track:f91ab71d205f2c771543ebf033cd15f65178b4bbe04e3fcc93913298f565203e` |
| 26 | `theorem` | [D_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/d-transpose.md) | 196 | `result-track:65ad008eb87846373ccd85407d756211f91512bd276c198c7df5dda09ff63603` |
| 27 | `theorem` | [D_isSymm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/d-issymm.md) | 199 | `result-track:843a8fd870ae5bfdbdea329b1b327152319156637be95a759b7e6bc407752738` |
| 28 | `theorem` | [A_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/a-one.md) | 203 | `result-track:63b51c688111534a2fa654ed0c772660dab24c83563b21c235760d761b85e986` |
| 29 | `theorem` | [A_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/a-two.md) | 205 | `result-track:333f5b3e40c32c08ad46094222f1cfab969f9b28addbbad065177fa1be186a8b` |
| 30 | `theorem` | [A_three](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/a-three.md) | 208 | `result-track:7e067a297ebe180c7a792ccfec63cc61cb0f4c8530399a7ee237211c197e86d8` |
| 31 | `theorem` | [B_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/b-one.md) | 212 | `result-track:0253b9c13da4acfce8153b9bdffeda0506b1dc050353913ffddb3b486e1ee9aa` |
| 32 | `theorem` | [C_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/c-one.md) | 214 | `result-track:823196330b2165e07f986928c1f5dfa6dcd6c41b301c7b25d42e8e5a96e39d2a` |
| 33 | `theorem` | [D_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/d-one.md) | 216 | `result-track:526ed4010d97dbb703b0a22506c117f53e574e060f96bbdb801024b68786957e` |
| 34 | `theorem` | [D_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/d-two.md) | 218 | `result-track:1a2071f91d2b25aaf12c850f0a59bccbe0dd04bfe777806a913c722894deee9e` |
| 35 | `theorem` | [B_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/b-two.md) | 221 | `result-track:c3178385cf0cb846f8bb9fbc9150652cbae5c55d2051c999d76e7a476147b304` |
| 36 | `theorem` | [C_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/c-two.md) | 224 | `result-track:e69fa93486426679751528532acfc6d30bc3d9ce9a8c901ef0c0d4e21ff91174` |
| 37 | `theorem` | [D_three](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/d-three-source-edition-2.md) | 227 | `result-track:46e28f73510086452ab9f39f5d5daecae66ada928dcf1b05ec00116e0576f40d` |
| 38 | `theorem` | [D_three'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/d-three.md) | 231 | `result-track:2463ac97fba38d1861c912bbafe7cd11197876ca2ebd963c167efc327d786186` |
| 39 | `theorem` | [D_four](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/d-four.md) | 233 | `result-track:21a3389dba31a033a7a9078ce8ad3bfed342880fbe0249e4efbc2f2e0b614b95` |
| 40 | `theorem` | [E_diag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/e-diag-source-edition-4.md) | 242 | `result-track:5f4157105e075b6fbea7ff94a26d5895accdaf27ac8f3cbe9d4e65b36ba775c0` |
| 41 | `theorem` | [E₆_diag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/e-diag-source-edition-3.md) | 246 | `result-track:2b244e48ef874ee62161dda2f2f30ed8b483515b43d4c81f7fd9408f6f1509fa` |
| 42 | `theorem` | [E₇_diag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/e-diag.md) | 249 | `result-track:0489f7d8957689452ae157a86fbe18f4a00e67a3006ff93c6b0866d75f1f3158` |
| 43 | `theorem` | [E₈_diag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/e-diag-source-edition-2.md) | 252 | `result-track:27241e8d6b026e7ba2aabf85e9bb5663fd34541da7894b61de4c731511ef00c0` |
| 44 | `theorem` | [F₄_diag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/f-diag.md) | 254 | `result-track:6d450efd01236724dfae9de87d1499278c99e3613ca49b1a819ca759f8c46de7` |
| 45 | `theorem` | [G₂_diag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/g-diag.md) | 256 | `result-track:12bf68b112c27b04cfa3769f8b625c7a6622c3d8bfc37613647d3693a886d678` |
| 46 | `theorem` | [E_off_diag_nonpos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/e-off-diag-nonpos-source-edition-4.md) | 261 | `result-track:dc4ff43e8824271bf122cad346e48f32e71392c4d993e6d7b638c98257443654` |
| 47 | `theorem` | [E₆_off_diag_nonpos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/e-off-diag-nonpos-source-edition-3.md) | 266 | `result-track:b927e45f92f9c20af868486ee9e66d1cf67e6332d5e73ac5c2cc57e3d5eef441` |
| 48 | `theorem` | [E₇_off_diag_nonpos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/e-off-diag-nonpos.md) | 270 | `result-track:1a171727f3cf70ceea297ae53ecfde707c341ebc710a94d5b2bb7807cea3a7b2` |
| 49 | `theorem` | [E₈_off_diag_nonpos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/e-off-diag-nonpos-source-edition-2.md) | 274 | `result-track:925256a7827a40b8c3c2eb85032be73c0b6a57954591d9d6bb2adfc732b231bc` |
| 50 | `theorem` | [F₄_off_diag_nonpos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/f-off-diag-nonpos.md) | 277 | `result-track:3fa48a2a51e20e8646ecc5c9d09995821cb57ea8b229755ab518dc1f673bd8bd` |
| 51 | `theorem` | [G₂_off_diag_nonpos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/g-off-diag-nonpos.md) | 280 | `result-track:33b1ccc0b6cc5ba066eaeb9809edab2782583ac1aa883b874ef8ce50ecfd79c4` |
| 52 | `theorem` | [E_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/e-transpose.md) | 285 | `result-track:379b4e37e3376f4c987f6f40291c0f3d0a489ea3e65f9d88b5a905554ae90649` |
| 53 | `theorem` | [E_isSymm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/e-issymm-source-edition-2.md) | 290 | `result-track:7c77aebe2a329f961aa8d213c239004478bb99c87275b0537ba0202bfe4d5e06` |
| 54 | `theorem` | [E₆_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/e-transpose-source-edition-4.md) | 293 | `result-track:caa2132c85bd4139ffb8d5a8aac62a9af09b8709c62a9ba8c829667c0869a380` |
| 55 | `theorem` | [E₇_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/e-transpose-source-edition-3.md) | 296 | `result-track:8a98522db5eab13e72d4df9edc3aae9b8c6ee5c5a0c25cf38d5c4902a4836fca` |
| 56 | `theorem` | [E₈_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/e-transpose-source-edition-2.md) | 299 | `result-track:7bd368dd5b83ca1db4cee4570060019663a27ea31e3c2a7b1422cc5bb0266c24` |
| 57 | `theorem` | [E₆_isSymm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/e-issymm-source-edition-4.md) | 302 | `result-track:86120454ba04135be48c015ffcad4be2e3453241137160058d788008a05dae4d` |
| 58 | `theorem` | [E₇_isSymm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/e-issymm.md) | 305 | `result-track:5c7ab9ca61d1c5c26fa1fc8c748eab2d7dd655dd24597d00ff199d1320e5ec56` |
| 59 | `theorem` | [E₈_isSymm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/e-issymm-source-edition-3.md) | 308 | `result-track:8321bc8da35c71f14a27e658bfd96ed66d4196006bee03694e1c6943580d731f` |
| 60 | `theorem` | [G₂_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/g-det.md) | 312 | `result-track:a2d6b685e89260fad89e0b44822deb1396462716f68868c4f9aee7d88308f158` |
| 61 | `theorem` | [F₄_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/f-det.md) | 314 | `result-track:acfabcf2f7539042283d0fe30644adf4c75aceb183fa76bd15f56a1b0e0d40a1` |
| 62 | `def` | [extendPath](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/extendpath.md) | 318 | `declaration-track:970874222456f7e0460a8c1c1721065e4a948d9f78eb06a2e27af9baf6bd5401` |
| 63 | `theorem` | [extendPath_tail](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/extendpath-tail.md) | 325 | `result-track:abac04e0805a4e232ba321420eef9bbab579f6e7ffa3e4c8f6c54334f5e14012` |
| 64 | `theorem` | [extendPath_minor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/extendpath-minor.md) | 330 | `result-track:161c9007f78bd7b009c1a897a4a472b1c7b1a14318daad840dc1df88081c975a` |
| 65 | `theorem` | [extendPath_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/extendpath-det.md) | 341 | `result-track:494a3106aaaa6ea228c9bc87d72c03abfa4be368fca5c15970a30d2062d846ea` |
| 66 | `theorem` | [E_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/e-succ.md) | 354 | `result-track:a8beb9a24f03c4f5607f36d0396e24da11d49c7b9ae13e4761cdea1cc4a90a39` |
| 67 | `theorem` | [det_E_add_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/det-e-add-two.md) | 369 | `result-track:e310651a15299226406ab3e9382f3a3219a344d8a84abb794af07d60e8182ab2` |
| 68 | `theorem` | [E_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/e-det.md) | 376 | `result-track:21b85ce439020e9cf05a0d5b6801a3f7b2d7f1fc28a6d194f85aa89bc6465270` |
| 69 | `theorem` | [E₆_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/e-det-source-edition-3.md) | 393 | `result-track:e5481c0078d7faaa9fcd207e0c655c068ed192f708906c51fda8419008de18b1` |
| 70 | `theorem` | [E₇_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/e-det-source-edition-2.md) | 396 | `result-track:73408a952fbd1716f5cf2e58c6cb7d991be69d1a59ff80924933380706c49082` |
| 71 | `theorem` | [E₈_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/e-det-source-edition-4.md) | 399 | `result-track:f2fd95d93becbec64d00e24b0f0bf7e6bb1525e7a7257b1ab9ba1004744e9b65` |
| 72 | `def` | [_root_.Matrix.IsSimplyLaced](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/root-matrix-issimplylaced.md) | 403 | `declaration-track:00abd81e7e68a83e151ed2790834e93b261d80ce57b09da48f91ad2cb7bc98db` |
| 73 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/instance.md) | 407 | `declaration-track:0ff648decf330aa38bb3f150a4549de3c10001825b04e241e0bb41e2d0baade6` |
| 74 | `lemma` | [_root_.Matrix.isSimplyLaced_iff_of_linearOrder](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/root-matrix-issimplylaced-iff-of-linearorder.md) | 411 | `result-track:ea9ff4969a3b0705b71486b4f343c17616cc7004bef0b5bbabfdae3652a716d3` |
| 75 | `theorem` | [_root_.Matrix.isSimplyLaced_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/root-matrix-issimplylaced-transpose.md) | 422 | `result-track:f229558fe21637a378dcbfc0af813026e90f9ffa22db404fa5e7f3991324b00b` |
| 76 | `theorem` | [isSimplyLaced_A](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/issimplylaced-a.md) | 427 | `result-track:eb527e55a99c19520df35044dfc9ebe6042176190bd8cf41992f22c9533ea09e` |
| 77 | `theorem` | [isSimplyLaced_D](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/issimplylaced-d.md) | 432 | `result-track:9851944f5b63fb50e2516aad4749097c034999a0b33dcd9c76f49e8307de2a5f` |
| 78 | `theorem` | [isSimplyLaced_E](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/issimplylaced-e-source-edition-4.md) | 437 | `result-track:520b22323a9ee9d450bf4f6748dfd9e09823f550f7d52fdaf74e6d7c8385a452` |
| 79 | `theorem` | [isSimplyLaced_E₆](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/issimplylaced-e-source-edition-3.md) | 443 | `result-track:4c985b5479c4d59c586986ccd5fd211137c8753e7a61ff0f1959e9cb95454ed6` |
| 80 | `theorem` | [isSimplyLaced_E₇](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/issimplylaced-e-source-edition-2.md) | 446 | `result-track:3a0615bd513389b4e691feb91efeb2d252a092cee17e7377ac7bffd4223bb702` |
| 81 | `theorem` | [isSimplyLaced_E₈](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/issimplylaced-e.md) | 449 | `result-track:2cd49084db4ff787760c56b64eea3853419503bc36e5aa657fccc106e9aa1bf5` |
| 82 | `theorem` | [not_isSimplyLaced_F₄](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/not-issimplylaced-f.md) | 454 | `result-track:4cbe6665d5830b461d9a8f1150f9df500eac5b0dd9f02b55433f6ce90bfbd4d6` |
| 83 | `theorem` | [not_isSimplyLaced_G₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/not-issimplylaced-g.md) | 456 | `result-track:92a2e12fb81b64ebdc7e7a68d180537173c95ccdffbe996d265970868b9ff551` |
| 84 | `structure` | [Matrix.IsFiniteCartan](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/matrix-isfinitecartan.md) | 463 | `declaration-track:c5c16e7747d8998a8527b81435cf16b19d7399774c9bc08f7629a8e82ac8624d` |
| 85 | `lemma` | [det_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/det-pos.md) | 475 | `result-track:9d85dc304fbf5d5fba2394c028dc67a8d55ef90effd62e4bcc1eef6e5c5977dc` |
| 86 | `lemma` | [isUnit_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/isunit-map.md) | 482 | `result-track:3e0c30da5979ede1b16dbac07ad16d9baa7024fb66c2f70f113ddc896bc28805` |
| 87 | `lemma` | [transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/transpose.md) | 488 | `result-track:2dd8ea8134c4e18772345606992680672ebde71d5d913356e8895d335700e8c8` |
| 88 | `lemma` | [transpose_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CartanBasicPublic.lean/declarations/transpose-iff.md) | 518 | `result-track:bfa4fcd87efba2430972385d09bb0d306d24d2ad73d682d7c7d469fd1b5b6786` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=92ad0502c84b1d036b42ab8d2e890aa29b103ee3e71f8409ac8b92124b01bc17 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantb73e66c2cf630d7220f5e5bd027ca56a2add4a7a84a770a3338ab294c002ba77.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variantb73e66c2cf630d7220f5e5bd027ca56a2add4a7a84a770a3338ab294c002ba77.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
