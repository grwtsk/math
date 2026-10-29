# Verification target: Artinian Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "749c09c0a822fddc39cb19829c0105b71f235707",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant7d74a6ff8cb2f1b4dd6e93c5c894c1ee6ef648597ea732410514498b35721ab3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/ArtinianDefsPublic.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/ArtinianDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `749c09c0a822fddc39cb19829c0105b71f235707`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant7d74a6ff8cb2f1b4dd6e93c5c894c1ee6ef648597ea732410514498b35721ab3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant7d74a6ff8cb2f1b4dd6e93c5c894c1ee6ef648597ea732410514498b35721ab3.lean.json)

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
| 1 | `abbrev` | [IsArtinian](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/ArtinianDefsPublic.lean/declarations/isartinian.md) | 43 | `declaration-track:640f8a00c9cfb7a35a9e5055277353ceb0eb1182e342dfc491ca1f7b158950b0` |
| 2 | `theorem` | [isArtinian_iff](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/ArtinianDefsPublic.lean/declarations/isartinian-iff.md) | 47 | `result-track:25c19a8430038e375c1ca4b21e64c47ae22d9d82bcc01b4ce5f90fe3bf273176` |
| 3 | `theorem` | [IsArtinian.induction](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/ArtinianDefsPublic.lean/declarations/isartinian-induction.md) | 52 | `result-track:e48ce25b5a2f78e1e75dce5b644a4d25e89770080542b1c1178e06209f0a59ad` |
| 4 | `abbrev` | [IsArtinianRing](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/ArtinianDefsPublic.lean/declarations/isartinianring.md) | 67 | `declaration-track:c0e46d05c7e9c4f011a883ed99748b8d98284b027b2594aca6b905c10ba97d22` |
| 5 | `theorem` | [isArtinianRing_iff](../../../../../CommutativeAlgebra/ChainConditionsFinitenessConditionsInCommutativeRingTheory/ArtinianDefsPublic.lean/declarations/isartinianring-iff.md) | 70 | `result-track:0a4dccbbec9077d36dd02e7e6a4c87de4c359e6a4cc6552684dd99eff20f1635` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=31e5cc526dc6ed49eabd00bb86be6e77be1f19cad4571015f7a90f3a4705b57f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variant7d74a6ff8cb2f1b4dd6e93c5c894c1ee6ef648597ea732410514498b35721ab3.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Defs/Variant7d74a6ff8cb2f1b4dd6e93c5c894c1ee6ef648597ea732410514498b35721ab3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
