# Constructive propositional derivations

[Lean source](../../../../../GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Propositional/ConstructiveDerivation.lean)

`Formula` contains atoms, truth, falsity, conjunction, disjunction and implication.
`Meaning valuation` interprets atoms as arbitrary propositions and each connective
by its corresponding constructive operation. `Derives Γ p` is a finite derivation
whose assumption, introduction and elimination rules preserve these meanings.

`GRWTSK.MathematicalLogic.Propositional.ConstructiveDerivation.sound` proves
that a derivable conclusion holds under any valuation satisfying every explicit
context premise. `closed_sound` specializes this to the empty context, and
`no_closed_falsity` rules out a closed derivation of falsity.

The soundness proof assumes a derivation; it does not establish completeness of a
bounded search algorithm or a translation from prose. Noeaaeue's structured
compiler independently replays its derivation and submits emitted Lean terms to
a separate verification queue. Native receipts live in Noeaaeue.

[Workflow contracts](../../../_support/reference/deterministic-formalization.md)

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc633b9c97c5e199ffc3a1c6261bad5813a1c1a9dfc82c202046e2302aac6bc3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Propositional/ConstructiveDerivation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
