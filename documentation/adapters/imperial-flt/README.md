# ImperialCollegeLondon/FLT adapters

Local attribution: grwtsk contributors.

Pinned upstream: [ImperialCollegeLondon/FLT@a3210204ad8876e851e32f73dd97d882bf1ccd0a](https://github.com/ImperialCollegeLondon/FLT/tree/a3210204ad8876e851e32f73dd97d882bf1ccd0a).
This provider imports exact upstream modules in isolated native-version packages.
The complete pinned source inventory contains 271 Lean files; inventory
coverage is not a claim that every source file is compiled or every statement proved.

Mathematical use: Modularity/Galois/arithmetic interfaces complementary to Anthropic FLT.
Missing bridge: Select proved dependency endpoints, distinguish blueprint targets and pending premises; not a second automatically accepted FLT proof.

| Isolated adapter directory | Upstream project | Toolchain | Import surfaces |
| --- | --- | --- | --- |
| `adapters/imperial-flt` | `.` | `leanprover/lean4:v4.35.0` | 2 |

Run `lake build` only inside the selected adapter directory using its exact toolchain. This is a requested check, not a successful receipt. Path dependencies in the copied lock are explicitly rebound to the same immutable repository subdirectory; originals and conversions are retained in catalogue.json. Upstream Lake configuration remains the pinned dependency configuration.

All compilation, fresh kernel replay, transitive axiom audits and statement-fidelity
checks are **NOT_RUN**. These are import surfaces, not newly proved GRWTSK bridges.
Conjectures, challenge stubs, unproved source premises and finite evidence retain
their original scope. Imports may expose `sorryAx` or other unapproved dependencies;
no proof acceptance is asserted. Select actual consumer declarations and reject
unapproved axiom closures before making a mathematical acceptance claim.

No process runners or upstream post-update hooks are copied into math. Some
upstream configurations have effectful hooks: `catalogue.json` records their
presence; none was executed. Source replay must reproduce or explicitly qualify
that boundary through supported Noe tooling, not silently assume an unmodified
Git checkout equals a locally patched dependency.

Original authorship remains in upstream sources; repository license/notice files
are retained when present. This package is outside root default imports/builds.
See catalogue.json for every library, source module/blob, config and dependency
pin, and the canonical paper ledger for evidence scope and unresolved bridges.

<a id="imperial-frey-denominator-20261030"></a>
### Reduced Frey denominator prime-power factors

Local attribution: grwtsk contributors. New [source](https://github.com/grwtsk/math/blob/b13149227de39dc96dc9074796508957949128bd/adapters/imperial-flt/GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/FreyPrimePowerDenominator.lean) at `b13149227de39dc96dc9074796508957949128bd` / blob `2fa84acb0d2002740ca8bbd3da8565cf1a0edbd0` consumes exact `FreyCurve.j_valuation_of_bad_prime`, Imperial `a3210204ad8876e851e32f73dd97d882bf1ccd0a` / Basic `eaaca84b85675f2e44ee5ca1f5c88824f627d48e`. Public bylines Kevin Buzzard/Ruben Van de Velde/Pietro Monticone (2025) and Kevin Buzzard (Basic/Lemmas2026), Apache2, remain preserved. Source-reported Serre1987 Section4.1 association is retained without mapping these new local consequences to a numbered paper theorem. The overview's multiple-of-q typo is resolved by the actual type's exponent `P.p`.

The two roots in `GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.FreyPrimePowerDenominator` are `exponent_dvd_denominator_order` and `prime_power_factor_of_denominator_prime`. Full signed FreyPackage assumptions and prime q>2 dividing a*b*c are retained; the second ALSO requires q dividing the actual reduced denominator. Canonical Rat coprimality transfers signed valuation divisibility to denominator-order divisibility, then supplies positive k with `den(j)=q^p*k` and `q^p≤den(j)`. No package, denominator observation, root curve equivalence or Fermat counterexample is constructed. The existing root denominator/height consumer needs an explicit curve/version comparison, still UNSUPPLIED.

Native Lean4.35.0/Mathlib56a005855ea17e0b0958f73ec801ae140b0a1679 stays isolated. All native facets NOT_RUN, independent checker UNSUPPLIED; source/API reviews are not acceptance. [Target](../../mathematics/_verification/targets/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/imperial-frey-denominator-20261030.json) and [canonical ledger](../../mathematics/_support/reference/literature/reading-background/paper-to-formalization-references.md#imperial-frey-denominator-20261030) preserve exact types, package fields,11locked entries, bylines and excluded broad FLT assumptions. No conductor/radical-height/ABC estimate or full FLT proof is supplied.
