# Verification target: Dimension Localization Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ebaa2ed413b2eb42e85f1323dda3a0fb2711304",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Localization/Variant1f874203d24009ad6233c579fc590b1e04c51bb424815cabf798a2af9aecb47f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionLocalizationPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionLocalizationPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ebaa2ed413b2eb42e85f1323dda3a0fb2711304`.

Source path: `GRWTSK/Algebra/Localization/Variant1f874203d24009ad6233c579fc590b1e04c51bb424815cabf798a2af9aecb47f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Localization/Variant1f874203d24009ad6233c579fc590b1e04c51bb424815cabf798a2af9aecb47f.lean.json)

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
| 1 | `lemma` | [IsLocalizedModule.lift_rank_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionLocalizationPublic.lean/declarations/islocalizedmodule-lift-rank-eq.md) | 44 | `result-track:b2483d5384e1f336a6ce04f3f267f6078b049b0ee4605566816f1e00549ef406` |
| 2 | `lemma` | [IsLocalizedModule.finrank_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionLocalizationPublic.lean/declarations/islocalizedmodule-finrank-eq.md) | 56 | `result-track:8454576c727fa8e925574fa03ac954a21d212dea0d3dd38989b42a8ad15e2087` |
| 3 | `lemma` | [IsLocalizedModule.rank_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionLocalizationPublic.lean/declarations/islocalizedmodule-rank-eq.md) | 61 | `result-track:625975efa2609c0c9b94aa0acf993481d257b7893663c77f446fec993d1518dd` |
| 4 | `lemma` | [IsLocalization.rank_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionLocalizationPublic.lean/declarations/islocalization-rank-eq.md) | 65 | `result-track:5e676d793458008e6f6205be5465f65798af5fb1cf54300525675aa609bdabc6` |
| 5 | `theorem` | [IsLocalization.finrank_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionLocalizationPublic.lean/declarations/islocalization-finrank-eq.md) | 75 | `result-track:fb28f48fcfb6a726d3369e2a0b8d63abfcd9b63308327f1696c8df7ad4e5091c` |
| 6 | `theorem` | [IsLocalization.linearIndepOn_finsetIntegerMultiple](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionLocalizationPublic.lean/declarations/islocalization-linearindepon-finsetintegermultiple.md) | 81 | `result-track:d51959b293c430c7fb6b0ac7fc7537c64a30aade18269e1589dbf6de39035919` |
| 7 | `theorem` | [IsFractionRing.rank_right_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionLocalizationPublic.lean/declarations/isfractionring-rank-right-eq.md) | 104 | `result-track:f22e5873471ba4f75a040c9e18bf5b42ee656b2403dc1a891a331c3b7b9a6bc2` |
| 8 | `theorem` | [IsFractionRing.finrank_right_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionLocalizationPublic.lean/declarations/isfractionring-finrank-right-eq.md) | 113 | `result-track:a8ddf8f1f826414205ecc27075a3e179cd80efcf0fa9e2f62d749ec0fe834359` |
| 9 | `theorem` | [IsFractionRing.finrank_left_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionLocalizationPublic.lean/declarations/isfractionring-finrank-left-eq.md) | 125 | `result-track:6a1fa7696a19c92fb2eee721925e5ffa8fdddbaad829e2b9f8eaea4912d4368e` |
| 10 | `theorem` | [IsFractionRing.finrank_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionLocalizationPublic.lean/declarations/isfractionring-finrank-eq.md) | 146 | `result-track:c6d7676e0ce2e3a3c9401965595ba1d91c1b08b7621f66f6666de6030f011388` |
| 11 | `theorem` | [exists_set_linearIndependent_of_isDomain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionLocalizationPublic.lean/declarations/exists-set-linearindependent-of-isdomain.md) | 153 | `result-track:9b9a39987948ed2b5c702abdbe657ea10d527e29ddf9ea6ef298da17a9f71ad6` |
| 12 | `theorem` | [rank_quotient_add_rank_of_isDomain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionLocalizationPublic.lean/declarations/rank-quotient-add-rank-of-isdomain.md) | 166 | `result-track:d1b751d62a1f9df789652a5cf58eb47985505702c63de7c8c6f30d2bd008329e` |
| 13 | `instance` | [IsDomain.hasRankNullity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionLocalizationPublic.lean/declarations/isdomain-hasranknullity.md) | 176 | `declaration-track:2ca681b9194990e45004026b5108b957da472141493d117c3b32ee5f8d38f9df` |
| 14 | `theorem` | [lift_rank_eq_of_le_nonZeroDivisors](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionLocalizationPublic.lean/declarations/lift-rank-eq-of-le-nonzerodivisors.md) | 193 | `result-track:67932ab70063caf96b1bc834eb9addc673fce5cb81dd1c332ce558b29b0f8ab9` |
| 15 | `theorem` | [finrank_eq_of_le_nonZeroDivisors](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionLocalizationPublic.lean/declarations/finrank-eq-of-le-nonzerodivisors.md) | 212 | `result-track:e1d3fbfd683311c932dd50d7f59d3dcbe7bfbd4fb77f4819d6f5bc986b3c9b1c` |
| 16 | `theorem` | [rank_eq_of_le_nonZeroDivisors](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionLocalizationPublic.lean/declarations/rank-eq-of-le-nonzerodivisors.md) | 216 | `result-track:037e7b4bedda4bc001a799de40c9c40efbdc534457f86f21f7873a64aeca43b3` |
| 17 | `theorem` | [lift_rank_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionLocalizationPublic.lean/declarations/lift-rank-eq.md) | 229 | `result-track:e6920be8203e5936c63f9c7b3082edb2ccc4fb4c8927e54d3cff5ba47bc22578` |
| 18 | `theorem` | [finrank_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionLocalizationPublic.lean/declarations/finrank-eq.md) | 253 | `result-track:f60f46d4e314dbffd044c67c030f132a27210346a49bd9034caad9eb70c6c904` |
| 19 | `theorem` | [rank_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionLocalizationPublic.lean/declarations/rank-eq.md) | 256 | `result-track:d39d2903fd626ee201ba6c8e6ec02ff7a16a522a801721335ecf7c4b29cf3dca` |
| 20 | `lemma` | [aleph0_le_rank_of_isEmpty_oreSet](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionLocalizationPublic.lean/declarations/aleph0-le-rank-of-isempty-oreset.md) | 270 | `result-track:f64cc01443a6c67bc7f10caedfd6579dc44f03926691ef63ddf8de3eb1535a2f` |
| 21 | `lemma` | [nonempty_oreSet_of_strongRankCondition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionLocalizationPublic.lean/declarations/nonempty-oreset-of-strongrankcondition.md) | 298 | `result-track:912db98a3b71621f851d29ce72d004602d9df70944024f6aca72dda2dccc6183` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5b4ede8ec1c96709a06c2fc45abf8803ab355a0332bc47486a259815ac1083f5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Localization/Variant1f874203d24009ad6233c579fc590b1e04c51bb424815cabf798a2af9aecb47f.lean","GRWTSK/_verification/specifications/Algebra/Localization/Variant1f874203d24009ad6233c579fc590b1e04c51bb424815cabf798a2af9aecb47f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
