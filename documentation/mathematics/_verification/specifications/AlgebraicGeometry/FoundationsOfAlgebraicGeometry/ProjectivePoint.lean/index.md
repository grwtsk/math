# Verification target: Projective Point

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9c642d6fa3a8d4861ca9e29fb3d9986aafcc7ac",
  "lexical_observation_count": 91,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant35b25497166ab9179793bd8af8024171e8de2f9459fb59aebd0673fbb927a99d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9c642d6fa3a8d4861ca9e29fb3d9986aafcc7ac`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant35b25497166ab9179793bd8af8024171e8de2f9459fb59aebd0673fbb927a99d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant35b25497166ab9179793bd8af8024171e8de2f9459fb59aebd0673fbb927a99d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.EllipticCurve.Affine.Point` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.EllipticCurve.Projective.Formula` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/macro.md) | 70 | `declaration-track:c31a4153c4ce946888963f33075d8e7772e6541fded9ade935ec10c85cd6e0d5` |
| 2 | `def` | [neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/neg-source-edition-2.md) | 87 | `declaration-track:518ed97c86fe9779bda2e4cdb8a516ab8743d9d943d03457a585ad19e40f37d8` |
| 3 | `lemma` | [neg_X](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/neg-x.md) | 90 | `result-track:59a750db40fa3584c7ec19d7b32a3c85ec01aed6656e45a886fb8dd3a26e2588` |
| 4 | `lemma` | [neg_Y](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/neg-y.md) | 93 | `result-track:9d71753bea905aa4d587ae8afa08ba02cfa93ac030f626f240333e379ec13dfd` |
| 5 | `lemma` | [neg_Z](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/neg-z.md) | 96 | `result-track:8b6e3e44820bbec2e6266cce24d806bcf685d6dbabc1b2399ad0815d20bccf42` |
| 6 | `lemma` | [neg_smul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/neg-smul.md) | 99 | `result-track:138aa1fedd0c1c2d6534827ab0bc3c79446bfa045044b19ba600b45adc6a26d6` |
| 7 | `lemma` | [neg_smul_equiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/neg-smul-equiv.md) | 102 | `result-track:bb445c4276d87791641ef456410d7edb55b732c4e507fc0c2d77aca609a70c3a` |
| 8 | `lemma` | [neg_equiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/neg-equiv.md) | 105 | `result-track:dcd1d35cac8ad5fd6382b9b9e330c868cb46a4de8c6eb18addac9adbb1696bd4` |
| 9 | `lemma` | [neg_of_Z_eq_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/neg-of-z-eq-zero.md) | 109 | `result-track:a82f47bb7fa1b7860d62fde9cff0d2e4b98fe73644b99e855a8a870d87009568` |
| 10 | `lemma` | [neg_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/neg-of-z-ne-zero.md) | 114 | `result-track:626c03e600dc54a7f89ba304cb8a531b53139b9c3a6840382f2e947f6be5017e` |
| 11 | `lemma` | [nonsingular_neg_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/nonsingular-neg-of-z-ne-zero.md) | 119 | `result-track:7dc2015c81ce03902f6943bfe7026b9a87cf54d68dba1cf39bcd0017718ba944` |
| 12 | `lemma` | [nonsingular_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/nonsingular-neg.md) | 124 | `result-track:d6043f2bba8e5815926b9a43d701f6b53c55547fb84359fc606fad9f8084af7f` |
| 13 | `lemma` | [addZ_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/addz-neg.md) | 131 | `result-track:1bec8c9209dd9a6e051bb76f563355e400bb08707bcd569dc80bdc0e9e5e2877` |
| 14 | `lemma` | [addX_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/addx-neg.md) | 135 | `result-track:4a7e740b58d35e92bca5fc7f57f999fe74dc8b7b8de90ab11f0cda7ced5b9d8b` |
| 15 | `lemma` | [negAddY_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/negaddy-neg.md) | 139 | `result-track:1ca2127f0bb331782be7c1ce35dcded679bda0b4a05de85db0724f92f74ddf45` |
| 16 | `lemma` | [addY_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/addy-neg.md) | 143 | `result-track:838a60a8195346f5426a74a62cd821fbc53fbbb38b61d501a7659d9142d4dafe` |
| 17 | `lemma` | [addXYZ_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/addxyz-neg.md) | 146 | `result-track:9c98e38ecb6d2ef2083f35a77fb82cbe085b63d52b93506fd0704ce703a7d8a3` |
| 18 | `def` | [negMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/negmap.md) | 155 | `declaration-track:c68205cecc998d8b5cdcb34021abe71fa56f9b146775e18d17622c0cad228bb8` |
| 19 | `lemma` | [negMap_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/negmap-eq.md) | 158 | `result-track:aaee70acdf997bf39c2d8d4f9b1623c839465d8b1f6437187ed2d035b4faf2f2` |
| 20 | `lemma` | [negMap_of_Z_eq_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/negmap-of-z-eq-zero.md) | 161 | `result-track:0b2b561f0ad4407f44b77498af3e6c694b0d9894f57e144a5e2a9bbcb72507a6` |
| 21 | `lemma` | [negMap_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/negmap-of-z-ne-zero.md) | 165 | `result-track:983cb0a28e86457d078f97011b628f6cb97ac0885c5e479c4bb78ad1bf502868` |
| 22 | `lemma` | [nonsingularLift_negMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/nonsingularlift-negmap.md) | 169 | `result-track:7de8d070b982ed9bee79e90f9986063ee92946daece4b69d6461291d931941b5` |
| 23 | `def` | [add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/add-source-edition-2.md) | 179 | `declaration-track:bc4ccdc027546028501fed03ffb8e61fa4bc81a1dc86eaedf7e73942acee04ee` |
| 24 | `lemma` | [add_of_equiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/add-of-equiv.md) | 182 | `result-track:2088a013f6dcd625e768436c06611ce3040d33dae12d0460d182963421a7c883` |
| 25 | `lemma` | [add_smul_of_equiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/add-smul-of-equiv.md) | 185 | `result-track:559de8dcddcfe9d73f08924908ac7659df4a16fa23870e54c27405a616cade76` |
| 26 | `lemma` | [add_self](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/add-self.md) | 189 | `result-track:d1b52c88b23a736544bcb4f1414a38d779e495d5fabdca2cd43bdaea73d5bdb2` |
| 27 | `lemma` | [add_of_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/add-of-eq.md) | 192 | `result-track:c6d7496b350e7c21359a559b09fa9d529543eed386e80228b69e02c68a85ffe3` |
| 28 | `lemma` | [add_of_not_equiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/add-of-not-equiv.md) | 195 | `result-track:80185108832efe701fd84a115ef8c6ae994a154e6519cb53efe2d03542196856` |
| 29 | `lemma` | [add_smul_of_not_equiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/add-smul-of-not-equiv.md) | 198 | `result-track:8914cda159235544d8f9995fa6b27fa61a204e29d6dcb210bfe07347ca386eca` |
| 30 | `lemma` | [add_smul_equiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/add-smul-equiv.md) | 202 | `result-track:691ff6c216a1a6a0d0bff57fd6e1c14bc1c589e2bd0e35f76ac8f0c6350b878e` |
| 31 | `lemma` | [add_equiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/add-equiv.md) | 208 | `result-track:ff0add1f4311eb8f0b67324051aed7ecc024e687d8d4ba156e2b31cd15508b38` |
| 32 | `lemma` | [add_of_Z_eq_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/add-of-z-eq-zero.md) | 213 | `result-track:c285b9b9caba3495ddd3b43777a8b5210d35492ca2b8b8c82c4dfb458915ca05` |
| 33 | `lemma` | [add_of_Z_eq_zero_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/add-of-z-eq-zero-left.md) | 217 | `result-track:1ec20acb51d289c64ec8d21f759e3981fde39ba872150f1838992ab3d1963d4c` |
| 34 | `lemma` | [add_of_Z_eq_zero_right](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/add-of-z-eq-zero-right.md) | 221 | `result-track:f3727137124f5126b9da75ad936e9e5c2b18dedb47a44ef5c8dc90fe501f5a32` |
| 35 | `lemma` | [add_of_Y_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/add-of-y-eq.md) | 225 | `result-track:f1d6e2cd1d882ae0f05efa713133ea5166405e9d8dc9d094b2fa3ca4d030b045` |
| 36 | `lemma` | [add_of_Y_ne](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/add-of-y-ne.md) | 230 | `result-track:95519bf33e515ef8f6315ab7b97874a7a86f5932305e333b1212cd246d21126c` |
| 37 | `lemma` | [add_of_Y_ne'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/add-of-y-ne-source-edition-2.md) | 235 | `result-track:f56d250eb3dfe27fa6507b20e86f31cf477e9004425a657ddb9cf7c3a77ae966` |
| 38 | `lemma` | [add_of_X_ne](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/add-of-x-ne.md) | 245 | `result-track:ecafcf44f1e8b3bcb0a1ad14361d68062f127b0d7938177eebd716115b5bc37c` |
| 39 | `lemma` | [nonsingular_add_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/nonsingular-add-of-z-ne-zero.md) | 253 | `result-track:6dd900e42088f074e5e99958f61d7f0a1e77faa4f9cc32c87b0b7d6c976390be` |
| 40 | `lemma` | [nonsingular_add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/nonsingular-add.md) | 263 | `result-track:22b5319caa7ffd924dc763ca3c00cde63ba309c98ee84201fd62350576240a66` |
| 41 | `def` | [addMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/addmap.md) | 293 | `declaration-track:659d95e988ba77a5d00b969ab296ec77665b987c835f8d0e7bd1eae909b941b8` |
| 42 | `lemma` | [addMap_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/addmap-eq.md) | 296 | `result-track:31a0826fb23294a584c8cf1d914d01aea0a7b26df74f839e328c8b226fe6d1f3` |
| 43 | `lemma` | [addMap_of_Z_eq_zero_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/addmap-of-z-eq-zero-left.md) | 299 | `result-track:8be2440a11c63b0813844b2680843b9319183dfc9a85d390e4bd3f72e9ebb504` |
| 44 | `lemma` | [addMap_of_Z_eq_zero_right](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/addmap-of-z-eq-zero-right.md) | 310 | `result-track:3c61988b6d06331ddffe29489b457237de2bb29d37aa54cbe95cf0014afe705a` |
| 45 | `lemma` | [addMap_of_Y_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/addmap-of-y-eq.md) | 321 | `result-track:461c70e64baaf9b1cebd84d243a8d451b83bc7ee85e5518399fd2c63da1ae8a5` |
| 46 | `lemma` | [addMap_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/addmap-of-z-ne-zero.md) | 330 | `result-track:b47fb8a9f385a5616198140494d6c2ed39e60b101c084ab39e8e906fb3902b5f` |
| 47 | `lemma` | [nonsingularLift_addMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/nonsingularlift-addmap.md) | 342 | `result-track:187eb13b6c86e0e67fd41ffc4b916f4606009aa5946019f26664d2a7c780d408` |
| 48 | `structure` | [Point](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/point.md) | 352 | `declaration-track:9cef05f334e2ca38979d21ab123f7a96f5c2f03db1a3f3b720a6e26aa17ca36f` |
| 49 | `lemma` | [mk_point](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/mk-point.md) | 360 | `result-track:93fbf4bf52b8231439e326f986a570dcf4a5adc25cf09b93d4096e19796e8fba` |
| 50 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/instance-source-edition-4.md) | 363 | `declaration-track:ea796294d00465909e098f104b15df894d24094c6f485d3c63e70e12cdeb83d9` |
| 51 | `lemma` | [zero_def](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/zero-def.md) | 366 | `result-track:d65d5b630c48bea41754e9cccd6b92a4dcc82559512f9d5baf7f8f0090cadd63` |
| 52 | `lemma` | [zero_point](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/zero-point.md) | 369 | `result-track:301f88bedc8247803f6104c06bdbee2295921fd6a32a4ebfc3837250849d0de7` |
| 53 | `lemma` | [mk_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/mk-ne-zero.md) | 372 | `result-track:0338f5f9e88c9a6608548c61ebd54e2926ace29669f648e3a1bcc98ce38a816f` |
| 54 | `def` | [fromAffine](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/fromaffine.md) | 377 | `declaration-track:7984fd05d7e556d40d43aef81c1bcac827af8e66983009aa57d99dcc83f57cca` |
| 55 | `lemma` | [fromAffine_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/fromaffine-zero.md) | 381 | `result-track:95ff82b8f61796174824b2e50bacb555c5b4daba05ba3fbd0827dc6fb7f94905` |
| 56 | `lemma` | [fromAffine_some](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/fromaffine-some.md) | 384 | `result-track:7c3be71cb52df6a5f65b44f84e003707078069ce89e528798466a836e4500db7` |
| 57 | `lemma` | [fromAffine_some_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/fromaffine-some-ne-zero.md) | 388 | `result-track:9342cb6e71fa739197576610a8a01df34e8604a5cf4a331b36e950e27a1db7df` |
| 58 | `def` | [neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/neg.md) | 397 | `declaration-track:41222c7342747e06b808e5ce72c7e56372d793682e97320c05584f6a3f40d4a9` |
| 59 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/instance-source-edition-2.md) | 400 | `declaration-track:247952651dd7afc86c6d3d8cf3a5da23fcf4e6141c869ba6390d8ea8e083ae9a` |
| 60 | `lemma` | [neg_def](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/neg-def.md) | 403 | `result-track:da98f92938faf86cbc626f37c62af06dc596a8130af510ce422babe4038a9894` |
| 61 | `lemma` | [neg_point](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/neg-point.md) | 406 | `result-track:aebe9d920feb16310a2a3896723b59337d8a67776d9bfd3b50ebc55713515118` |
| 62 | `def` | [add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/add.md) | 412 | `declaration-track:2da1413ace396f98dc2a4041ee922fcbc816cff4c876d7c03408164ffedeb55b` |
| 63 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/instance.md) | 415 | `declaration-track:1669621c56713afbd8534c82f7e41d8e058926d86ccf65cd804ef8dbb6687172` |
| 64 | `lemma` | [add_def](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/add-def.md) | 418 | `result-track:255b3aeac5103608feaf4f2bbe4889f1fd1d2edf2d0dd838c6a5823aa3821202` |
| 65 | `lemma` | [add_point](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/add-point.md) | 421 | `result-track:034b6cd47ee4bdd0669324cb318150a965995a7e6039c317a721eeb2f189ba7e` |
| 66 | `def` | [toAffine](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/toaffine.md) | 430 | `declaration-track:d27cd7b780a883bc82675ed818a68b3c021a31a5845b12938b2032b41326e206` |
| 67 | `lemma` | [toAffine_of_singular](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/toaffine-of-singular.md) | 433 | `result-track:1ff202728aefcdbcacd1f8d51acabef6bd65c7b812fd678c10fa2cc61fc9f3f8` |
| 68 | `lemma` | [toAffine_of_Z_eq_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/toaffine-of-z-eq-zero.md) | 436 | `result-track:9a20b88183be66361be78945f5bfcefe4ae4f9a0c5641bad03c7b3a56924fa72` |
| 69 | `lemma` | [toAffine_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/toaffine-zero.md) | 439 | `result-track:948d64ac8de94e484751dd993e89c336985e8ac118cd3ca8955d52a1b0b10149` |
| 70 | `lemma` | [toAffine_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/toaffine-of-z-ne-zero.md) | 442 | `result-track:1a4aee3802e1578a2d20927cd83901b91e4dd5c3409a93b2413a8e758bfdab2a` |
| 71 | `lemma` | [toAffine_some](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/toaffine-some.md) | 446 | `result-track:12b5b5f89260ec8e20ceb2cf44b383cd851b59b0e7fb8f017f2dbb67274e7189` |
| 72 | `lemma` | [toAffine_smul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/toaffine-smul.md) | 450 | `result-track:ddd61dce599ad30a5138cb5e219feeec60ccfa97690f14cbbe0cee7072a8054d` |
| 73 | `lemma` | [toAffine_of_equiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/toaffine-of-equiv.md) | 460 | `result-track:4f4773b8ecef2edabcbe8399ce5915236bce7cbc1cff8454cbfe54ae5c4e3ae6` |
| 74 | `lemma` | [toAffine_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/toaffine-neg.md) | 464 | `result-track:94f47191fcfce828dfa3eaa66f6a31558cab14f979436d0d38c799ae9703e125` |
| 75 | `lemma` | [toAffine_add_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/toaffine-add-of-z-ne-zero.md) | 473 | `result-track:b2d4d16ac5677bdc04e525efcd92477b0d6de1c4fcb77ed95cff44dd197412bc` |
| 76 | `lemma` | [toAffine_add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/toaffine-add.md) | 485 | `result-track:02c510ecf556c09a22459fe2fc17a8271810315f3f510477838ab0188d776874` |
| 77 | `def` | [toAffineLift](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/toaffinelift.md) | 518 | `declaration-track:7ecb223246941fbdbec6b309f4b4b292c950c2d6ad3222b63c9a8badd9f51a3e` |
| 78 | `lemma` | [toAffineLift_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/toaffinelift-eq.md) | 521 | `result-track:168b7ac8c4c4ebfcea01c7526763463db8aaa80839298c396ce77955a834a040` |
| 79 | `lemma` | [toAffineLift_of_Z_eq_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/toaffinelift-of-z-eq-zero.md) | 525 | `result-track:7e725c369ac8b1bcc4000a3e1bbef14182917c5fee40d702c4a2d43dc8afbc7b` |
| 80 | `lemma` | [toAffineLift_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/toaffinelift-zero.md) | 529 | `result-track:98fba26df66690f285257ee47bc2fa61ce50df638bf778c9971a62a7d0c3f6b1` |
| 81 | `lemma` | [toAffineLift_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/toaffinelift-of-z-ne-zero.md) | 532 | `result-track:4bfbebb4cd3d65410b801bf80d5b45b8882b55005d011be45a72617b75d6c834` |
| 82 | `lemma` | [toAffineLift_some](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/toaffinelift-some.md) | 536 | `result-track:a97d98b47bda5c0c94e79c3ac074dd2ecdb3a6a8366efceab6c945b6529a3617` |
| 83 | `lemma` | [toAffineLift_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/toaffinelift-neg.md) | 540 | `result-track:73cb3c0566e3ea3e9c5969e9cb2dacdf1a91a252824a5766800b13d0c45d5090` |
| 84 | `lemma` | [toAffineLift_add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/toaffinelift-add.md) | 544 | `result-track:09abd840fe36e8c62a03d8401dda77ce11a773b7de52f052e99d69df3784d840` |
| 85 | `def` | [toAffineAddEquiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/toaffineaddequiv.md) | 553 | `declaration-track:25ec91ac71ab0a5ec85353292a00368893ba36f3b079f50d5835f0ee610da250` |
| 86 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/instance-source-edition-3.md) | 569 | `declaration-track:3a658b6e4e155ce5f3c6eb82ffb0ba37705d275b73294c42a4f0954fd40a3345` |
| 87 | `lemma` | [map_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/map-neg.md) | 586 | `result-track:3951cc417b152cbdb1a3e0f0ac1e1df7a8bdd59caed4030e2c424bb06f7f69cf` |
| 88 | `lemma` | [map_add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/map-add.md) | 592 | `result-track:58f6ee2103721ee41f8d0263b90e5340e10ed319cd0e770cfbeccb344df0a851` |
| 89 | `lemma` | [baseChange_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/basechange-neg.md) | 598 | `result-track:ff4926246c0d4e41233161d945ffeb2108209dfebfbcccc23bf82607bfbf0d13` |
| 90 | `lemma` | [baseChange_add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/basechange-add.md) | 603 | `result-track:ec38b3fab42d950b07cd68eff4075c929e82b8ea76cde6ed1b83496d58cb24f9` |
| 91 | `abbrev` | [Affine.Point.toProjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePoint.lean/declarations/affine-point-toprojective.md) | 614 | `declaration-track:455174763ebcba0025c1eefd2f3968d82544ec031f66efee63e23c0237a7ba2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=248264fb0f801a62741b7ab8ef8a3fa1fb8d8d73622e767c1d3aad9d308860df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant35b25497166ab9179793bd8af8024171e8de2f9459fb59aebd0673fbb927a99d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant35b25497166ab9179793bd8af8024171e8de2f9459fb59aebd0673fbb927a99d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
