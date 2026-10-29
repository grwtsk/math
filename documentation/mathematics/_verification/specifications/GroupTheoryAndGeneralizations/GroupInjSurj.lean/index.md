# Verification target: Group Inj Surj

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea6884c6a88f272e83b2f1dedf28939a17f31b0e",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/InjSurj/Variant4fa1d348e16d4a28492e6085745cbcc9fefa968f96ef8de6f0a72238f097d01e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea6884c6a88f272e83b2f1dedf28939a17f31b0e`.

Source path: `GRWTSK/Algebra/GroupTheory/InjSurj/Variant4fa1d348e16d4a28492e6085745cbcc9fefa968f96ef8de6f0a72238f097d01e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/InjSurj/Variant4fa1d348e16d4a28492e6085745cbcc9fefa968f96ef8de6f0a72238f097d01e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [semigroup](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/semigroup.md) | 45 | `declaration-track:015de8dff6636633ecc0c4a5551c43c4e4845ab717f6504a16199767e822da5f` |
| 2 | `def` | [commSemigroup](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/commsemigroup-source-edition-2.md) | 56 | `declaration-track:4e5a128bc2e3dd238855b2c3ade4d3e1e7fb4704658b16b98b2c8b9be0880364` |
| 3 | `def` | [leftCancelSemigroup](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/leftcancelsemigroup.md) | 66 | `declaration-track:8f693009a7cefec95e81b6cf482861900e322a09493616a9811e5238a6fe585e` |
| 4 | `def` | [rightCancelSemigroup](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/rightcancelsemigroup.md) | 79 | `declaration-track:413a6c9d4047f36a4f3ae9922db34a144b37987091773d98e1eb0b147a18cd67` |
| 5 | `def` | [mulOneClass](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/muloneclass-source-edition-2.md) | 94 | `declaration-track:efc020a1d49df13cc99a3a4a75083ad1d369124258e94c33c408a700a9aeada5` |
| 6 | `def` | [monoid](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/monoid-source-edition-2.md) | 110 | `declaration-track:cb7136347bfaea1115d4d9ba8e3658f6c560ea99451025d7be7cfca5ec3f44ce` |
| 7 | `def` | [addMonoidWithOne](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/addmonoidwithone.md) | 123 | `declaration-track:ee6b12fc0e08b53a044175f9ab4ec7d878cdbe32d68782426e879b0c8eb86860` |
| 8 | `def` | [leftCancelMonoid](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/leftcancelmonoid.md) | 138 | `declaration-track:f52d5a5b0c25ebdf3079a3b6f7ea4d7261cf24bd55ed29e27195a927c2f5bf09` |
| 9 | `def` | [rightCancelMonoid](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/rightcancelmonoid.md) | 150 | `declaration-track:4d04aab6c60e8a8416f40c222e8c6ff20bd7897ac251098ba972b5affab93dad` |
| 10 | `def` | [cancelMonoid](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/cancelmonoid.md) | 162 | `declaration-track:8eb3096ddef836f86a2facf7ddfd4580f50863d5f2b71c63c7f6d83de571f7e7` |
| 11 | `def` | [commMonoid](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/commmonoid.md) | 174 | `declaration-track:38f5bc5e9d894e6a07b63074c5eeb950091b2adc9e503506facab97ded443d71` |
| 12 | `def` | [addCommMonoidWithOne](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/addcommmonoidwithone.md) | 185 | `declaration-track:01e5596780af6fc6512c5df94e4cdbc57adc3481bdcb267257bc65c19b901b7f` |
| 13 | `def` | [cancelCommMonoid](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/cancelcommmonoid.md) | 197 | `declaration-track:b05e255662f304fa4c330fd043eb8405a400e72cb88e51e33af41ca7ff51d5e0` |
| 14 | `def` | [involutiveInv](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/involutiveinv.md) | 209 | `declaration-track:91886445ccfca4ea3e4686e1a17d8145f639595e0e1d51e4060120826a8b820e` |
| 15 | `def` | [invOneClass](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/invoneclass.md) | 223 | `declaration-track:36cd671b3252a5eb88aa0213f0fc0d9c66a056bf25d671fb6401f236091968b8` |
| 16 | `def` | [divInvMonoid](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/divinvmonoid.md) | 237 | `declaration-track:41124bad1784e9fd0c7363c2e3eeb97a223f0c7f9b8e762726e241bee24dc0b1` |
| 17 | `def` | [divInvOneMonoid](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/divinvonemonoid.md) | 258 | `declaration-track:ec5d4e957409a3e19e99554b1ff95a1991f35901495c586c9630ede7f4b10149` |
| 18 | `def` | [divisionMonoid](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/divisionmonoid.md) | 271 | `declaration-track:87f6588dccf41fd5d1d24bd94f44ca3adcda5cf96e946588d77510f9bb989bb6` |
| 19 | `def` | [divisionCommMonoid](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/divisioncommmonoid.md) | 290 | `declaration-track:a5e3b3adb2a68e8da4770ed2f68eb3ff8a0a08937a6f941da0aff901321547d7` |
| 20 | `def` | [group](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/group-source-edition-2.md) | 303 | `declaration-track:e2e45ac49e4d32eedf90564b3ab629003ba7ded93e6b92a66959e9afc7f8c71f` |
| 21 | `def` | [addGroupWithOne](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/addgroupwithone-source-edition-2.md) | 316 | `declaration-track:d827ef9d2cf8580b76e2858462168d3e0f433eb67dabaf1e18c3579d3d1d4256` |
| 22 | `def` | [commGroup](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/commgroup-source-edition-2.md) | 334 | `declaration-track:f12db20403847ade9eec551f2a739df75cc49474e99f5b48167ced76d043b9f7` |
| 23 | `def` | [addCommGroupWithOne](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/addcommgroupwithone-source-edition-2.md) | 346 | `declaration-track:ce789476dfcc4bb0024aa75f98f55b7ecda8bc3215e7d7e4f6de13f81ebe198d` |
| 24 | `def` | [semigroup](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/semigroup-source-edition-2.md) | 372 | `declaration-track:48d6b9bbef7ad12fbbc74505009191f39b1ad4770ae795583e105a3e68a6b9e2` |
| 25 | `def` | [commSemigroup](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/commsemigroup.md) | 383 | `declaration-track:019885732a97d1ac8101e617d5c9aabc83e5d55f4bb3b9b1d7408ca3d84c39bc` |
| 26 | `def` | [mulOneClass](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/muloneclass.md) | 397 | `declaration-track:eb8d17ab7885c8699505ff9be4f4858bf339277bc8b1fb6a9284fbad90522307` |
| 27 | `def` | [monoid](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/monoid.md) | 413 | `declaration-track:56ef75027ac73aeee8daf492f178e4dd1aec706d7bbf47de07d89a097a8a0229` |
| 28 | `def` | [addMonoidWithOne](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/addmonoidwithone-source-edition-2.md) | 426 | `declaration-track:f6152fe57b389751c0142e91e02f1970d0386602c460642c9b7c5510c8c86b8d` |
| 29 | `def` | [commMonoid](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/commmonoid-source-edition-2.md) | 442 | `declaration-track:d47ac0e96a5b033d9ae73bd7c5a05ad549763e95b4ef101d73ffe99611dc824d` |
| 30 | `def` | [addCommMonoidWithOne](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/addcommmonoidwithone-source-edition-2.md) | 453 | `declaration-track:8befe4fc7a6db7d408b29330904f219b8d40aa59fb19925f44e265f7a1a1b73c` |
| 31 | `def` | [involutiveInv](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/involutiveinv-source-edition-2.md) | 465 | `declaration-track:ea5cd28f8e8bea05121809e1b91628a7186896f90131713840405f388326f363` |
| 32 | `def` | [divInvMonoid](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/divinvmonoid-source-edition-2.md) | 480 | `declaration-track:a1a8e8c580728dc2ee0b7e436256a28d9f9ae6ee5d9789348452c6238e814e2d` |
| 33 | `def` | [group](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/group.md) | 502 | `declaration-track:d6dbb980fc314b48b8060d00df4c07dcc818c1afc1d159f5d64f3ddda67f6a72` |
| 34 | `def` | [addGroupWithOne](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/addgroupwithone.md) | 515 | `declaration-track:6aa87a44654ddba51b8ac9b7b1f8610c3b0e54ad7621c72a816691df74be6f64` |
| 35 | `def` | [commGroup](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/commgroup.md) | 535 | `declaration-track:b610eaa2a001665ad4c26d43b7a009b0bd0b0214bde3f9eed46edc69dd4821de` |
| 36 | `def` | [addCommGroupWithOne](../../../../GroupTheoryAndGeneralizations/GroupInjSurj.lean/declarations/addcommgroupwithone.md) | 547 | `declaration-track:286f13e1f0ffb185137bab40241314eeabd7afe47d0a4cc62a3dac969ba21013` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a4bee02a705a5b8a9c7abe64388722c51ab0c2d68bc43364dfb0426420381730 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/InjSurj/Variant4fa1d348e16d4a28492e6085745cbcc9fefa968f96ef8de6f0a72238f097d01e.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/InjSurj/Variant4fa1d348e16d4a28492e6085745cbcc9fefa968f96ef8de6f0a72238f097d01e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
