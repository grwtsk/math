# Verification target: Sym2 Order Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c62e9f0c3f9feb3386c9d91c7241c4f250a260a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant42f25bef7243160ae98e3ac58dfeee62b0f7fb1e900b692eb802ca5c50a5a8ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/Sym2OrderNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/Sym2OrderNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c62e9f0c3f9feb3386c9d91c7241c4f250a260a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant42f25bef7243160ae98e3ac58dfeee62b0f7fb1e900b692eb802ca5c50a5a8ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant42f25bef7243160ae98e3ac58dfeee62b0f7fb1e900b692eb802ca5c50a5a8ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Sym.Sym2` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Lattice` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sup](../../../../../../ComputerScience/TheoryOfData/DataStructures/Sym2OrderNamespaced.lean/declarations/sup.md) | 29 | `declaration-track:f76ff200d56888b18fee77a57f253a117af3e5946bce67b8282256a92b295104` |
| 2 | `theorem` | [sup_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/Sym2OrderNamespaced.lean/declarations/sup-mk.md) | 31 | `result-track:820571111ca9ef8261387dec4e3a1a9fd374b2eb1ca4cf4934655f14d514d5f8` |
| 3 | `def` | [inf](../../../../../../ComputerScience/TheoryOfData/DataStructures/Sym2OrderNamespaced.lean/declarations/inf.md) | 34 | `declaration-track:df3cc7c28b8b48f73b3e33bcbd22bfbe85cb932e3b1a04242d7a3c901414765d` |
| 4 | `theorem` | [inf_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/Sym2OrderNamespaced.lean/declarations/inf-mk.md) | 36 | `result-track:253399e62f654a885ec485ff81de47cbc331ed1f154216996978344143b79f33` |
| 5 | `theorem` | [inf_le_sup](../../../../../../ComputerScience/TheoryOfData/DataStructures/Sym2OrderNamespaced.lean/declarations/inf-le-sup.md) | 38 | `result-track:e12dd9128a3f29fc41a827f9ac5d3c4f57b08d8dbe8cd8756b191cb38ee74512` |
| 6 | `def` | [sortEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/Sym2OrderNamespaced.lean/declarations/sortequiv.md) | 43 | `declaration-track:97ab212fc537b2d6a00345467b282c1025b4c3c2e65d1f316a7ffbfe97bb4082` |
| 7 | `theorem` | [inf_eq_inf_and_sup_eq_sup](../../../../../../ComputerScience/TheoryOfData/DataStructures/Sym2OrderNamespaced.lean/declarations/inf-eq-inf-and-sup-eq-sup.md) | 55 | `result-track:44180cc0992c364129042703b9229f30be3d8f9d2d16589842ee62b2114a1d4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=43663544f6fa18a99595725ee4c7284ef081575f4bf9073a93ad7a54b1f7a2ae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant42f25bef7243160ae98e3ac58dfeee62b0f7fb1e900b692eb802ca5c50a5a8ee.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant42f25bef7243160ae98e3ac58dfeee62b0f7fb1e900b692eb802ca5c50a5a8ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
