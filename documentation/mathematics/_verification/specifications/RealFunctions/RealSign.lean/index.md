# Verification target: Real Sign

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdd161102f6ac03847c8e3b8d07581c72bb060fa",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sign/Variant0ad15d07a8d421d4f4abbfdab022351ace5e945f17eae6dbb59288339613270d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/RealSign.lean/index.md) · [Full source](../../../../RealFunctions/RealSign.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdd161102f6ac03847c8e3b8d07581c72bb060fa`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sign/Variant0ad15d07a8d421d4f4abbfdab022351ace5e945f17eae6dbb59288339613270d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sign/Variant0ad15d07a8d421d4f4abbfdab022351ace5e945f17eae6dbb59288339613270d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Inv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sign](../../../../RealFunctions/RealSign.lean/declarations/sign.md) | 31 | `declaration-track:868e19f852c7ff6aa97ad608f202d39035e280d107cef65f63f7cce1ffd9f6ec` |
| 2 | `theorem` | [sign_of_neg](../../../../RealFunctions/RealSign.lean/declarations/sign-of-neg.md) | 34 | `result-track:05f1b47ddc3dad7c5223eb918fddd78ee5607ddd3e88705e3b14d6e91bf35c0d` |
| 3 | `theorem` | [sign_of_pos](../../../../RealFunctions/RealSign.lean/declarations/sign-of-pos.md) | 36 | `result-track:b880957d2ad92888ab3c57c322ff9b0f8c185559794a0736b3b8d2d15abac157` |
| 4 | `theorem` | [sign_zero](../../../../RealFunctions/RealSign.lean/declarations/sign-zero.md) | 39 | `result-track:6e70352d40b8fe7201e0619b1f0f7e41eb7e6c0b50ee158e8d25963be3e21103` |
| 5 | `theorem` | [sign_one](../../../../RealFunctions/RealSign.lean/declarations/sign-one.md) | 42 | `result-track:72a61a2bdf7833d661728850bb732935e8e501f77ce480be5e59f2596472dd2b` |
| 6 | `theorem` | [sign_apply_eq](../../../../RealFunctions/RealSign.lean/declarations/sign-apply-eq.md) | 45 | `result-track:248c96b310392db4b9005835a8b4ea9c8d3f4e5da674b2dcb2a79facbac30585` |
| 7 | `theorem` | [sign_apply_eq_of_ne_zero](../../../../RealFunctions/RealSign.lean/declarations/sign-apply-eq-of-ne-zero.md) | 52 | `result-track:a443e582fa519332676afa4c380f065e343aac0907fac7d2045bdfd01ff13d74` |
| 8 | `theorem` | [sign_eq_zero_iff](../../../../RealFunctions/RealSign.lean/declarations/sign-eq-zero-iff.md) | 56 | `result-track:fbf4894604b8fd85bd7c7b1a5cb94e1caa36261e1c97bab126b1042c4edddd0b` |
| 9 | `theorem` | [sign_intCast](../../../../RealFunctions/RealSign.lean/declarations/sign-intcast.md) | 65 | `result-track:e4d6906af654ab50a112dddcbf2789c20cf1fa515819b1511dfdd10cd88cc783` |
| 10 | `theorem` | [sign_neg](../../../../RealFunctions/RealSign.lean/declarations/sign-neg.md) | 72 | `result-track:89edb57ca68db22071b2af8d489d44846e95e892426d85d16dcaa72e25af5fc8` |
| 11 | `theorem` | [sign_mul_nonneg](../../../../RealFunctions/RealSign.lean/declarations/sign-mul-nonneg.md) | 78 | `result-track:5ba0aa3918ab4764cd44fa365a989c947c69499a7f889202c315516d83efb895` |
| 12 | `theorem` | [sign_mul_pos_of_ne_zero](../../../../RealFunctions/RealSign.lean/declarations/sign-mul-pos-of-ne-zero.md) | 86 | `result-track:3de6a07cc6ab767cabdb88bc92b2c8705ef18760925466f19b2b30c768298d90` |
| 13 | `theorem` | [inv_sign](../../../../RealFunctions/RealSign.lean/declarations/inv-sign.md) | 92 | `result-track:2ebbbf66f66f9d2fd41e68da594e4c5f2d2071fce2f1b7621dfbc6add6307d13` |
| 14 | `theorem` | [sign_inv](../../../../RealFunctions/RealSign.lean/declarations/sign-inv.md) | 102 | `result-track:4e0da9a11b8f7246a5514219c515fe364596e4125939e467db734237a749a2ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=63521c9ccc0f1ab638a2e583b2444139d1402c8237c9e6c4c987069aaf4ac3b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sign/Variant0ad15d07a8d421d4f4abbfdab022351ace5e945f17eae6dbb59288339613270d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sign/Variant0ad15d07a8d421d4f4abbfdab022351ace5e945f17eae6dbb59288339613270d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
