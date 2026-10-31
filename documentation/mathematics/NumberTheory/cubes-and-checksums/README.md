# Integer cubes and decimal checksums: scoped formalization

Local attribution: grwtsk contributors.

At math `b419756ab25304880180bb9900afb543fab9a8aa`, managed Noe checking
passed all three source modules, all twenty-six selected declaration axiom
audits, all twenty-six expected interfaces, final source/runtime validation,
and exact host-configuration restoration. This is a completed mathematical
claim batch, not a completed Numberphile video or channel.

| Source module | Checked public declarations | Scope |
| --- | ---: | --- |
| `GRWTSK/NumberTheory/SumsOfThreeCubes.lean` | 11 | Universal modulo-nine obstruction, explicit integer witnesses for 33, 42 and 3, and distinct displayed solutions for 3 |
| `GRWTSK/NumberTheory/Taxicab.lean` | 3 | Two different increasing positive natural pairs summing in cubes to 1729 |
| `GRWTSK/NumberTheory/CastingOutNines.lean` | 12 | Decimal coefficient congruence, addition/multiplication checks, counterexamples, undetectable error families and adjacent transpositions |

The declaration namespaces are respectively
`GRWTSK.NumberTheory.DiophantineEquations.SumsOfThreeCubes`,
`GRWTSK.NumberTheory.DiophantineEquations.Taxicab`, and
`GRWTSK.NumberTheory.ElementaryNumberTheory.CastingOutNines`.
The durable evidence projection below enumerates every declaration, exact
expected interface, source blob and axiom report. Filesystem placement follows
the MSC2020 map; namespaces do not imply the source directory.

The cube carrier is all integers, with negative summands permitted. The local
obstruction excludes residues four and five modulo nine; its sufficiency is
only a conjecture definition. The checked taxicab predicate requires increasing
positive pairs and excludes reordered duplicates. The decimal induction works
for every finite list of natural coefficients, least significant first, including
ordinary decimal digits, leading zeroes and the empty list. Passing a checksum
does not certify a numerical answer; explicit false positives are proved.

These claims are associated with Numberphile, videos by Brady Haran:
[The Uncracked Problem with 33](https://www.numberphile.com/videos/the-uncracked-problem-with-33)
(2015, Tim Browning),
[42 is the new 33](https://www.numberphile.com/videos/42-is-the-new-33)
(2019, Andrew Booker),
[The Mystery of 42 is Solved](https://www.numberphile.com/videos/the-mystery-of-42-is-solved)
(2019, Andrew Booker),
[3 as the sum of the 3 cubes](https://www.numberphile.com/videos/3-as-the-sum-of-the-3-cubes)
(2019, Andrew Booker),
[1729 and Taxi Cabs](https://www.numberphile.com/videos/1729-and-taxi-cabs)
(2012, James Grime and Roger Bowley), and
[Casting Out Nines](https://www.numberphile.com/videos/casting-out-nines)
(2017, James Grime). The large cube witnesses are independently recorded by
Andrew V. Sutherland, joint results with Andrew R. Booker, at
[Sums of cubes](https://math.mit.edu/~drew/sumsofcubes.html).
The source registry preserves each exact numerical witness and hypothesis.
Historical descriptions of unsolved cases are not current proof premises.

## Evidence and trust boundary

The original successful receipt has SHA-256
`13aadaaf5b557f311b2bc52efee6da7c7642ebb397e49cffdc2f816ef5f504f9`.
Raw receipts, registries and process records remain external in Noe runtime
`formalization/numberphile-r8/run-1/`. No operational receipt is committed here.
The public record is a distinct privacy-safe derived projection, with its own
bytes and digest; it is not an altered copy certified by the original digest
and is not an independent replay.

[Public qualification projection](https://github.com/grwtsk/noeaaeue/blob/ef5c635d4fccf13a8cad229e09f4c16211909a2f/verification/math/numberphile/b419756ab253/qualification.json).

The compiler is Lean 4.34.1. Each source and importing consumer was freshly
compiled with trust zero, one thread, 1024 MiB, warnings as errors, and the
unchanged managed CPU limits. No earlier project build artifact was reused.
Allowed axioms are `propext`, `Quot.sound` and `Classical.choice`; no report
contains `sorryAx`. The installed Lean core is an explicitly pinned compiled
boundary, not rebuilt source. OS confinement, platform refinement and independent
compiler correctness are not proved by this receipt.

## Successor obligation: taxicab minimality

A new source candidate extends Taxicab with a separate positive, nondecreasing
pair predicate, allowing equal summands within a pair. The existing strictly
increasing-pair predicate is preserved, and an explicit implication transports
its 1729 witnesses into the broader predicate. A finite uniqueness check over
`Fin 12` includes diagonal pairs. A universal positivity argument proves that
any positive-cube sum below 1729 has both ordered entries below twelve, so the
finite check applies to arbitrary natural candidates. The consumer asserts the
universal least-number property, not merely a finite empirical search result.

The four new public declarations are `strict_to_positive`,
`positive_cube_pair_upper_bound`, `not_two_positive_representations_below`, and
`least_two_cube_sum`, under the existing Taxicab namespace. Their compilation,
fresh kernel checks and axiom audits are **NOT_RUN** at this publication.
They are not covered by the earlier twenty-six-declaration receipt. A fresh
thirty-declaration request is required for the modified source tree.

Full timestamped video claim extraction, all other Numberphile videos and the
unrestricted three-cubes sufficiency conjecture remain open. Zero entire videos
are marked complete. Source-bound issue: [math #1440](https://github.com/grwtsk/math/issues/1440).
