# Verification target: GRWTSK.Topology.GeneralTopology.SmallSets.Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e09332bf9b057f4d22220f29aaca1f0ff61ca2b5",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e09332bf9b057f4d22220f29aaca1f0ff61ca2b5`.

Source path: `GRWTSK/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Lift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smallSets](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/declarations/smallsets--fc807aabafd61d9fccdab61b.md) | 42 | `declaration-track:fc807aabafd61d9fccdab61be556b7925c80e41fdbd365098370b06046b10840` |
| 2 | `theorem` | [smallSets_eq_generate](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/declarations/smallsets-eq-generate--3bfe2040a76b639de36a63e9.md) | 45 | `result-track:3bfe2040a76b639de36a63e91476fb8fb4bf42cd112ee0effad78c4e3ec2e022` |
| 3 | `theorem` | [bind_smallSets_gc](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/declarations/bind-smallsets-gc--56418d8aa05e271686ea516b.md) | 51 | `result-track:56418d8aa05e271686ea516b48c103425bda5f90544de0fa072f5718f401a19e` |
| 4 | `theorem` | [HasBasis.smallSets](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/declarations/hasbasis-smallsets--208410c434b3da42a11d3858.md) | 57 | `result-track:208410c434b3da42a11d385884c3fb41943378f247b3e1dfa300fb4306f3e2b3` |
| 5 | `theorem` | [hasBasis_smallSets](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/declarations/hasbasis-smallsets--1ba4460c6086f144ef8d29f2.md) | 61 | `result-track:1ba4460c6086f144ef8d29f24cd750cf275e344a524c7cdd35ac09fa9ec7698c` |
| 6 | `theorem` | [Eventually.exists_mem_basis_of_smallSets](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/declarations/eventually-exists-mem-basis-of-smallsets--0d2f68bdbd20ff8b19e57182.md) | 65 | `result-track:0d2f68bdbd20ff8b19e57182e81bb0d27ff176a9de2d101a6cff97ae6e83560e` |
| 7 | `theorem` | [Frequently.smallSets_of_forall_mem_basis](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/declarations/frequently-smallsets-of-forall-mem-basis--3796201e8b408f2ec0032bc4.md) | 69 | `result-track:3796201e8b408f2ec0032bc405a2c94199a08093d8182782dbbef7ea9b7e21b1` |
| 8 | `theorem` | [Eventually.exists_mem_of_smallSets](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/declarations/eventually-exists-mem-of-smallsets--d06bf8f1b5e1589262ca4cba.md) | 73 | `result-track:d06bf8f1b5e1589262ca4cbaf90c2c60f8a873aeee3f4203f23d9b7f660f7e61` |
| 9 | `theorem` | [tendsto_smallSets_iff](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/declarations/tendsto-smallsets-iff--a4ff7816d7a3c21903eb2189.md) | 81 | `result-track:a4ff7816d7a3c21903eb2189ee0c0f54e26496c3ceefe13e6b1cf7a8a8ecfcef` |
| 10 | `theorem` | [eventually_smallSets](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/declarations/eventually-smallsets--e91805d2aff6618f9522575b.md) | 85 | `result-track:e91805d2aff6618f9522575b81df7b7f3a8f239eb04c18930ad5286b02cdeb8f` |
| 11 | `theorem` | [eventually_smallSets'](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/declarations/eventually-smallsets--3651244918d7def078251c38.md) | 89 | `result-track:3651244918d7def078251c381c3a66e78ec1ab1226b031809daad37ce4dea872` |
| 12 | `theorem` | [frequently_smallSets](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/declarations/frequently-smallsets--bce861c0f85af6d9cd59675f.md) | 94 | `result-track:bce861c0f85af6d9cd59675f3921f74031c724757aabd71e2c5d259a2f246b9b` |
| 13 | `theorem` | [frequently_smallSets_mem](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/declarations/frequently-smallsets-mem--bdbcefcf94078585a8757f12.md) | 98 | `result-track:bdbcefcf94078585a8757f12d78b4df244967b9ec1986daa1a5a8ea0aef866e8` |
| 14 | `lemma` | [tendsto_image_smallSets](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/declarations/tendsto-image-smallsets--80a23416b1b149e1ed9ac59d.md) | 102 | `result-track:80a23416b1b149e1ed9ac59dff24a46b7363a198f6c6f658db1b6e492ca30820` |
| 15 | `theorem` | [HasAntitoneBasis.tendsto_smallSets](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/declarations/hasantitonebasis-tendsto-smallsets--77783445f561630c1ad557b0.md) | 111 | `result-track:77783445f561630c1ad557b016eaf1e5a52c8f31f8edb4d2dba58d34a7d4588d` |
| 16 | `theorem` | [monotone_smallSets](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/declarations/monotone-smallsets--e92876aeea3c4c1bc5ed729b.md) | 116 | `result-track:e92876aeea3c4c1bc5ed729bf4ef09aa0086a1e018adf2d601e233049374bddc` |
| 17 | `theorem` | [smallSets_bot](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/declarations/smallsets-bot--26960c2e9f4ab47db44d4f87.md) | 120 | `result-track:26960c2e9f4ab47db44d4f87a1e6eaa922a9b43ebc4eed4ecb06be70b017c031` |
| 18 | `theorem` | [smallSets_top](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/declarations/smallsets-top--10f7b7cc0dca5a3bd578cf1e.md) | 125 | `result-track:10f7b7cc0dca5a3bd578cf1e69249e1c8d2a2c10b0e9cc656e6300af96bb1f62` |
| 19 | `theorem` | [smallSets_principal](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/declarations/smallsets-principal--5ab10d115d3814a2786cdc07.md) | 129 | `result-track:5ab10d115d3814a2786cdc07a844823c1192636f75886e921f282394837c4653` |
| 20 | `theorem` | [smallSets_comap_eq_comap_image](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/declarations/smallsets-comap-eq-comap-image--0a240ad5ab252ba593b6f22a.md) | 132 | `result-track:0a240ad5ab252ba593b6f22af6f8ca89a701c22a840782e6bd8cfe4d3b4ace1d` |
| 21 | `theorem` | [smallSets_comap](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/declarations/smallsets-comap--d29411812c5b04d4d6ebb0dc.md) | 137 | `result-track:d29411812c5b04d4d6ebb0dca3addcd412dcc7aafaf9f081a290d87c9c08b7cf` |
| 22 | `theorem` | [comap_smallSets](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/declarations/comap-smallsets--0b7ae451df77cbb07bb320b5.md) | 141 | `result-track:0b7ae451df77cbb07bb320b57b94ebeaafb2e7f257dbfff3999a5ac100606712` |
| 23 | `theorem` | [smallSets_iInf](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/declarations/smallsets-iinf--2d30dce83f421071af8c99e0.md) | 145 | `result-track:2d30dce83f421071af8c99e0b47323af8e628e67fada64d375c6f28231f17db7` |
| 24 | `theorem` | [smallSets_inf](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/declarations/smallsets-inf--062938a4a5a9e053306cbf9d.md) | 148 | `result-track:062938a4a5a9e053306cbf9d7ce19d846d5bb5bb837e915c3128887e8db97e8a` |
| 25 | `instance` | [smallSets_neBot](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/declarations/smallsets-nebot--a4f607350dc513b36b2ba1f0.md) | 151 | `declaration-track:a4f607350dc513b36b2ba1f07700c63c7a0f60ba0f731a6cfc81150b3acd2f8a` |
| 26 | `theorem` | [Tendsto.smallSets_mono](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/declarations/tendsto-smallsets-mono--4ded09cdd7d44313487a1423.md) | 155 | `result-track:4ded09cdd7d44313487a1423174d5b608d8d26fd7260874d90bc515827ed4f25` |
| 27 | `theorem` | [Tendsto.of_smallSets](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/declarations/tendsto-of-smallsets--91604b2312cc5a5ba51c0e3d.md) | 167 | `result-track:91604b2312cc5a5ba51c0e3d7eca99a2ce8a50dd6183b5ca3f7609201924b1a0` |
| 28 | `theorem` | [eventually_smallSets_eventually](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/declarations/eventually-smallsets-eventually--ccfcaa26e2d265b823b37ec1.md) | 172 | `result-track:ccfcaa26e2d265b823b37ec1fc6bf01fccdddfdb2c05a43e78098421844185f7` |
| 29 | `theorem` | [eventually_smallSets_forall](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/declarations/eventually-smallsets-forall--f4121a63621b2774cf276a1b.md) | 181 | `result-track:f4121a63621b2774cf276a1bfad50b23f15e0366c09f751111552780b907da93` |
| 30 | `theorem` | [eventually_smallSets_subset](../../../../../mathematics/Topology/GeneralTopology/SmallSets/Variant03ec589cf775567051ad86a22e4e7ed86faff2dea6a6b1cb2cbff115b1ef22bb.lean/declarations/eventually-smallsets-subset--0eb3a7b7cb5ca1cedcbda717.md) | 188 | `result-track:0eb3a7b7cb5ca1cedcbda7179423b68ddda1fa3ef9dafcc37720541bb4fa79ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
