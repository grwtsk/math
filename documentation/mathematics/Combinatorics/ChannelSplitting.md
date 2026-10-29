# Predicate-channel splitting

[Lean source](../../../GRWTSK/MathematicalLogicAndFoundations/GeneralLogic/ChannelSplitting.lean)

A route is a predicate `Channel → Signal → Prop`. A signal can satisfy several
channel predicates. `Residual route signal` means that it satisfies none.
`GRWTSK.Combinatorics.FiniteSets.ChannelSplitting.lossless` proves, classically,
that a signal is routed somewhere or belongs to this residual. `filter_split`
enumerates all four membership cases for two predicates; `residual_disjoint`
proves that a residual signal belongs to no ordinary channel.

Noeaaeue uses taxonomy UUIDs as channels and explicit source selectors as
predicates. The fiber optics analogy refers to multiplexing and filtering.
It supplies no physical model, semantic taxonomy acceptance or proof of the
signal's mathematical payload.

[Workflow contracts](../_support/reference/deterministic-formalization.md)

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6efad49caf2daaa5aa805eb3e0b21260e03d2b82bed329c016a1cdf9664ebad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteSets/ChannelSplitting.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
