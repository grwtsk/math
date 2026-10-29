# Verification target: Antisymmetrization Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "321146824760e038348ab6c33bc5396a29b297c2",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Antisymmetrization/Variant868b84a505563f5b94921ddb6b841aceae5278127907493e99f807edfe42ce1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `321146824760e038348ab6c33bc5396a29b297c2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Antisymmetrization/Variant868b84a505563f5b94921ddb6b841aceae5278127907493e99f807edfe42ce1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Antisymmetrization/Variant868b84a505563f5b94921ddb6b841aceae5278127907493e99f807edfe42ce1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Relation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Tauto` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AntisymmRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/antisymmrel.md) | 44 | `declaration-track:273d34a6663e39c82a4930b415d1fa80838609511bba1c7f46aaaea597cd9669` |
| 2 | `theorem` | [antisymmRel_swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/antisymmrel-swap.md) | 47 | `result-track:b37cc4446302405fc79a03db9f0f3e3a4b0c4748cee6779d17e5397b5a4949e8` |
| 3 | `theorem` | [antisymmRel_swap_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/antisymmrel-swap-apply.md) | 50 | `result-track:ccbf57ddbec5f9e9b0c72ee700f4ecdbb2971836ca99b6f16dda489e0aebe4dc` |
| 4 | `theorem` | [AntisymmRel.refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/antisymmrel-refl.md) | 54 | `result-track:705564392d34cc1ffc09487d6c67d5f598a4f0e3da50342a6678824de6335dec` |
| 5 | `lemma` | [AntisymmRel.rfl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/antisymmrel-rfl.md) | 61 | `result-track:28f156b41f2ef6d03f2515332455b26400a264ca0b5ed3b126f67b2e2e0b97df` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/instance-source-edition-10.md) | 63 | `declaration-track:c57127fc3969b2c687bcd732e4d8b636aace6e22d85723412f76d83644089fa3` |
| 7 | `theorem` | [AntisymmRel.of_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/antisymmrel-of-eq.md) | 68 | `result-track:d3e197fe118fc6595a787cec41c26d8582a89a6ae33acbe96b8c84dda77369e3` |
| 8 | `theorem` | [AntisymmRel.symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/antisymmrel-symm.md) | 72 | `result-track:88973ed28a1ef247575b10983dd527a7879573566dbd3996ddc3c03f88bb013b` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/instance-source-edition-3.md) | 75 | `declaration-track:4956d47fd45c1b5d33a0e16159e373fb0c95c3743bbca9f0b41ee59b865d7b04` |
| 10 | `theorem` | [antisymmRel_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/antisymmrel-comm.md) | 78 | `result-track:775a05920e97f10b46f3de2f9948e8346ec5b6e84cf018f61300920efaf953c8` |
| 11 | `theorem` | [AntisymmRel.trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/antisymmrel-trans.md) | 82 | `result-track:90c5cc6f1f0b0a0bee6aa5f53835dbca3569edf237aca6a85890abd1829efcda` |
| 12 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/instance-source-edition-7.md) | 86 | `declaration-track:8fcd6725f7d1895ead41922b3a33bc0a6ded15320d3845bdaa1d958f212dbc56` |
| 13 | `instance` | [AntisymmRel.decidableRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/antisymmrel-decidablerel.md) | 89 | `declaration-track:6c6e6500cf5e6da250d1324c1f2df810ece4f49514374b1b6d7fd6fc2c142b7d` |
| 14 | `theorem` | [antisymmRel_iff_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/antisymmrel-iff-eq.md) | 93 | `result-track:3816f1df02acfa33b5e4b1b48aafbb09c2e323538026400784f9b148547a8555` |
| 15 | `theorem` | [AntisymmRel.le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/antisymmrel-le.md) | 104 | `result-track:f72f68f5e6c4c58855dc13ee223b22f72cbd94240ee5792ad4cfbc8282e619a0` |
| 16 | `theorem` | [AntisymmRel.ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/antisymmrel-ge.md) | 105 | `result-track:56518e6345f2f1b163ecaba451825feedd85f5ca5ce7b8c67dffdb42f753b517` |
| 17 | `def` | [AntisymmRel.setoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/antisymmrel-setoid.md) | 115 | `declaration-track:f0d12f3f4ae4827799df0c2be82be8e3b32746a7dce3ec8d5e730ddc0f5b54de` |
| 18 | `def` | [Antisymmetrization](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/antisymmetrization.md) | 120 | `declaration-track:90a50c8efcc7c231b267efeb13ec23111af6b09070c9bc7d49cb0cc533eea007` |
| 19 | `def` | [toAntisymmetrization](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/toantisymmetrization.md) | 126 | `declaration-track:f19fcdcb3ae1acc9a6b816651eb00f2c0fef1ef4bafa946acb9319ac96aea600` |
| 20 | `def` | [ofAntisymmetrization](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/ofantisymmetrization.md) | 130 | `declaration-track:cff5a55533671e012749cfa424df286720a05018cfbc3697d8eb91d8a9008e1d` |
| 21 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/instance-source-edition-5.md) | 133 | `declaration-track:6c9966ab7b902d3e3dab44eecb24cb4993b797b02d482dd89df19d45180db5d0` |
| 22 | `theorem` | [Antisymmetrization.ind](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/antisymmetrization-ind.md) | 137 | `result-track:2c0d5237107cbc791e61f3d7a53a790b20aa16c03072ddbdec42e6739213f666` |
| 23 | `theorem` | [Antisymmetrization.induction_on](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/antisymmetrization-induction-on.md) | 142 | `result-track:1dcaf23d63762657e9f6055eb16d5d9265629bc33a4715383a7df2fb7e99d413` |
| 24 | `theorem` | [toAntisymmetrization_ofAntisymmetrization](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/toantisymmetrization-ofantisymmetrization.md) | 147 | `result-track:151ed9cef3fab222311f241133ee2be7c7dfb82326882579a67db9ff7068767b` |
| 25 | `theorem` | [le_iff_lt_or_antisymmRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/le-iff-lt-or-antisymmrel.md) | 157 | `result-track:ce78308986609a676d92d4402a89ad7bdb77291210af542d0a8d405187df595b` |
| 26 | `theorem` | [le_of_le_of_antisymmRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/le-of-le-of-antisymmrel.md) | 161 | `result-track:607f73f57bb5636e7fd16fc60e3fe7b6dc3c40afb3ea692592285b1735620ee9` |
| 27 | `theorem` | [le_of_antisymmRel_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/le-of-antisymmrel-of-le.md) | 164 | `result-track:70175b7d5109620df844b31120d67e78cd3838fa5cd1b7c8358e8c57596d258e` |
| 28 | `theorem` | [lt_of_lt_of_antisymmRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/lt-of-lt-of-antisymmrel.md) | 167 | `result-track:40e1c0f038787a87b09e2aef8578c331ec48ba7264eaaf59dac69b0ca5ead037` |
| 29 | `theorem` | [lt_of_antisymmRel_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/lt-of-antisymmrel-of-lt.md) | 170 | `result-track:6f651d0a51a926d1a431d0ad4e822259fb9dc07d9fb9b3589e2713b14954af10` |
| 30 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/instance.md) | 179 | `declaration-track:1c71d0bd00247180b905b8de7f6e35ff03cfafa5841bdcdf496a911ef723b4fa` |
| 31 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/instance-source-edition-11.md) | 182 | `declaration-track:d6cbda34c56ae91e6fc533c30567d0924a5a48db074f0012cd90fe6fbcceb003` |
| 32 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/instance-source-edition-9.md) | 185 | `declaration-track:b1c020b169ba805de28de619e7f2ce18bcc94237f0f899c5a2695564fed8ad68` |
| 33 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/instance-source-edition-2.md) | 188 | `declaration-track:3f77e27267895279276ccd5abc6766a72efe3a302236f6c8d0eeea0478150f84` |
| 34 | `theorem` | [AntisymmRel.le_congr](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/antisymmrel-le-congr.md) | 191 | `result-track:b102d0c2b448dd36a7f12bc02b97d9f3ef90a0d36454fc556bd5827a87cf2ea4` |
| 35 | `theorem` | [AntisymmRel.le_congr_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/antisymmrel-le-congr-left.md) | 196 | `result-track:ab1fb417f0cc96d8f14508680bc94f99fa9276c808b3e59a3ccf0aad78afd758` |
| 36 | `theorem` | [AntisymmRel.le_congr_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/antisymmrel-le-congr-right.md) | 199 | `result-track:b884c8fb81fcec9cd7ab50475e0d4a4161cb844e2676f86b461bf91c46f22c60` |
| 37 | `theorem` | [AntisymmRel.lt_congr](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/antisymmrel-lt-congr.md) | 202 | `result-track:e4ace11f18e7855fa2f020b891f2435af53e2e98cd2e94c55411b849fc638509` |
| 38 | `theorem` | [AntisymmRel.lt_congr_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/antisymmrel-lt-congr-left.md) | 207 | `result-track:997454ba9c90e311cd9901bdd356c0b194a29f769503fe57720c53ca1bc42159` |
| 39 | `theorem` | [AntisymmRel.lt_congr_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/antisymmrel-lt-congr-right.md) | 210 | `result-track:972709052ccdb4777d02e86f795d5ca8912c42edd1116fbc5f8d3ebb630c6634` |
| 40 | `theorem` | [AntisymmRel.antisymmRel_congr](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/antisymmrel-antisymmrel-congr.md) | 213 | `result-track:63d68ee72865712d804b61148b5587f9e6c10e2f1520065f3709d7bde316215f` |
| 41 | `theorem` | [AntisymmRel.antisymmRel_congr_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/antisymmrel-antisymmrel-congr-left.md) | 218 | `result-track:4c15efaf96af862aedff47d1e67ecf517663d69a6991ac861c5201fd3819b150` |
| 42 | `theorem` | [AntisymmRel.antisymmRel_congr_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/antisymmrel-antisymmrel-congr-right.md) | 222 | `result-track:5e0643a2205fbf79f63bed449dc915c44d4f3e8e2348002ddd48abf71296db33` |
| 43 | `theorem` | [AntisymmRel.image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/antisymmrel-image.md) | 226 | `result-track:826d1823711d111b87c0a7bcf01b561829085b6f38d742a4ef2ce3f0d9ab9748` |
| 44 | `instance` | [instPartialOrderAntisymmetrization](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/instpartialorderantisymmetrization.md) | 230 | `declaration-track:e8c719c43cfad14ffff370510a140cd7fcd747b0f89f01894a475697b1a7fb6b` |
| 45 | `theorem` | [antisymmetrization_fibration](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/antisymmetrization-fibration.md) | 243 | `result-track:76c5a5dcdceee3602c813fe81b07c4089d5537cfe0329aac1cf4c3082593bd2e` |
| 46 | `theorem` | [acc_antisymmetrization_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/acc-antisymmetrization-iff.md) | 248 | `result-track:56b32a88bb78ea632f38e9dfeb5d5a3d217b2c2a1f6c7386ee1e517dce812d2b` |
| 47 | `theorem` | [wellFounded_antisymmetrization_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/wellfounded-antisymmetrization-iff.md) | 252 | `result-track:c35108d0c9d1df9a90b3acf88d414901278b22c459918ca9425e768816084748` |
| 48 | `theorem` | [wellFoundedLT_antisymmetrization_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/wellfoundedlt-antisymmetrization-iff.md) | 256 | `result-track:41d672ab6d2b7c74d63816a1a3ba57d9ebb16abc8487730956b9904a506469b0` |
| 49 | `theorem` | [wellFoundedGT_antisymmetrization_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/wellfoundedgt-antisymmetrization-iff.md) | 260 | `result-track:eefeb478ad6caf6254e32da7dcb2f620f32880fad331f8fac8756c0069e03b92` |
| 50 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/instance-source-edition-4.md) | 267 | `declaration-track:5091cfb92c9ae25b416011e93159b854864cb2577ee2ccafd8901c7780fa03c1` |
| 51 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/instance-source-edition-6.md) | 270 | `declaration-track:879c44646f24a5497c480df3e9abd83a6a7c5519c8399f91411c15cfeb042428` |
| 52 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/instance-source-edition-8.md) | 273 | `declaration-track:aa1ad7fea5a012255eca5dcc5707a2f76687bb9fbf90455a6b386e7b7603141f` |
| 53 | `theorem` | [toAntisymmetrization_le_toAntisymmetrization_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/toantisymmetrization-le-toantisymmetrization-iff.md) | 281 | `result-track:b831afed4b3ee4306c11dd17966d04dc53822fbfb1632186ab43d364f67929e3` |
| 54 | `theorem` | [toAntisymmetrization_lt_toAntisymmetrization_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/toantisymmetrization-lt-toantisymmetrization-iff.md) | 286 | `result-track:69359bf42cc9431f1f13335c7e14c83e8303c17a595583906add04c99d2e0ecd` |
| 55 | `theorem` | [ofAntisymmetrization_le_ofAntisymmetrization_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/ofantisymmetrization-le-ofantisymmetrization-iff.md) | 291 | `result-track:a35f6dbc904551342161f0ae43490768eb5919ea7ee759e960d90125f4b5a8ed` |
| 56 | `theorem` | [ofAntisymmetrization_lt_ofAntisymmetrization_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/ofantisymmetrization-lt-ofantisymmetrization-iff.md) | 296 | `result-track:8687d8b0d8bc24a3a3cb99c8807a3ea570e6293a40aac7eeb742d0c9dd5fce80` |
| 57 | `theorem` | [toAntisymmetrization_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/toantisymmetrization-mono.md) | 301 | `result-track:f28c98f75ddd1d1b38d0c54e8cba6a12473535d77cd0e23ab062790f0e1d7d68` |
| 58 | `theorem` | [liftFun_antisymmRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/liftfun-antisymmrel.md) | 305 | `result-track:850a2d9aa07fdec2f16e5a7ab3f41aca52b0f9db483bbf703cb24a36ac948086` |
| 59 | `def` | [OrderHom.antisymmetrization](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/orderhom-antisymmetrization.md) | 312 | `declaration-track:fa890b46c364305868c284ce082b445925bc8751f594d1cafcddd1e2e6884cc2` |
| 60 | `theorem` | [OrderHom.coe_antisymmetrization](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/orderhom-coe-antisymmetrization.md) | 317 | `result-track:78d74256a992f8a4d04c00300fa150c489e51f020638eb595a28ca13297c2c40` |
| 61 | `theorem` | [OrderHom.antisymmetrization_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/orderhom-antisymmetrization-apply.md) | 321 | `result-track:f5f28829259b8f4c3fe55249a105af0d8daff4e7c37458cb755ffe378cf6b6c2` |
| 62 | `theorem` | [OrderHom.antisymmetrization_apply_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/orderhom-antisymmetrization-apply-mk.md) | 326 | `result-track:93a1763072fc0a99c1476482d56a0295f9f829911d5dece06961b195a838a293` |
| 63 | `def` | [OrderEmbedding.ofAntisymmetrization](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/orderembedding-ofantisymmetrization.md) | 334 | `declaration-track:21b1f637bc893f5c806fa31cbe8eefe715ca03fc78aa264f0c7ede87df7c6390` |
| 64 | `def` | [OrderIso.dualAntisymmetrization](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/orderiso-dualantisymmetrization.md) | 338 | `declaration-track:ece975858210c91a1cd2284a26ad05807a2d43a2301d6c8589163c454138b2cd` |
| 65 | `theorem` | [OrderIso.dualAntisymmetrization_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/orderiso-dualantisymmetrization-apply.md) | 347 | `result-track:b564f0daac10e98a2834432369219517737716ddca05cb179c845c9f216d0f77` |
| 66 | `theorem` | [OrderIso.dualAntisymmetrization_symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/orderiso-dualantisymmetrization-symm-apply.md) | 353 | `result-track:1989840f5a811a1072866a271e6f80421e4bdc8a293f41c710625070b87326fd` |
| 67 | `def` | [prodEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/prodequiv.md) | 368 | `declaration-track:d534b4417e5f685ab8e7449493cd517592512c3baf431bbff832f03e58614114` |
| 68 | `lemma` | [prodEquiv_apply_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/prodequiv-apply-mk.md) | 378 | `result-track:1bab8f9d86027dd214124def58807952dddc40a93241e2f37e7a8b4af1d89f3a` |
| 69 | `lemma` | [prodEquiv_symm_apply_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/prodequiv-symm-apply-mk.md) | 379 | `result-track:9e943709d7bfee95e47a91a9e7459de8e749a71b37c0b4eb0706918bb547d700` |
| 70 | `instance` | [Prod.wellFoundedLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/prod-wellfoundedlt.md) | 385 | `declaration-track:282a1fbe2508ff17e7b57fac7a22c8b246c4a61e8f4cc9c968a5180599305b28` |
| 71 | `instance` | [Prod.wellFoundedGT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/AntisymmetrizationNamespaced.lean/declarations/prod-wellfoundedgt.md) | 389 | `declaration-track:cc7b77c8c6fd02792d8fc02c07c79da1490f31b99a804c45473aa63d9f180b67` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=46ebdbd5a24ba6fa688e3829c24db48e7697c254d95dd9a29f2e9d319f79cc21 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Antisymmetrization/Variant868b84a505563f5b94921ddb6b841aceae5278127907493e99f807edfe42ce1d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Antisymmetrization/Variant868b84a505563f5b94921ddb6b841aceae5278127907493e99f807edfe42ce1d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
