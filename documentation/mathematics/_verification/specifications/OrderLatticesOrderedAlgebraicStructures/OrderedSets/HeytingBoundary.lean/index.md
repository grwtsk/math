# Verification target: Heyting Boundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98ae729fad8e4bf865ef13a065d76d3a8942852d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variant0d6c843c8a7f6432e556a9b102bacc102d001439a410fc97398aa6f8a45791ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingBoundary.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingBoundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98ae729fad8e4bf865ef13a065d76d3a8942852d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variant0d6c843c8a7f6432e556a9b102bacc102d001439a410fc97398aa6f8a45791ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variant0d6c843c8a7f6432e556a9b102bacc102d001439a410fc97398aa6f8a45791ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.BooleanAlgebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundary](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingBoundary.lean/declarations/boundary.md) | 35 | `declaration-track:6e538e6ff6984dfa89adbd7bf92a5fbc47b332c3f16f9791729d9f3f8cb85bee` |
| 2 | `theorem` | [inf_hnot_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingBoundary.lean/declarations/inf-hnot-self.md) | 44 | `result-track:433f84ca7470582a1e14005d16db02bae1b8940b5d648bc7aa36f6d2c6a162f1` |
| 3 | `theorem` | [boundary_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingBoundary.lean/declarations/boundary-le.md) | 47 | `result-track:873db12479e25d90dba6aef3b0c8bd553a815ae7ba5a152a0029181c7f7abfb2` |
| 4 | `theorem` | [boundary_le_hnot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingBoundary.lean/declarations/boundary-le-hnot.md) | 50 | `result-track:313e02a323757776da900d95e20c081689357cb49205796a82333469d37f8494` |
| 5 | `theorem` | [boundary_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingBoundary.lean/declarations/boundary-bot.md) | 54 | `result-track:068bb5bcf08499c23823ffee1a63e9d7cb0648693991b3b93aded3b7fc2acc23` |
| 6 | `theorem` | [boundary_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingBoundary.lean/declarations/boundary-top.md) | 57 | `result-track:e02704be85efbf15fb6260557ed11dc05e5b20fa42f0a02d5f5b54025dd41448` |
| 7 | `theorem` | [boundary_hnot_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingBoundary.lean/declarations/boundary-hnot-le.md) | 59 | `result-track:e89872d8e575231da68aa6553bc6da4d69ce07ed0720aa29ada7b01e98bf3065` |
| 8 | `theorem` | [boundary_hnot_hnot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingBoundary.lean/declarations/boundary-hnot-hnot.md) | 63 | `result-track:e3ec2b82943149ab4785467e35815ab97c06fdd50891605b45930d824f256dd6` |
| 9 | `theorem` | [hnot_boundary](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingBoundary.lean/declarations/hnot-boundary.md) | 67 | `result-track:c77d1a5b0c9c1cf3684f36533d0e61d00179d2222862b99cc08045fb3445d753` |
| 10 | `theorem` | [boundary_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingBoundary.lean/declarations/boundary-inf.md) | 70 | `result-track:92bbc51ce10f84f549c22ff9458da08f611586d6752dc16f5e8ba276a279656d` |
| 11 | `theorem` | [boundary_inf_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingBoundary.lean/declarations/boundary-inf-le.md) | 74 | `result-track:01e9e886728ba3c41c0904c5662057eae621d5352328bb05ff28eed4e58e65d4` |
| 12 | `theorem` | [boundary_sup_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingBoundary.lean/declarations/boundary-sup-le.md) | 77 | `result-track:03111af05ff24e7e12fc106ba2387bd9478da64f9ab964b6d8e0c661b1fce0ab` |
| 13 | `example` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingBoundary.lean/declarations/example.md) | 87 | `declaration-track:3dfac713cbf365f17bbb72892498eb911e23150d4290f41027567e561e4e4ddb` |
| 14 | `theorem` | [boundary_le_boundary_sup_sup_boundary_inf_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingBoundary.lean/declarations/boundary-le-boundary-sup-sup-boundary-inf-left.md) | 92 | `result-track:3e5e99993f0b585e55042daf620cf0f8fe0ae4c17013dda2ef520739601271ce` |
| 15 | `theorem` | [boundary_le_boundary_sup_sup_boundary_inf_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingBoundary.lean/declarations/boundary-le-boundary-sup-sup-boundary-inf-right.md) | 103 | `result-track:9fac533c48b20239acc5bcd89a57972a74b25a304697cfcfd9d9687acf872401` |
| 16 | `theorem` | [boundary_sup_sup_boundary_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingBoundary.lean/declarations/boundary-sup-sup-boundary-inf.md) | 107 | `result-track:5876333dec75117e575d4c86eee5f6834e4b19d803bc1c55838cd41da04a471b` |
| 17 | `theorem` | [boundary_idem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingBoundary.lean/declarations/boundary-idem.md) | 113 | `result-track:2d3e90d4332f7423bf105dfee6298d244831969803c0ac4a5aff8e208da8e8b9` |
| 18 | `theorem` | [hnot_hnot_sup_boundary](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingBoundary.lean/declarations/hnot-hnot-sup-boundary.md) | 115 | `result-track:a05198d599985c44bcfa8d31fe6ab0d49b46a0faf6f3156b19b14d4560c8d18b` |
| 19 | `theorem` | [hnot_eq_top_iff_exists_boundary](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingBoundary.lean/declarations/hnot-eq-top-iff-exists-boundary.md) | 119 | `result-track:6c7a56aee5afd1d31734e979f20659fb47d3bb7bf649c2701f3a82fdf1e7d8b9` |
| 20 | `theorem` | [Coheyting.boundary_eq_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingBoundary.lean/declarations/coheyting-boundary-eq-bot.md) | 133 | `result-track:357f5c23503ac94aea0188201b9111a86fc61ef17f4543964983351580110afc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1316c184a6845a1f4ea57b40f2409352a1319a5a8e25df166f83a7de8571cd9f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variant0d6c843c8a7f6432e556a9b102bacc102d001439a410fc97398aa6f8a45791ea.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Boundary/Variant0d6c843c8a7f6432e556a9b102bacc102d001439a410fc97398aa6f8a45791ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
