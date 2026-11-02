# Certified mathematical transversal: source-covering typed spans

grwtsk contributors

<!-- BEGIN GENERATED RESULT ABSTRACT -->

## Abstract

A source-covering mathematical transversal is a typed span with a declared source-to-target relation, endpoint admissibility, and a proof for each valid witness. Target properties return to the original source only through a separately proved relation-preservation implication; two transversals compose only through matching intermediate witnesses and an explicit composition theorem. A finite Unit-to-Bool example shows source coverage does not imply target coverage or reconstruction. These are source proof candidates; Lean compilation, kernel replay and axiom auditing remain NOT_RUN.

<!-- END GENERATED RESULT ABSTRACT -->

## 1. Statements and exact hypotheses

Fix types A and B, admissibility predicates HA : A → Prop and HB : B → Prop,
and a source-defined relation R : A → B → Prop. A Transversal is a witness
carrier W, two endpoint maps W → A and W → B, a validity predicate, proofs
that valid witnesses have admissible endpoints, source coverage, and a proof
R(source(w), target(w)) for every valid w.

Source coverage is an existence assertion for **each** a satisfying HA a.
It does not assert that every target is hit or that a decoder exists.
A candidate relation that has not been established on actual witnesses is
not accepted by the schema.

### 1.1. Source-return theorem

Given a Transversal t, properties P on A and Q on B, assume

- for every a,b, R a b together with Q b implies P a; and
- for every b satisfying HB b, Q b holds.

Then every a satisfying HA a also satisfies P a.

Declaration: GRWTSK.CategoryTheoryHomologicalAlgebra.GeneralTheoryOfCategoriesAndFunctors.CertifiedTransversal.Transversal.source_property_of_target.

### 1.2. Composition theorem

Let f be a transversal from A to B for R, and g a transversal from B
to C for S. Fix a relation T on A and C. Assume

R(a,b) and S(b,c) jointly imply T(a,c), for all a,b,c.

Then the pullback of valid witness pairs whose B endpoints are literally
equal defines a transversal from A to C certified for T.

Declaration: GRWTSK.CategoryTheoryHomologicalAlgebra.GeneralTheoryOfCategoriesAndFunctors.CertifiedTransversal.Transversal.comp.

### 1.3. Boundary theorem

The total map Unit → Bool taking every source to false has a certified
source-covering transversal but has no witness targeting true.
Hence source coverage does not imply target coverage, invertibility,
representation faithfulness or exact reconstruction.

Declaration: GRWTSK.CategoryTheoryHomologicalAlgebra.GeneralTheoryOfCategoriesAndFunctors.CertifiedTransversal.lossyBooleanObservation_not_target_covering.

## 2. Mathematical proof and comparison

For source return, choose a valid witness covering a. Its certified relation
and target admissibility supply the target theorem. The independent
property-return implication gives P for the witness source. Its source
equality then gives P(a). No implication is derived from similarity alone.

For composition, choose a witness of f over a. The target of this witness
satisfies HB, so use source coverage of g to choose a second witness
over that exact intermediate point. These two witnesses form the
composite bridge; both certification proofs and the explicitly supplied
relation-composition theorem yield T. The proof cannot replace the two
premises by a disjunction.

The Boolean obstruction is direct: a constant-false map cannot reach true,
regardless of the everywhere-true comparison relation. This is a hostile
boundary against unjustified inverse and target-surjectivity claims.

## 3. Composition and intended consumer

This is a leaf article about one elementary type-level mathematical
construction. It does not claim general Grothendieck fibrations,
inverse-limit semantics, reconstruction of all mathematical objects,
a new category-theoretic equivalence or a measured discovery advantage.

The intended next consumer is the source-bound
[ExactSoficLanguageCover.lean](../../../../GRWTSK/DynamicalSystemsAndErgodicTheory/ExactSoficLanguageCover.lean).
That development already distinguishes admission of one labeled path from
equality of the **entire** finite-factor language. A legitimate instantiation
must prove the source representation map and its full-language comparison
and then specify exactly which observation returns to its source.

The existing
[TheoreticalQualification.lean](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/TheoreticalQualification.lean)
gives separate exact representation and signed-residual transport results;
those stronger properties do not follow automatically from this schema.

## 4. Verification and trust boundary

Source proof candidate, not a kernel-verified theorem claim.
Source commit: 5e06781a0d8849dfe8599c4b14d781512c285dcb.
Source blob: 3c61a47fb3a6d26026bcea636f2c0b478260bd3d.
Toolchain: leanprover/lean4:v4.34.1.
Repository Mathlib context pin: d13f23b723b8a846827a245b89c10fc7d3f11612.
This Lean module imports Init directly, not Mathlib.

Compilation: **NOT_RUN**.
Fresh kernel checking: **NOT_RUN**.
Transitive axiom audit: **NOT_RUN**.
Independent source comparison review: **PENDING**.
Source publication on maintained main: **CONFIRMED at the pinned commit**.

Neither compilation nor mathematical originality is inferred from source
inspection. See [issue #1576](https://github.com/grwtsk/math/issues/1576)
for source-bound verification obligations.

## 5. Sources and unresolved bridges

[Exact Lean source](../../../../GRWTSK/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CertifiedTransversal.lean)
and [structural intelligence](../../_support/reference/structural-intelligence.md)
supply the immediate mathematical context.

The proof is an elementary local construction, not a formalization imported
from an external research paper. The missing application is a typed
transversal carrying a genuine entire-language sofic correspondence.
Neither the graph periodic-point/trace theorem nor the dynamical zeta
determinant theorem has been established by this increment.

## 6. Revision and issuance

Revision 2 updates the authored source guide to the existing result-article
standard without changing the Lean source. No canonical publication date
or independent verification receipt is asserted.

<!-- BEGIN RESULT ARTICLE METADATA
{
  "result_article": {
    "schema": "grwtsk.result-article/1",
    "id": "certified-mathematical-transversal",
    "slug": "certified-mathematical-transversal",
    "aliases": [],
    "kind": "leaf",
    "title": "Certified mathematical transversal: source-covering typed spans",
    "author": "grwtsk contributors",
    "abstract": "A source-covering mathematical transversal is a typed span with a declared source-to-target relation, endpoint admissibility, and a proof for each valid witness. Target properties return to the original source only through a separately proved relation-preservation implication; two transversals compose only through matching intermediate witnesses and an explicit composition theorem. A finite Unit-to-Bool example shows source coverage does not imply target coverage or reconstruction. These are source proof candidates; Lean compilation, kernel replay and axiom auditing remain NOT_RUN.",
    "subjects": {
      "primary": "urn:uuid:4c0f6c9e-db23-5d18-85c8-67ff6c9c8f2b",
      "associations": []
    },
    "statements": [
      {
        "id": "source-property-return",
        "classification": "source-proof-candidate",
        "hypotheses": [
          "A,B are types with admissibility HA,HB and a fixed relation R : A → B → Prop.",
          "t is a Transversal A B HA HB R.",
          "For every a,b, R a b and Q b imply P a; Q holds on admissible target objects."
        ],
        "conclusion": "For every a, HA a implies P a.",
        "declarations": [
          "GRWTSK.CategoryTheoryHomologicalAlgebra.GeneralTheoryOfCategoriesAndFunctors.CertifiedTransversal.Transversal.source_property_of_target"
        ],
        "source_pins": [
          {
            "repository": "https://github.com/grwtsk/math",
            "commit": "5e06781a0d8849dfe8599c4b14d781512c285dcb",
            "path": "GRWTSK/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CertifiedTransversal.lean",
            "blob": "3c61a47fb3a6d26026bcea636f2c0b478260bd3d"
          }
        ]
      },
      {
        "id": "compatible-witness-composition",
        "classification": "source-proof-candidate",
        "hypotheses": [
          "f : Transversal A B HA HB R, g : Transversal B C HB HC S.",
          "The declared relation T is compatible: for all a,b,c, R a b and S b c imply T a c."
        ],
        "conclusion": "A source-covering Transversal A C HA HC T exists through matched valid witnesses.",
        "declarations": [
          "GRWTSK.CategoryTheoryHomologicalAlgebra.GeneralTheoryOfCategoriesAndFunctors.CertifiedTransversal.Transversal.comp"
        ],
        "source_pins": [
          {
            "repository": "https://github.com/grwtsk/math",
            "commit": "5e06781a0d8849dfe8599c4b14d781512c285dcb",
            "path": "GRWTSK/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CertifiedTransversal.lean",
            "blob": "3c61a47fb3a6d26026bcea636f2c0b478260bd3d"
          }
        ]
      },
      {
        "id": "source-coverage-not-target-coverage",
        "classification": "source-proof-candidate",
        "hypotheses": [
          "The finite source is Unit, the target is Bool, both are entirely admissible.",
          "The observation maps every source element to false."
        ],
        "conclusion": "The valid source-covering transversal has no valid witness targeting true.",
        "declarations": [
          "GRWTSK.CategoryTheoryHomologicalAlgebra.GeneralTheoryOfCategoriesAndFunctors.CertifiedTransversal.lossyBooleanObservation_not_target_covering"
        ],
        "source_pins": [
          {
            "repository": "https://github.com/grwtsk/math",
            "commit": "5e06781a0d8849dfe8599c4b14d781512c285dcb",
            "path": "GRWTSK/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CertifiedTransversal.lean",
            "blob": "3c61a47fb3a6d26026bcea636f2c0b478260bd3d"
          }
        ]
      }
    ],
    "verification": {
      "status": "NOT_RUN",
      "scope": "Exact Lean source at pinned commit and blob. Static inspection and publication only; compilation, fresh kernel replay and transitive axiom audit have not run.",
      "evidence": [],
      "axiom_policy": "No unexpected axioms or placeholders permitted; transitive axiom closure not yet observed.",
      "unresolved_premises": [
        "Native Lean compilation and proof replay for this source.",
        "Transitive axiom audit and independent mathematical source-fidelity review.",
        "An instantiated whole-language sofic source-return comparison.",
        "A sofic-indexed pseudofunctor and the graph periodic-point/dynamical-zeta bridges are not supplied."
      ]
    },
    "composition": null,
    "issue": {
      "revision": 2,
      "canonical_date": null,
      "issued_at": null
    },
    "metrics": []
  }
}
END RESULT ARTICLE METADATA -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CertifiedTransversal.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
