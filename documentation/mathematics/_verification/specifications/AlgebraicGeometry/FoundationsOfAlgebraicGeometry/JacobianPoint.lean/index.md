# Verification target: Jacobian Point

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83a62289001669d6a41dcc762f3dd9c6a118ee66",
  "lexical_observation_count": 92,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant26ac334b128bf45467354617ee5490aab647ed5c4de4df2d10b86840b3a1791b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83a62289001669d6a41dcc762f3dd9c6a118ee66`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant26ac334b128bf45467354617ee5490aab647ed5c4de4df2d10b86840b3a1791b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant26ac334b128bf45467354617ee5490aab647ed5c4de4df2d10b86840b3a1791b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.EllipticCurve.Affine.Point` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.EllipticCurve.Jacobian.Formula` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/macro.md) | 70 | `declaration-track:233ddbbb2d7f4687813b974989cabbf2ba3db19e2ff27e10f049fb85cc2acaff` |
| 2 | `def` | [neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/neg-source-edition-2.md) | 87 | `declaration-track:d1da7253a80d2e8ecfc9c4d7b50deda7ade6cbd0a35fe1f1ac56d038756ce6a7` |
| 3 | `lemma` | [neg_X](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/neg-x.md) | 90 | `result-track:9257572860392f2464111f87be4deb44610dc48414ccda4662a37a3b609c0ed5` |
| 4 | `lemma` | [neg_Y](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/neg-y.md) | 93 | `result-track:728fb73c7cef8def16a468cd86fb463e3fa85519241f20c60fe2e495700706e1` |
| 5 | `lemma` | [neg_Z](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/neg-z.md) | 96 | `result-track:ef14e2ba35bc6788877475cd0c3907af493cc00e575d440c2d626dd4574f4c69` |
| 6 | `lemma` | [neg_smul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/neg-smul.md) | 99 | `result-track:439201f37488b998a4e17fbd9d354fedb0a835e1891d3e84c1d47b6576d1d571` |
| 7 | `lemma` | [neg_smul_equiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/neg-smul-equiv.md) | 103 | `result-track:705ee2670b9a28ceaf82046ef45929b8a2206f06d1625610e7fe5e3d55d694cd` |
| 8 | `lemma` | [neg_equiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/neg-equiv.md) | 106 | `result-track:8af3af11b83a898d354d8789d22516d6eec5374bf45088060566b36c2d793468` |
| 9 | `lemma` | [neg_of_Z_eq_zero'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/neg-of-z-eq-zero.md) | 110 | `result-track:0050a43467f046598a477c075bd1ae1aeec7aa1cbce9d1332aa1453c88520c65` |
| 10 | `lemma` | [neg_of_Z_eq_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/neg-of-z-eq-zero-source-edition-2.md) | 113 | `result-track:2ab3ccc998b43b38a94713b2f6a0107459d39088120ea46f53cd496d9cc144c7` |
| 11 | `lemma` | [neg_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/neg-of-z-ne-zero.md) | 120 | `result-track:472fe9bf4d3f2ea16f5d9cb816d13da1af6e38b630a6b0ecb9832dad9d60462d` |
| 12 | `lemma` | [nonsingular_neg_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/nonsingular-neg-of-z-ne-zero.md) | 125 | `result-track:9e9268fab23784af7ef6b3b922b4723aa1824a737fd77c1ed75133c69041edac` |
| 13 | `lemma` | [nonsingular_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/nonsingular-neg.md) | 130 | `result-track:ae399535b76196cde022125139c8534fd4380355106838947f6d2e9872fcde15` |
| 14 | `lemma` | [addZ_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/addz-neg.md) | 137 | `result-track:e89e0d223b5fc46341e36945435ffa7765cad4c2834db861f6b92a4197da164f` |
| 15 | `lemma` | [addX_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/addx-neg.md) | 140 | `result-track:395ae03426e651a34a211168860454666dff3270e0ef7e4476e11043a4cbe0e2` |
| 16 | `lemma` | [negAddY_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/negaddy-neg.md) | 144 | `result-track:177a8eab1291cec803fd94c4f649310ec2401e8e16c5908eb353c6e9fa728cb6` |
| 17 | `lemma` | [addY_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/addy-neg.md) | 149 | `result-track:854d0543806ea7456a30db76c2659592421db73c199c4e08a15a24cc95882d53` |
| 18 | `lemma` | [addXYZ_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/addxyz-neg.md) | 153 | `result-track:969451811d5ab70563c5ad415e4d6637a3d7f9398e7c2cbebcf87c979f57aa46` |
| 19 | `def` | [negMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/negmap.md) | 163 | `declaration-track:8e127697d3319a1ed8a6f83473e5471a2650f89f26e3921f56f2245d060751b9` |
| 20 | `lemma` | [negMap_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/negmap-eq.md) | 166 | `result-track:e3b5a8479f80fc3279267d477c778ea26d8efe40458edfd7c173426c063774d7` |
| 21 | `lemma` | [negMap_of_Z_eq_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/negmap-of-z-eq-zero.md) | 169 | `result-track:82635ca3a0fe2fb47e00c3380ec364448d4cbd4d89fa98d1a63bda1ffe41356f` |
| 22 | `lemma` | [negMap_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/negmap-of-z-ne-zero.md) | 174 | `result-track:fd753d1bbfbc2d9aabbfa6d60775578d0f15cbd78dcfc35a70aa2a5ebc866fb7` |
| 23 | `lemma` | [nonsingularLift_negMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/nonsingularlift-negmap.md) | 178 | `result-track:c58be68a9467c7905625de3efc208b81870949b8c256ea1ec4b4cb246cda9fba` |
| 24 | `def` | [add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/add-source-edition-2.md) | 188 | `declaration-track:c5ef5f992f08ee57e700aec361914c7fd6b1e11c857a008504af6cd7e48e8628` |
| 25 | `lemma` | [add_of_equiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/add-of-equiv.md) | 191 | `result-track:fde31b8d45edefe329bbfaba1c0cf0442e49869903fae27b5410c33381182396` |
| 26 | `lemma` | [add_smul_of_equiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/add-smul-of-equiv.md) | 194 | `result-track:ff3714f89a2d2612e22c4ec272bde7dc2ca5b10424deac732a2bc70d44ee6a69` |
| 27 | `lemma` | [add_self](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/add-self.md) | 198 | `result-track:48316f20c1a9113a34db7b5392843d0e85e422c64fd9c84aab01beb493e3f64d` |
| 28 | `lemma` | [add_of_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/add-of-eq.md) | 201 | `result-track:292f2f7f2418055fc7ab42732213c4a00c4e34cdde4598099b90b543da73290a` |
| 29 | `lemma` | [add_of_not_equiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/add-of-not-equiv.md) | 204 | `result-track:d43ccc9b871b2c2f9b8fc5f333bdd9a190d6e58dc533c35494e940e0b77eb5cc` |
| 30 | `lemma` | [add_smul_of_not_equiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/add-smul-of-not-equiv.md) | 207 | `result-track:ba11a1e371cfc0236eb751c1cd3847b9bd1eb2769880589bdc5a9c3bcc33c1de` |
| 31 | `lemma` | [add_smul_equiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/add-smul-equiv.md) | 211 | `result-track:6626b6855d872df78b693b69deef8625ddaf2a4bf24d0108a976df983158176d` |
| 32 | `lemma` | [add_equiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/add-equiv.md) | 217 | `result-track:9baea4c27ae2ef7801cf776d2e9cd61ce0a866ce12f83811c4dd7a8da8239294` |
| 33 | `lemma` | [add_of_Z_eq_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/add-of-z-eq-zero.md) | 222 | `result-track:6e286c12105b34fbbc7cfb315180e1777b20f9b2a1178ac4f0af5510a5a5bf90` |
| 34 | `lemma` | [add_of_Z_eq_zero_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/add-of-z-eq-zero-left.md) | 226 | `result-track:33562fc139fe77e5cd4597ce22636cbf044c7304623952b708056a03659517d7` |
| 35 | `lemma` | [add_of_Z_eq_zero_right](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/add-of-z-eq-zero-right.md) | 230 | `result-track:4e445e851976b8a171d4f0faadc3c839d1f52d007da6df67e11bbe5455e9a59e` |
| 36 | `lemma` | [add_of_Y_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/add-of-y-eq.md) | 234 | `result-track:71e58595a076e3be28df3cc99dc379425d545db07e032f24bb7b7caaaebe3228` |
| 37 | `lemma` | [add_of_Y_ne](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/add-of-y-ne-source-edition-2.md) | 239 | `result-track:e94ef9656717bc53f6fd7d28453bc04bb52701eca8f534738e278380db522ac7` |
| 38 | `lemma` | [add_of_Y_ne'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/add-of-y-ne.md) | 244 | `result-track:a54f9ca38765dd5f65f275a32707b92260ccc7aebc9c2ad403e8354aa4e9181b` |
| 39 | `lemma` | [add_of_X_ne](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/add-of-x-ne.md) | 255 | `result-track:26aedb728bfe186cf4fd65387794d362915d91f0b7c7f6f7215484cb5acfc753` |
| 40 | `lemma` | [nonsingular_add_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/nonsingular-add-of-z-ne-zero.md) | 264 | `result-track:06539814ea976dcc388849dc0ae19beadc455125415edd55c86ad59a28db8723` |
| 41 | `lemma` | [nonsingular_add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/nonsingular-add.md) | 274 | `result-track:f3ec367262fd3da00a41878e25a63fcff0989f0cde4f42e3ff233709ea826c81` |
| 42 | `def` | [addMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/addmap.md) | 303 | `declaration-track:deba65b9b4b89d61a972441862b9d3af8ca2656747d99a23105aa87da372a8d5` |
| 43 | `lemma` | [addMap_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/addmap-eq.md) | 306 | `result-track:732eac11e2706399800fbf945170aafe8631eeca8f178c597a46390912445086` |
| 44 | `lemma` | [addMap_of_Z_eq_zero_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/addmap-of-z-eq-zero-left.md) | 309 | `result-track:c8f91b60218f85907210bc0f1ab4e21bd814da9c81408692e0264e12b7fc2874` |
| 45 | `lemma` | [addMap_of_Z_eq_zero_right](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/addmap-of-z-eq-zero-right.md) | 320 | `result-track:83f0e209b5dd6f9f8ec5f1f978356e6580410ef33d2aac0518b375bcbdb9bab0` |
| 46 | `lemma` | [addMap_of_Y_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/addmap-of-y-eq.md) | 331 | `result-track:63a39f4be013f19cfaa23a47c8abec1c7fa2c923390cc20edd28fcb859736e13` |
| 47 | `lemma` | [addMap_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/addmap-of-z-ne-zero.md) | 340 | `result-track:0801fba0a70548408b4149d06113c3608805d89a48be9c7a0374350be4d33a5f` |
| 48 | `lemma` | [nonsingularLift_addMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/nonsingularlift-addmap.md) | 353 | `result-track:5d9a7f328451e0a68a1680b225d38fcc792dbb38fc56404babbc70f5e8464a2b` |
| 49 | `structure` | [Point](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/point.md) | 363 | `declaration-track:bf61d9af8f20a642f4370d523ffb26fc4a6104d0f77d733d5c416f87152ddcde` |
| 50 | `lemma` | [mk_point](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/mk-point.md) | 371 | `result-track:462272b3022888379c209b3d013ef0df5f4f7a7954b36755b9e30613efd8e9e6` |
| 51 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/instance-source-edition-4.md) | 374 | `declaration-track:f408deb88fa0ba9a3f65382ec3ad3ceae09f310bb27605d16edfc1bd23ae8c29` |
| 52 | `lemma` | [zero_def](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/zero-def.md) | 377 | `result-track:b3051955e2267d13ad5f36c7566a882b0ced39f9fcd7da4ce7ace41ef911470f` |
| 53 | `lemma` | [zero_point](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/zero-point.md) | 380 | `result-track:62195dce9bf06dbd299c1147d92200236a9d056debf8955a48649d1ef5bd253b` |
| 54 | `lemma` | [mk_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/mk-ne-zero.md) | 383 | `result-track:03c0029556170c9d8fdef630432d88ce43b3bdf97543101365e0263fd0c06c24` |
| 55 | `def` | [fromAffine](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/fromaffine.md) | 388 | `declaration-track:74d0e1763a4cb4220afee3bd8fc67b9b02175c954ccc3fbd7f97763d32b3ebcb` |
| 56 | `lemma` | [fromAffine_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/fromaffine-zero.md) | 392 | `result-track:daaa6a380d4c883a5d1e110eb413aad5e7daebf4ad35124360a0e72c2a386933` |
| 57 | `lemma` | [fromAffine_some](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/fromaffine-some.md) | 395 | `result-track:8c128d9949af9ca3c6457f70eaf61b9ba3288746c4da2908a2fc63f660fafc4b` |
| 58 | `lemma` | [fromAffine_some_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/fromaffine-some-ne-zero.md) | 399 | `result-track:b99cf3af66dd96648502b5bb7baaa3759e623c80a933482c9696bcbf4fd166f7` |
| 59 | `def` | [neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/neg.md) | 408 | `declaration-track:5787c606af43431658d51130c6088fb2fadf3a6cc851ed30ba940d2276c06f81` |
| 60 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/instance-source-edition-3.md) | 411 | `declaration-track:5429737f0a27814ca00545e234c3ac9cc56c55a756883c574ff6db37964d3634` |
| 61 | `lemma` | [neg_def](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/neg-def.md) | 414 | `result-track:5ecd79a72d5863f967e0efdd541d303436ad1e430bd2345e77dd82f5e6ee2171` |
| 62 | `lemma` | [neg_point](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/neg-point.md) | 417 | `result-track:22f40e2e06857c0b708baa5d597d4ba380f2440cb6c94aa070663c779d6d8c31` |
| 63 | `def` | [add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/add.md) | 423 | `declaration-track:361a3961cd67a0077020abf3edd7d6218664e5222269533a4ddd75207186165f` |
| 64 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/instance.md) | 426 | `declaration-track:19cbb413610b30ae80062e26a2dcaead25c05510dadefc13df4a080791ae4843` |
| 65 | `lemma` | [add_def](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/add-def.md) | 429 | `result-track:3b619b8873ae6224e8319cf1d594c6cbb4c65fdfde45daaa91533bac49ea3ba7` |
| 66 | `lemma` | [add_point](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/add-point.md) | 432 | `result-track:b7c57f23ed759644b5ac0019967321acb120e5685805a968db224201431a81ec` |
| 67 | `def` | [toAffine](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/toaffine.md) | 441 | `declaration-track:711ad6f13bdceb0b0a508f3f75df583c291bb138e0db56147194c8638c074a6b` |
| 68 | `lemma` | [toAffine_of_singular](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/toaffine-of-singular.md) | 444 | `result-track:2d636f57d23fa1d1c9b69aea6573e7d8b4b6375eeabe2104d050cac75eb993cf` |
| 69 | `lemma` | [toAffine_of_Z_eq_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/toaffine-of-z-eq-zero.md) | 447 | `result-track:ff9982cac54c6cef064731734b17f9fe13658909caa918426847d913909b9c41` |
| 70 | `lemma` | [toAffine_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/toaffine-zero.md) | 450 | `result-track:2e6741008c07fbea68b162fe3341c073c9b769be7046da3e59a814749f09fcd7` |
| 71 | `lemma` | [toAffine_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/toaffine-of-z-ne-zero.md) | 453 | `result-track:daae7f410e0bfd1b1d49249b1af94cedc245898d60b56a6f7b33cba02074da90` |
| 72 | `lemma` | [toAffine_some](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/toaffine-some.md) | 457 | `result-track:8546cccc66e2e813879d6e994094128674638bf7897759e9aeb023fa2e475e8d` |
| 73 | `lemma` | [toAffine_smul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/toaffine-smul.md) | 461 | `result-track:881873fb66ee08605151f8d50327f31ae373b344b84ae29d202d1ebc563163f2` |
| 74 | `lemma` | [toAffine_of_equiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/toaffine-of-equiv.md) | 471 | `result-track:eafc9d84fba89f4724419955d7f67512d186a1799ef593dbf35bbcf5c70c9446` |
| 75 | `lemma` | [toAffine_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/toaffine-neg.md) | 475 | `result-track:f12919373086b41a9ffe6d311b973e9a1f4cc5126b5ec913a33e140d5619d7bb` |
| 76 | `lemma` | [toAffine_add_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/toaffine-add-of-z-ne-zero.md) | 485 | `result-track:407ff15e004911baedc3fe75f399c0d0eaefd0852ddaa176a0eeac80d2aa9a2b` |
| 77 | `lemma` | [toAffine_add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/toaffine-add.md) | 497 | `result-track:7382209730ab06a661f92ea965c70523faedb6aee50c24258d5e21c44c8eb021` |
| 78 | `def` | [toAffineLift](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/toaffinelift.md) | 529 | `declaration-track:186d2624e2492a716843a41ffd3b66fcd697dd2bd200e79e45f867b4653cb52a` |
| 79 | `lemma` | [toAffineLift_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/toaffinelift-eq.md) | 532 | `result-track:c08b9dc0a940333233bb33928a33b9ebd8abd3e3af3d540e9665a44f95fa78e3` |
| 80 | `lemma` | [toAffineLift_of_Z_eq_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/toaffinelift-of-z-eq-zero.md) | 536 | `result-track:3ccd0dfbea633dbe90c900e627ae7e9ab6906fbd38a5788d0c7c857e4a2def45` |
| 81 | `lemma` | [toAffineLift_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/toaffinelift-zero.md) | 540 | `result-track:71db97612ab6aa4e3fd2d6a7d45b2500641aae5c5e3f888745bc819cfb092190` |
| 82 | `lemma` | [toAffineLift_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/toaffinelift-of-z-ne-zero.md) | 543 | `result-track:bbb4c8806eb0af2d464fcb4978b1acd427dbe9a2570e262e8ee7339b0a582d0c` |
| 83 | `lemma` | [toAffineLift_some](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/toaffinelift-some.md) | 547 | `result-track:b468d875d927de51da468ea82c665d3b1ce4ffe4298c65135a1e3f1ceca3f0e0` |
| 84 | `lemma` | [toAffineLift_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/toaffinelift-neg.md) | 551 | `result-track:de8ddd4974c0d5936e25e8826f0b4a4eaafb786194cc9fe4b4f10327350c1b7b` |
| 85 | `lemma` | [toAffineLift_add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/toaffinelift-add.md) | 555 | `result-track:fce398135cef9bd3641ce90defb855cadadb9f5bbab8dec75001d71605a74ff4` |
| 86 | `def` | [toAffineAddEquiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/toaffineaddequiv.md) | 564 | `declaration-track:6eb38aa3970a9d167c4d79c7becdb92ba9b341800cec1cc5f7eeac50b122e58d` |
| 87 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/instance-source-edition-2.md) | 580 | `declaration-track:3aea0bd4e7a89ed9a2743ef84591ca705845a00f6b8e2de1e24117a843862098` |
| 88 | `lemma` | [map_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/map-neg.md) | 597 | `result-track:05c2bda18c230c584578120ec002132c58e823d369bff558aa115a4efe0d6e66` |
| 89 | `lemma` | [map_add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/map-add.md) | 603 | `result-track:2816b2d29dd4cac9ab84173d0d7cd1a5e92cf6f025bd3943ca654353f71c96e5` |
| 90 | `lemma` | [baseChange_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/basechange-neg.md) | 609 | `result-track:f24334eb1519cf785c9b59aa0ecdc31d5ba5159a6ff05177b0d9eb381982a011` |
| 91 | `lemma` | [baseChange_add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/basechange-add.md) | 614 | `result-track:96a4975ca196ad1ee88996585dc6a9f96bfeb363eb436eb27871e0e9cbdc2441` |
| 92 | `abbrev` | [Affine.Point.toJacobian](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianPoint.lean/declarations/affine-point-tojacobian.md) | 625 | `declaration-track:c8f103d997971fd71bec5512c62aa2673b274fbaac7a6edd9333cb13c335bc2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3799650918a7997f53ae63da074a21a01279def3c5ab89c40418363f3779be62 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant26ac334b128bf45467354617ee5490aab647ed5c4de4df2d10b86840b3a1791b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant26ac334b128bf45467354617ee5490aab647ed5c4de4df2d10b86840b3a1791b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
