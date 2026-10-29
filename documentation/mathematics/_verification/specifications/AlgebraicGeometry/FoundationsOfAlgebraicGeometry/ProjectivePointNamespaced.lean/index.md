# Verification target: Projective Point Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7681bbc90d10f542a3dfb8c73ad6753106c52eb",
  "lexical_observation_count": 91,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant7be9b6a4aca47661e1cc2e1a3b0e2b7a4ac6557a31ea99d27bd815da473ad5d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7681bbc90d10f542a3dfb8c73ad6753106c52eb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant7be9b6a4aca47661e1cc2e1a3b0e2b7a4ac6557a31ea99d27bd815da473ad5d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant7be9b6a4aca47661e1cc2e1a3b0e2b7a4ac6557a31ea99d27bd815da473ad5d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.EllipticCurve.Affine.Point` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.EllipticCurve.Projective.Formula` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/macro.md) | 78 | `declaration-track:1f461255cb872584a0478d9e4fed6adbe103f624cbd77ffbbdee4689ffeea025` |
| 2 | `def` | [neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/neg.md) | 95 | `declaration-track:8f52e2bd27a8245134e08c51c700eb0ff67a0c0aa600516508b52c1f1e83648c` |
| 3 | `lemma` | [neg_X](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/neg-x.md) | 98 | `result-track:2ce42fae35b126cc2ab11f52897301a12678f1e4d29719de36a4701d15b45cc2` |
| 4 | `lemma` | [neg_Y](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/neg-y.md) | 101 | `result-track:442665bb55008aa6773cb50fd404a1ca32585bb01865584a4914309055e41540` |
| 5 | `lemma` | [neg_Z](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/neg-z.md) | 104 | `result-track:28a2ded628303c759728b4ba0e7524c673446ccd6b7c68ab8243374592d8525d` |
| 6 | `lemma` | [neg_smul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/neg-smul.md) | 107 | `result-track:751128f60070312479439805c3dd699f1b151bd52e429e114971f9694ee6de4c` |
| 7 | `lemma` | [neg_smul_equiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/neg-smul-equiv.md) | 110 | `result-track:471cd831be5d6c5c18b6f8039c92372b4104dd649d56d975cb991657407858c7` |
| 8 | `lemma` | [neg_equiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/neg-equiv.md) | 113 | `result-track:854f260a427a44c709b50d6bc606bd3789b75d6816552f439a09149292f10bda` |
| 9 | `lemma` | [neg_of_Z_eq_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/neg-of-z-eq-zero.md) | 117 | `result-track:b80ac1d6f7e37137f757e327aee890a1181dde95bc0e90d9c8971d172b509c3f` |
| 10 | `lemma` | [neg_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/neg-of-z-ne-zero.md) | 122 | `result-track:9d559b2dbb4e72332feb55e28f4fdf8be525c2270650eeb360121e452670aed7` |
| 11 | `lemma` | [nonsingular_neg_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/nonsingular-neg-of-z-ne-zero.md) | 127 | `result-track:f1198f1ec738841273af87176fe3252742241df9537a540a369c1fadfc4cf086` |
| 12 | `lemma` | [nonsingular_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/nonsingular-neg.md) | 132 | `result-track:fbdd7d49f4270cb9df24744974ba5231f83556760d894f856ce34bb0ef7bf870` |
| 13 | `lemma` | [addZ_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/addz-neg.md) | 139 | `result-track:03735427630095ad9d2217a0dd6d34baefaf193f31f9d32534170401a5ffbdfd` |
| 14 | `lemma` | [addX_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/addx-neg.md) | 143 | `result-track:5a206884c3c7bfb4dda9f0929e58cbf7fe7a94fe03684687353e2dac05bbd166` |
| 15 | `lemma` | [negAddY_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/negaddy-neg.md) | 147 | `result-track:3f449721cab1a615da693705790a949d9140e7619b29c7ebce6bfe71ab498053` |
| 16 | `lemma` | [addY_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/addy-neg.md) | 151 | `result-track:786c1994f82003278de9cbb6f59e50d409170a51dbbd416dde75b38b19d1cb55` |
| 17 | `lemma` | [addXYZ_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/addxyz-neg.md) | 154 | `result-track:fc79bfa782c3316b1ebee9a120aba5b8d881df3b69ed379bd8ca80a904330cb7` |
| 18 | `def` | [negMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/negmap.md) | 163 | `declaration-track:de05a5d82cb0c6a086a569a71c10e7714732cbbf3dbdee4749670243af779072` |
| 19 | `lemma` | [negMap_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/negmap-eq.md) | 166 | `result-track:d83b121bff57635e7cfb77637fe3952da11cb4c33623ffb699333501d35b8ca1` |
| 20 | `lemma` | [negMap_of_Z_eq_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/negmap-of-z-eq-zero.md) | 169 | `result-track:20275f006c4b3c1e7d72b7456c029757b8fe78bbc4bab3101b9d804c51cd8cc3` |
| 21 | `lemma` | [negMap_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/negmap-of-z-ne-zero.md) | 173 | `result-track:3ca5b654db3ba5f10797b994024b6b6cc8af263d8ce7da114894fc4a1f2d1f84` |
| 22 | `lemma` | [nonsingularLift_negMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/nonsingularlift-negmap.md) | 177 | `result-track:7af32cd4b23057eb532e2cde253e6116e60b0937dcde51fc820fdbbdb9302e07` |
| 23 | `def` | [add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/add.md) | 187 | `declaration-track:62b1e4693c849a49ca373ecff61a4da8a95fc6cfd866280b482f737b5f884ab3` |
| 24 | `lemma` | [add_of_equiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/add-of-equiv.md) | 190 | `result-track:4028425b3b00c601e70c8c7d361c35f7086b68a0e2fc7ca1e2c71c38b1db88c8` |
| 25 | `lemma` | [add_smul_of_equiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/add-smul-of-equiv.md) | 193 | `result-track:0170cc986074ab7453fa62617ef0c240db9ba5552801b2a8acc8a181f3685add` |
| 26 | `lemma` | [add_self](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/add-self.md) | 197 | `result-track:898c288f800f7becb492e0c7af980f07fe28c178079c430f27ab4589a64ee2d2` |
| 27 | `lemma` | [add_of_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/add-of-eq.md) | 200 | `result-track:02d91ba54942d1037e422ba7526d0ebf3b41b10e7c649b1b3e0598c256fb3983` |
| 28 | `lemma` | [add_of_not_equiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/add-of-not-equiv.md) | 203 | `result-track:db08b44e7d59ef2f91b55b82370fecebce724c0394b3af9a3b1179b1cc82b78f` |
| 29 | `lemma` | [add_smul_of_not_equiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/add-smul-of-not-equiv.md) | 206 | `result-track:59f2dcf1e11ed8aa70d02bbf15a45025ea88ea3b8e36fa15b575b1d918a2f016` |
| 30 | `lemma` | [add_smul_equiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/add-smul-equiv.md) | 210 | `result-track:ea2461490f2a7fb6c79681d95c7c6137d46a9f53a7489b47826bfae0f05e4c23` |
| 31 | `lemma` | [add_equiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/add-equiv.md) | 216 | `result-track:799eed793757ef133159e6cf31973d6976a25cbfa3b278f8d4a331edf6a20051` |
| 32 | `lemma` | [add_of_Z_eq_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/add-of-z-eq-zero.md) | 221 | `result-track:576041798d4d02ef816a0be9b977632f3dbee686116ae67fe732e9cd69c63a80` |
| 33 | `lemma` | [add_of_Z_eq_zero_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/add-of-z-eq-zero-left.md) | 225 | `result-track:ba627642f529dc399dc236b70dd04b3b1116946e6b3a66597d143ab821106532` |
| 34 | `lemma` | [add_of_Z_eq_zero_right](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/add-of-z-eq-zero-right.md) | 229 | `result-track:ce6daacc7e54b4f877e39c7c77208bc10436d4ae651a1699978bc1741b75c72c` |
| 35 | `lemma` | [add_of_Y_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/add-of-y-eq.md) | 233 | `result-track:0ba0a951f7c4bf23fb7c06403d102625be2264f381f04dcb236d6265b2249cf2` |
| 36 | `lemma` | [add_of_Y_ne](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/add-of-y-ne.md) | 238 | `result-track:93156552218e75b9e5e7fe893ba1f4972431bd9ec3783ca42a8f2fc4c0fec506` |
| 37 | `lemma` | [add_of_Y_ne'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/add-of-y-ne-source-edition-2.md) | 243 | `result-track:a63b451bceb1875e11512d7c63fb77b4198ccd3a3d074bad136f0bd602c6462d` |
| 38 | `lemma` | [add_of_X_ne](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/add-of-x-ne.md) | 253 | `result-track:906175d11a5c30e90667801450d95b88fa1ca4d947fc9f007d5e2a06c0a29d2c` |
| 39 | `lemma` | [nonsingular_add_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/nonsingular-add-of-z-ne-zero.md) | 261 | `result-track:855f0c3ac92c46d87926572aca5ad2eb2a063bb51bf3121f012d8346b1f8f72f` |
| 40 | `lemma` | [nonsingular_add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/nonsingular-add.md) | 271 | `result-track:7fb71d5ba7d85a4833d24e520b9d10a04e8a966a3f784e9377ee3e3cda723851` |
| 41 | `def` | [addMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/addmap.md) | 301 | `declaration-track:1e66c48e2f638da858f02e370081e5c5bd07e6166d0a25ebcbc043d1de22cfd7` |
| 42 | `lemma` | [addMap_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/addmap-eq.md) | 304 | `result-track:9f4be93c6ba907250b3dae9c4369fca933b892fc68e8fdfd7a4e50ae7a3dbfe9` |
| 43 | `lemma` | [addMap_of_Z_eq_zero_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/addmap-of-z-eq-zero-left.md) | 307 | `result-track:f59fa42c6b129c8357f5ad8125a7feda82beeba018ff3f52621925e04237f5d2` |
| 44 | `lemma` | [addMap_of_Z_eq_zero_right](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/addmap-of-z-eq-zero-right.md) | 318 | `result-track:32e22d0ca085fed9da6a18f302ff34d2a6b47e44b7e41dc0097e49fe60f45728` |
| 45 | `lemma` | [addMap_of_Y_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/addmap-of-y-eq.md) | 329 | `result-track:71989ebfd43cfe4f5c1ec6ff3f6bce4c714e0cb9cd9d6b7dc9fafb92bf72d54c` |
| 46 | `lemma` | [addMap_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/addmap-of-z-ne-zero.md) | 338 | `result-track:acb9a7ce77dfdfe6d007d9abfdf0e44e468cb6131a336b22fd5f91d2323af146` |
| 47 | `lemma` | [nonsingularLift_addMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/nonsingularlift-addmap.md) | 350 | `result-track:4ca4d7e59f3c1096bc0011bf859938fecf5ca96db9b43fe6486347f3bce4f60b` |
| 48 | `structure` | [Point](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/point.md) | 360 | `declaration-track:b0c927ea51e88dbbc288d96f64caa103f746ed569af7b93adc964b8c67ae9526` |
| 49 | `lemma` | [mk_point](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/mk-point.md) | 368 | `result-track:2905e6fd83d3a37f7e98e0a2fe2fe467d5bd963a8b50eb5e0a32637048cd471b` |
| 50 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/instance-source-edition-4.md) | 371 | `declaration-track:ec1ba8088adb892f1588d9398883002db160b255c5a76137c66c295c4844f5d9` |
| 51 | `lemma` | [zero_def](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/zero-def.md) | 374 | `result-track:b25225be1a3d097ba172f8b4ea8eeb9439f58b858c35c84232d2a29ceba17783` |
| 52 | `lemma` | [zero_point](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/zero-point.md) | 377 | `result-track:c4ce5df459a621a5e3e64370b0dad59c1a50c61882968aa9c02fc798520b148c` |
| 53 | `lemma` | [mk_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/mk-ne-zero.md) | 380 | `result-track:96b4b1a8bb8d7ab876b3c9f2f8abc174bdd2288552940aacf79ecd3a8124077d` |
| 54 | `def` | [fromAffine](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/fromaffine.md) | 385 | `declaration-track:e9c0670a94d761e4f361df46504ddec29228ac93b6c3ac67e483a7c91be03f97` |
| 55 | `lemma` | [fromAffine_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/fromaffine-zero.md) | 389 | `result-track:ac7f8f80da407de35fca9874253b91c431f2e4d950c3cec312a45ff0e7e2c546` |
| 56 | `lemma` | [fromAffine_some](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/fromaffine-some.md) | 392 | `result-track:fa2e30e6a6c6959eb6ca906e709e831025bd3e477ca826eba045ff93d406fa54` |
| 57 | `lemma` | [fromAffine_some_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/fromaffine-some-ne-zero.md) | 396 | `result-track:3844905157cf9c9533a0943d45006a151066d48dc600671ecf4bb2cfe4d07c00` |
| 58 | `def` | [neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/neg-source-edition-2.md) | 405 | `declaration-track:c80a756a073327ca798be6143e6dfdcfe52b31a425d8e924f162c3947893a574` |
| 59 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/instance-source-edition-2.md) | 408 | `declaration-track:30ccd2e72abcfb4832006f789106a1ffaeced64cf0c7d61f4af51c65d39a468d` |
| 60 | `lemma` | [neg_def](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/neg-def.md) | 411 | `result-track:419a28fa887f10ed990efe103fc7d1fdfd1afd4521d3527b21f2f19e965c48e7` |
| 61 | `lemma` | [neg_point](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/neg-point.md) | 414 | `result-track:3dca83c6429d2959d731e3beaf0d2f0e640a33d38c2816a6c5fad38eb897c2aa` |
| 62 | `def` | [add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/add-source-edition-2.md) | 420 | `declaration-track:88d5eec4b6244e557b9d658f0167dfb0f009ea3ef14c755e5905ed2000b42b9d` |
| 63 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/instance-source-edition-3.md) | 423 | `declaration-track:7b8f60c39c5d5d1c2ceafa54b67910463bb3b5ae4ea0e7eebb08fd62070fb060` |
| 64 | `lemma` | [add_def](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/add-def.md) | 426 | `result-track:dd358b9df125d025dd519c9c843a9a1ec461e8ae2ee3f56174aebca87fbf02cf` |
| 65 | `lemma` | [add_point](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/add-point.md) | 429 | `result-track:78d28b7d3744be1a9c29d9d235475844e39f2f782b3c7e53e2cfbb87b7e784c6` |
| 66 | `def` | [toAffine](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/toaffine.md) | 438 | `declaration-track:458f91784e53fed1a6313b54734cd2921f12e5f42b244748c7c6e185d0106e42` |
| 67 | `lemma` | [toAffine_of_singular](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/toaffine-of-singular.md) | 441 | `result-track:e2a4bc9ddf418ccf113e91142b163aa7a50015912f8bde97390d63b51b6efa9f` |
| 68 | `lemma` | [toAffine_of_Z_eq_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/toaffine-of-z-eq-zero.md) | 444 | `result-track:db3a2aa4b6feeadf200fb7ab26c8c233d3a50c2cf47eaaaff54a6f7d2614e183` |
| 69 | `lemma` | [toAffine_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/toaffine-zero.md) | 447 | `result-track:2440693c3134dee017038c1e4a411cba6b6b3dcecbfcadbeba08bcb72177b961` |
| 70 | `lemma` | [toAffine_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/toaffine-of-z-ne-zero.md) | 450 | `result-track:d2f6fee3b3c9d13a6f9319562adcc072c043f394aae3ecbfa8e4d179f953d431` |
| 71 | `lemma` | [toAffine_some](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/toaffine-some.md) | 454 | `result-track:774d61d7f2512da8dbca200d73bb7b5abe77ab748e8d437dbf64ea6b98717344` |
| 72 | `lemma` | [toAffine_smul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/toaffine-smul.md) | 458 | `result-track:5f96e7f39bfebdd6e023761e6d0ceb03285a77e23afeed331d22b34457eb5a39` |
| 73 | `lemma` | [toAffine_of_equiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/toaffine-of-equiv.md) | 468 | `result-track:adbbd9d722265630db8d28b0e1d5b74955b79c6f705d720d5d5b4b4433504f11` |
| 74 | `lemma` | [toAffine_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/toaffine-neg.md) | 472 | `result-track:b718c3185a2b712c93a45bc59725c235bf4cb17741dbfa59171be61c4cd25d57` |
| 75 | `lemma` | [toAffine_add_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/toaffine-add-of-z-ne-zero.md) | 481 | `result-track:c1d4870d073ee1e7b9300f4ce9adb3333c81af12f798c16881881ec3cc8ab3a7` |
| 76 | `lemma` | [toAffine_add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/toaffine-add.md) | 493 | `result-track:756989012ee8b3d5c6d1980ccf80ee5bdb7530bca19d6e48d60830518f06fa5a` |
| 77 | `def` | [toAffineLift](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/toaffinelift.md) | 526 | `declaration-track:a0dd7bfe7d2a3db49428f3a433195a1cb66c089cad8aa69ec112ae8b75fdaf62` |
| 78 | `lemma` | [toAffineLift_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/toaffinelift-eq.md) | 529 | `result-track:d4c2808b7319e924def3d3b41b31ed02bef74ece96e070cf85131e03f286250c` |
| 79 | `lemma` | [toAffineLift_of_Z_eq_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/toaffinelift-of-z-eq-zero.md) | 533 | `result-track:a79dc36be28b257fb6be7c7a2967b46102b58c529a42c26677b9992b3374eb67` |
| 80 | `lemma` | [toAffineLift_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/toaffinelift-zero.md) | 537 | `result-track:478288d688a4855eb83be32cd7c591fa09185ba29941e87a0a8d42f391e49992` |
| 81 | `lemma` | [toAffineLift_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/toaffinelift-of-z-ne-zero.md) | 540 | `result-track:3047b036964ac99e23023669b5bbdb093751424f46a3c56616ffa83f802aabda` |
| 82 | `lemma` | [toAffineLift_some](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/toaffinelift-some.md) | 544 | `result-track:8abd9b0e3bdcceeb0a02d7360a231c21d49ab37acdeef08b3ab1ceb31ff1cc51` |
| 83 | `lemma` | [toAffineLift_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/toaffinelift-neg.md) | 548 | `result-track:81d9226755aa7920330bdc1b301891de21d8c4139c17e15574e30de1f7e346b9` |
| 84 | `lemma` | [toAffineLift_add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/toaffinelift-add.md) | 552 | `result-track:a3b60c9ca1111cad70ea0ff5a5e75b1223649bed8d9be8d7023ca7af8eea95d2` |
| 85 | `def` | [toAffineAddEquiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/toaffineaddequiv.md) | 561 | `declaration-track:838ad8e01251f7b90477deb52bd968edadbcabe8fe070d2d923ae90fc4e8a47f` |
| 86 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/instance.md) | 577 | `declaration-track:28296d2def23476fdf94526fd0d2841895adcc09312d736f2170db9c92cb8417` |
| 87 | `lemma` | [map_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/map-neg.md) | 594 | `result-track:a14884e99d474925ed1cab74bed5518aea330bb864d8cb82124887be731087a7` |
| 88 | `lemma` | [map_add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/map-add.md) | 600 | `result-track:df055bdbf84b3353b37a4b792616440885a88b08b9ad3a52674f366d12b54990` |
| 89 | `lemma` | [baseChange_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/basechange-neg.md) | 606 | `result-track:f22fb1cbcedde75cdae3d67621fa6933f18e54f58558c144603897d7ec3e79e8` |
| 90 | `lemma` | [baseChange_add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/basechange-add.md) | 611 | `result-track:d30be2cccff295ff7c0b80f1cafb20a449c5fcac6279692322023a79bc046a33` |
| 91 | `abbrev` | [Affine.Point.toProjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectivePointNamespaced.lean/declarations/affine-point-toprojective.md) | 622 | `declaration-track:f730eabe14e377659b9ca96fb90acfbecad60791739eed008ee38168a3ab4b9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e88a04bc034758d9ea5f48f3cb92bd6503088f6d35e609ac317042b3bd5a6ffa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant7be9b6a4aca47661e1cc2e1a3b0e2b7a4ac6557a31ea99d27bd815da473ad5d6.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant7be9b6a4aca47661e1cc2e1a3b0e2b7a4ac6557a31ea99d27bd815da473ad5d6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
