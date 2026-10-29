# Verification target: Ring Units Map Neg

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75952808095a69e51c697186f18b806efaf453ef",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Units/Variant75852bac9658d9f38a402af79519df46f4ba721c73c4d36bd41add5701c4ef9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/RingUnitsMapNeg.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/RingUnitsMapNeg.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75952808095a69e51c697186f18b806efaf453ef`.

Source path: `GRWTSK/Algebra/Units/Variant75852bac9658d9f38a402af79519df46f4ba721c73c4d36bd41add5701c4ef9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Units/Variant75852bac9658d9f38a402af79519df46f4ba721c73c4d36bd41add5701c4ef9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.InjSurj` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Hom` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Hom.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingUnitsMapNeg.lean/declarations/instance-source-edition-2.md) | 29 | `declaration-track:e4dcb70b828a862b377d817b85d341e942b69c0f55dc4527572e53950d0544cf` |
| 2 | `theorem` | [val_neg](../../../../AssociativeRingsAndAlgebras/RingUnitsMapNeg.lean/declarations/val-neg.md) | 35 | `result-track:f5c67f6d41374986f7393900d6543f0ecff006d5d9d0171b27499a1264f26719` |
| 3 | `theorem` | [coe_neg_one](../../../../AssociativeRingsAndAlgebras/RingUnitsMapNeg.lean/declarations/coe-neg-one.md) | 39 | `result-track:0684e6e1d4b89246170e082bcd43409966016934935cb882ba722a5f73441201` |
| 4 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingUnitsMapNeg.lean/declarations/instance.md) | 42 | `declaration-track:9c6c54107b76155caa06cffaecda05b5870b8d21891db4a44955aa1f5b134e51` |
| 5 | `theorem` | [neg_divp](../../../../AssociativeRingsAndAlgebras/RingUnitsMapNeg.lean/declarations/neg-divp.md) | 46 | `result-track:70e9d10852f979eef5a6a237e3948f62a948740ba95ca2257d12793ef998ebec` |
| 6 | `theorem` | [divp_add_divp_same](../../../../AssociativeRingsAndAlgebras/RingUnitsMapNeg.lean/declarations/divp-add-divp-same.md) | 56 | `result-track:9d010299ede40599640b9d4c60cb67fbf38106995f4b221c4520055dc42377ae` |
| 7 | `theorem` | [add_divp](../../../../AssociativeRingsAndAlgebras/RingUnitsMapNeg.lean/declarations/add-divp.md) | 60 | `result-track:5f002aaab0cd861596a801587a52c71cbe48ebe21da946091e07b4354d580d58` |
| 8 | `theorem` | [divp_add](../../../../AssociativeRingsAndAlgebras/RingUnitsMapNeg.lean/declarations/divp-add.md) | 64 | `result-track:9ba9f85b5d65a7fbe14f65064ac817d107bd591729808df75e78fc3889876826` |
| 9 | `theorem` | [divp_sub_divp_same](../../../../AssociativeRingsAndAlgebras/RingUnitsMapNeg.lean/declarations/divp-sub-divp-same.md) | 75 | `result-track:96db830b467cf53d8c722c648ed5eb8d5ab56d9644d6fbb6aebde05b9b14d199` |
| 10 | `theorem` | [sub_divp](../../../../AssociativeRingsAndAlgebras/RingUnitsMapNeg.lean/declarations/sub-divp.md) | 79 | `result-track:ebee51553e7eed438f82352a54df5561a04afd2ee0a468b7a7456de880a22462` |
| 11 | `theorem` | [divp_sub](../../../../AssociativeRingsAndAlgebras/RingUnitsMapNeg.lean/declarations/divp-sub.md) | 83 | `result-track:217d7c28b774562b6a712b96d640bd56a55508e92b8949b0f75338f998209e23` |
| 12 | `theorem` | [map_neg](../../../../AssociativeRingsAndAlgebras/RingUnitsMapNeg.lean/declarations/map-neg.md) | 88 | `result-track:2be2275f4a540632b7fb835780283285e34aaea34a3114f122c0bc5f71bc9cd4` |
| 13 | `theorem` | [map_neg_one](../../../../AssociativeRingsAndAlgebras/RingUnitsMapNeg.lean/declarations/map-neg-one.md) | 92 | `result-track:f729c370e61c73a64094002beae3c937cf817854cfd407e82b51bb09dc479b0d` |
| 14 | `theorem` | [IsUnit.neg](../../../../AssociativeRingsAndAlgebras/RingUnitsMapNeg.lean/declarations/isunit-neg.md) | 100 | `result-track:fb8c9021ed7c762bd895aaf2c520b0b777501bdac63a0555fe230923f58781fd` |
| 15 | `theorem` | [IsUnit.neg_iff](../../../../AssociativeRingsAndAlgebras/RingUnitsMapNeg.lean/declarations/isunit-neg-iff.md) | 104 | `result-track:f80a07a02995b4554c25f52368a9bc5200748811823b917177e3bec8fcf1d18d` |
| 16 | `theorem` | [isUnit_neg_one](../../../../AssociativeRingsAndAlgebras/RingUnitsMapNeg.lean/declarations/isunit-neg-one.md) | 107 | `result-track:a4fbfc5ca26f6e4ed0acfd4e03d753ffb76ce8ac76fcbe992a47321e93834f5c` |
| 17 | `theorem` | [IsUnit.sub_iff](../../../../AssociativeRingsAndAlgebras/RingUnitsMapNeg.lean/declarations/isunit-sub-iff.md) | 109 | `result-track:7df4205ac8e19ee3452adc768e72dfa547a4a0ee854aa8484f3552fc0a84b9b9` |
| 18 | `theorem` | [divp_add_divp](../../../../AssociativeRingsAndAlgebras/RingUnitsMapNeg.lean/declarations/divp-add-divp.md) | 115 | `result-track:63b68554a037a3e8eeb5b1374d0a589e475275229d53aadf853ae6e71cf360e3` |
| 19 | `theorem` | [divp_sub_divp](../../../../AssociativeRingsAndAlgebras/RingUnitsMapNeg.lean/declarations/divp-sub-divp.md) | 124 | `result-track:f373809179b2870b7aa6c5860047db72fdf6db31a4c80b6d06f696bfcb3aca63` |
| 20 | `theorem` | [add_eq_mul_one_add_div](../../../../AssociativeRingsAndAlgebras/RingUnitsMapNeg.lean/declarations/add-eq-mul-one-add-div.md) | 128 | `result-track:c02f15bceaaabbe7d49eb9841890fdd73511ae06f9cda7b38f1d1b2ce5f70cc0` |
| 21 | `theorem` | [isUnit_map](../../../../AssociativeRingsAndAlgebras/RingUnitsMapNeg.lean/declarations/isunit-map.md) | 139 | `result-track:e4aed1c182ab020a6b4ad8d63fb3a15e98a54d679f9005bd88fa5f43eb2ee246` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad4a797a9ef35171d3a486f5e2ffdae6356308983cb66372ff0a1abf44668032 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Units/Variant75852bac9658d9f38a402af79519df46f4ba721c73c4d36bd41add5701c4ef9a.lean","GRWTSK/_verification/specifications/Algebra/Units/Variant75852bac9658d9f38a402af79519df46f4ba721c73c4d36bd41add5701c4ef9a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
