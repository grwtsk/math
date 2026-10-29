# Verification target: Artinian Algebra

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9933a7eec0933d05cb25605efd5ca649fff8f5b8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Algebra/Variant188c646816248aec820e3a25e1be6b66e2f234868f653c18ac0eeedaf02af13b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/ArtinianAlgebra.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/ArtinianAlgebra.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9933a7eec0933d05cb25605efd5ca649fff8f5b8`.

Source path: `GRWTSK/Algebra/Algebra/Variant188c646816248aec820e3a25e1be6b66e2f234868f653c18ac0eeedaf02af13b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Algebra/Variant188c646816248aec820e3a25e1be6b66e2f234868f653c18ac0eeedaf02af13b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Artinian.Ring` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.Algebra.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.IsIntegral.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isUnit_of_isIntegral_of_nonZeroDivisor](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/ArtinianAlgebra.lean/declarations/isunit-of-isintegral-of-nonzerodivisor.md) | 25 | `result-track:cffb1c21203e289dae0f9afe6413b3e7d37a355e1099f50da08b79dc84724871` |
| 2 | `theorem` | [isUnit_iff_nonZeroDivisor_of_isIntegral](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/ArtinianAlgebra.lean/declarations/isunit-iff-nonzerodivisor-of-isintegral-source-edition-2.md) | 36 | `result-track:a09b981dc393effea49f49b7a6484dc489bfc70d3a7f59538de26e801b2addde` |
| 3 | `theorem` | [isUnit_of_nonZeroDivisor_of_isIntegral'](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/ArtinianAlgebra.lean/declarations/isunit-of-nonzerodivisor-of-isintegral.md) | 42 | `result-track:78fa9ec7083e435d70e08ed3d25b8ae6698d72ff7311a6b39d2827143b1dfbd4` |
| 4 | `theorem` | [isUnit_iff_nonZeroDivisor_of_isIntegral'](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/ArtinianAlgebra.lean/declarations/isunit-iff-nonzerodivisor-of-isintegral.md) | 47 | `result-track:1be37422179058cda75af3b042dd88b7b55c55f82563548ccf23eda3d1914516` |
| 5 | `theorem` | [isUnit_submonoid_eq_of_isIntegral](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/ArtinianAlgebra.lean/declarations/isunit-submonoid-eq-of-isintegral.md) | 51 | `result-track:d20c73258b08312f1daf45099454528ed7885bafbf661a1560eb4fa6650ea41d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e3f44f11b239eef6edb97b44ffa6e3a1e47c2798eaa553662d78b2e36ebaa64f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Algebra/Variant188c646816248aec820e3a25e1be6b66e2f234868f653c18ac0eeedaf02af13b.lean","GRWTSK/_verification/specifications/Algebra/Algebra/Variant188c646816248aec820e3a25e1be6b66e2f234868f653c18ac0eeedaf02af13b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
