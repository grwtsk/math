# Verification target: Order Lattice Group Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fe9c8ce1df074e3d9f9ebf176774ca61c4118bb",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variant5b6aa795b98979676906801f932632f46032077bfd00afa6e74516c3a5d81d73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fe9c8ce1df074e3d9f9ebf176774ca61c4118bb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variant5b6aa795b98979676906801f932632f46032077bfd00afa6e74516c3a5d81d73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variant5b6aa795b98979676906801f932632f46032077bfd00afa6e74516c3a5d81d73.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Abs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Invertible` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Closure` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/mul-sup.md) | 86 | `result-track:86c4dad29fb1e274bedc03a6540a973da9e07ce753651d5c30cb0ba8e6eccd92` |
| 2 | `theorem` | [sup_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/sup-mul.md) | 92 | `result-track:c81252ee35e9b957d14addc0e786b63a123cd6dd40aea918b2bcabeef3f7b892` |
| 3 | `theorem` | [mul_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/mul-inf.md) | 99 | `result-track:77c81520c3ee4849a11bce4d9e156a9d3f293cb45fee5d20d9eba645c2fbc665` |
| 4 | `theorem` | [inf_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/inf-mul.md) | 105 | `result-track:d9771b9d3777e54fcadd2f95f4e7575715c08dc78377a695707ab0fd637bb1f9` |
| 5 | `theorem` | [inv_sup_eq_inv_inf_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/inv-sup-eq-inv-inf-inv.md) | 114 | `result-track:1257f871d306a67236aef085ae0897c0688704caea3455eb412fc2fd9509b08b` |
| 6 | `theorem` | [inv_inf_eq_sup_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/inv-inf-eq-sup-inv.md) | 123 | `result-track:63538523ebd2bde9cb3f8804d51f23293088c48a1958b3edee2f7794c40bc495` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/instance-source-edition-2.md) | 140 | `declaration-track:8d886e6f7723fb463aeca76c72174d1010bf500971b2ad40645b5ad299717376` |
| 8 | `theorem` | [m_pos_part_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/m-pos-part-def.md) | 146 | `result-track:2821d4ca6624e96a1b65b0b5e7af02628a4952cf8ed4a2f5971449399cfa8e3e` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/instance.md) | 159 | `declaration-track:2007a1ee52bbee1e502d75cdaf203fb1033211c17cea74d409122bf36c30f55a` |
| 10 | `theorem` | [m_neg_part_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/m-neg-part-def.md) | 165 | `result-track:46bd815fc7b0146d88a529dc5627cd3f83614c93f20f5655379238547f397c26` |
| 11 | `theorem` | [pos_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/pos-one.md) | 171 | `result-track:2d2126af48f3d8585d3eb663b5b8b0c6e116063fd5feff767b3783f4775fafb3` |
| 12 | `theorem` | [neg_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/neg-one.md) | 177 | `result-track:52baf05d08fd45301e0d07967ba57bf2f707f81c9556b47faaea2068db40d781` |
| 13 | `theorem` | [neg_eq_inv_inf_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/neg-eq-inv-inf-one.md) | 183 | `result-track:a2b7460e08a527cc4ce670b7c42d0094b94f1d2e48a213dcb9f213ab97d4308b` |
| 14 | `theorem` | [le_mabs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/le-mabs.md) | 191 | `result-track:7819cb802df72c1a026210146a9169dce63583c20fc7355a4b3be074c49f89d6` |
| 15 | `theorem` | [inv_le_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/inv-le-abs.md) | 198 | `result-track:564030a799b8fa05407be0b286f4e7334d7ac8ab58fc134e48187b260203b78d` |
| 16 | `theorem` | [abs_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/abs-inv.md) | 204 | `result-track:46f4eb33185be721be93afa32a16eee8bdff305f39e94d43b594de1db7d5e341` |
| 17 | `theorem` | [one_le_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/one-le-pos.md) | 210 | `result-track:88c957977127217d127bd2f52c0d6cd918ae807697c668618cbac3c64de7e80a` |
| 18 | `theorem` | [one_le_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/one-le-neg.md) | 217 | `result-track:9fe670659d89807a1b5bebd52b7e4e31983530e9350f0862579ca01c3fe56f0b` |
| 19 | `theorem` | [pos_le_one_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/pos-le-one-iff.md) | 224 | `result-track:126f0eb2a4e60be4d8b281eed6e8b9c2ff59196d809b3e085f30331e14109b7e` |
| 20 | `theorem` | [neg_le_one_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/neg-le-one-iff.md) | 231 | `result-track:c2c9f9c8cc7adadb257cea9471df8b430af0d6bff1cfe6d5182a347beaec7197` |
| 21 | `theorem` | [pos_eq_one_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/pos-eq-one-iff.md) | 237 | `result-track:9f0156a0bd86d510f2566392635bc18ebb3642b752f029c766a129de1c2e723d` |
| 22 | `theorem` | [neg_eq_one_iff'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/neg-eq-one-iff.md) | 243 | `result-track:37d351b725f73e2ce2e8db92aa2279007e7ded07959eb88b78782875db2a4224` |
| 23 | `theorem` | [neg_eq_one_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/neg-eq-one-iff-source-edition-2.md) | 249 | `result-track:b53f6d6cb4e008cb2db562151f9419c2675cd9f9ccbd3496540be4b12c54b7b5` |
| 24 | `theorem` | [m_le_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/m-le-pos.md) | 255 | `result-track:3c2151fd5b0ccbb9949bc4a409fa28062281ea77ae52c56a0c15b0b54bfe36fb` |
| 25 | `theorem` | [inv_le_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/inv-le-neg.md) | 262 | `result-track:0f21b534550a975a8d8114ea88f340278476b5599c5dd221e07d5833a82d8d3b` |
| 26 | `theorem` | [neg_eq_pos_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/neg-eq-pos-inv.md) | 270 | `result-track:7f94c7840e79c62f5bb29dbb1f367d3358b914c94df91639255a6c41217ae5a5` |
| 27 | `theorem` | [pos_eq_neg_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/pos-eq-neg-inv.md) | 277 | `result-track:b3047c1a936dcf3715b4928c610cb7f44accbb92321fe1ba8960b0b99413a4f3` |
| 28 | `theorem` | [mul_inf_eq_mul_inf_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/mul-inf-eq-mul-inf-mul.md) | 284 | `result-track:b1853187a82812b1476c9faeeb6dd0ede40f1e3de3b62071c2422bf2e1a76dac` |
| 29 | `theorem` | [pos_div_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/pos-div-neg.md) | 298 | `result-track:d696410d63f59af60941dc82fcc808617f827914f55588a22f8f248c41ff6f7d` |
| 30 | `theorem` | [pos_of_one_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/pos-of-one-le.md) | 309 | `result-track:ddc76cd29bc2c43c10cdd04ca8fd64ccb7417a3c4c1a3c0c0389349b9b071ec7` |
| 31 | `theorem` | [pos_of_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/pos-of-le-one.md) | 318 | `result-track:8acf4f88dab2f639016357f1ac64b8900be836b58e76e44328d071c3588fd22b` |
| 32 | `theorem` | [neg_of_one_le_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/neg-of-one-le-inv.md) | 324 | `result-track:2e2eeb43e6df2bb76746c76691374d4f5784c56ab5974793d00df98e5208c8dc` |
| 33 | `theorem` | [neg_of_inv_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/neg-of-inv-le-one.md) | 332 | `result-track:4fa42eaba2f6bd3e0babb27367233b2ce4eda4cdb373e0000757b1aca7304e3b` |
| 34 | `theorem` | [neg_of_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/neg-of-le-one.md) | 339 | `result-track:9efa4de9a7a5af2008a2fbc1eec4c5638af3aeb82e2e8aec1eea668e0b1a712b` |
| 35 | `theorem` | [pos_eq_self_of_one_lt_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/pos-eq-self-of-one-lt-pos.md) | 346 | `result-track:e44cef4a7423dc2a93e84934a223ba9478d78f4937356e0d9c3b40335e24ea84` |
| 36 | `theorem` | [neg_of_one_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/neg-of-one-le.md) | 356 | `result-track:34bc0eae3e055557e9f19f9fe587fae3d50263d3d5c2ddcb3e0522f71381620c` |
| 37 | `theorem` | [mabs_of_one_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/mabs-of-one-le.md) | 363 | `result-track:f48f639cea66fd0a17b8a5665ee8f852fe4df25cd0a2947cf1c38a4ba46524d7` |
| 38 | `theorem` | [abs_div_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/abs-div-comm.md) | 370 | `result-track:666a98b0484d8ce4fb154c38a3a822bbf7546ca76222d40e64f8656d301d2c14` |
| 39 | `lemma` | [pow_two_semiclosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/pow-two-semiclosed.md) | 379 | `result-track:bcf0737699d2de0ade6a08731b1335371ee1890d3806eecd9e7e1e0db813a8dc` |
| 40 | `theorem` | [one_le_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/one-le-abs.md) | 390 | `result-track:97d0bb468cba1931bfd0f7c32fd292e8bb1524d8f1acba805942525e917e1fdc` |
| 41 | `theorem` | [pos_mul_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/pos-mul-neg.md) | 400 | `result-track:503ea15864b92c87c11b9849a228cca178d1a2521000855f1db818e8730512ad` |
| 42 | `theorem` | [m_pos_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/m-pos-abs.md) | 410 | `result-track:c990b19acfc6d0708ec40c81491f7162b1cd230b6c21c07f80b9871b29ea264d` |
| 43 | `theorem` | [m_neg_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/m-neg-abs.md) | 419 | `result-track:9bb9938a97983504bfaa586760b8babde8f1cf9c19cdcef6fbe5c7b2ae946dee` |
| 44 | `theorem` | [sup_div_inf_eq_abs_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/sup-div-inf-eq-abs-div.md) | 430 | `result-track:d66d5e9b06c6473465b1c1556fb7d05bb3e72b8e0910f186def38db81abd01f1` |
| 45 | `theorem` | [mabs_mabs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/mabs-mabs.md) | 451 | `result-track:2608320af27dcc639319a3b0bb7fcf2f75a2a58fd2226b03afa09cccc5c7f7c7` |
| 46 | `theorem` | [pos_inf_neg_eq_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/pos-inf-neg-eq-one.md) | 460 | `result-track:071e6f293d4b85686d839315a8e9635be75bb2d728350adc0fd4cdd738cd7ba9` |
| 47 | `theorem` | [inf_mul_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/inf-mul-sup.md) | 478 | `result-track:279bb000a0cfbb3659bd97e8043ec2710c0115d24f17046bf5f079148f4f157d` |
| 48 | `theorem` | [sup_eq_mul_pos_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/sup-eq-mul-pos-div.md) | 494 | `result-track:ac36e71ac78da6ef351e0f860d08d1dd5b7db867acdc8f1f0caa28b2ba375c95` |
| 49 | `theorem` | [inf_eq_div_pos_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/inf-eq-div-pos-div.md) | 505 | `result-track:4f9d8918a5c03566c454c23f9ac327fcbdeaaec3eb88253dc05b6a4e00cfd7fc` |
| 50 | `theorem` | [m_le_iff_pos_le_neg_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/m-le-iff-pos-le-neg-ge.md) | 522 | `result-track:c28055f4abf6eec3f22ab01f25736038e7b8faf772c63049bb718dd5f56e0e4f` |
| 51 | `theorem` | [sup_sq_eq_mul_mul_abs_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/sup-sq-eq-mul-mul-abs-div.md) | 536 | `result-track:b8e9b8f8b1475c2b47d0aaafb4e39b9b98e5de3ffa86d06e53933c5e0a7dc084` |
| 52 | `theorem` | [inf_sq_eq_mul_div_abs_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/inf-sq-eq-mul-div-abs-div.md) | 545 | `result-track:b22bc345e32205aa5cd3eb2d00bd8bd23e66811a439427ac8ec7f3030f7b5513` |
| 53 | `def` | [latticeOrderedCommGroupToDistribLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/latticeorderedcommgrouptodistriblattice.md) | 556 | `declaration-track:7398b4a79294fee1c45eac5770276825644763dc48c1a1cc1c262f023d47d757` |
| 54 | `theorem` | [abs_div_sup_mul_abs_div_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/abs-div-sup-mul-abs-div-inf.md) | 581 | `result-track:ddc3cd71aad611d1f682c0f170a8a158b134016417335a4a930118c0ae1ebe21` |
| 55 | `theorem` | [mabs_sup_div_sup_le_mabs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/mabs-sup-div-sup-le-mabs.md) | 603 | `result-track:4d4cdc503433a12fac2a4c19a0803eab56c747ab11b638e825c1be4742fb1a90` |
| 56 | `theorem` | [mabs_inf_div_inf_le_mabs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/mabs-inf-div-inf-le-mabs.md) | 612 | `result-track:b305dae9d6bb83d5eb856cf7bca83534e93e3b449f7f6c182f75b3394ec639d6` |
| 57 | `theorem` | [m_Birkhoff_inequalities](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/m-birkhoff-inequalities.md) | 624 | `result-track:5b0da5d95c91c4061b8f6561ab80ec244086def941e247b9170239f222593489` |
| 58 | `theorem` | [mabs_mul_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/mabs-mul-le.md) | 636 | `result-track:4a16889a027fa6a910c61c7a317dd4b51491998989144c8d740e1dc1744279c9` |
| 59 | `theorem` | [abs_abs_div_abs_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/abs-abs-div-abs-le.md) | 646 | `result-track:2a0fee5664b604a52f310c1dee1905ee40501ef443cc09610a814f884e298f99` |
| 60 | `lemma` | [inf_eq_half_smul_add_sub_abs_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/inf-eq-half-smul-add-sub-abs-sub.md) | 667 | `result-track:3f4fc95743232497d20a631b20b61c9872dc35c9bf8a8400217462623bf27436` |
| 61 | `lemma` | [sup_eq_half_smul_add_add_abs_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/sup-eq-half-smul-add-add-abs-sub-source-edition-2.md) | 672 | `result-track:5df2575c73601d287d8aa82802b766d3b2349f893a55def4a64a6484f46ba98e` |
| 62 | `lemma` | [inf_eq_half_smul_add_sub_abs_sub'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/inf-eq-half-smul-add-sub-abs-sub-source-edition-2.md) | 685 | `result-track:40437f4f1093be3132457b62a9703d2c32caf8791d86aac3a29f4a140d7552ae` |
| 63 | `lemma` | [sup_eq_half_smul_add_add_abs_sub'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/sup-eq-half-smul-add-add-abs-sub.md) | 689 | `result-track:5285099e509c0428bf3390b62124bb600bf55d887ec26784e33fac30c9801da2` |
| 64 | `def` | [IsSolid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/issolid.md) | 703 | `declaration-track:92568e1a88cf3cdd8e40b91f60cc3abe120646dc10612faa2c20da3b48b39cb9` |
| 65 | `def` | [solidClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/solidclosure.md) | 707 | `declaration-track:342c75782f996edd13eadcbb1ea5cb4f4fd6be27c12f35d1516b25b4e1210605` |
| 66 | `theorem` | [isSolid_solidClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/issolid-solidclosure.md) | 710 | `result-track:354be99357312302315a584154de77c47968a3dbe5da66b6dab2831b383690b6` |
| 67 | `theorem` | [solidClosure_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderLatticeGroupNamespaced.lean/declarations/solidclosure-min.md) | 714 | `result-track:25cb06195a678dfa08ccc554d6d6522103a7028d8dfee6805b43f9e540d2b2b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e65fe7ca7d0df8de50dc31db7c26ab20d147d6925ebefa3679c8eb818da6bcca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variant5b6aa795b98979676906801f932632f46032077bfd00afa6e74516c3a5d81d73.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LatticeGroup/Variant5b6aa795b98979676906801f932632f46032077bfd00afa6e74516c3a5d81d73.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
