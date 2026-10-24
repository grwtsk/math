# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.UniformMulAction.Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c9d077e22095d0fd89b7422be65a26b9d6e4c78",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c9d077e22095d0fd89b7422be65a26b9d6e4c78`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [UniformContinuousConstVAdd](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/declarations/uniformcontinuousconstvadd--764c08975458beee1baa95d1.md) | 48 | `declaration-track:764c08975458beee1baa95d1d3b089deca8f267453b89996e2212679f5af2004` |
| 2 | `class` | [UniformContinuousConstSMul](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/declarations/uniformcontinuousconstsmul--83fb194ce10ad1102c4572bf.md) | 54 | `declaration-track:83fb194ce10ad1102c4572bffa5f5c08905e66bd1f14b126227d5594ca514b13` |
| 3 | `instance` | [AddMonoid.uniformContinuousConstSMul_nat](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/declarations/addmonoid-uniformcontinuousconstsmul-nat--25abb405a689f4bb505870ab.md) | 61 | `declaration-track:25abb405a689f4bb505870ab673c2777c61cc9c5a3c60e31d1a6bc273014e010` |
| 4 | `instance` | [AddGroup.uniformContinuousConstSMul_int](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/declarations/addgroup-uniformcontinuousconstsmul-int--b39b3703ac8ab526f89c126c.md) | 65 | `declaration-track:b39b3703ac8ab526f89c126c9d0b7cdda50cdf40bb83cd9e7f6a461d3e25ca78` |
| 5 | `theorem` | [uniformContinuousConstSMul_of_continuousConstSMul](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/declarations/uniformcontinuousconstsmul-of-continuousconstsmul--da5242aa7b6342175633ac43.md) | 72 | `result-track:da5242aa7b6342175633ac4369e3565b2759068d07eecda2651c957f07a1a07c` |
| 6 | `instance` | [Ring.uniformContinuousConstSMul](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/declarations/ring-uniformcontinuousconstsmul--92812a8a81d24ac547715758.md) | 80 | `declaration-track:92812a8a81d24ac547715758be7a0f65e75bfc25aa195c7fa40fa4e39c041103` |
| 7 | `instance` | [Ring.uniformContinuousConstSMul_op](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/declarations/ring-uniformcontinuousconstsmul-op--772d966b97ab4a5b6ad613f7.md) | 85 | `declaration-track:772d966b97ab4a5b6ad613f79d8f6535e3b0217afec4eb0d731e6e1ad4b335c1` |
| 8 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/declarations/instance--683c4dfad917ba41f21d6969.md) | 94 | `declaration-track:683c4dfad917ba41f21d6969c017f7957ba400268794265594aa4f7bcf84f781` |
| 9 | `theorem` | [UniformContinuous.const_smul](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/declarations/uniformcontinuous-const-smul--d8afbbd4e623b8e5a6a0acb9.md) | 101 | `result-track:d8afbbd4e623b8e5a6a0acb9bba5d0e71953d1bf25c8e7ea2dfeb3aab569b0fe` |
| 10 | `lemma` | [IsUniformInducing.uniformContinuousConstSMul](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/declarations/isuniforminducing-uniformcontinuousconstsmul--b443dca166f4f208f6e50c81.md) | 106 | `result-track:b443dca166f4f208f6e50c815a3314b2a3aca4a61969abb87929cf7a813e8352` |
| 11 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/declarations/instance--8da6ac5294729de0f05213c0.md) | 117 | `declaration-track:8da6ac5294729de0f05213c03bab60330af2fb1790eada4990122ad182e46a47` |
| 12 | `instance` | [MulOpposite.uniformContinuousConstSMul](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/declarations/mulopposite-uniformcontinuousconstsmul--49c04fd123af0c86a5d087f2.md) | 122 | `declaration-track:49c04fd123af0c86a5d087f258febca0c3c9396397ec9d0ba80d767b7424b39c` |
| 13 | `instance` | [IsUniformGroup.instUniformContinuousConstSMul](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/declarations/isuniformgroup-instuniformcontinuousconstsmul--1387423120f9b9468b7a9d29.md) | 130 | `declaration-track:1387423120f9b9468b7a9d2981476f0d1baa8abc52e59e9adbe09ea7dcd1335b` |
| 14 | `theorem` | [UniformContinuous.const_mul'](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/declarations/uniformcontinuous-const-mul--ead4dda571cf2225f8851c57.md) | 139 | `result-track:ead4dda571cf2225f8851c57e95a96c38210d8d7caf986d428a0af7103348aa4` |
| 15 | `theorem` | [UniformContinuous.mul_const'](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/declarations/uniformcontinuous-mul-const--e388f05cd303c4ecd97aacab.md) | 144 | `result-track:e388f05cd303c4ecd97aacab273b33aa88286af4202b6bf3ae4293c9d2a20bbd` |
| 16 | `theorem` | [uniformContinuous_mul_left'](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/declarations/uniformcontinuous-mul-left--c2a6e41ea465de0505ca7f73.md) | 148 | `result-track:c2a6e41ea465de0505ca7f73f385fbaacf0c3ae13e16bb0606209e404fccc06d` |
| 17 | `theorem` | [uniformContinuous_mul_right'](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/declarations/uniformcontinuous-mul-right--7ab284376376324779fbd867.md) | 152 | `result-track:7ab284376376324779fbd867b78715a78c6724d70be80286951888a10c524f25` |
| 18 | `theorem` | [UniformContinuous.div_const'](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/declarations/uniformcontinuous-div-const--01f7edac586a83fb70d70893.md) | 157 | `result-track:01f7edac586a83fb70d70893ee0b207684c788dcc3a8ff7fa9f972c91d6cb396` |
| 19 | `theorem` | [uniformContinuous_div_const'](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/declarations/uniformcontinuous-div-const--136983033501ee7601f4433a.md) | 163 | `result-track:136983033501ee7601f4433a76c4ed421c141b8c382250516573f8ac8aa59636` |
| 20 | `theorem` | [IsUnit.smul_uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/declarations/isunit-smul-uniformity--59c2cd933fccd5f5c8efc1e5.md) | 177 | `result-track:59c2cd933fccd5f5c8efc1e528e41c94934f0da11f4a7401008cf586d8eed264` |
| 21 | `theorem` | [smul_uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/declarations/smul-uniformity--a13bd5d7af3a3573ea372c0a.md) | 185 | `result-track:a13bd5d7af3a3573ea372c0abe3a96742e3945bb51594e3948196f1c3554020b` |
| 22 | `theorem` | [smul_uniformity₀](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/declarations/smul-uniformity--12bd87d4c41157891a1c4c52.md) | 189 | `result-track:12bd87d4c41157891a1c4c521e5d44be276705218eb176ab4bdf43e13ffc77a2` |
| 23 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/declarations/instance--7be11b88fedd92332e898c2d.md) | 204 | `declaration-track:7be11b88fedd92332e898c2db1818ceaa4725e08e7742b9dadd65724f893f781` |
| 24 | `theorem` | [smul_def](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/declarations/smul-def--284d823ab7244997c616bca0.md) | 208 | `result-track:284d823ab7244997c616bca097c38045a8ce9bc6a64c3de706bbc95a55bc65df` |
| 25 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/declarations/instance--54d5a959fb6d7dd11527e0b9.md) | 212 | `declaration-track:54d5a959fb6d7dd11527e0b9f610ff66c4a993a36a48430fde996e54530d9c5e` |
| 26 | `instance` | [instIsScalarTower](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/declarations/instisscalartower--9f3a8a687022062020635da1.md) | 216 | `declaration-track:9f3a8a687022062020635da131a9bda9fd8f861f90484ea5f0613644af63d775` |
| 27 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/declarations/instance--4a3f7e183fd0b5b1cefefc1f.md) | 225 | `declaration-track:4a3f7e183fd0b5b1cefefc1f3ab2d016e5b884a5ace2a15e1386ee2973dbe94a` |
| 28 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/declarations/instance--b47dd01ed05bbe39a6158a1e.md) | 235 | `declaration-track:b47dd01ed05bbe39a6158a1e778746508fbefa38fb43ceaab57e47bd9ed2dc56` |
| 29 | `theorem` | [coe_smul](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/declarations/coe-smul--dfc698ecf890a50a5a2cf24b.md) | 242 | `result-track:dfc698ecf890a50a5a2cf24be33cca69a5db1f67ce27e81e153a8d5ab11f0d90` |
| 30 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variantd4f0c8c821ef2d1cae649053c468c34c8a5a4d388d749bb883056c6356eaf66c.lean/declarations/instance--9444911b8422ca247a2e6c9e.md) | 248 | `declaration-track:9444911b8422ca247a2e6c9e09e72017a66a2e7eea9afb294997f2d6823d7082` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
