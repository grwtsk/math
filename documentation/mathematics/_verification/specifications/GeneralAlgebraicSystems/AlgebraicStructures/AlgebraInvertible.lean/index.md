# Verification target: Algebra Invertible

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21fe723083a096a9b7bbf21a2b3a1842ab8be580",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21fe723083a096a9b7bbf21a2b3a1842ab8be580`.

Source path: `GRWTSK/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Units` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Invertible](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invertible.md) | 87 | `declaration-track:b83c7712e2464b29efa888749863b68d22d98857d277d8d4747324336ba7ac21` |
| 2 | `theorem` | [invOf_mul_self'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invof-mul-self-source-edition-2.md) | 102 | `result-track:8d8b3e09a3567ef9112dc63de009388b2bed0247641ccfab4c2d4b3bf3c9d71e` |
| 3 | `theorem` | [invOf_mul_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invof-mul-self.md) | 105 | `result-track:6a15a9b858c1f373ce5af3a7a89b1acdbc461a3a03380704512b90d3a4d923e4` |
| 4 | `theorem` | [mul_invOf_self'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/mul-invof-self.md) | 110 | `result-track:95758ccdb7ed81afd8279e86e48a2bb65046fb2a846c15443e6407ff15e23dcd` |
| 5 | `theorem` | [mul_invOf_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/mul-invof-self-source-edition-2.md) | 113 | `result-track:c0171b490a0c414b72c25a6094c5e74dfe1882740d91b1ac241797086a9629c4` |
| 6 | `theorem` | [invOf_mul_self_assoc'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invof-mul-self-assoc.md) | 118 | `result-track:6e97519229f48d485b183d45e83e244601c2357f2af3b4c16743eec7f7b68140` |
| 7 | `theorem` | [invOf_mul_self_assoc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invof-mul-self-assoc-source-edition-2.md) | 121 | `result-track:b155cf953aa37dd12a861ea719154b03ec647c395af88a94070ad511dfb17f5d` |
| 8 | `theorem` | [mul_invOf_self_assoc'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/mul-invof-self-assoc.md) | 126 | `result-track:07a7cd89b81893ccc773208800abc04e0c156d79d781a15d6dbe0255438b5dee` |
| 9 | `theorem` | [mul_invOf_self_assoc](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/mul-invof-self-assoc-source-edition-2.md) | 129 | `result-track:8763fe45b3bd97855c3a598688512df85590e45bd66ebddbdb40261aa6ad927f` |
| 10 | `theorem` | [mul_invOf_mul_self_cancel'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/mul-invof-mul-self-cancel-source-edition-2.md) | 134 | `result-track:68246fe57d12e518ba6048a335ddf91a80570aec2b8e59e1531e723215374e69` |
| 11 | `theorem` | [mul_invOf_mul_self_cancel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/mul-invof-mul-self-cancel.md) | 137 | `result-track:00fd57726db8065b5220dc2d4b7f97805030ea9245ffba3ffea61a70b9e19f41` |
| 12 | `theorem` | [mul_mul_invOf_self_cancel'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/mul-mul-invof-self-cancel.md) | 142 | `result-track:5d699be2f1207eab73db0d948199b97a9ee358037f86825405e27ba1595cca06` |
| 13 | `theorem` | [mul_mul_invOf_self_cancel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/mul-mul-invof-self-cancel-source-edition-2.md) | 145 | `result-track:8f200b8ea142df385f27f6a1753ecb3372bdc15841b67730c7a21c194c65f2ce` |
| 14 | `theorem` | [invOf_eq_right_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invof-eq-right-inv.md) | 149 | `result-track:9708333f894b52a07016e9b9e3fcf02a1a4574e229a7779670d024ef96486680` |
| 15 | `theorem` | [invOf_eq_left_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invof-eq-left-inv.md) | 153 | `result-track:3df23001e5e3f8d21c67baecf0ea34c178e82da9dcdce0d86eb462653faa05f3` |
| 16 | `theorem` | [invertible_unique](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invertible-unique.md) | 157 | `result-track:d0eca14e23ad9c9d9e800a0df9d888e967c4837a8f64fae63a577075b1062c7a` |
| 17 | `instance` | [Invertible.subsingleton](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invertible-subsingleton.md) | 163 | `declaration-track:c5b093ccd69b687d9f8149ec897b5dfae2e06ff5601dd05e72a57a817d473c4f` |
| 18 | `def` | [Invertible.copy'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invertible-copy-source-edition-2.md) | 170 | `declaration-track:2d7881b50f93c01f55ea40279c30bf8f14b1fd3f14a20f1936ff70670a4feb16` |
| 19 | `def` | [Invertible.copy](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invertible-copy.md) | 179 | `declaration-track:23614df1f8c95c44159cf2aa344c210aa279f1717dc84cc5529921a4bb9618d2` |
| 20 | `theorem` | [Invertible.congr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invertible-congr.md) | 186 | `result-track:aae3d5a720a89e05b0370333191b65b9748336d60cdee7d6087de9a0b17774b6` |
| 21 | `def` | [unitOfInvertible](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/unitofinvertible.md) | 191 | `declaration-track:98e4b1c0f535bf6ad3432ada8666af89194bc24d8ae1c561bf494527eb9b8f7c` |
| 22 | `theorem` | [isUnit_of_invertible](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/isunit-of-invertible.md) | 200 | `result-track:49ab93539f3c423ba1506e873c1a3d2115f1f27dd17bbfe93658baadf67b0853` |
| 23 | `def` | [Units.invertible](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/units-invertible.md) | 205 | `declaration-track:bd6833c861a1aec76a8c07e5aa00da589cac5a3da089e2f2e517a84e4fb3503e` |
| 24 | `theorem` | [invOf_units](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invof-units.md) | 213 | `result-track:bd93db487f8b7b388d66fa79f7fdd598ae565495913ee67ca191a1282404fc0c` |
| 25 | `theorem` | [IsUnit.nonempty_invertible](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/isunit-nonempty-invertible.md) | 217 | `result-track:f981b634d33b20e9c1d004e850b73b7f8378712a8cfe1578a0362d9014c70205` |
| 26 | `def` | [IsUnit.invertible](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/isunit-invertible.md) | 225 | `declaration-track:187e6a7704e1bf864343faeab8693f7765bc0096982362da2e0d910d19750cc0` |
| 27 | `theorem` | [nonempty_invertible_iff_isUnit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/nonempty-invertible-iff-isunit.md) | 230 | `result-track:58b394dbef376c9ade04ff99131f6f30268e92c2cab2e7fc6469b9bdbda3a797` |
| 28 | `def` | [invertibleOfGroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invertibleofgroup.md) | 235 | `declaration-track:84aefd099e251f42a292ba478bc448271008fe0b7a4dc87f3f3cda2e2759e4ef` |
| 29 | `theorem` | [invOf_eq_group_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invof-eq-group-inv.md) | 240 | `result-track:e22688e5de17293ebf08b62a166ba647b6ab6228e85963a9525032c54421cd28` |
| 30 | `def` | [invertibleOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invertibleone.md) | 245 | `declaration-track:b3f1ddacd6d756aa7a9899e3fb0a2ac959207b70f989d6cf73d9220b055de2dc` |
| 31 | `theorem` | [invOf_one'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invof-one.md) | 250 | `result-track:8aa71618b5cd2dafff8282edda017bd3624269095e863e0b6e406ad3af10678a` |
| 32 | `theorem` | [invOf_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invof-one-source-edition-2.md) | 253 | `result-track:ecdccfb308eb551709e6b0e819e60b6f2c29700c5567ceb3868780fd4862a333` |
| 33 | `def` | [invertibleNeg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invertibleneg.md) | 258 | `declaration-track:0d3d3abedcc60f448ec5b16e8e21ad46c1ffb871da6ab707b12e83ae7313268a` |
| 34 | `theorem` | [invOf_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invof-neg.md) | 263 | `result-track:babc7e635b66b6126398e0f4abff77a65ce9f3f876bde39f5c963c7c31dc2b58` |
| 35 | `theorem` | [one_sub_invOf_two](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/one-sub-invof-two.md) | 269 | `result-track:17de959a56e41dbb1fa243ecab5a3eaf2c4756029397c0242882413904e0a830` |
| 36 | `theorem` | [invOf_two_add_invOf_two](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invof-two-add-invof-two.md) | 275 | `result-track:a5d610fc56e28f4683667ab55e07fdb57a93af50962a968d3c69ab569c43a100` |
| 37 | `instance` | [invertibleInvOf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invertibleinvof.md) | 280 | `declaration-track:cbd80471af640ccdde066c0cf19d9fff6f04128fd879dbfa9342cb41038b623d` |
| 38 | `theorem` | [invOf_invOf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invof-invof.md) | 285 | `result-track:8a3dc08d655e15b517a6f8cfd794bcb4ce495c8adf0c50aa72a0ac85be647ab3` |
| 39 | `theorem` | [invOf_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invof-inj.md) | 290 | `result-track:e24d9be7095348e0f8577eb272327cd8526469edbed5f53a022f2bca691062f7` |
| 40 | `def` | [invertibleMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invertiblemul.md) | 295 | `declaration-track:5411f69ed60f403edfb19106e693a324a119960e2244e5b7a7d289f084e51d17` |
| 41 | `theorem` | [invOf_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invof-mul.md) | 300 | `result-track:7ec9d707dc30c5bcdb247594ef1f733187b3c7a29bde44b2ca65e4230e62479a` |
| 42 | `def` | [Invertible.mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invertible-mul.md) | 307 | `declaration-track:2dfeea6f4de64b1359cab9d77e6ee799f2ddba99e715a1119217a17074256cbb` |
| 43 | `theorem` | [mul_right_inj_of_invertible](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/mul-right-inj-of-invertible.md) | 312 | `result-track:9791b55f8752eb8fc9e3fccdfacf528fc55d6b2e309275eac56fa565b7088dbb` |
| 44 | `theorem` | [mul_left_inj_of_invertible](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/mul-left-inj-of-invertible.md) | 316 | `result-track:2e6678b5365763fe173b8b571b9fde5a12e22ce27c7984ce845c1bccf73a298d` |
| 45 | `theorem` | [invOf_mul_eq_iff_eq_mul_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invof-mul-eq-iff-eq-mul-left.md) | 320 | `result-track:6154714980257530c85eaa8d643dd3a3aed25eaf5a2a4fbf36e292ce80c2367a` |
| 46 | `theorem` | [mul_left_eq_iff_eq_invOf_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/mul-left-eq-iff-eq-invof-mul.md) | 324 | `result-track:360627019a64963150238c3a6c6291ee2987f10d3a11fe4fb26deec3894a86e4` |
| 47 | `theorem` | [mul_invOf_eq_iff_eq_mul_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/mul-invof-eq-iff-eq-mul-right.md) | 328 | `result-track:683cba56aa87fcdb0bbb1ee949f09a4100f304d40f842db75089aabb9b823485` |
| 48 | `theorem` | [mul_right_eq_iff_eq_mul_invOf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/mul-right-eq-iff-eq-mul-invof.md) | 332 | `result-track:c9e6bd5a39173f2f55865fcc0cc36a2cc65bd1e357afcf71e53d07dfaf7b951d` |
| 49 | `theorem` | [Commute.invOf_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/commute-invof-right.md) | 336 | `result-track:16f1adbd2cd6f11803642aefa63f036dc1474c167e36ffb8ba20d56d184eda5d` |
| 50 | `theorem` | [Commute.invOf_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/commute-invof-left.md) | 344 | `result-track:ce9e11d483d23dec2b0797f45158f4cf6e9ca6eac6448cdf38d39e7458feb305` |
| 51 | `theorem` | [commute_invOf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/commute-invof.md) | 352 | `result-track:f80eeeff83cfc471526a28ac6cfa4bf40bb12938525f16e3847c69e8473e52b2` |
| 52 | `theorem` | [nonzero_of_invertible](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/nonzero-of-invertible.md) | 358 | `result-track:ab9db79a7c0eeb73b6969c3e31e04691705080310d57719b740dc77276ae19de` |
| 53 | `theorem` | [pos_of_invertible_cast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/pos-of-invertible-cast.md) | 366 | `result-track:242e10d3347fcb133e9e5e88380c56b8c3c5c3002c0684721159260cd4156087` |
| 54 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/instance.md) | 369 | `declaration-track:90d5cb32f2fc3ed9982c06954bb1c552be47313c79240e1ba780580ed81e07d5` |
| 55 | `def` | [invertibleOfInvertibleMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invertibleofinvertiblemul.md) | 380 | `declaration-track:0ea1e0d22d0d39eec6c5c3862017fce3deefaeac0e495a8f02fadc3f25c349d3` |
| 56 | `def` | [invertibleOfMulInvertible](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invertibleofmulinvertible.md) | 390 | `declaration-track:eab4e0836c404d0915c0b32381d45e0dce387710c4fd13025ea4f20b5ec26306` |
| 57 | `def` | [Invertible.mulLeft](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invertible-mulleft.md) | 400 | `declaration-track:f679b5da5d3f851d6be076e4952cf0c78283ce6474f0795d2f12f8821806cbfd` |
| 58 | `def` | [Invertible.mulRight](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invertible-mulright.md) | 411 | `declaration-track:aae6acf1a1489f773a497adfbfff89971188e3fced947e2da28931d078632423` |
| 59 | `theorem` | [Ring.inverse_invertible](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/ring-inverse-invertible.md) | 428 | `result-track:7c6cfa7ec2c1fd6f6a617a095df85535031e62ddb3a8ce1a9ce2515dc64bddfa` |
| 60 | `def` | [invertibleOfNonzero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invertibleofnonzero.md) | 439 | `declaration-track:0b3850adccad03bfaa63b54d9848ba753e3660ee829679b6d4a9c4ded8da18e5` |
| 61 | `theorem` | [invOf_eq_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invof-eq-inv.md) | 444 | `result-track:2afac3afcfae94700c5d582912c24ac12c292384d6487df7e2016205c2759ae1` |
| 62 | `theorem` | [inv_mul_cancel_of_invertible](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/inv-mul-cancel-of-invertible.md) | 449 | `result-track:6a31b093ab873403c77820b6f21f0cfb66ca66ed1a4a30472f9114f2fcc2f3cf` |
| 63 | `theorem` | [mul_inv_cancel_of_invertible](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/mul-inv-cancel-of-invertible.md) | 454 | `result-track:ce073dab17f543b0eb1ac2a673f5e2e1d5f5b44b060eb2507dc7b16f39ee03bd` |
| 64 | `theorem` | [div_mul_cancel_of_invertible](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/div-mul-cancel-of-invertible.md) | 459 | `result-track:6d0add06f31dd8990b8e351ce2aadeb339663f3fdced3a284b1d839a7ec9aeaf` |
| 65 | `theorem` | [mul_div_cancel_of_invertible](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/mul-div-cancel-of-invertible.md) | 464 | `result-track:ff133da4c0bcf207e708b6954fd74daa07d972321087ee79ba18f3fe257ca38e` |
| 66 | `theorem` | [div_self_of_invertible](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/div-self-of-invertible.md) | 469 | `result-track:3baf353fbaf0f1fc20067cb2f1f47f1d26757b44f20cfc84b1a57ae7d51b21df` |
| 67 | `def` | [invertibleDiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invertiblediv.md) | 474 | `declaration-track:bec18c946d9d047788ba0dcaf61ff89a9ab6a5184f94b90878812a63131e37f1` |
| 68 | `theorem` | [invOf_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invof-div.md) | 479 | `result-track:84375d0af7239595da858c83dfeff296cea839fa975563286e3688c8eff5dd65` |
| 69 | `def` | [invertibleInv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invertibleinv.md) | 485 | `declaration-track:b551f94b451612d758f0e79afee695a30730fbe5a50aa12928d2bd048b25be04` |
| 70 | `def` | [Invertible.map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invertible-map.md) | 492 | `declaration-track:6505669e56129d0422c9e5cd746b5d6c850faa7cd1aa76c5f23b8d79661587f5` |
| 71 | `theorem` | [map_invOf](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/map-invof.md) | 502 | `result-track:c1b255524ca9c1b79e4ea11627142f5eff20c3b63c1de102d05a6fac840265a9` |
| 72 | `def` | [Invertible.ofLeftInverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invertible-ofleftinverse.md) | 514 | `declaration-track:b432c821525e8ac2f12b352d869129b7465a751f819b5cfcd935519390379341` |
| 73 | `def` | [invertibleEquivOfLeftInverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraInvertible.lean/declarations/invertibleequivofleftinverse.md) | 523 | `declaration-track:a3cdff2c14321404f9162a33de335d7396e8a73def027a9704d33c426d185ccd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=087059a7c25848c722a232cee103c54a8f8678b3a7b6e7f970043aced0360645 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean","GRWTSK/_verification/specifications/Algebra/Invertible/Variant51e43200ef30372e64da6c62677099327e071abafd693d58183316d3acb20935.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
