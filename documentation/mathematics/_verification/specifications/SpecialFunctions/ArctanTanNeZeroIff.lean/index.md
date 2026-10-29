# Verification target: Arctan Tan Ne Zero Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34233bc6a0c1ff7258bd575be27fe803b854a64b",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Arctan/Variant5162b1f233511703703a7af0d101a785f1ded8871492af06730d1d4b89845afd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/index.md) · [Full source](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34233bc6a0c1ff7258bd575be27fe803b854a64b`.

Source path: `GRWTSK/Topology/GeneralTopology/Arctan/Variant5162b1f233511703703a7af0d101a785f1ded8871492af06730d1d4b89845afd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Arctan/Variant5162b1f233511703703a7af0d101a785f1ded8871492af06730d1d4b89845afd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Complex` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/macro-rules.md) | 20 | `declaration-track:f99c0ebf742cfdc205404cb4d9f09dc043f74dcebe556ab6c7bf236084b777cf` |
| 2 | `theorem` | [tan_add](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/tan-add-source-edition-2.md) | 28 | `result-track:e5bcccdaac947cc6dbb8ec76ffdc9b6870ce38f6e5b43e02a251c2c708db6c35` |
| 3 | `theorem` | [tan_add'](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/tan-add.md) | 37 | `result-track:5b9dd52e13b4d60cfb29b1cb34528e7e8b3e89928dbb916f95667e96bff5f270` |
| 4 | `theorem` | [tan_two_mul](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/tan-two-mul.md) | 43 | `result-track:4939e5561432bb3cbcd79456f897407d4d66eeab0ec6b75b96451ecc2c4e23fc` |
| 5 | `theorem` | [tan_ne_zero_iff](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/tan-ne-zero-iff.md) | 48 | `result-track:fd3f306c638ecfe071dc044e1c974810667ec2e57c225120e7e6c2c3c4e42ab6` |
| 6 | `theorem` | [tan_eq_zero_iff](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/tan-eq-zero-iff.md) | 52 | `result-track:4427ac33544bfe720355fd05f5189725d67fdbc2cd9eaa8cb6ce4945f907b9f8` |
| 7 | `theorem` | [tan_int_mul_pi_div_two](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/tan-int-mul-pi-div-two.md) | 56 | `result-track:dcba7e422a88d8ffb06862844af2b207da55fb1bf59305e1c9e67e3efe52f64b` |
| 8 | `theorem` | [continuousOn_tan](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/continuouson-tan.md) | 60 | `result-track:9601a1957d901077001ea49f169fef8d6f27c183d89001133f3b7f903439e69e` |
| 9 | `theorem` | [continuous_tan](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/continuous-tan.md) | 68 | `result-track:de41afa899488047d05c2baa97ab7ebc454e3466fdc28f9b8a00356e1a1da2e8` |
| 10 | `theorem` | [continuousOn_tan_Ioo](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/continuouson-tan-ioo.md) | 72 | `result-track:5fe6635a940b61a96290a1f035577484a02b25f4f5e1214b550160f7a7b5f3d3` |
| 11 | `theorem` | [surjOn_tan](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/surjon-tan.md) | 92 | `result-track:168b8d34956022ed03df25247b8af9972263814abb7ebfa9b6ced9480b575473` |
| 12 | `theorem` | [tan_surjective](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/tan-surjective.md) | 99 | `result-track:0c08e673cf92f52a94678c1c70b9e568fdb1a16d8056afb893343b825ffc7f0f` |
| 13 | `theorem` | [image_tan_Ioo](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/image-tan-ioo.md) | 102 | `result-track:24b6f6a81b720b54b1a3f29431b41622a368cc71bd8677c94c880e891ee06200` |
| 14 | `def` | [tanOrderIso](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/tanorderiso.md) | 107 | `declaration-track:9781bee6d8be39bd2aaea643ba74e560fbc35e40cb0feb94df1999fe873af5a2` |
| 15 | `def` | [arctan](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/arctan.md) | 115 | `declaration-track:719bc044a8de1042b9f1f042d72f5ace333874b18b1f170f771e3be2c068925b` |
| 16 | `theorem` | [tan_arctan](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/tan-arctan.md) | 120 | `result-track:e02e1f65ca85e54f8ccedba0838639daaae718be730bcd87e055b30b23ef4670` |
| 17 | `theorem` | [arctan_mem_Ioo](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/arctan-mem-ioo.md) | 124 | `result-track:28d3a9e3d35d6c28f14f0e6fa18360402137cd89dbea76debce82fcbeec82d6c` |
| 18 | `theorem` | [range_arctan](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/range-arctan.md) | 129 | `result-track:8bc826015b37df3db77e786e5448c73fb4ee879644344604d6901032ccfc163f` |
| 19 | `theorem` | [arctan_tan](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/arctan-tan.md) | 133 | `result-track:58c00d48c0c82a6298d85f1c0df702eca39c9e15771c7f3ec175c9c2af23d64a` |
| 20 | `theorem` | [cos_arctan_pos](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/cos-arctan-pos.md) | 137 | `result-track:8f89f106eeaacec79137330660ca480f574d94a3a6343251c6e68c5209f8e615` |
| 21 | `theorem` | [cos_sq_arctan](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/cos-sq-arctan.md) | 141 | `result-track:1b41f3da11b5b177b91c3869d6d147ada38df91234505af4e666b1eb03f4bf73` |
| 22 | `theorem` | [sin_arctan](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/sin-arctan.md) | 145 | `result-track:59cb14114e38c8d912a2113c4cb5d36416a783dc9e06c3a95dcd60cb1a437e7a` |
| 23 | `theorem` | [cos_arctan](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/cos-arctan.md) | 149 | `result-track:bc7fbb1842b68cd20eae781bab4fda97be1b2d198c9d8082e496208838667cd5` |
| 24 | `theorem` | [arctan_lt_pi_div_two](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/arctan-lt-pi-div-two.md) | 153 | `result-track:429418ef987ba91e330525a28ab0a9d36fbbb14cc5648e0f63687908c57981f1` |
| 25 | `theorem` | [neg_pi_div_two_lt_arctan](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/neg-pi-div-two-lt-arctan.md) | 157 | `result-track:8cc99d11251598585979d3d0a3e4c2b9aa817361dd5117a3da45972abbf765be` |
| 26 | `theorem` | [arctan_eq_arcsin](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/arctan-eq-arcsin.md) | 161 | `result-track:0b651df9057ef8173d67b25e0b6107a8302ad78919f8913a10cf8b9966cf74bc` |
| 27 | `theorem` | [arcsin_eq_arctan](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/arcsin-eq-arctan.md) | 165 | `result-track:87acf79a0c93fc3c6534da344bf63299d9300fc63fc179f07e092341ba87ce4d` |
| 28 | `theorem` | [arctan_zero](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/arctan-zero.md) | 172 | `result-track:671ba0e03a7315ac7ca3f5ff1a8d49f14c818842566fb14fca648d72a57c4e48` |
| 29 | `theorem` | [arctan_eq_of_tan_eq](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/arctan-eq-of-tan-eq.md) | 175 | `result-track:804e290cf3f5232b2c69f01ea4c46c2932207b8c266682a07312beb190d8ce54` |
| 30 | `theorem` | [arctan_one](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/arctan-one.md) | 181 | `result-track:4a50d9ec3712bcfff6fc8e51ad828c2071f6a0bf72fd4e4246e09150dfa2d1b5` |
| 31 | `theorem` | [arctan_neg](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/arctan-neg.md) | 186 | `result-track:052601b45d4417903280cb7faf8b6a02e6834b0fc97a0eb7d52ffd6af75ac3fe` |
| 32 | `theorem` | [arctan_eq_arccos](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/arctan-eq-arccos.md) | 189 | `result-track:695d4d4a875a037a830aa4fbb13b95e1833536d96e41562faa2a05c35ed82155` |
| 33 | `theorem` | [arccos_eq_arctan](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/arccos-eq-arctan.md) | 197 | `result-track:f11a106494f745df5710b66b0a44d6c4c6ac09d8557c253d8f2458fa2e516fac` |
| 34 | `theorem` | [continuous_arctan](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/continuous-arctan.md) | 206 | `result-track:eee3bc09138bf272301e34fc4562a3c987af72714c8d9ec510e1c28f58c380ff` |
| 35 | `theorem` | [continuousAt_arctan](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/continuousat-arctan.md) | 210 | `result-track:972901d13770b8a0ff72f0d971a2b8830b2860e7c81ba3e612706d531fee3eb6` |
| 36 | `def` | [tanLocalHomeomorph](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/tanlocalhomeomorph.md) | 215 | `declaration-track:0ab131a7316298bfa664cc6481e88349c7c8ec84581441885e5ed28544bc9336` |
| 37 | `theorem` | [coe_tanLocalHomeomorph](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/coe-tanlocalhomeomorph.md) | 231 | `result-track:7790568c42ecbe4024537a81a49020fb2697f11ede65fe69e23ac0d119145caf` |
| 38 | `theorem` | [coe_tanLocalHomeomorph_symm](../../../../SpecialFunctions/ArctanTanNeZeroIff.lean/declarations/coe-tanlocalhomeomorph-symm.md) | 236 | `result-track:22eb4c5c9240a054daeeb8a8c1fd48fb39301b0c3400b386935ca565c73aa68b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=771b10b6b70910c4b50425d8adf5e691f142e500bcecbda1f8cfcdc4f31faf76 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Arctan/Variant5162b1f233511703703a7af0d101a785f1ded8871492af06730d1d4b89845afd.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Arctan/Variant5162b1f233511703703a7af0d101a785f1ded8871492af06730d1d4b89845afd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
