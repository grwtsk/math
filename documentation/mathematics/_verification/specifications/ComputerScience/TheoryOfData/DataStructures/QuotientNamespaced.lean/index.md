# Verification target: Quotient Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85272b65ea4933e14f37b9475dcaf7ebc1d45bbc",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variante55671d185282b10c1073eb3959c3fc7aaad19c6129800ca558ab8db04c69c15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85272b65ea4933e14f37b9475dcaf7ebc1d45bbc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variante55671d185282b10c1073eb3959c3fc7aaad19c6129800ca558ab8db04c69c15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variante55671d185282b10c1073eb3959c3fc7aaad19c6129800ca558ab8db04c69c15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Quotient` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Int.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.QuotientOperations` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Equiv.TypeTags` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientZmultiplesNatEquivZMod](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientNamespaced.lean/declarations/quotientzmultiplesnatequivzmod.md) | 54 | `declaration-track:ae9632698e20716e3828173fc60eb3a4930d83ad5c55f8a2b6d7c50c773ccb8d` |
| 2 | `def` | [quotientZmultiplesEquivZMod](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientNamespaced.lean/declarations/quotientzmultiplesequivzmod.md) | 60 | `declaration-track:5005fc2b3bbd437e63c04ce03c53c7bad27cc7f8dcc2f9056e15e7e52ae41c87` |
| 3 | `def` | [quotientSpanNatEquivZMod](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientNamespaced.lean/declarations/quotientspannatequivzmod.md) | 65 | `declaration-track:c55f00c8db72e15363c9f8cb9913f3f031741b85a87c9645cf3d33c64f60c479` |
| 4 | `def` | [quotientSpanEquivZMod](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientNamespaced.lean/declarations/quotientspanequivzmod.md) | 72 | `declaration-track:b3054f005df0343405005c360b732c2f9fa4e0fb0bbdb55b6f4bfceb584fbec3` |
| 5 | `def` | [zmultiplesQuotientStabilizerEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientNamespaced.lean/declarations/zmultiplesquotientstabilizerequiv.md) | 85 | `declaration-track:26d821dc473487befb6208baf896b3bb08872e8993dac8b971ab512e6a565fe1` |
| 6 | `theorem` | [zmultiplesQuotientStabilizerEquiv_symm_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientNamespaced.lean/declarations/zmultiplesquotientstabilizerequiv-symm-apply.md) | 103 | `result-track:d534fa55f89d3127bc255ebd1bb9f9bf5a450ace90ad6a0b3282876978d7a990` |
| 7 | `def` | [zpowersQuotientStabilizerEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientNamespaced.lean/declarations/zpowersquotientstabilizerequiv.md) | 118 | `declaration-track:33c9780419e139499c045f2c92660471d6371cddd3add563e13bb5fe62e37a28` |
| 8 | `theorem` | [zpowersQuotientStabilizerEquiv_symm_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientNamespaced.lean/declarations/zpowersquotientstabilizerequiv-symm-apply.md) | 124 | `result-track:33942aef92f1a1e5b0865e57fc8f5aeb61ee8992469af9e3d713ead040217645` |
| 9 | `def` | [orbitZpowersEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientNamespaced.lean/declarations/orbitzpowersequiv.md) | 130 | `declaration-track:a3c62b0ea8ba000c349ec70889c27b6b1689ef92cc0791896d170cc67065f305` |
| 10 | `def` | [Quotient Namespaced](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientNamespaced.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-qu.md) | 135 | `declaration-track:0b8f3270d428bec3d5c78da1444fff7972cb12c516aa2814f2d2d50fe1d40a0f` |
| 11 | `theorem` | [orbitZpowersEquiv_symm_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientNamespaced.lean/declarations/orbitzpowersequiv-symm-apply.md) | 145 | `result-track:705b138173a949652e2cf14f5cceae9044a2c3de797b345a1f5335662c045b61` |
| 12 | `theorem` | [orbitZpowersEquiv_symm_apply'](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientNamespaced.lean/declarations/orbitzpowersequiv-symm-apply-source-edition-2.md) | 152 | `result-track:706f371ed70f18fd5b3780025b1f3c96c802405096517715f0e91253be6a14ab` |
| 13 | `theorem` | [Quotient Namespaced](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientNamespaced.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-qu-source-edition-2.md) | 159 | `result-track:e7134817ddfefbff39d6c0ac34390a63795414e070aec2986a832c61a493f011` |
| 14 | `theorem` | [minimalPeriod_eq_card](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientNamespaced.lean/declarations/minimalperiod-eq-card.md) | 172 | `result-track:14617b4719c0ac8b78062cbf65137bfd8846710bbcc21e622934119ae9c6b151` |
| 15 | `instance` | [minimalPeriod_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientNamespaced.lean/declarations/minimalperiod-pos.md) | 180 | `declaration-track:6cc68b12c11d16af79a2a06d45bf1afa41cb6065fe95d29f81b93c30771e4549` |
| 16 | `theorem` | [order_eq_card_zpowers'](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientNamespaced.lean/declarations/order-eq-card-zpowers.md) | 200 | `result-track:69b142e154ad4c7d54e722ec8e57146e178abcb91b72641adda62a002ff715d1` |
| 17 | `theorem` | [IsOfFinOrder.finite_zpowers](../../../../../../ComputerScience/TheoryOfData/DataStructures/QuotientNamespaced.lean/declarations/isoffinorder-finite-zpowers.md) | 209 | `result-track:6be6ac8fb82f5c7b0ca82b54ddcfe2cf2f81fc93b504ccb03e3e1b1a69e72d29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=59294c90b1664ca474a20d37aa7268666ec4b3ffbb2a15c0b25e5ee656c4282b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variante55671d185282b10c1073eb3959c3fc7aaad19c6129800ca558ab8db04c69c15.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Quotient/Variante55671d185282b10c1073eb3959c3fc7aaad19c6129800ca558ab8db04c69c15.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
