# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.Group.Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "997b679f9c2f7f50facdd803466fed05c1558b13",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `997b679f9c2f7f50facdd803466fed05c1558b13`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.Finite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Cauchy` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.IsUniformGroup.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Pointwise` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasProd.inv](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/hasprod-inv--f7fac7768c575fcfbf77a768.md) | 33 | `result-track:f7fac7768c575fcfbf77a768c973c21a3dd542d295d0a251eedd6cad548b4842` |
| 2 | `theorem` | [Multipliable.inv](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-inv--f74c3f811fb7691d54206553.md) | 37 | `result-track:f74c3f811fb7691d542065538c63ef33978ae0c2752b058b4eec64c2a173e53c` |
| 3 | `theorem` | [Multipliable.of_inv](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-of-inv--a1568852a760ca16dff52af5.md) | 41 | `result-track:a1568852a760ca16dff52af53d301b483cdb81992081be52c3859585f03e76e1` |
| 4 | `theorem` | [multipliable_inv_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-inv-iff--b90160528350fd61497b4069.md) | 45 | `result-track:b90160528350fd61497b406973e6a19096e42c95bcb72689545fb3915bdbe280` |
| 5 | `theorem` | [HasProd.div](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/hasprod-div--d424b557ae3216cbc6ee5254.md) | 49 | `result-track:d424b557ae3216cbc6ee5254d378fa3ab1ee5c5897a3a3163bd5a1dfdaaf6140` |
| 6 | `theorem` | [Multipliable.div](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-div--332c0505d50e9987d8f4041a.md) | 55 | `result-track:332c0505d50e9987d8f4041afb748d62162450a8ebcbc3a8df8cdb62d03a26eb` |
| 7 | `theorem` | [Multipliable.trans_div](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-trans-div--eedc9c0721d452fa960f5451.md) | 60 | `result-track:eedc9c0721d452fa960f54516c57a9a66e70013f6cbb9b6103a4cdec71b72f07` |
| 8 | `theorem` | [multipliable_iff_of_multipliable_div](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-iff-of-multipliable-div--72fc14d5ff95a43d26c5d0b9.md) | 65 | `result-track:72fc14d5ff95a43d26c5d0b98184eeafb8f47448af8a757902142894466260d1` |
| 9 | `theorem` | [HasProd.update](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/hasprod-update--65932fab262300a726537c3d.md) | 70 | `result-track:65932fab262300a726537c3d43bfcab985d8cf84a61278ca0b7b9f6dac7fe0b3` |
| 10 | `theorem` | [Multipliable.update](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-update--0c6cb70070e0a5e21b250502.md) | 79 | `result-track:0c6cb70070e0a5e21b2505026497d62cc627b87080e36ad08a82f6faeb6072f1` |
| 11 | `theorem` | [HasProd.hasProd_compl_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/hasprod-hasprod-compl-iff--ee818fae144784c1c631f0d0.md) | 84 | `result-track:ee818fae144784c1c631f0d022b0a601ee4619ed761c02e06b140a6266949029` |
| 12 | `theorem` | [HasProd.hasProd_iff_compl](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/hasprod-hasprod-iff-compl--ce69934a2ba3d500b01e41b4.md) | 92 | `result-track:ce69934a2ba3d500b01e41b409597d6bdb667307e7495a96da96654e3ab99195` |
| 13 | `theorem` | [Multipliable.multipliable_compl_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-multipliable-compl-iff--83ce704966895dc1c8f624d7.md) | 97 | `result-track:83ce704966895dc1c8f624d7c632ab61f37967e29d5d6e1c6b63c7cdd06ff5a7` |
| 14 | `theorem` | [Finset.hasProd_compl_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/finset-hasprod-compl-iff--9e32ebc7cc9647e0dcbdc2a5.md) | 103 | `result-track:9e32ebc7cc9647e0dcbdc2a57e0657b575753cd71c774baa5f8bf3823ebb5b8a` |
| 15 | `theorem` | [Finset.hasProd_iff_compl](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/finset-hasprod-iff-compl--90ce4034f98d600c1fac5b53.md) | 108 | `result-track:90ce4034f98d600c1fac5b538f1d0b3a49ca3e47da0e7af1eefed1d1d704d4b3` |
| 16 | `theorem` | [Finset.multipliable_compl_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/finset-multipliable-compl-iff--885ed389a2ff590cd77720fd.md) | 113 | `result-track:885ed389a2ff590cd77720fdc8b353cfbadc30f92689441e5787ab419bd1b135` |
| 17 | `theorem` | [Set.Finite.multipliable_compl_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/set-finite-multipliable-compl-iff--f7531b5a9056162183be7f87.md) | 118 | `result-track:f7531b5a9056162183be7f876b9ddb2a2513a34e7f5f44691e130a070490010e` |
| 18 | `theorem` | [hasProd_ite_div_hasProd](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/hasprod-ite-div-hasprod--4412074a94bdea2ad847a391.md) | 123 | `result-track:4412074a94bdea2ad847a3918cc28c4530b1a14320a0c09259316c283c8d511c` |
| 19 | `theorem` | [Multipliable.congr_cofinite](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-congr-cofinite--044336bef56bbc0d4db400f6.md) | 139 | `result-track:044336bef56bbc0d4db400f618e0bd7c52816b42972db08f9668b58be7e54f6f` |
| 20 | `theorem` | [multipliable_congr_cofinite](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-congr-cofinite--392d12997bae786a51508c09.md) | 147 | `result-track:392d12997bae786a51508c09dd088053ecb9735ea71bee78020db3662325dfe3` |
| 21 | `theorem` | [Multipliable.congr_atTop](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-congr-attop--2a0f55cb240e85211e111eb4.md) | 152 | `result-track:2a0f55cb240e85211e111eb44e3c4058306a301b97ecd5ea0257f9b0dfe6c7e5` |
| 22 | `theorem` | [multipliable_congr_atTop](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-congr-attop--c0b71e0124219056d0fda00c.md) | 156 | `result-track:c0b71e0124219056d0fda00c71200ec7a8606a2a31b3d6cb46c6d62ac4ce7c70` |
| 23 | `theorem` | [tprod_inv](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/tprod-inv--802769cb1fcb385876a8eb25.md) | 164 | `result-track:802769cb1fcb385876a8eb25092111b14fa973f344483357e98fb96ecff6da8c` |
| 24 | `theorem` | [Multipliable.tprod_div](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-tprod-div--62f7236e69a212ea50e96e67.md) | 171 | `result-track:62f7236e69a212ea50e96e6754110c5e2d1009734948fbbcf7373d5ed0af0dd2` |
| 25 | `theorem` | [Multipliable.prod_mul_tprod_compl](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-prod-mul-tprod-compl--46d6dfdb9c57da28bd4e336d.md) | 180 | `result-track:46d6dfdb9c57da28bd4e336d4b525d7256c39bde7f4ea73830cb825b82abf739` |
| 26 | `theorem` | [Multipliable.tprod_eq_mul_tprod_ite](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-tprod-eq-mul-tprod-ite--55a57928fe0d540e5e1cc325.md) | 194 | `result-track:55a57928fe0d540e5e1cc32574dbd196ed7acbfa34ee6d92515bf7787dd4617e` |
| 27 | `theorem` | [multipliable_iff_cauchySeq_finset](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-iff-cauchyseq-finset--34e3cd9609e26b45e08433c5.md) | 214 | `result-track:34e3cd9609e26b45e08433c53ff307810614aa1607ef961c161c75c4ed978673` |
| 28 | `theorem` | [cauchySeq_finset_iff_prod_vanishing](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/cauchyseq-finset-iff-prod-vanishing--617b6ffa06a7134174f71722.md) | 221 | `result-track:617b6ffa06a7134174f71722ce6bf9445a745f496119823bf8e49daceed300ff` |
| 29 | `theorem` | [cauchySeq_finset_iff_tprod_vanishing](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/cauchyseq-finset-iff-tprod-vanishing--56195250c1a3b9e542f01786.md) | 246 | `result-track:56195250c1a3b9e542f0178636edabe151f3f97c08dec024803523f3812e0c67` |
| 30 | `theorem` | [multipliable_iff_vanishing](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-iff-vanishing--022d01a93c6d22518a0f312e.md) | 269 | `result-track:022d01a93c6d22518a0f312eb43db6805fa3797c600a237099610d60c98fa766` |
| 31 | `theorem` | [multipliable_iff_tprod_vanishing](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-iff-tprod-vanishing--5a79d46ed1de6743af8cf1e8.md) | 275 | `result-track:5a79d46ed1de6743af8cf1e86de54ca43e438dad38541ff4335aaeed265c9df9` |
| 32 | `theorem` | [Multipliable.multipliable_of_eq_one_or_self](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-multipliable-of-eq-one-or-self--3537a299a8e5fb4cb1add2b1.md) | 281 | `result-track:3537a299a8e5fb4cb1add2b1702d191917385783fdc13652bc423d14feb62889` |
| 33 | `theorem` | [Multipliable.mulIndicator](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-mulindicator--6751ff38ca5337ff498cb585.md) | 299 | `result-track:6751ff38ca5337ff498cb5855c76e95c485d13195db06b13650ddb466bac3a97` |
| 34 | `theorem` | [Multipliable.comp_injective](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-comp-injective--f427112814bee0fbe4869ed9.md) | 304 | `result-track:f427112814bee0fbe4869ed9a8a85572bf791a8909603c36b914e40e20d92dea` |
| 35 | `theorem` | [Multipliable.subtype](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-subtype--495a377a41347949671eb9b7.md) | 311 | `result-track:495a377a41347949671eb9b7711d5a0c37cddf46b774d22fbef6486b232fc3d2` |
| 36 | `theorem` | [multipliable_subtype_and_compl](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-subtype-and-compl--787daa8819358f8ae9443299.md) | 315 | `result-track:787daa8819358f8ae9443299e1caa38392c2e30693e07476fe09cc92c000c466` |
| 37 | `theorem` | [Multipliable.tprod_subtype_mul_tprod_subtype_compl](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-tprod-subtype-mul-tprod-subtype-compl--d3b10c1843c22517bddff072.md) | 320 | `result-track:d3b10c1843c22517bddff07240976845b1a71e135472abc01a2d51dd05594dc2` |
| 38 | `theorem` | [Multipliable.prod_mul_tprod_subtype_compl](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-prod-mul-tprod-subtype-compl--51b5d410fe361d4393aa6355.md) | 330 | `result-track:51b5d410fe361d4393aa6355323c1c57921070dc975ce865b602111c1fe9f517` |
| 39 | `theorem` | [Multipliable.vanishing](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-vanishing--21b0d5d3350e3c5942e337d5.md) | 349 | `result-track:21b0d5d3350e3c5942e337d50f90b421df654a0c7c30ccc6b077cec1497a4948` |
| 40 | `theorem` | [Multipliable.tprod_vanishing](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-tprod-vanishing--b1831f33ead9da2364c3ec85.md) | 357 | `result-track:b1831f33ead9da2364c3ec85a8a5ef732251a8baf924d2a99ad2f8fb478cedd6` |
| 41 | `theorem` | [tendsto_tprod_compl_atTop_one](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/tendsto-tprod-compl-attop-one--e64794f2f8af2ddbd4886923.md) | 369 | `result-track:e64794f2f8af2ddbd4886923106a25d8d5def32d13e2f8f6898861387553577b` |
| 42 | `theorem` | [Multipliable.tendsto_cofinite_one](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-tendsto-cofinite-one--be165fe57d97bc12701fb6b3.md) | 384 | `result-track:be165fe57d97bc12701fb6b348dd2a5bace8464009dd3429c9fa31fb697df650` |
| 43 | `theorem` | [Multipliable.finite_mulSupport_of_discreteTopology](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-finite-mulsupport-of-discretetopology--5ee71b6582850e00737d000b.md) | 392 | `result-track:5ee71b6582850e00737d000bd8b42a74afd5335e7b8885d66655f3ecc5fdb107` |
| 44 | `theorem` | [Multipliable.countable_mulSupport](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-countable-mulsupport--28a0e5ac261cb59cdf4ea351.md) | 399 | `result-track:28a0e5ac261cb59cdf4ea35105b20556ac109c70514b2f427a15673feee5fae0` |
| 45 | `theorem` | [multipliable_const_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-const-iff--6da6565a5adbd23b429b00e2.md) | 404 | `result-track:6da6565a5adbd23b429b00e28b8aed3c404f3224e521c41e729f4b097ad47825` |
| 46 | `theorem` | [tprod_const](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/tprod-const--0a0746088f7dc74cbca1453c.md) | 416 | `result-track:0a0746088f7dc74cbca1453cb7773bfa1ba4b9992a467157a44aca15c140c82b` |
| 47 | `lemma` | [HasProd.congr_cofinite₀](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/hasprod-congr-cofinite--f87610a269f7a05d493db9ee.md) | 439 | `result-track:f87610a269f7a05d493db9eefbc254e270a3185d2000fc71bc64c8a0b365c4c7` |
| 48 | `lemma` | [Multipliable.tsum_congr_cofinite₀](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-tsum-congr-cofinite--972bc4cfe97fc02968ecfcca.md) | 455 | `result-track:972bc4cfe97fc02968ecfcca2cf163ae49abd643b44821d54fa2b6676d6dee1e` |
| 49 | `lemma` | [Multipliable.congr_cofinite₀](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Group/Variant9c18025bb37cb79dadad1a9fb3bd3379be5a3170cd4d5102d5b769b3f4043944.lean/declarations/multipliable-congr-cofinite--2e2d24036cec0506927e826e.md) | 467 | `result-track:2e2d24036cec0506927e826eb1cf07b87102e43aad6af097aae463df38004d96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
