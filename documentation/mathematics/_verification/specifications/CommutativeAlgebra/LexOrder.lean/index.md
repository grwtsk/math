# Verification target: Lex Order

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a95d4e516ff75fd7c8752aa5c7271057f49b323f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/LexOrder/Variant6f095f00bbdbeb7da98f105c43bf7c882221e383e17b189175bf9fcb544972d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/LexOrder.lean/index.md) · [Full source](../../../../CommutativeAlgebra/LexOrder.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a95d4e516ff75fd7c8752aa5c7271057f49b323f`.

Source path: `GRWTSK/Algebra/RingTheory/LexOrder/Variant6f095f00bbdbeb7da98f105c43bf7c882221e383e17b189175bf9fcb544972d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/LexOrder/Variant6f095f00bbdbeb7da98f105c43bf7c882221e383e17b189175bf9fcb544972d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.MvPowerSeries.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.WellFounded` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lexOrder](../../../../CommutativeAlgebra/LexOrder.lean/declarations/lexorder.md) | 30 | `declaration-track:dc472555205b0a070d12180b99881909f0f89bbbfd9694983fa9f047b715f796` |
| 2 | `theorem` | [lexOrder_def_of_ne_zero](../../../../CommutativeAlgebra/LexOrder.lean/declarations/lexorder-def-of-ne-zero.md) | 40 | `result-track:3cee2ed0a9b46424c614dd4bb9c3c11d4d9803bfb3f3d95c5271e369affc6318` |
| 3 | `theorem` | [lexOrder_eq_top_iff_eq_zero](../../../../CommutativeAlgebra/LexOrder.lean/declarations/lexorder-eq-top-iff-eq-zero.md) | 51 | `result-track:28ddc8b0ca4284963a7c078bb7b8b62e91f498e274e477f1dba7006c8a49ffde` |
| 4 | `theorem` | [lexOrder_zero](../../../../CommutativeAlgebra/LexOrder.lean/declarations/lexorder-zero.md) | 58 | `result-track:b6f25fc52c5f5354d388648e6b79edc1153e6363d4f99c6aaaa08e96b30c6360` |
| 5 | `theorem` | [exists_finsupp_eq_lexOrder_of_ne_zero](../../../../CommutativeAlgebra/LexOrder.lean/declarations/exists-finsupp-eq-lexorder-of-ne-zero.md) | 62 | `result-track:6a7df90f2a32d954e46a5fdf3b0c589234494e885e57e60ed06ec5d1fd96b68c` |
| 6 | `theorem` | [coeff_ne_zero_of_lexOrder](../../../../CommutativeAlgebra/LexOrder.lean/declarations/coeff-ne-zero-of-lexorder.md) | 68 | `result-track:4c346343873cd7a890e181e8bff7dd4865ec5f4abadd7012f40f0ebf185666d3` |
| 7 | `theorem` | [coeff_eq_zero_of_lt_lexOrder](../../../../CommutativeAlgebra/LexOrder.lean/declarations/coeff-eq-zero-of-lt-lexorder.md) | 81 | `result-track:4ba97284120b2b92a839f041efb1ab00e87c4412bab6eb657e879219542a6319` |
| 8 | `theorem` | [lexOrder_le_of_coeff_ne_zero](../../../../CommutativeAlgebra/LexOrder.lean/declarations/lexorder-le-of-coeff-ne-zero.md) | 90 | `result-track:4c8e09cb4c50eb9f9daa3539ec0572844e5cc734a38b9250323b5afaa7caffd2` |
| 9 | `theorem` | [le_lexOrder_iff](../../../../CommutativeAlgebra/LexOrder.lean/declarations/le-lexorder-iff.md) | 96 | `result-track:d48fccbceb986598be0770a39fc0e6c03cb68360c434d14bc3df7cdf945a74db` |
| 10 | `theorem` | [min_lexOrder_le](../../../../CommutativeAlgebra/LexOrder.lean/declarations/min-lexorder-le.md) | 112 | `result-track:75d115838d77b45c94aeaba756706a0946bc1ceba9cc55ba7ea2d2d2a1d84a79` |
| 11 | `theorem` | [coeff_mul_of_add_lexOrder](../../../../CommutativeAlgebra/LexOrder.lean/declarations/coeff-mul-of-add-lexorder.md) | 119 | `result-track:e40ca31afc7cfad82b3a2b6011b4aa9644dcb6e8c8cb6b75f5cc97cb89f14f5f` |
| 12 | `theorem` | [le_lexOrder_mul](../../../../CommutativeAlgebra/LexOrder.lean/declarations/le-lexorder-mul.md) | 134 | `result-track:6c24ecb4855439b38b6753d16d7c61c806e6bc587d6ca25b31f4d4e2f16d9362` |
| 13 | `theorem` | [lexOrder_mul](../../../../CommutativeAlgebra/LexOrder.lean/declarations/lexorder-mul.md) | 155 | `result-track:c3823bceaba68b5e3d07966eba4efa4c6ef47119dd4b92e3e37562cbf262cf2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a30b33b3cd1c6cee5ce54c601568b1d2f115f02107554f18d2cfe42afa08a38 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RingTheory/LexOrder/Variant6f095f00bbdbeb7da98f105c43bf7c882221e383e17b189175bf9fcb544972d1.lean","GRWTSK/_verification/specifications/Algebra/RingTheory/LexOrder/Variant6f095f00bbdbeb7da98f105c43bf7c882221e383e17b189175bf9fcb544972d1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
