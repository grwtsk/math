# Verification target: Set Notation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10e8ec84049675f19a00be8c612eb834c480fc6d",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variante1e2f123bb6b9ffa5a836cefc02afadd552f3983542f691bb4d8991810b522ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetNotation.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetNotation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10e8ec84049675f19a00be8c612eb834c480fc6d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variante1e2f123bb6b9ffa5a836cefc02afadd552f3983542f691bb4d8991810b522ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variante1e2f123bb6b9ffa5a836cefc02afadd552f3983542f691bb4d8991810b522ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Notation3` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SupSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetNotation.lean/declarations/supset.md) | 40 | `declaration-track:cab5b1c6390592bdb4d20eae194b9d6ce3b159d2b85b4ada4cacc751c15c394b` |
| 2 | `class` | [InfSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetNotation.lean/declarations/infset.md) | 46 | `declaration-track:ab4889330175b9b1fc7b29ec3ace1b3485c18eb96abfd0095ae30f374860c194` |
| 3 | `def` | [iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetNotation.lean/declarations/isup.md) | 56 | `declaration-track:a489de7545f55c87170dbe5c3298d672f041db54cc868867cb38e207f41bada1` |
| 4 | `def` | [iInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetNotation.lean/declarations/iinf.md) | 60 | `declaration-track:16c540c3d9f9352d6959ed6764245f7f8dc24853288219e991f8645ba48a028d` |
| 5 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetNotation.lean/declarations/instance-source-edition-3.md) | 63 | `declaration-track:8c9bb545a488b37c6c0746233e0447f167b0f0e2665a82c6a9375383823fa21e` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetNotation.lean/declarations/instance-source-edition-4.md) | 66 | `declaration-track:b94fe90db0ea0ee4e0af4f85e527ef9af69806f68a5965961957833e2237620c` |
| 7 | `def` | [iSup_delab](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetNotation.lean/declarations/isup-delab.md) | 81 | `declaration-track:7c43f7e54166cb3f8268e484d6c7832d22d6f3c82f54fdd6c18936920642a760` |
| 8 | `def` | [iInf_delab](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetNotation.lean/declarations/iinf-delab.md) | 109 | `declaration-track:f9998f553a3fdade0c9232ba25c45fa6d76112f3b87d9a3fa89cd88dc0682e72` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetNotation.lean/declarations/instance.md) | 138 | `declaration-track:11838a49523c84c8cdd30e01c5acb4b137bfdf6aec4bb8e1662c0d155fb134dc` |
| 10 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetNotation.lean/declarations/instance-source-edition-2.md) | 141 | `declaration-track:2a1c4ad1c2924119eb984ffbfc9e1fcba9ec588b3e5675773723ad19643dd12b` |
| 11 | `def` | [sInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetNotation.lean/declarations/sinter.md) | 145 | `declaration-track:3151d7424805656d9fc291b7ab567292bb6b2feb572ca2bd3b80e3460a165d06` |
| 12 | `def` | [sUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetNotation.lean/declarations/sunion.md) | 152 | `declaration-track:15854bcd2099381fa028e3598dac6117f04fcb8ed622d1eff9fa5dfe40f206bf` |
| 13 | `theorem` | [mem_sInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetNotation.lean/declarations/mem-sinter.md) | 159 | `result-track:c6aa64dc9f7df429fc52df66fab6506e3adc4c4be817cab77f57df29f72dc875` |
| 14 | `theorem` | [mem_sUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetNotation.lean/declarations/mem-sunion.md) | 163 | `result-track:f76296cd234cf1d2968542511de50562ae791f18439618646202977ea79e3b25` |
| 15 | `def` | [iUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetNotation.lean/declarations/iunion.md) | 167 | `declaration-track:8ddcd31e5151d95f3a5599f5ffb73b63cf1417b46be4c508adf43fc6fc5fceec` |
| 16 | `def` | [iInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetNotation.lean/declarations/iinter.md) | 171 | `declaration-track:c29a61546f8256bf9e30b10d1645a4ca0b0d836cc2185e5ae1857d47f5958392` |
| 17 | `def` | [iUnion_delab](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetNotation.lean/declarations/iunion-delab.md) | 186 | `declaration-track:e69ce22f3425de35b1fb72f122c775c558e09d72bd8428ce8d0c081abb1d541a` |
| 18 | `def` | [sInter_delab](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetNotation.lean/declarations/sinter-delab.md) | 214 | `declaration-track:4d175ff946e3873692b0a2c1b9b96503bda5f5f3267e9521fdfe734f5a59de2a` |
| 19 | `theorem` | [mem_iUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetNotation.lean/declarations/mem-iunion.md) | 243 | `result-track:2d98bdf84b8fe6309cde8f911627e0563ed432b68802876ff3643a518b008aa5` |
| 20 | `theorem` | [mem_iInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetNotation.lean/declarations/mem-iinter.md) | 248 | `result-track:21bcbdbd812d43d90e3e85ab4faf69b29c2c55d57c176f1f4550cb840ba4f678` |
| 21 | `theorem` | [sSup_eq_sUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetNotation.lean/declarations/ssup-eq-sunion.md) | 253 | `result-track:0cc48b83e2bc28454924d33b960f592b95086d35c910b5bbf93a39156b67ae47` |
| 22 | `theorem` | [sInf_eq_sInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetNotation.lean/declarations/sinf-eq-sinter.md) | 257 | `result-track:f890950221c212f7c9b3712831ca461fe1c617de3ca9d1e3e9b0c0054c877848` |
| 23 | `theorem` | [iSup_eq_iUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetNotation.lean/declarations/isup-eq-iunion.md) | 261 | `result-track:d2b6fdeb6b5bad2d1dae5c7be69707f4359c3d2af720c4f76da61d02be3c345e` |
| 24 | `theorem` | [iInf_eq_iInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetNotation.lean/declarations/iinf-eq-iinter.md) | 265 | `result-track:24ac3f33b7ed188e7b2baf9ba984c63acd80601025b6c9d7ca7a15feb6ac87d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d7a65738bfdcf2d64595bbbcca8d5c04d3c2978c6089969919362cc2990f89b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variante1e2f123bb6b9ffa5a836cefc02afadd552f3983542f691bb4d8991810b522ac.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variante1e2f123bb6b9ffa5a836cefc02afadd552f3983542f691bb4d8991810b522ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
