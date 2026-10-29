# Verification target: Finite Product Equivalence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1f80e1f153e2885b2df1c816915586bef8a5fde",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/InductiveFamilies/FamilyExamples/FiniteIndexTypes/MixedRadixCoordinateFibers/Variante097301879a07848/FiniteProductEquivalence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteProductEquivalence.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteProductEquivalence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1f80e1f153e2885b2df1c816915586bef8a5fde`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/InductiveFamilies/FamilyExamples/FiniteIndexTypes/MixedRadixCoordinateFibers/Variante097301879a07848/FiniteProductEquivalence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/InductiveFamilies/FamilyExamples/FiniteIndexTypes/MixedRadixCoordinateFibers/Variante097301879a07848/FiniteProductEquivalence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Carrier.Address` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Intervals` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Nth` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CoordinateFiber](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteProductEquivalence.lean/declarations/coordinatefiber.md) | 39 | `declaration-track:32968f378a4e2f129ac74d2aa24e3b0e1ce33d6b9895d74f80a62de6a8e483cf` |
| 2 | `def` | [cardinality](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteProductEquivalence.lean/declarations/cardinality.md) | 46 | `declaration-track:12491d8bdd20aee2b9cdd06c0f82cc5d713ff8b57d6a7d0881c172dfecf468a3` |
| 3 | `def` | [mixedRadix](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteProductEquivalence.lean/declarations/mixedradix.md) | 51 | `declaration-track:260bea93435f125fd2481908ea57b8227614f1dfc9f398fca03563b82e929843` |
| 4 | `def` | [zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteProductEquivalence.lean/declarations/zero.md) | 57 | `declaration-track:155e37e25c7021674031388ca9afab20abd690bbac3fa92deb8efc0b6f4c64c2` |
| 5 | `theorem` | [mixedRadix_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteProductEquivalence.lean/declarations/mixedradix-zero.md) | 65 | `result-track:140d81856dc34f8fad915827745b2c0a343539caed8b2238c5f7ae35ffa70807` |
| 6 | `theorem` | [cardinality_positive](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteProductEquivalence.lean/declarations/cardinality-positive.md) | 76 | `result-track:abf845ce7efeada748a817e8925501a5c636026ab033d22355f5f79166d95d03` |
| 7 | `def` | [ofNat](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteProductEquivalence.lean/declarations/ofnat.md) | 88 | `declaration-track:2b5189b519f8309b63566b4f6e2c4a6887df185040303f170149fa2e8b54f99b` |
| 8 | `theorem` | [mixedRadix_ofNat](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteProductEquivalence.lean/declarations/mixedradix-ofnat.md) | 96 | `result-track:1cc822a17b41a06098d93a4be3319b5cc13640d191ef6e8dda0d48a77d360d21` |
| 9 | `theorem` | [mixedRadix_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteProductEquivalence.lean/declarations/mixedradix-injective.md) | 119 | `result-track:fc3c3828956a2cfa794405b44aa0d3a65806a924dd9fdd3e8518c096e4250fb2` |
| 10 | `theorem` | [mixedRadix_lt_cardinality](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteProductEquivalence.lean/declarations/mixedradix-lt-cardinality.md) | 149 | `result-track:a95030db6b159089725fcc9f5d81dbbdcd4dfd4c7c0dfdb0bdf3d16371f3efb1` |
| 11 | `def` | [mixedRadixEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteProductEquivalence.lean/declarations/mixedradixequiv.md) | 173 | `declaration-track:496c21fc0202712bb9f6c728c8ab292baf82f9149bac88bc284d0c751938a8c6` |
| 12 | `theorem` | [mixedRadixEquiv_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FiniteProductEquivalence.lean/declarations/mixedradixequiv-apply.md) | 188 | `result-track:19c83107569042c1d7da95bbced243182fcef108c8d4588c538b086a09fd4d10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d2bf3b1a87da83f676537dd210ac500cbb22f5c2d65e73216316f62a487ecadc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/InductiveFamilies/FamilyExamples/FiniteIndexTypes/MixedRadixCoordinateFibers/Variante097301879a07848/FiniteProductEquivalence.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/InductiveFamilies/FamilyExamples/FiniteIndexTypes/MixedRadixCoordinateFibers/Variante097301879a07848/FiniteProductEquivalence.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
