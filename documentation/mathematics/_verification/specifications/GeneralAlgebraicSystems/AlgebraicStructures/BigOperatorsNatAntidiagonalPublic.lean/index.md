# Verification target: Big Operators Nat Antidiagonal Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f71de0b1abd3cb68cee0975cf89dcee8f0686f62",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantea4e66466923a84957f293745b7207a1f6fa838606d2f2a980f4ef51fce90044.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsNatAntidiagonalPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsNatAntidiagonalPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f71de0b1abd3cb68cee0975cf89dcee8f0686f62`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantea4e66466923a84957f293745b7207a1f6fa838606d2f2a980f4ef51fce90044.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantea4e66466923a84957f293745b7207a1f6fa838606d2f2a980f4ef51fce90044.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_antidiagonal_succ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsNatAntidiagonalPublic.lean/declarations/prod-antidiagonal-succ.md) | 28 | `result-track:31349518630ad41ceac5ce6b3ae02a2a02ecb2ba5c28c498682244df62cc7aba` |
| 2 | `theorem` | [prod_antidiagonal_swap](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsNatAntidiagonalPublic.lean/declarations/prod-antidiagonal-swap.md) | 34 | `result-track:45c4eb3737e643d1a9e231210731a4b4fa19c47a5e8d9798716d65efca4653e5` |
| 3 | `theorem` | [prod_antidiagonal_succ'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsNatAntidiagonalPublic.lean/declarations/prod-antidiagonal-succ-source-edition-2.md) | 40 | `result-track:fec3b830065bba92c3a412052cbf340ac20cec702a45b5534b59a7244ee3eb36` |
| 4 | `theorem` | [prod_antidiagonal_subst](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsNatAntidiagonalPublic.lean/declarations/prod-antidiagonal-subst.md) | 46 | `result-track:d11ae425dc1abf45d6791cb71a296cd3b5081dd86ec2aaa84474ad5e187f7e51` |
| 5 | `theorem` | [prod_antidiagonal_eq_prod_range_succ_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsNatAntidiagonalPublic.lean/declarations/prod-antidiagonal-eq-prod-range-succ-mk.md) | 51 | `result-track:dbc61dac998d51db862e743f67fabd066de6d9f98b5b7998427828fe340819af` |
| 6 | `theorem` | [prod_antidiagonal_eq_prod_range_succ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/BigOperatorsNatAntidiagonalPublic.lean/declarations/prod-antidiagonal-eq-prod-range-succ.md) | 59 | `result-track:a3675ca6079587036e2858f169488c120490f093b75587a0cefde5cf8a334504` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ee9621f27c035465904e947c0799b149373decef14c2606d3b0d0c1d5f9e356 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantea4e66466923a84957f293745b7207a1f6fa838606d2f2a980f4ef51fce90044.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Variantea4e66466923a84957f293745b7207a1f6fa838606d2f2a980f4ef51fce90044.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
