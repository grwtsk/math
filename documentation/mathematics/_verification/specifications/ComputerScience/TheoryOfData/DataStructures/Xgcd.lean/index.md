# Verification target: Xgcd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0f1e2854f539f1ddc080ef431aa4c8bb8e73fe5",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Xgcd/Variant4ea1e1e4c37df8c953b6584cfb9772a2201dc594fa84c9a7abf0e76caa78cf14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0f1e2854f539f1ddc080ef431aa4c8bb8e73fe5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Xgcd/Variant4ea1e1e4c37df8c953b6584cfb9772a2201dc594fa84c9a7abf0e76caa78cf14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Xgcd/Variant4ea1e1e4c37df8c953b6584cfb9772a2201dc594fa84c9a7abf0e76caa78cf14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Ring` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Prime` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [XgcdType](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/xgcdtype.md) | 44 | `declaration-track:736ce497795f000d614e19d82d70a45344f5e807333097e2ff319dc2b000d2ed` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/instance.md) | 63 | `declaration-track:16b9218f630dac6d5fc21012f45af6973ba745a00e76db015a203206d3df572a` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/instance-source-edition-2.md) | 68 | `declaration-track:747104d16314b1e4aa4cd0c777047f1654db112b1c8932ec90af419512f89bba` |
| 4 | `def` | [mk'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/mk.md) | 75 | `declaration-track:1518b3570b091acd876aec0f2b34615c0fecd17c08e1a7ea6da62834af7abf9b` |
| 5 | `def` | [w](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/w.md) | 79 | `declaration-track:3076e229efa4dc5e0dd24b248695c58addf824d441ccfeded38b747da9809013` |
| 6 | `def` | [z](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/z.md) | 83 | `declaration-track:6ba8c235ab62434b210e9ebc837b3223eec026ca97b1954cacc101f955d7dcde` |
| 7 | `def` | [a](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/a.md) | 87 | `declaration-track:460a517c777c8e90ffd92e5260c450e41cb5d5268415fe6a7087db3262841e12` |
| 8 | `def` | [b](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/b.md) | 91 | `declaration-track:726145299cf706a74c6e7dadeaa0d45d394047ce0cb6f5461181519dfa95b721` |
| 9 | `def` | [r](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/r.md) | 95 | `declaration-track:ac72e9be72c9dac3dca0760e48e43044d76e567925f31804fac4e998b5bfd236` |
| 10 | `def` | [q](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/q.md) | 99 | `declaration-track:a79de36270c463eb001bb6b24c48ceaa13fa4e93493474a317a249faa5f27efd` |
| 11 | `def` | [qp](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/qp.md) | 103 | `declaration-track:768f81f48f1078953118886fbdf3838b21ff7d14f64d8ca38e48115570735f56` |
| 12 | `def` | [vp](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/vp.md) | 111 | `declaration-track:46c399a2722a225425699ae78e3377e2f5586d12483ad390cfe4bea9b134a3e1` |
| 13 | `def` | [v](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/v.md) | 115 | `declaration-track:e57375dc3fc319b6d70c89ac790489af060a84698ea6f3419badd7520c65234f` |
| 14 | `def` | [succ₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/succ.md) | 119 | `declaration-track:b91b7afdccfc5ff972294414d0124e9284798d16c47774f3a74615fdcdd7deed` |
| 15 | `theorem` | [v_eq_succ_vp](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/v-eq-succ-vp.md) | 122 | `result-track:83377ae356541639326ccb4bcb432a34bc8634e66e55b14d9547937d4eb4cc4f` |
| 16 | `def` | [IsSpecial](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/isspecial-source-edition-2.md) | 126 | `declaration-track:24e2c6cd220c79bace97e840a282bdca0a0fb8de08b57cb187731243252aca23` |
| 17 | `def` | [IsSpecial'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/isspecial.md) | 130 | `declaration-track:20b165be7c316aaec369079578021c18ac652f8458afe3650a55153bdb9e66f8` |
| 18 | `theorem` | [isSpecial_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/isspecial-iff.md) | 133 | `result-track:8c4a935977852147e252dfc683e212a404d31672de5cb817f041a0b93b670f94` |
| 19 | `def` | [IsReduced](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/isreduced.md) | 145 | `declaration-track:c4c6f23d4a90703468adbb91494a187ccff02c59573ec973ca94ae71828ecae6` |
| 20 | `def` | [IsReduced'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/isreduced-source-edition-2.md) | 149 | `declaration-track:c57ac9a02b63c0f5a3846a8851fb725b566a4223458ac4d12abe2cb627667410` |
| 21 | `theorem` | [isReduced_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/isreduced-iff.md) | 152 | `result-track:82db57d7378f2e31e4f71f7ec301a82b576695f4d550190c6fb5cb4e9be86fbe` |
| 22 | `def` | [flip](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/flip.md) | 156 | `declaration-track:8b659a54fe776128702a96d916c6c575d0bfe7e52009da5324a6c88e2d765a1f` |
| 23 | `theorem` | [flip_w](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/flip-w.md) | 165 | `result-track:8630ea60e0616f763b13f17baf6d81163d8be5460e0d8c665b3112ea00a2dfd5` |
| 24 | `theorem` | [flip_x](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/flip-x.md) | 169 | `result-track:a4877405a534685b448a0271a62a910c69f2e97c9871a73aea69e9133e4ea058` |
| 25 | `theorem` | [flip_y](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/flip-y.md) | 173 | `result-track:d1ad65d1da3336ec79898bf60092134da7fc06913d138665cc9fa7eb45de6b77` |
| 26 | `theorem` | [flip_z](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/flip-z.md) | 177 | `result-track:e270b630388eaab624a4c939cf0bb1a4a6bcc0c5a2cc0ab08fe9ef97a9839c83` |
| 27 | `theorem` | [flip_a](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/flip-a.md) | 181 | `result-track:5d531ecf80ba721c1f9e97088dab6f15e6244e9778737b72716ef49941ac84df` |
| 28 | `theorem` | [flip_b](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/flip-b.md) | 185 | `result-track:82eb1a00116cfb8ad74ed780e4bcc139b94a849172f1be649e33c987d197a405` |
| 29 | `theorem` | [flip_isReduced](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/flip-isreduced.md) | 188 | `result-track:5d04a76164577dbe99480a3935eed464281a15b7b6bf54db69a4c61eb84b3cad` |
| 30 | `theorem` | [flip_isSpecial](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/flip-isspecial.md) | 192 | `result-track:4ae966ef18291fc8414685f7bee95df902e794fa97f13aecf42360b9fd550936` |
| 31 | `theorem` | [flip_v](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/flip-v.md) | 196 | `result-track:5ac83fc73447f1bbadededa53a7968a0f17b409247dee6e3fc9b908d6db551f6` |
| 32 | `theorem` | [rq_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/rq-eq.md) | 205 | `result-track:82cde058f047d63a910baaa536921473fbc802754fbdb4c7ea99d4685319cb75` |
| 33 | `theorem` | [qp_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/qp-eq.md) | 208 | `result-track:4d93e5db0d90cc7a93e98fb645536067b0544d80209a638bff15b1467b372bca` |
| 34 | `def` | [start](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/start.md) | 220 | `declaration-track:378886dad0eb6a4bc029ab54dd67fc730a7dbe3b377cad745f52b5b9be3861b7` |
| 35 | `theorem` | [start_isSpecial](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/start-isspecial.md) | 223 | `result-track:cadfd8171ef5cea7fe980131e75ff080bde4cf48e5abcb4af928cf852258fd21` |
| 36 | `theorem` | [start_v](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/start-v.md) | 226 | `result-track:7ebda9ca64153fa07a8ec6b2dace4c85dbf0f398a2b21faf67a1627111171b1c` |
| 37 | `def` | [finish](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/finish.md) | 234 | `declaration-track:09587e984073a6111aefa894e3c393ac1d634c53b4562d9aa5075932f5143f0a` |
| 38 | `theorem` | [finish_isReduced](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/finish-isreduced.md) | 237 | `result-track:3cf6a535ec1da934e7c91044dc0f8bacaf1ae826f6a41ad8e7e80546f46124e9` |
| 39 | `theorem` | [finish_isSpecial](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/finish-isspecial.md) | 241 | `result-track:a42a11c13139a12be53e1af6e7d2a991b93de16b827e9198e76c8c93ac554c06` |
| 40 | `theorem` | [finish_v](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/finish-v.md) | 246 | `result-track:adcc4d282c91d1743a528755ace15f4c8250ab42db00e1fe2bb485417f5d3469` |
| 41 | `def` | [step](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/step.md) | 260 | `declaration-track:49840c99c3abf137ea1b9d533b0cc1b7ed015211c846c41a34c7f595c42046d7` |
| 42 | `theorem` | [step_wf](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/step-wf.md) | 265 | `result-track:db1d9499f108765d17d6d64b719afd28355fbe67e3d130ebc05881a1e2b3a3f4` |
| 43 | `theorem` | [step_isSpecial](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/step-isspecial.md) | 272 | `result-track:be645c410b5696d82148837f7f1f24c2eed02731bca7584fde99f928b071d229` |
| 44 | `theorem` | [step_v](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/step-v.md) | 278 | `result-track:164aa13a39299c3ddced0597b86d379c74903db80dd492c075c420161e6e227c` |
| 45 | `def` | [reduce](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/reduce.md) | 296 | `declaration-track:013ab103482bf68980077b031448b342be2f158c8d903e42a7045a3ca68db6f9` |
| 46 | `theorem` | [reduce_a](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/reduce-a.md) | 301 | `result-track:8a97e3ef3e873517f58841f10a61cb13c95a85d7f35fa3011185b3fd5de086ff` |
| 47 | `theorem` | [reduce_b](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/reduce-b.md) | 305 | `result-track:d65770934cfe6ae3bb8b9c1ade1c44921e69c08420326b1217f000c0a665ef0f` |
| 48 | `theorem` | [reduce_isReduced](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/reduce-isreduced-source-edition-2.md) | 309 | `result-track:58210a34af0f529ee80967bb401ba6093f60e4cf35d376be195937c3cf2baf83` |
| 49 | `theorem` | [reduce_isReduced'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/reduce-isreduced.md) | 320 | `result-track:42c575d76dfe93901d9c14c289002ebdab17203ee6db0e4f3959250465482c8d` |
| 50 | `theorem` | [reduce_isSpecial](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/reduce-isspecial.md) | 323 | `result-track:d2afd83369aa1cfb9e01304b83f74002af70200e697d1471f1442d9fcc430805` |
| 51 | `theorem` | [reduce_isSpecial'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/reduce-isspecial-source-edition-2.md) | 334 | `result-track:da60438d95f42d6e686350944a06d2c54d4e9a7f6025d338ba8f1c0596f4cc8f` |
| 52 | `theorem` | [reduce_v](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/reduce-v.md) | 337 | `result-track:9e45f2bd3a29b1bca2967a246b59d20a048d7f6901251d30b50ae1dacaaf4aa3` |
| 53 | `def` | [xgcd](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/xgcd.md) | 350 | `declaration-track:51725487a1f664824d8c365370d4b2a21e648d6ec5f0b1d3e7d66a4feb52e441` |
| 54 | `def` | [gcdD](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/gcdd.md) | 354 | `declaration-track:66f0a9fc6725c0f3eb8b948b0e7b65a426e26043af0ac01ceb197ec97cb0efce` |
| 55 | `def` | [gcdW](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/gcdw.md) | 358 | `declaration-track:30fa48106d242369796a5cfc5dc5748d80cc86dbc280edf42d1fd14a8986aaaa` |
| 56 | `def` | [gcdX](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/gcdx.md) | 362 | `declaration-track:0edd53ce66831da5fa84f588847a416afa8c799dbed836a14d204d37c4cb1b96` |
| 57 | `def` | [gcdY](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/gcdy.md) | 366 | `declaration-track:c84301b4784f3f48537d017ccc3ba45a9cd1aaea210c38e69200e532e8f2bcfa` |
| 58 | `def` | [gcdZ](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/gcdz.md) | 370 | `declaration-track:2b24f1d2246a91b7142208528db8010ee5a1cd3404cf35de8b9e00d20ebadc75` |
| 59 | `def` | [gcdA'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/gcda.md) | 374 | `declaration-track:4d973e1a3c898f55347d9f9b5e47160211e26704e1a4b34e04a6bba38b4bd0fe` |
| 60 | `def` | [gcdB'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/gcdb.md) | 378 | `declaration-track:b430e4bb126242b6958d52f73846312690f5aed2f5d7e1927b3a518d6fc9feb7` |
| 61 | `theorem` | [gcdA'_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/gcda-coe.md) | 381 | `result-track:ce33979df6cf530f87248d3d2f39bbeb1a0904dc40b92392151e45f1c07b2a3b` |
| 62 | `theorem` | [gcdB'_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/gcdb-coe.md) | 385 | `result-track:d5df6212a7459ea88e2abb550ba831f3d875631de50412a4f7e1fe9cc0f67d0f` |
| 63 | `theorem` | [gcd_props](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/gcd-props.md) | 389 | `result-track:e309531ad68e80e8c4b92a6fbf8609b95c54fcfc3696619fa80630e4a9a3b32d` |
| 64 | `theorem` | [gcd_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/gcd-eq.md) | 441 | `result-track:9f653a9f64c0f4b0ac5b67903a52ba2bcdf1cba7db2ae3112c791cac2b4e42b8` |
| 65 | `theorem` | [gcd_det_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/gcd-det-eq.md) | 453 | `result-track:f610d876f377f0c731038dc147a3d599c4fbe0f7671faa44e03d171a1aa94d9c` |
| 66 | `theorem` | [gcd_a_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/gcd-a-eq.md) | 456 | `result-track:0d8a4008de0bbf278f56ae50e0ead89eee6b189be39d732eb11866333df64f79` |
| 67 | `theorem` | [gcd_b_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/gcd-b-eq.md) | 459 | `result-track:c85d8e6e04c5022cdc86240aacb1ee7630e185c8192949550b0e79f770b0218c` |
| 68 | `theorem` | [gcd_rel_left'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/gcd-rel-left.md) | 462 | `result-track:7d6e1c2949f85cdcb357035a8488fed3c427e33a536b1cd7d2ca71ba4142084c` |
| 69 | `theorem` | [gcd_rel_right'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/gcd-rel-right-source-edition-2.md) | 465 | `result-track:cb06d874107acff32053babaa0c7335875167dd897b311ff6c9d22d3b6bd0a01` |
| 70 | `theorem` | [gcd_rel_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/gcd-rel-left-source-edition-2.md) | 468 | `result-track:cf8714665a762fa3c7a0608cf4f722c311fd8ca086d7d0e9c404f2ad49048693` |
| 71 | `theorem` | [gcd_rel_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/Xgcd.lean/declarations/gcd-rel-right.md) | 471 | `result-track:aab2603f09aeda1cbc92c600370f5c32a76ea30f174c305bd04b06307db6b619` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f0940936e1527e7ad25b56f9b4f57757544a7fe4582a68ae381ffcb56a2582e8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Xgcd/Variant4ea1e1e4c37df8c953b6584cfb9772a2201dc594fa84c9a7abf0e76caa78cf14.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Xgcd/Variant4ea1e1e4c37df8c953b6584cfb9772a2201dc594fa84c9a7abf0e76caa78cf14.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
