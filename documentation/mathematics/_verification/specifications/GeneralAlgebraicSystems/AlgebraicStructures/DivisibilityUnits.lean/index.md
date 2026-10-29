# Verification target: Divisibility Units

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71583e8747030645e280a67e52881f4e334d80dc",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Units/Variantacfd617d6aff32f0de33d64cfdfc96c22453946ceec8865ded7bcaded5177d8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71583e8747030645e280a67e52881f4e334d80dc`.

Source path: `GRWTSK/Algebra/GroupTheory/Units/Variantacfd617d6aff32f0de33d64cfdfc96c22453946ceec8865ded7bcaded5177d8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Units/Variantacfd617d6aff32f0de33d64cfdfc96c22453946ceec8865ded7bcaded5177d8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Divisibility.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coe_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/coe-dvd.md) | 30 | `result-track:ff4be042351f46f77e0cfcaf89883ad3a7c4693451f60bf1d9a6e6fe4f9da04b` |
| 2 | `theorem` | [dvd_mul_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/dvd-mul-right-source-edition-2.md) | 35 | `result-track:b11ad82528bf212312841f85263f06ee0515040be7cae851739100d127e87c1a` |
| 3 | `theorem` | [mul_right_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/mul-right-dvd-source-edition-2.md) | 40 | `result-track:d8dade3fc774d0dd88eba83aadc6b2a6fb7c16820817626b525c425246c980ab` |
| 4 | `theorem` | [dvd_mul_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/dvd-mul-left.md) | 52 | `result-track:30f28fdbbfe76a0b6e4c0cd7f0f626c28e7b80bcbd5a30752a9dcfd8284af8b1` |
| 5 | `theorem` | [mul_left_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/mul-left-dvd-source-edition-2.md) | 58 | `result-track:d6b94567fefa464ed3cab50f57ccc9ddfb86433ecd3a572343719fdc5c00cbf5` |
| 6 | `theorem` | [dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/dvd.md) | 74 | `result-track:5b767aee08b01c8d17ebb239ae9ab1d21f56aaa7737c351fca79bbdbf564b205` |
| 7 | `theorem` | [dvd_mul_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/dvd-mul-right.md) | 79 | `result-track:714978723905c5cd5fec46c97260cbcfe208f74462e90f7b7981ec59b871bc6a` |
| 8 | `theorem` | [mul_right_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/mul-right-dvd.md) | 85 | `result-track:08cb55a4f7d68a6c19e2446d9c5bf40550f5e829185b747b88f5252a45850f5d` |
| 9 | `theorem` | [isPrimal](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isprimal.md) | 89 | `result-track:be8b9547ed09a10c6f7a9d17faed3cbbeb5b1fdebd274cc6f382d8730639ed80` |
| 10 | `theorem` | [dvd_mul_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/dvd-mul-left-source-edition-2.md) | 101 | `result-track:cff64831c8eed83eed7f82c1ba34cee262a9a1b57cba29cd31399aa77f29df27` |
| 11 | `theorem` | [mul_left_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/mul-left-dvd.md) | 108 | `result-track:2c7e0495013463cade44545c86ab01888bfa11281c54b3bfcfb2d6e45b8e57b1` |
| 12 | `theorem` | [isUnit_iff_dvd_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isunit-iff-dvd-one.md) | 120 | `result-track:8d91b08a098025a85b8604cf33ed58cc61677158f351ebffbd2dae0bc3e2e7e7` |
| 13 | `theorem` | [isUnit_iff_forall_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isunit-iff-forall-dvd.md) | 123 | `result-track:ef8a68b269a80e73aae668fee78fe958e78baeb3dd653adf1b11674016e63bad` |
| 14 | `theorem` | [isUnit_of_dvd_unit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isunit-of-dvd-unit.md) | 126 | `result-track:c665888980a32ebdc5ae856a2e20d158ebf320177cdb4ba0550f6f4166ad28c4` |
| 15 | `theorem` | [isUnit_of_dvd_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isunit-of-dvd-one.md) | 129 | `result-track:9403c9e97f06f66bd3f665202cac4aed4aad8774bcbcbdea68f97ad549465c1c` |
| 16 | `theorem` | [not_isUnit_of_not_isUnit_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/not-isunit-of-not-isunit-dvd.md) | 132 | `result-track:710dc261352471c53addf43bf852850a99b3f65b364059539f5718dbb849522b` |
| 17 | `def` | [IsRelPrime](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isrelprime.md) | 140 | `declaration-track:8c0fdbe77c0823ea0c3195b8a45c01260152a5acae4d56107b63e6636bcda788` |
| 18 | `theorem` | [IsRelPrime.symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isrelprime-symm.md) | 144 | `result-track:c33024674c2403196c24ec19733989b9f37070bbb0c3122c75a41ec72661f755` |
| 19 | `theorem` | [isRelPrime_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isrelprime-comm.md) | 146 | `result-track:7570dece12478ff17e0bcd0c5373c63baf0ca74a0227d79cc4900b81333aece0` |
| 20 | `theorem` | [isRelPrime_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isrelprime-self.md) | 149 | `result-track:12b115a6f11a53713ad96a028b434e51e43b3c6df6832482e35372684b878b84` |
| 21 | `theorem` | [IsUnit.isRelPrime_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isunit-isrelprime-left.md) | 152 | `result-track:2e9890c0cf23feed78f52ae48c0a49b63182b4c046f4cd52dca5bbbacb127f8c` |
| 22 | `theorem` | [IsUnit.isRelPrime_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isunit-isrelprime-right.md) | 154 | `result-track:2e08069bcd92a04107f961549ffb6b19fb2ee76f46768eb0d0e2da222765d351` |
| 23 | `theorem` | [isRelPrime_one_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isrelprime-one-left.md) | 155 | `result-track:bcbe0e49ccc63b73cd2ffa5d705fcf0c83bc7a8fb9f05c2dc268734b38cc48ad` |
| 24 | `theorem` | [isRelPrime_one_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isrelprime-one-right.md) | 156 | `result-track:71f5c8d0f5ddc3dfbf109cd639f0a9b4be7974293649baf24d3f851f4b349393` |
| 25 | `theorem` | [IsRelPrime.of_mul_left_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isrelprime-of-mul-left-left.md) | 158 | `result-track:cf6b6b3d65f15e74394222751ea1cfe246d68cbe825a3d718cdcad02f08a31ea` |
| 26 | `theorem` | [IsRelPrime.of_mul_left_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isrelprime-of-mul-left-right.md) | 161 | `result-track:c15d5638689b9c0fb32990d22f3bbff2fea3e82cb2cded47c2416ee14620b0c3` |
| 27 | `theorem` | [IsRelPrime.of_mul_right_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isrelprime-of-mul-right-left.md) | 164 | `result-track:9ab11008b0a86d7d957578612eba4ead959e32583d8f688ef863bb5086db9d4c` |
| 28 | `theorem` | [IsRelPrime.of_mul_right_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isrelprime-of-mul-right-right.md) | 168 | `result-track:a23c5399aeb116f540659700bf9dbb6a314b28e518fd1ac13f089e89a38e7367` |
| 29 | `theorem` | [IsRelPrime.of_dvd_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isrelprime-of-dvd-left.md) | 171 | `result-track:1325267f1e508406cfc5870cccc6e6e628f3bfbe8e13af2b9cf279b8cc2d9e41` |
| 30 | `theorem` | [IsRelPrime.of_dvd_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isrelprime-of-dvd-right.md) | 174 | `result-track:9dfa76f016901e550b9c226f061f26bbd731048071af8595a0ed7952cccf142d` |
| 31 | `theorem` | [IsRelPrime.isUnit_of_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isrelprime-isunit-of-dvd.md) | 177 | `result-track:c30d1260c84e60feb778fb5899b3a95c5ee5f28443357fc8341d855d51db5afe` |
| 32 | `theorem` | [isRelPrime_mul_unit_left_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isrelprime-mul-unit-left-left.md) | 185 | `result-track:fbd12b6002a6e383510c5620b17bfaae6baead0dd362f6209290ba41a72a9d99` |
| 33 | `theorem` | [isRelPrime_mul_unit_left_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isrelprime-mul-unit-left-right.md) | 188 | `result-track:50f26442b9d2137ec23efbbf981b9b948fd18d1238c30174d8170de821d224f2` |
| 34 | `theorem` | [isRelPrime_mul_unit_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isrelprime-mul-unit-left.md) | 191 | `result-track:8c89c7258647123de0513a0b2ac85579390f39076f6b6b0119986c000a52a257` |
| 35 | `theorem` | [isRelPrime_mul_unit_right_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isrelprime-mul-unit-right-left.md) | 194 | `result-track:a9723429b2d4cdfda5f9f168fcfb015e8d9d6f177d82db71ec48d540297a9d8e` |
| 36 | `theorem` | [isRelPrime_mul_unit_right_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isrelprime-mul-unit-right-right.md) | 197 | `result-track:9260bdb104a7171dfd8dd1a85933ef1dcd754631263021a94424b8109037f129` |
| 37 | `theorem` | [isRelPrime_mul_unit_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isrelprime-mul-unit-right.md) | 200 | `result-track:4000b2aef8a1ef68c18d0642514eedf4e4ad8939ac23d2ac1af781a9cdd8900f` |
| 38 | `theorem` | [IsRelPrime.dvd_of_dvd_mul_right_of_isPrimal](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isrelprime-dvd-of-dvd-mul-right-of-isprimal.md) | 205 | `result-track:a59dac41811418b0d23b76de3fdcb4073a718ca591251abaf6fa2745c7a8a858` |
| 39 | `theorem` | [IsRelPrime.dvd_of_dvd_mul_left_of_isPrimal](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isrelprime-dvd-of-dvd-mul-left-of-isprimal.md) | 210 | `result-track:baa8fbb45787f7db154ca3977c3d984d352839463dcafbcece1813fcef5f3aeb` |
| 40 | `theorem` | [IsRelPrime.mul_dvd_of_right_isPrimal](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isrelprime-mul-dvd-of-right-isprimal.md) | 214 | `result-track:b9da89e63e3265f78ec8358a225581abd45dead01f91cda5270d9add65cb1f9b` |
| 41 | `theorem` | [IsRelPrime.mul_dvd_of_left_isPrimal](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isrelprime-mul-dvd-of-left-isprimal.md) | 219 | `result-track:ac3acf29e130e1e3e25dab064ce97281fdbfa3999122bb9852d5affceb55dd2e` |
| 42 | `theorem` | [IsRelPrime.dvd_of_dvd_mul_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isrelprime-dvd-of-dvd-mul-right.md) | 229 | `result-track:4beaa79928327510ab74624195e286df57638460e1cc21a9b7847f9588eaddac` |
| 43 | `theorem` | [IsRelPrime.dvd_of_dvd_mul_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isrelprime-dvd-of-dvd-mul-left.md) | 232 | `result-track:759c09581b8f670f1aef02af9fae4db72c8c84a0f489e729e5bd0a8833ea10ac` |
| 44 | `theorem` | [IsRelPrime.mul_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isrelprime-mul-left.md) | 235 | `result-track:cc42ef0b8e04e412c905df37c2656c0c0c9772044ebde5af11b3d02107c00154` |
| 45 | `theorem` | [IsRelPrime.mul_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isrelprime-mul-right.md) | 240 | `result-track:ae33ae404f7eba9bb6c78cddedcfcdcd870e6de400f0d1bf83ebe058f52ea454` |
| 46 | `theorem` | [IsRelPrime.mul_left_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isrelprime-mul-left-iff.md) | 244 | `result-track:2e529645990dc976c652ffb0b0168c9fe8b7d55b4f8ce8893eaf1bfa6ba9b905` |
| 47 | `theorem` | [IsRelPrime.mul_right_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isrelprime-mul-right-iff.md) | 247 | `result-track:041ab93cc52017a4b6e5021cb4a17383b53b51f5506eb93afb0c77acf807ab26` |
| 48 | `theorem` | [IsRelPrime.mul_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DivisibilityUnits.lean/declarations/isrelprime-mul-dvd.md) | 250 | `result-track:091904e5644e2fc2ef284ed2a04ed1b32c3939bd51b31e1ab955f09e56bf2e94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=77c0f46ab4235991de9369407ddbe2a3c092aa1661968d6463a20024957ee35d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Units/Variantacfd617d6aff32f0de33d64cfdfc96c22453946ceec8865ded7bcaded5177d8f.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Units/Variantacfd617d6aff32f0de33d64cfdfc96c22453946ceec8865ded7bcaded5177d8f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
