# Verification target: Complex Order Namespaced Eq Re Of Real Le

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0005188ccb6c7d9856e0b6452737258f40e57236",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Order/Variantac31ace8b84cf78ccab0d38b9e1c556683a74d311595f74b6992681b2211cede.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/ComplexOrderNamespacedEqReOfRealLe.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/ComplexOrderNamespacedEqReOfRealLe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0005188ccb6c7d9856e0b6452737258f40e57236`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Order/Variantac31ace8b84cf78ccab0d38b9e1c556683a74d311595f74b6992681b2211cede.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Order/Variantac31ace8b84cf78ccab0d38b9e1c556683a74d311595f74b6992681b2211cede.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Complex.Module` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [partialOrder](../../../../FunctionsOfAComplexVariable/ComplexOrderNamespacedEqReOfRealLe.lean/declarations/partialorder.md) | 42 | `declaration-track:97552f2671922957ae54024e836d7825e45c7430a6c3e9a40b9d6f465608d37a` |
| 2 | `theorem` | [le_def](../../../../FunctionsOfAComplexVariable/ComplexOrderNamespacedEqReOfRealLe.lean/declarations/le-def.md) | 63 | `result-track:f24edb906544525e6b136a84d83009110d941654998e894b5f6cc13aeaf3cb71` |
| 3 | `theorem` | [lt_def](../../../../FunctionsOfAComplexVariable/ComplexOrderNamespacedEqReOfRealLe.lean/declarations/lt-def.md) | 67 | `result-track:ecbc95ee6288b46e78e3873598f8d725d92d2fbaccd2f339bb6e818e57bbc1d9` |
| 4 | `theorem` | [real_le_real](../../../../FunctionsOfAComplexVariable/ComplexOrderNamespacedEqReOfRealLe.lean/declarations/real-le-real.md) | 73 | `result-track:4ccbd86e5ae70710262a020abc118667c82c594070cb483bc6cf64ea2eea2f71` |
| 5 | `theorem` | [real_lt_real](../../../../FunctionsOfAComplexVariable/ComplexOrderNamespacedEqReOfRealLe.lean/declarations/real-lt-real.md) | 77 | `result-track:9a37f8cb2fa34c8ca4bda9c6c5f33f527f69b599f08a0616d71f5e1a09232bd4` |
| 6 | `theorem` | [zero_le_real](../../../../FunctionsOfAComplexVariable/ComplexOrderNamespacedEqReOfRealLe.lean/declarations/zero-le-real.md) | 82 | `result-track:fb750fc859d262c24c346af2c27e18897fb8e3039d5dd9733aae60278d6a9afe` |
| 7 | `theorem` | [zero_lt_real](../../../../FunctionsOfAComplexVariable/ComplexOrderNamespacedEqReOfRealLe.lean/declarations/zero-lt-real.md) | 87 | `result-track:79f3b55463dc2fa777d429d52864c4c380ce8b4e8d0ff093ad01b9253e33aa7a` |
| 8 | `theorem` | [not_le_iff](../../../../FunctionsOfAComplexVariable/ComplexOrderNamespacedEqReOfRealLe.lean/declarations/not-le-iff.md) | 91 | `result-track:b07b2f9cd7fef8cbbc1796d14fa75022ca781c91c9928561ad428bee2afa7941` |
| 9 | `theorem` | [not_lt_iff](../../../../FunctionsOfAComplexVariable/ComplexOrderNamespacedEqReOfRealLe.lean/declarations/not-lt-iff.md) | 95 | `result-track:03dcee53a076d431006eb4bde65ef13709211179352a991b1e8c9cc1fabae965` |
| 10 | `theorem` | [not_le_zero_iff](../../../../FunctionsOfAComplexVariable/ComplexOrderNamespacedEqReOfRealLe.lean/declarations/not-le-zero-iff.md) | 99 | `result-track:06e8984d9651e67d9e2cc1d6132141c5a9b16c101f30743a67f1de0456adfbc9` |
| 11 | `theorem` | [not_lt_zero_iff](../../../../FunctionsOfAComplexVariable/ComplexOrderNamespacedEqReOfRealLe.lean/declarations/not-lt-zero-iff.md) | 103 | `result-track:6040bbc55ec169a5eee4a04a066c3dc6f3fc79a79f9686b8bab72be2879c16ab` |
| 12 | `theorem` | [eq_re_ofReal_le](../../../../FunctionsOfAComplexVariable/ComplexOrderNamespacedEqReOfRealLe.lean/declarations/eq-re-ofreal-le.md) | 107 | `result-track:785d9e66618c556468c3b394d4cebe99ee7e9cb7b37dd019e93fe22c3437ec14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=90b72d58db9013e9861d2de498b95b7740269cb248ed68703b08879136abd93f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Order/Variantac31ace8b84cf78ccab0d38b9e1c556683a74d311595f74b6992681b2211cede.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variantac31ace8b84cf78ccab0d38b9e1c556683a74d311595f74b6992681b2211cede.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
