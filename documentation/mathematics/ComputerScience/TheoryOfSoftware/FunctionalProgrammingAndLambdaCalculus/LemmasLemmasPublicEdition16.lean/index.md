# Lemmas Lemmas Public Edition16

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantc8ca5896058f65fddb2463d95176d06b8246115a13452ebcbf437eac16bd7bd3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f19eee0ab0b1b5e84274dc7f16a85db7984df1e7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasPublicEdition16.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [isNaNBits](declarations/isnanbits.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [ofBitVec_toBitVec](declarations/ofbitvec-tobitvec.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [toBitVec_ofBitVec](declarations/tobitvec-ofbitvec.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [forall_iff](declarations/forall-iff.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [unpackSign_packComponents](declarations/unpacksign-packcomponents.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [packComponents_unpackSign_unpackExponent_unpackMantissa](declarations/packcomponents-unpacksign-unpackexponent-unpackmantissa.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [pack_unpack](declarations/pack-unpack.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [pack_unpack_of_valid](declarations/pack-unpack-of-valid.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [unpack_inj_of_valid](declarations/unpack-inj-of-valid.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [isNaNBits_packedNaN](declarations/isnanbits-packednan.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [unpack_packedNaN](declarations/unpack-packednan.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [unpack_packedZero](declarations/unpack-packedzero.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [isNaN_iff](declarations/isnan-iff.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [unpack_eq_notANumber_iff_of_valid](declarations/unpack-eq-notanumber-iff-of-valid.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [unpack_eq_zero_iff_of_valid](declarations/unpack-eq-zero-iff-of-valid.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isNaN_unpack_iff_of_valid](declarations/isnan-unpack-iff-of-valid.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [beq_iff_ne_notANumber_and_eq](declarations/beq-iff-ne-notanumber-and-eq.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [unpack_beq_unpack_iff](declarations/unpack-beq-unpack-iff.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Float.toBits_inj](declarations/float-tobits-inj.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Float32.toBits_inj](declarations/float32-tobits-inj.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Float.ofBits_toBits](declarations/float-ofbits-tobits.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Float32.ofBits_toBits](declarations/float32-ofbits-tobits.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Float.isNaN_eq_decide_eq_nan](declarations/float-isnan-eq-decide-eq-nan.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Float32.isNaN_eq_decide_eq_nan](declarations/float32-isnan-eq-decide-eq-nan.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Float.beq_iff_ne_nan_and_eq](declarations/float-beq-iff-ne-nan-and-eq.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Float32.beq_iff_ne_nan_and_eq](declarations/float32-beq-iff-ne-nan-and-eq.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Float.nan_beq_eq_false](declarations/float-nan-beq-eq-false.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Float32.nan_beq_eq_false](declarations/float32-nan-beq-eq-false.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Float.beq_nan_eq_false](declarations/float-beq-nan-eq-false.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Float32.beq_nan_eq_false](declarations/float32-beq-nan-eq-false.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Float.beq_self_iff](declarations/float-beq-self-iff.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Float32.beq_self_iff](declarations/float32-beq-self-iff.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Float.beq_self_eq_false_iff](declarations/float-beq-self-eq-false-iff.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Float32.beq_self_eq_false_iff](declarations/float32-beq-self-eq-false-iff.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Float.bne_eq](declarations/float-bne-eq.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Float32.bne_eq](declarations/float32-bne-eq.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3fab731304106f43f0c6b4150b25d18a131bc7bff5a8899b726411685d7032ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantc8ca5896058f65fddb2463d95176d06b8246115a13452ebcbf437eac16bd7bd3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
